; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/mt312.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mt312.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mt312_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mt312_attach\09\09\09\09"
module asm "\09.long\09__crc_mt312_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt312_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt312_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt312_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mt312_state = type { ptr, ptr, %struct.dvb_frontend, i8, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.mt312_config = type { i8, i8, [2 x i8] }

@mt312_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Zarlink ???? DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 78125, i32 0, i32 703125, i32 45000000, i32 0, i32 -1073740114 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @mt312_release, ptr null, ptr @mt312_initfe, ptr @mt312_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt312_set_frontend, ptr @mt312_get_tune_settings, ptr @mt312_get_frontend, ptr @mt312_read_status, ptr @mt312_read_ber, ptr @mt312_read_signal_strength, ptr @mt312_read_snr, ptr @mt312_read_ucblocks, ptr null, ptr @mt312_send_master_cmd, ptr null, ptr @mt312_send_burst, ptr @mt312_set_tone, ptr @mt312_set_voltage, ptr null, ptr null, ptr @mt312_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Zarlink VP310 DVB-S\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Zarlink MT312 DVB-S\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Zarlink ZL10313 DVB-S\00", [42 x i8] zeroinitializer }, align 32
@mt312_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014Only Zarlink VP310/MT312/ZL10313 are supported chips.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt312_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/dvb-frontends/mt312.c\00", [60 x i8] zeroinitializer }, align 32
@mt312_attach._entry_ptr = internal global ptr @mt312_attach._entry, section ".printk_index", align 4
@__kstrtab_mt312_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt312_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt312_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt312_attach to i32), ptr @__kstrtab_mt312_attach, ptr @__kstrtabns_mt312_attach }, section "___ksymtab+mt312_attach", align 4
@__param_str_debug = internal constant [12 x i8] c"mt312.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [25 x i8] c"mt312.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [63 x i8] c"mt312.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [71 x i8] c"mt312.description=Zarlink VP310/MT312/ZL10313 DVB-S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [50 x i8] c"mt312.author=Andreas Oberritter <obi@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [51 x i8] c"mt312.author=Matthias Schwarzott <zzam@gentoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [45 x i8] c"mt312.file=drivers/media/dvb-frontends/mt312\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [18 x i8] c"mt312.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mt312_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: ret == %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt312_read\00", [21 x i8] zeroinitializer }, align 32
@mt312_read._entry_ptr = internal global ptr @mt312_read._entry, section ".printk_index", align 4
@mt312_read._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.5, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017mt312: R(%d):\00", [16 x i8] zeroinitializer }, align 32
@mt312_read._entry_ptr.10 = internal global ptr @mt312_read._entry.8, section ".printk_index", align 4
@mt312_read._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.5, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %02x\00", [24 x i8] zeroinitializer }, align 32
@mt312_read._entry_ptr.13 = internal global ptr @mt312_read._entry.11, section ".printk_index", align 4
@mt312_read._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.5, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@mt312_read._entry_ptr.16 = internal global ptr @mt312_read._entry.14, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt312_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014mt312: write: len=%zu is too big!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt312_write\00", [20 x i8] zeroinitializer }, align 32
@mt312_write._entry_ptr = internal global ptr @mt312_write._entry, section ".printk_index", align 4
@mt312_write._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.5, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017mt312: W(%d):\00", [16 x i8] zeroinitializer }, align 32
@mt312_write._entry_ptr.21 = internal global ptr @mt312_write._entry.19, section ".printk_index", align 4
@mt312_write._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.18, ptr @.str.5, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt312_write._entry_ptr.23 = internal global ptr @mt312_write._entry.22, section ".printk_index", align 4
@mt312_write._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.18, ptr @.str.5, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt312_write._entry_ptr.25 = internal global ptr @mt312_write._entry.24, section ".printk_index", align 4
@mt312_write._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.5, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017mt312: %s: ret == %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mt312_write._entry_ptr.28 = internal global ptr @mt312_write._entry.26, section ".printk_index", align 4
@__const.mt312_set_frontend.fec_tab = private unnamed_addr constant [10 x i8] c"\00\01\02\04?\08\10 ??", align 1
@__const.mt312_set_frontend.inv_tab = private unnamed_addr constant [3 x i8] c"\00@\80", align 1
@mt312_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017mt312: %s: Freq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt312_set_frontend\00", [45 x i8] zeroinitializer }, align 32
@mt312_set_frontend._entry_ptr = internal global ptr @mt312_set_frontend._entry, section ".printk_index", align 4
@mt312_get_symbol_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017mt312: sr(auto) = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt312_get_symbol_rate\00", [42 x i8] zeroinitializer }, align 32
@mt312_get_symbol_rate._entry_ptr = internal global ptr @mt312_get_symbol_rate._entry, section ".printk_index", align 4
@mt312_get_symbol_rate._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.5, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017mt312: sym_rat_op=%d dec_ratio=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@mt312_get_symbol_rate._entry_ptr.35 = internal global ptr @mt312_get_symbol_rate._entry.33, section ".printk_index", align 4
@mt312_get_symbol_rate._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.5, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017mt312: *sr(manual) = %lu\0A\00", [36 x i8] zeroinitializer }, align 32
@mt312_get_symbol_rate._entry_ptr.38 = internal global ptr @mt312_get_symbol_rate._entry.36, section ".printk_index", align 4
@__const.mt312_get_code_rate.fec_tab = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 9, i32 9], align 4
@mt312_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\017mt312: QPSK_STAT_H: 0x%02x, QPSK_STAT_L: 0x%02x, FEC_STATUS: 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt312_read_status\00", [46 x i8] zeroinitializer }, align 32
@mt312_read_status._entry_ptr = internal global ptr @mt312_read_status._entry, section ".printk_index", align 4
@mt312_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017mt312: agc=%08x err_db=%hd\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt312_read_signal_strength\00", [37 x i8] zeroinitializer }, align 32
@mt312_read_signal_strength._entry_ptr = internal global ptr @mt312_read_signal_strength._entry, section ".printk_index", align 4
@__const.mt312_send_burst.mini_tab = private unnamed_addr constant [2 x i8] c"\02\03", align 1
@__const.mt312_set_tone.tone_tab = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@__const.mt312_set_voltage.volt_tab = private unnamed_addr constant [3 x i8] c"\00@\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 5]
@___asan_gen_.45 = private unnamed_addr constant [10 x i8] c"mt312_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 738, i32 38 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 802, i32 42 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 808, i32 42 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 814, i32 42 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 820, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 40, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 69, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 75, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 77, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 78, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 92, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 99, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 101, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 102, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 116, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 542, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 184, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 203, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 205, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 445, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [39 x i8] c"../drivers/media/dvb-frontends/mt312.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 495, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__ksymtab_mt312_attach, ptr @__param_debug, ptr @mt312_attach._entry, ptr @mt312_attach._entry_ptr, ptr @mt312_get_symbol_rate._entry, ptr @mt312_get_symbol_rate._entry.33, ptr @mt312_get_symbol_rate._entry.36, ptr @mt312_get_symbol_rate._entry_ptr, ptr @mt312_get_symbol_rate._entry_ptr.35, ptr @mt312_get_symbol_rate._entry_ptr.38, ptr @mt312_read._entry, ptr @mt312_read._entry.11, ptr @mt312_read._entry.14, ptr @mt312_read._entry.8, ptr @mt312_read._entry_ptr, ptr @mt312_read._entry_ptr.10, ptr @mt312_read._entry_ptr.13, ptr @mt312_read._entry_ptr.16, ptr @mt312_read_signal_strength._entry, ptr @mt312_read_signal_strength._entry_ptr, ptr @mt312_read_status._entry, ptr @mt312_read_status._entry_ptr, ptr @mt312_set_frontend._entry, ptr @mt312_set_frontend._entry_ptr, ptr @mt312_write._entry, ptr @mt312_write._entry.19, ptr @mt312_write._entry.22, ptr @mt312_write._entry.24, ptr @mt312_write._entry.26, ptr @mt312_write._entry_ptr, ptr @mt312_write._entry_ptr.21, ptr @mt312_write._entry_ptr.23, ptr @mt312_write._entry_ptr.25, ptr @mt312_write._entry_ptr.28, ptr @mt312_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @debug, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_read._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_read._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_read._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_write._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_write._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_write._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_write._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_get_symbol_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_get_symbol_rate._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_get_symbol_rate._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt312_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mt312_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1060) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %id = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 3
  %call.i = tail call fastcc i32 @mt312_read(ptr noundef nonnull %call7.i.i, i32 noundef 126, ptr noundef %id, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.end.error_crit_edge, label %if.end6

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end6:                                          ; preds = %if.end
  %frontend = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = call ptr @memcpy(ptr %ops, ptr @mt312_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 8
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.end [
    i8 1, label %sw.bb
    i8 3, label %sw.bb12
    i8 5, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @strscpy(ptr noundef %ops, ptr noundef nonnull @.str, i32 noundef 128) #7
  %xtal = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %xtal to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10000000, ptr %xtal, align 4
  %freq_mult = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %freq_mult to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 9, ptr %freq_mult, align 8
  br label %cleanup

sw.bb12:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 @strscpy(ptr noundef %ops, ptr noundef nonnull @.str.1, i32 noundef 128) #7
  %xtal19 = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %xtal19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10000000, ptr %xtal19, align 4
  %freq_mult20 = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %freq_mult20 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %freq_mult20, align 8
  br label %cleanup

sw.bb21:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @strscpy(ptr noundef %ops, ptr noundef nonnull @.str.2, i32 noundef 128) #7
  %xtal28 = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %xtal28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10111000, ptr %xtal28, align 4
  %freq_mult29 = getelementptr inbounds %struct.mt312_state, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %freq_mult29 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 9, ptr %freq_mult29, align 8
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %error

error:                                            ; preds = %do.end, %if.end.error_crit_edge, %entry.error_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %sw.bb21, %sw.bb12, %sw.bb
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %sw.bb21 ], [ %frontend, %sw.bb12 ], [ %frontend, %sw.bb ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt312_read(ptr nocapture noundef readonly %state, i32 noundef %reg, ptr noundef %buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [2 x %struct.i2c_msg], align 4
  %regbuf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regbuf) #7
  %conv = trunc i32 %reg to i8
  %2 = ptrtoint ptr %regbuf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %regbuf, align 1
  %config = getelementptr inbounds %struct.mt312_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %conv1 = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv1, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %regbuf, ptr %buf4, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %11 = load i8, ptr %4, align 4
  %conv8 = zext i8 %11 to i16
  %arrayidx9 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv8, ptr %arrayidx9, align 4
  %flags12 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %flags12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags12, align 2
  %buf14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %buf14, align 4
  %conv15 = trunc i32 %count to i16
  %len17 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %len17 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv15, ptr %len17, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end27:                                         ; preds = %if.end
  %and = and i32 %reg, 127
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %and) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3358.not = icmp eq i32 %count, 0
  br i1 %cmp3358.not, label %do.end27.do.end44_crit_edge, label %do.end27.do.end37_crit_edge

do.end27.do.end37_crit_edge:                      ; preds = %do.end27
  br label %do.end37

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end37:                                         ; preds = %do.end37.do.end37_crit_edge, %do.end27.do.end37_crit_edge
  %i.059 = phi i32 [ %inc, %do.end37.do.end37_crit_edge ], [ 0, %do.end27.do.end37_crit_edge ]
  %arrayidx39 = getelementptr i8, ptr %buf, i32 %i.059
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %20 to i32
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv40) #11
  %inc = add nuw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %do.end37.do.end44_crit_edge, label %do.end37.do.end37_crit_edge

do.end37.do.end37_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

do.end37.do.end44_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end44:                                         ; preds = %do.end37.do.end44_crit_edge, %do.end27.do.end44_crit_edge
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %do.end44 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regbuf) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt312_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @mt312_initfe(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tmp.i147 = alloca i8, align 1
  %tmp.i145 = alloca i8, align 1
  %tmp.i143 = alloca i8, align 1
  %tmp.i141 = alloca i8, align 1
  %tmp.i139 = alloca i8, align 1
  %tmp.i137 = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  %buf_def = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %freq_mult = getelementptr inbounds %struct.mt312_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %freq_mult to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %freq_mult, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp = icmp eq i8 %4, 6
  %conv2 = select i1 %cmp, i8 -120, i8 -116
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 127, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %entry.cleanup89_crit_edge, label %if.end

entry.cleanup89_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 32212200) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %7 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -128, ptr %tmp.i.i, align 1
  %call.i.i = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 21, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6 = icmp slt i32 %call.i.i, 0
  br i1 %cmp6, label %if.end.cleanup89_crit_edge, label %if.end9

if.end.cleanup89_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf_def) #7
  %8 = ptrtoint ptr %buf_def to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1446221737480945664, ptr %buf_def, align 8
  %call10 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 86, ptr noundef nonnull %buf_def, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf_def) #7
  br i1 %cmp11, label %if.end9.cleanup89_crit_edge, label %cleanup.cont

if.end9.cleanup89_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

cleanup.cont:                                     ; preds = %if.end9
  %id = getelementptr inbounds %struct.mt312_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cond93 = icmp eq i8 %10, 5
  br i1 %cond93, label %sw.bb, label %cleanup.cont.sw.epilog_crit_edge

cleanup.cont.sw.epilog_crit_edge:                 ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i137) #7
  %11 = ptrtoint ptr %tmp.i137 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %tmp.i137, align 1
  %call.i138 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 20, ptr noundef nonnull %tmp.i137, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i137) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp17 = icmp slt i32 %call.i138, 0
  br i1 %cmp17, label %sw.bb.cleanup89_crit_edge, label %if.end20

sw.bb.cleanup89_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end20:                                         ; preds = %sw.bb
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -128, ptr %buf, align 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -80, ptr %2, align 1
  %call23 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 84, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end20.cleanup89_crit_edge, label %if.end27

if.end20.cleanup89_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end27:                                         ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i139) #7
  %14 = ptrtoint ptr %tmp.i139 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %tmp.i139, align 1
  %call.i140 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 84, ptr noundef nonnull %tmp.i139, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i139) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp29 = icmp slt i32 %call.i140, 0
  br i1 %cmp29, label %if.end27.cleanup89_crit_edge, label %if.end32

if.end27.cleanup89_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end32:                                         ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i141) #7
  %15 = ptrtoint ptr %tmp.i141 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %tmp.i141, align 1
  %call.i142 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 85, ptr noundef nonnull %tmp.i141, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i141) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp34 = icmp slt i32 %call.i142, 0
  br i1 %cmp34, label %if.end32.cleanup89_crit_edge, label %if.end32.sw.epilog_crit_edge

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end32.cleanup89_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

sw.epilog:                                        ; preds = %if.end32.sw.epilog_crit_edge, %cleanup.cont.sw.epilog_crit_edge
  %xtal = getelementptr inbounds %struct.mt312_state, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xtal, align 4
  %18 = ptrtoint ptr %freq_mult to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %freq_mult, align 4
  %conv39 = zext i8 %19 to i32
  %mul = shl i32 %17, 1
  %mul40 = mul i32 %mul, %conv39
  %add = add i32 %mul40, 500000
  %div41 = udiv i32 %add, 1000000
  %conv42 = trunc i32 %div41 to i8
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv42, ptr %buf, align 1
  %add49 = add i32 %17, 44000
  %div50 = udiv i32 %add49, 88000
  %conv51 = trunc i32 %div50 to i8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv51, ptr %2, align 1
  %call54 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 34, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %sw.epilog.cleanup89_crit_edge, label %if.end58

sw.epilog.cleanup89_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end58:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i143) #7
  %22 = ptrtoint ptr %tmp.i143 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 50, ptr %tmp.i143, align 1
  %call.i144 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 49, ptr noundef nonnull %tmp.i143, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i143) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp60 = icmp slt i32 %call.i144, 0
  br i1 %cmp60, label %if.end58.cleanup89_crit_edge, label %if.end63

if.end58.cleanup89_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end63:                                         ; preds = %if.end58
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %24)
  %cond94 = icmp eq i8 %24, 5
  %. = select i1 %cond94, i8 51, i8 83
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i145) #7
  %25 = ptrtoint ptr %tmp.i145 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %., ptr %tmp.i145, align 1
  %call.i146 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 96, ptr noundef nonnull %tmp.i145, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i145) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp72 = icmp slt i32 %call.i146, 0
  br i1 %cmp72, label %if.end63.cleanup89_crit_edge, label %if.end75

if.end63.cleanup89_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end75:                                         ; preds = %if.end63
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -116, ptr %buf, align 1
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -104, ptr %2, align 1
  %call79 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 51, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end75.cleanup89_crit_edge, label %if.end83

if.end75.cleanup89_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup89

if.end83:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i147) #7
  %28 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 105, ptr %tmp.i147, align 1
  %call.i148 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 57, ptr noundef nonnull %tmp.i147, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i147) #7
  %29 = tail call i32 @llvm.smin.i32(i32 %call.i148, i32 0)
  br label %cleanup89

cleanup89:                                        ; preds = %if.end83, %if.end75.cleanup89_crit_edge, %if.end63.cleanup89_crit_edge, %if.end58.cleanup89_crit_edge, %sw.epilog.cleanup89_crit_edge, %if.end32.cleanup89_crit_edge, %if.end27.cleanup89_crit_edge, %if.end20.cleanup89_crit_edge, %sw.bb.cleanup89_crit_edge, %if.end9.cleanup89_crit_edge, %if.end.cleanup89_crit_edge, %entry.cleanup89_crit_edge
  %retval.1 = phi i32 [ %call10, %if.end9.cleanup89_crit_edge ], [ %call.i, %entry.cleanup89_crit_edge ], [ %call.i.i, %if.end.cleanup89_crit_edge ], [ %call.i138, %sw.bb.cleanup89_crit_edge ], [ %call23, %if.end20.cleanup89_crit_edge ], [ %call.i140, %if.end27.cleanup89_crit_edge ], [ %call.i142, %if.end32.cleanup89_crit_edge ], [ %call54, %sw.epilog.cleanup89_crit_edge ], [ %call.i144, %if.end58.cleanup89_crit_edge ], [ %call.i146, %if.end63.cleanup89_crit_edge ], [ %call79, %if.end75.cleanup89_crit_edge ], [ %29, %if.end83 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %tmp.i46 = alloca i8, align 1
  %tmp.i43 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %config = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %config) #7
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %config, align 1, !annotation !106
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %3 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %tmp.i.i, align 1
  %call.i.i = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 21, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.mt312_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp1 = icmp eq i8 %5, 5
  br i1 %cmp1, label %if.then3, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 20, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.then3.cleanup_crit_edge, label %if.end8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i43) #7
  %7 = ptrtoint ptr %tmp.i43 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 13, ptr %tmp.i43, align 1
  %call.i44 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 84, ptr noundef nonnull %tmp.i43, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp10 = icmp slt i32 %call.i44, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call.i45 = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 127, ptr noundef nonnull %config, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp16 = icmp slt i32 %call.i45, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config, align 1
  %10 = and i8 %9, 127
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i46) #7
  %11 = ptrtoint ptr %tmp.i46 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %tmp.i46, align 1
  %call.i47 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 127, ptr noundef nonnull %tmp.i46, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i46) #7
  %12 = call i32 @llvm.smin.i32(i32 %call.i47, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i, %if.then3.cleanup_crit_edge ], [ %call.i44, %if.end8.cleanup_crit_edge ], [ %call.i45, %if.end14.cleanup_crit_edge ], [ %12, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %tmp.i.i = alloca i8, align 1
  %buf = alloca [5 x i8], align 1
  %config_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %6 = call ptr @memset(ptr %buf, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %config_val) #7
  %7 = ptrtoint ptr %config_val to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %config_val, align 1, !annotation !106
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %10) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %frequency_min_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %frequency_min_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frequency_min_hz, align 4
  %div = udiv i32 %14, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %div)
  %cmp = icmp ult i32 %12, %div
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %lor.lhs.false

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end3
  %frequency_max_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %frequency_max_hz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frequency_max_hz, align 4
  %div8 = udiv i32 %16, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %div8)
  %cmp9 = icmp ugt i32 %12, %div8
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp15 = icmp ugt i32 %18, 1
  br i1 %cmp15, label %if.end11.cleanup_crit_edge, label %if.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %19 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %symbol_rate, align 4
  %symbol_rate_min = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %symbol_rate_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %symbol_rate_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp20 = icmp ult i32 %20, %22
  br i1 %cmp20, label %if.end17.cleanup_crit_edge, label %lor.lhs.false21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false21:                                  ; preds = %if.end17
  %symbol_rate_max = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 6
  %23 = ptrtoint ptr %symbol_rate_max to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %symbol_rate_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp25 = icmp ugt i32 %20, %24
  br i1 %cmp25, label %lor.lhs.false21.cleanup_crit_edge, label %if.end27

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false21
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %25 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fec_inner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %26)
  %cmp31 = icmp ugt i32 %26, 9
  br i1 %cmp31, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %26, label %if.end40 [
    i32 4, label %if.end33.cleanup_crit_edge
    i32 8, label %if.end33.cleanup_crit_edge191
  ]

if.end33.cleanup_crit_edge191:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %id = getelementptr inbounds %struct.mt312_state, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %29, label %if.end40.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %if.end40.sw.epilog_crit_edge
    i8 5, label %if.end40.sw.epilog_crit_edge192
  ]

if.end40.sw.epilog_crit_edge192:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end40.sw.epilog_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end40
  %call.i = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 127, ptr noundef nonnull %config_val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp42 = icmp slt i32 %call.i, 0
  br i1 %cmp42, label %sw.bb.cleanup_crit_edge, label %if.end45

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %sw.bb
  %31 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29999999, i32 %32)
  %cmp47 = icmp ugt i32 %32, 29999999
  %freq_mult = getelementptr inbounds %struct.mt312_state, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %freq_mult to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %freq_mult, align 4
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %34)
  %cmp51 = icmp eq i8 %34, 6
  br i1 %cmp51, label %if.then53, label %if.then49.sw.epilog_crit_edge

if.then49.sw.epilog_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then53:                                        ; preds = %if.then49
  %35 = ptrtoint ptr %freq_mult to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 9, ptr %freq_mult, align 4
  %call55 = call i32 @mt312_initfe(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then53.cleanup_crit_edge, label %if.then53.sw.epilog_crit_edge

if.then53.sw.epilog_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %34)
  %cmp63 = icmp eq i8 %34, 9
  br i1 %cmp63, label %if.then65, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then65:                                        ; preds = %if.else
  %36 = ptrtoint ptr %freq_mult to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 6, ptr %freq_mult, align 4
  %call67 = call i32 @mt312_initfe(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then65.cleanup_crit_edge, label %if.then65.sw.epilog_crit_edge

if.then65.sw.epilog_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.then65.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %if.then53.sw.epilog_crit_edge, %if.then49.sw.epilog_crit_edge, %if.end40.sw.epilog_crit_edge, %if.end40.sw.epilog_crit_edge192
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %37 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_params, align 4
  %tobool76.not = icmp eq ptr %38, null
  br i1 %tobool76.not, label %sw.epilog.if.end89_crit_edge, label %if.then77

sw.epilog.if.end89_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then77:                                        ; preds = %sw.epilog
  %call81 = call i32 %38(ptr noundef %fe) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %39 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool83.not = icmp eq ptr %40, null
  br i1 %tobool83.not, label %if.then77.if.end89_crit_edge, label %if.then84

if.then77.if.end89_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then84:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = call i32 %40(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end89

if.end89:                                         ; preds = %if.then84, %if.then77.if.end89_crit_edge, %sw.epilog.if.end89_crit_edge
  %41 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %symbol_rate, align 4
  %mul = shl i32 %42, 2
  %add = add i32 %mul, 7812
  %div93 = udiv i32 %add, 15625
  %43 = lshr i32 %div93, 8
  %44 = trunc i32 %43 to i8
  %conv96 = and i8 %44, 63
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv96, ptr %buf, align 1
  %conv100 = trunc i32 %div93 to i8
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv100, ptr %2, align 1
  %47 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %inversion, align 4
  %arrayidx103 = getelementptr [3 x i8], ptr @__const.mt312_set_frontend.inv_tab, i32 0, i32 %48
  %49 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx103, align 1
  %51 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fec_inner, align 4
  %arrayidx106 = getelementptr [10 x i8], ptr @__const.mt312_set_frontend.fec_tab, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx106, align 1
  %or189 = or i8 %54, %50
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %or189, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %42)
  %cmp112 = icmp ult i32 %42, 10000000
  %spec.store.select = select i1 %cmp112, i8 68, i8 64
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %spec.store.select, ptr %4, align 1
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %5, align 1
  %call121 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 23, ptr noundef nonnull %buf, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.end89.cleanup_crit_edge, label %if.end125

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end125:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %58 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 64, ptr %tmp.i.i, align 1
  %call.i.i = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 21, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %59 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end125, %if.end89.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end33.cleanup_crit_edge191, %if.end27.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %do.end3.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %lor.lhs.false21.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge191 ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call55, %if.then53.cleanup_crit_edge ], [ %call67, %if.then65.cleanup_crit_edge ], [ -22, %if.end40.cleanup_crit_edge ], [ %call121, %if.end89.cleanup_crit_edge ], [ %59, %if.end125 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %config_val) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mt312_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 50, ptr %fesettings, align 4
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
define internal i32 @mt312_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  %fec_status.i = alloca i8, align 1
  %tmp.i3.i = alloca i8, align 1
  %tmp.i.i = alloca i8, align 1
  %sym_rate_h.i = alloca i8, align 1
  %buf.i = alloca [2 x i8], align 1
  %vit_mode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vit_mode.i) #7
  %2 = ptrtoint ptr %vit_mode.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %vit_mode.i, align 1, !annotation !106
  %call.i.i = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 25, ptr noundef nonnull %vit_mode.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %mt312_get_inversion.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %vit_mode.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vit_mode.i, align 1
  %conv.i = zext i8 %4 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then1.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i = lshr i32 %conv.i, 6
  %and3.lobit.i = and i32 %and3.i, 1
  %5 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3.lobit.i, ptr %inversion, align 4
  br label %if.end

mt312_get_inversion.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vit_mode.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.then1.i, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vit_mode.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sym_rate_h.i) #7
  %6 = ptrtoint ptr %sym_rate_h.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %sym_rate_h.i, align 1, !annotation !106
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %buf.i, align 1, !annotation !106
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !106
  %call.i.i19 = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 23, ptr noundef nonnull %sym_rate_h.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %cmp.i20 = icmp slt i32 %call.i.i19, 0
  br i1 %cmp.i20, label %if.end.mt312_get_symbol_rate.exit.thread_crit_edge, label %if.end.i22

if.end.mt312_get_symbol_rate.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt312_get_symbol_rate.exit.thread

if.end.i22:                                       ; preds = %if.end
  %10 = ptrtoint ptr %sym_rate_h.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sym_rate_h.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool.not.i21 = icmp sgt i8 %11, -1
  br i1 %tobool.not.i21, label %if.else.i, label %if.then1.i23

if.then1.i23:                                     ; preds = %if.end.i22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #7
  %12 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %tmp.i.i, align 1
  %call.i2.i = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 103, ptr noundef nonnull %tmp.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp3.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp3.i, label %if.then1.i23.mt312_get_symbol_rate.exit.thread_crit_edge, label %if.end6.i

if.then1.i23.mt312_get_symbol_rate.exit.thread_crit_edge: ; preds = %if.then1.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt312_get_symbol_rate.exit.thread

if.end6.i:                                        ; preds = %if.then1.i23
  %call7.i = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 123, ptr noundef nonnull %buf.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end6.i.mt312_get_symbol_rate.exit.thread_crit_edge, label %if.end11.i

if.end6.i.mt312_get_symbol_rate.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt312_get_symbol_rate.exit.thread

if.end11.i:                                       ; preds = %if.end6.i
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not.i = icmp eq i32 %13, 0
  br i1 %tobool16.not.i, label %if.end11.i.if.end4_crit_edge, label %do.end.i

if.end11.i.if.end4_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %8, align 1
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf.i, align 1
  %conv12.i = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 %conv12.i, 8
  %conv14.i = zext i8 %15 to i32
  %or.i = or i32 %shl.i, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp21.not.i = icmp eq i32 %or.i, 0
  %mul.i = mul nuw nsw i32 %or.i, 15625
  %add.i = add nuw nsw i32 %mul.i, 2
  %div271.i = lshr i32 %add.i, 2
  %cond.i = select i1 %cmp21.not.i, i32 0, i32 %div271.i
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %cond.i) #11
  br label %if.end4

if.else.i:                                        ; preds = %if.end.i22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i3.i) #7
  %18 = ptrtoint ptr %tmp.i3.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %tmp.i3.i, align 1
  %call.i4.i = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 103, ptr noundef nonnull %tmp.i3.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %cmp35.i = icmp slt i32 %call.i4.i, 0
  br i1 %cmp35.i, label %if.else.i.mt312_get_symbol_rate.exit.thread_crit_edge, label %if.end38.i

if.else.i.mt312_get_symbol_rate.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt312_get_symbol_rate.exit.thread

if.end38.i:                                       ; preds = %if.else.i
  %call40.i = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 123, ptr noundef nonnull %buf.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %if.end38.i.mt312_get_symbol_rate.exit.thread_crit_edge, label %if.end44.i

if.end38.i.mt312_get_symbol_rate.exit.thread_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt312_get_symbol_rate.exit.thread

if.end44.i:                                       ; preds = %if.end38.i
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buf.i, align 1
  %21 = and i8 %20, -32
  %call51.i = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 116, ptr noundef nonnull %buf.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.end44.i.mt312_get_symbol_rate.exit.thread_crit_edge, label %if.end55.i

if.end44.i.mt312_get_symbol_rate.exit.thread_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt312_get_symbol_rate.exit.thread

if.end55.i:                                       ; preds = %if.end44.i
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool64.not.i = icmp eq i32 %22, 0
  br i1 %tobool64.not.i, label %if.end55.i.if.end4_crit_edge, label %do.body76.i

if.end55.i.if.end4_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.body76.i:                                      ; preds = %if.end55.i
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buf.i, align 1
  %conv57.i = zext i8 %24 to i32
  %shl58.i = shl nuw nsw i32 %conv57.i, 8
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %8, align 1
  %conv60.i = zext i8 %26 to i32
  %or61.i = or i32 %shl58.i, %conv60.i
  %conv71.i = zext i8 %21 to i32
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %or61.i, i32 noundef %conv71.i) #11
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool77.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool77.not.i, label %do.body76.i.if.end4_crit_edge, label %do.end81.i

do.body76.i.if.end4_crit_edge:                    ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end81.i:                                       ; preds = %do.body76.i
  call void @__sanitizer_cov_trace_pc() #9
  %xtal.i = getelementptr inbounds %struct.mt312_state, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %xtal.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xtal.i, align 4
  %mul83.i = shl i32 %28, 13
  %add85.i = add nuw nsw i32 %or61.i, 8192
  %div86.i = udiv i32 %mul83.i, %add85.i
  %mul87.i = shl nuw nsw i32 %div86.i, 1
  %sub89.i = sub nsw i32 %mul87.i, %conv71.i
  %call90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %sub89.i) #11
  br label %if.end4

mt312_get_symbol_rate.exit.thread:                ; preds = %if.end44.i.mt312_get_symbol_rate.exit.thread_crit_edge, %if.end38.i.mt312_get_symbol_rate.exit.thread_crit_edge, %if.else.i.mt312_get_symbol_rate.exit.thread_crit_edge, %if.end6.i.mt312_get_symbol_rate.exit.thread_crit_edge, %if.then1.i23.mt312_get_symbol_rate.exit.thread_crit_edge, %if.end.mt312_get_symbol_rate.exit.thread_crit_edge
  %retval.0.i24.ph = phi i32 [ %call51.i, %if.end44.i.mt312_get_symbol_rate.exit.thread_crit_edge ], [ %call40.i, %if.end38.i.mt312_get_symbol_rate.exit.thread_crit_edge ], [ %call.i4.i, %if.else.i.mt312_get_symbol_rate.exit.thread_crit_edge ], [ %call7.i, %if.end6.i.mt312_get_symbol_rate.exit.thread_crit_edge ], [ %call.i2.i, %if.then1.i23.mt312_get_symbol_rate.exit.thread_crit_edge ], [ %call.i.i19, %if.end.mt312_get_symbol_rate.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sym_rate_h.i) #7
  br label %cleanup

if.end4:                                          ; preds = %do.end81.i, %do.body76.i.if.end4_crit_edge, %if.end55.i.if.end4_crit_edge, %do.end.i, %if.end11.i.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sym_rate_h.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fec_status.i) #7
  %29 = ptrtoint ptr %fec_status.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %fec_status.i, align 1, !annotation !106
  %call.i.i25 = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 6, ptr noundef nonnull %fec_status.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %cmp.i26 = icmp slt i32 %call.i.i25, 0
  br i1 %cmp.i26, label %37, label %mt312_get_code_rate.exit

mt312_get_code_rate.exit:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %30 = ptrtoint ptr %fec_status.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fec_status.i, align 1
  %32 = lshr i8 %31, 4
  %33 = and i8 %32, 7
  %and.i27 = zext i8 %33 to i32
  %arrayidx.i = getelementptr [8 x i32], ptr @__const.mt312_get_code_rate.fec_tab, i32 0, i32 %and.i27
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i, align 4
  %36 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %fec_inner, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fec_status.i) #7
  br label %cleanup

37:                                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fec_status.i) #7
  br label %cleanup

cleanup:                                          ; preds = %37, %mt312_get_code_rate.exit, %mt312_get_symbol_rate.exit.thread, %mt312_get_inversion.exit
  %retval.0 = phi i32 [ %call.i.i, %mt312_get_inversion.exit ], [ %retval.0.i24.ph, %mt312_get_symbol_rate.exit.thread ], [ %call.i.i25, %37 ], [ 0, %mt312_get_code_rate.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %s) #0 align 64 {
entry:
  %status = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %status) #7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %status, align 1, !annotation !106
  %3 = getelementptr inbounds [3 x i8], ptr %status, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !106
  %5 = getelementptr inbounds [3 x i8], ptr %status, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !106
  %7 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %s, align 4
  %call = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %status, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %do.body.do.end10_crit_edge, label %do.end

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status, align 1
  %conv = zext i8 %10 to i32
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  %conv4 = zext i8 %12 to i32
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  %conv6 = zext i8 %14 to i32
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6) #11
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %16)
  %tobool13.not = icmp ult i8 %16, 64
  br i1 %tobool13.not, label %do.end10.if.end15_crit_edge, label %if.then14

do.end10.if.end15_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %s, align 4
  %or = or i32 %18, 1
  store i32 %or, ptr %s, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %do.end10.if.end15_crit_edge
  %19 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool19.not = icmp eq i8 %19, 0
  br i1 %tobool19.not, label %if.end15.if.end22_crit_edge, label %if.then20

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %s, align 4
  %or21 = or i32 %21, 2
  store i32 %or21, ptr %s, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end15.if.end22_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %5, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool26.not = icmp eq i8 %24, 0
  br i1 %tobool26.not, label %if.end22.if.end29_crit_edge, label %if.then27

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %s, align 4
  %or28 = or i32 %26, 4
  store i32 %or28, ptr %s, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end22.if.end29_crit_edge
  %27 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool33.not = icmp eq i8 %27, 0
  br i1 %tobool33.not, label %if.end29.if.end36_crit_edge, label %if.then34

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s, align 4
  %or35 = or i32 %29, 8
  store i32 %or35, ptr %s, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end29.if.end36_crit_edge
  %30 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool40.not = icmp eq i8 %30, 0
  br i1 %tobool40.not, label %if.end36.cleanup_crit_edge, label %if.then41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %s, align 4
  %or42 = or i32 %32, 16
  store i32 %or42, ptr %s, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !106
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !106
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !106
  %call = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 14, ptr noundef nonnull %buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %conv2 = zext i8 %10 to i32
  %shl3 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl3, %shl
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %5, align 1
  %conv5 = zext i8 %12 to i32
  %or6 = or i32 %or, %conv5
  %mul = shl nuw nsw i32 %or6, 6
  %13 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %ber, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !106
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !106
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !106
  %call = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 108, ptr noundef nonnull %buf, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 6
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %conv2 = zext i8 %10 to i32
  %11 = lshr i32 %conv2, 2
  %or = or i32 %11, %shl
  %conv3 = trunc i32 %or to i16
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %5, align 1
  %14 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv3, ptr %signal_strength, align 2
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = shl i32 %conv2, 30
  %conv8 = zext i8 %13 to i32
  %shl9 = shl nuw nsw i32 %conv8, 22
  %or10 = or i32 %shl9, %and
  %shr13 = ashr exact i32 %or10, 22
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %or, i32 noundef %shr13) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !106
  %3 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !106
  %call = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 9, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %7 = and i8 %6, 127
  %and = zext i8 %7 to i16
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 1
  %conv2 = zext i8 %9 to i16
  %.neg = mul i16 %and, -512
  %.neg8 = mul nsw i16 %conv2, -2
  %shl3.neg = add nsw i16 %.neg8, -1
  %sub = add i16 %shl3.neg, %.neg
  %10 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %sub, ptr %snr, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ubc) #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !106
  %3 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !106
  %call = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 17, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %conv2 = zext i8 %8 to i32
  %or = or i32 %shl, %conv2
  %9 = ptrtoint ptr %ubc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %ubc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_send_master_cmd(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  %tmp.i58 = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  %diseqc_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %diseqc_mode) #7
  %2 = ptrtoint ptr %diseqc_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %diseqc_mode, align 1, !annotation !106
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %c, i32 0, i32 1
  %3 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg_len, align 1
  %5 = add i8 %4, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %5)
  %6 = icmp ult i8 %5, -6
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %diseqc_mode, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %7 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %msg_len, align 1
  %conv11 = zext i8 %8 to i32
  %call12 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 164, ptr noundef %c, i32 noundef %conv11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end9.cleanup_crit_edge, label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %diseqc_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %diseqc_mode, align 1
  %11 = and i8 %10, 64
  %12 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msg_len, align 1
  %sub = shl i8 %13, 3
  %shl = add i8 %sub, -8
  %or = or i8 %11, %shl
  %or20 = or i8 %or, 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or20, ptr %tmp.i, align 1
  %call.i57 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp23 = icmp slt i32 %call.i57, 0
  br i1 %cmp23, label %if.end16.cleanup_crit_edge, label %if.end26

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  call void @msleep(i32 noundef 100) #7
  %15 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %c, align 1
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end26.if.end39_crit_edge, label %if.then30

if.end26.if.end39_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then30:                                        ; preds = %if.end26
  %18 = ptrtoint ptr %diseqc_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %diseqc_mode, align 1
  %20 = and i8 %19, 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i58) #7
  %21 = ptrtoint ptr %tmp.i58 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %tmp.i58, align 1
  %call.i59 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %tmp.i58, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp35 = icmp slt i32 %call.i59, 0
  br i1 %cmp35, label %if.then30.cleanup_crit_edge, label %if.then30.if.end39_crit_edge

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.then30.if.end39_crit_edge, %if.end26.if.end39_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then30.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ %call.i57, %if.end16.cleanup_crit_edge ], [ %call.i59, %if.then30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %diseqc_mode) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %c) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %diseqc_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %diseqc_mode) #7
  %2 = ptrtoint ptr %diseqc_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %diseqc_mode, align 1, !annotation !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %c)
  %cmp = icmp ugt i32 %c, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %diseqc_mode, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %diseqc_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %diseqc_mode, align 1
  %5 = and i8 %4, 64
  %arrayidx = getelementptr [2 x i8], ptr @__const.mt312_send_burst.mini_tab, i32 0, i32 %c
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %or19 = or i8 %5, %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or19, ptr %tmp.i, align 1
  %call.i20 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %9 = call i32 @llvm.smin.i32(i32 %call.i20, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %9, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %diseqc_mode) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %t) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %diseqc_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %diseqc_mode) #7
  %2 = ptrtoint ptr %diseqc_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %diseqc_mode, align 1, !annotation !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %t)
  %cmp = icmp ugt i32 %t, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %diseqc_mode, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %diseqc_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %diseqc_mode, align 1
  %5 = and i8 %4, 64
  %arrayidx = getelementptr [2 x i8], ptr @__const.mt312_set_tone.tone_tab, i32 0, i32 %t
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %or19 = or i8 %5, %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or19, ptr %tmp.i, align 1
  %call.i20 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  %9 = call i32 @llvm.smin.i32(i32 %call.i20, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %9, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %diseqc_mode) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %v) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %v)
  %cmp = icmp ugt i32 %v, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %arrayidx = getelementptr [3 x i8], ptr @__const.mt312_set_voltage.volt_tab, i32 0, i32 %v
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %config = getelementptr inbounds %struct.mt312_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %voltage_inverted = getelementptr inbounds %struct.mt312_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %voltage_inverted to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %voltage_inverted, align 1
  %7 = xor i8 %3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not9 = icmp slt i8 %bf.load, 0
  %spec.select = select i1 %tobool.not9, i8 %7, i8 %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.select, ptr %tmp.i, align 1
  %call.i = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 22, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt312_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %tmp.i = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %val, align 1
  %id = getelementptr inbounds %struct.mt312_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cond = icmp eq i8 %4, 5
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call.i = call fastcc i32 @mt312_read(ptr noundef %1, i32 noundef 20, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sw.bb.error_crit_edge, label %if.end

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %val, align 1
  %7 = and i8 %6, -128
  store i8 %7, ptr %val, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %entry.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 1
  %10 = and i8 %9, -65
  %masksel = select i1 %tobool.not, i8 0, i8 64
  %storemerge = or i8 %10, %masksel
  store i8 %storemerge, ptr %val, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #7
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %storemerge, ptr %tmp.i, align 1
  %call.i15 = call fastcc i32 @mt312_write(ptr noundef %1, i32 noundef 20, ptr noundef nonnull %tmp.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #7
  br label %error

error:                                            ; preds = %sw.epilog, %sw.bb.error_crit_edge
  %ret.0 = phi i32 [ %call.i, %sw.bb.error_crit_edge ], [ %call.i15, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt312_write(ptr nocapture noundef readonly %state, i32 noundef %reg, ptr nocapture noundef readonly %src, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #7
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 63)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %add = add i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp = icmp ugt i32 %add, 64
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %count) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %do.end7

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end7:                                          ; preds = %if.end
  %and = and i32 %reg, 127
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %and) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1360.not = icmp eq i32 %count, 0
  br i1 %cmp1360.not, label %do.end7.do.end21_crit_edge, label %do.end7.do.end16_crit_edge

do.end7.do.end16_crit_edge:                       ; preds = %do.end7
  br label %do.end16

do.end7.do.end21_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end16:                                         ; preds = %do.end16.do.end16_crit_edge, %do.end7.do.end16_crit_edge
  %i.061 = phi i32 [ %inc, %do.end16.do.end16_crit_edge ], [ 0, %do.end7.do.end16_crit_edge ]
  %arrayidx = getelementptr i8, ptr %src, i32 %i.061
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv) #11
  %inc = add nuw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %do.end16.do.end21_crit_edge, label %do.end16.do.end16_crit_edge

do.end16.do.end16_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end16.do.end21_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end21:                                         ; preds = %do.end16.do.end21_crit_edge, %do.end7.do.end21_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end.if.end24_crit_edge
  %conv25 = trunc i32 %reg to i8
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv25, ptr %buf, align 1
  %arrayidx27 = getelementptr inbounds [64 x i8], ptr %buf, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %arrayidx27, ptr %src, i32 %count)
  %config = getelementptr inbounds %struct.mt312_state, ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv28 = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv28, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags, align 2
  %buf29 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %15 = ptrtoint ptr %buf29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf29, align 4
  %conv31 = trunc i32 %add to i16
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv31, ptr %len, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call32 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 1
  br i1 %cmp33.not, label %if.end24.cleanup_crit_edge, label %do.body36

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body36:                                        ; preds = %if.end24
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool37.not = icmp eq i32 %19, 0
  br i1 %tobool37.not, label %do.body36.cleanup_crit_edge, label %do.end41

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end41:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.18, i32 noundef %call32) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %do.body36.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -121, %do.end41 ], [ -121, %do.body36.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 802, i32 42}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 808, i32 42}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 814, i32 42}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 820, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mt312_attach._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @mt312_attach._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_mt312_attach, !13, !"__ksymtab_mt312_attach", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 830, i32 1}
!14 = !{ptr @__param_debug, !15, !"__param_debug", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 832, i32 1}
!16 = !{ptr @__UNIQUE_ID_debugtype290, !15, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_debug291, !18, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 833, i32 1}
!19 = !{ptr @__UNIQUE_ID_description292, !20, !"__UNIQUE_ID_description292", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 835, i32 1}
!21 = !{ptr @__UNIQUE_ID_author293, !22, !"__UNIQUE_ID_author293", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 836, i32 1}
!23 = !{ptr @__UNIQUE_ID_author294, !24, !"__UNIQUE_ID_author294", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 837, i32 1}
!25 = !{ptr @__UNIQUE_ID_file295, !26, !"__UNIQUE_ID_file295", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 838, i32 1}
!27 = !{ptr @__UNIQUE_ID_license296, !26, !"__UNIQUE_ID_license296", i1 false, i1 false}
!28 = !{ptr @debug, !29, !"debug", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 40, i32 12}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 69, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mt312_read._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mt312_read._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 75, i32 3}
!37 = !{ptr @mt312_read._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mt312_read._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 77, i32 4}
!41 = !{ptr @mt312_read._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mt312_read._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 78, i32 3}
!45 = !{ptr @mt312_read._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mt312_read._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @mt312_ops, !48, !"mt312_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 738, i32 38}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 92, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mt312_write._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mt312_write._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 99, i32 3}
!56 = !{ptr @mt312_write._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mt312_write._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @mt312_write._entry.22, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 101, i32 4}
!60 = !{ptr @mt312_write._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mt312_write._entry.24, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 102, i32 3}
!63 = !{ptr @mt312_write._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 116, i32 3}
!66 = !{ptr @mt312_write._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mt312_write._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 542, i32 2}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mt312_set_frontend._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mt312_set_frontend._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 184, i32 3}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mt312_get_symbol_rate._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mt312_get_symbol_rate._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 203, i32 3}
!80 = !{ptr @mt312_get_symbol_rate._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @mt312_get_symbol_rate._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 205, i32 3}
!84 = !{ptr @mt312_get_symbol_rate._entry.36, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mt312_get_symbol_rate._entry_ptr.38, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 445, i32 2}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mt312_read_status._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @mt312_read_status._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/mt312.c", i32 495, i32 2}
!93 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mt312_read_signal_strength._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mt312_read_signal_strength._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @__param_str_debug, !15, !"__param_str_debug", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
