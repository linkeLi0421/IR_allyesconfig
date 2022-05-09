; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda10086.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda10086.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tda10086_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda10086_attach\09\09\09\09"
module asm "\09.long\09__crc_tda10086_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10086_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10086_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10086_attach:\09\09\09\09\09"
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
%struct.tda10086_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda10086_config = type { i8, i8, i8, i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tda10086_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017tda10086: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10086_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/tda10086.c\00", [57 x i8] zeroinitializer }, align 32
@tda10086_attach._entry_ptr = internal global ptr @tda10086_attach._entry, section ".printk_index", align 4
@tda10086_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10086 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 0, i32 1775 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @tda10086_release, ptr null, ptr @tda10086_init, ptr @tda10086_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda10086_set_frontend, ptr @tda10086_get_tune_settings, ptr @tda10086_get_frontend, ptr @tda10086_read_status, ptr @tda10086_read_ber, ptr @tda10086_read_signal_strength, ptr @tda10086_read_snr, ptr @tda10086_read_ucblocks, ptr null, ptr @tda10086_send_master_cmd, ptr null, ptr @tda10086_send_burst, ptr @tda10086_set_tone, ptr null, ptr null, ptr null, ptr @tda10086_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [15 x i8] c"tda10086.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [28 x i8] c"tda10086.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [66 x i8] c"tda10086.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [56 x i8] c"tda10086.description=Philips TDA10086 DVB-S Demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [34 x i8] c"tda10086.author=Andrew de Quincey\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [51 x i8] c"tda10086.file=drivers/media/dvb-frontends/tda10086\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"tda10086.license=GPL\00", section ".modinfo", align 1
@__kstrtab_tda10086_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10086_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10086_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10086_attach to i32), ptr @__kstrtab_tda10086_attach, ptr @__kstrtabns_tda10086_attach }, section "___ksymtab+tda10086_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda10086_read_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017tda10086: %s: error reg=0x%x, ret=%i\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda10086_read_byte\00", [45 x i8] zeroinitializer }, align 32
@tda10086_read_byte._entry_ptr = internal global ptr @tda10086_read_byte._entry, section ".printk_index", align 4
@tda10086_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda10086_init\00", [18 x i8] zeroinitializer }, align 32
@tda10086_init._entry_ptr = internal global ptr @tda10086_init._entry, section ".printk_index", align 4
@tda10086_write_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017tda10086: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda10086_write_byte\00", [44 x i8] zeroinitializer }, align 32
@tda10086_write_byte._entry_ptr = internal global ptr @tda10086_write_byte._entry, section ".printk_index", align 4
@tda10086_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda10086_sleep\00", [17 x i8] zeroinitializer }, align 32
@tda10086_sleep._entry_ptr = internal global ptr @tda10086_sleep._entry, section ".printk_index", align 4
@tda10086_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda10086_set_frontend\00", [42 x i8] zeroinitializer }, align 32
@tda10086_set_frontend._entry_ptr = internal global ptr @tda10086_set_frontend._entry, section ".printk_index", align 4
@tda10086_set_inversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017tda10086: %s %i %i\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda10086_set_inversion\00", [41 x i8] zeroinitializer }, align 32
@tda10086_set_inversion._entry_ptr = internal global ptr @tda10086_set_inversion._entry, section ".printk_index", align 4
@tda10086_set_symbol_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017tda10086: %s %i\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tda10086_set_symbol_rate\00", [39 x i8] zeroinitializer }, align 32
@tda10086_set_symbol_rate._entry_ptr = internal global ptr @tda10086_set_symbol_rate._entry, section ".printk_index", align 4
@tda10086_set_fec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.14, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda10086_set_fec\00", [47 x i8] zeroinitializer }, align 32
@tda10086_set_fec._entry_ptr = internal global ptr @tda10086_set_fec._entry, section ".printk_index", align 4
@tda10086_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda10086_get_frontend\00", [42 x i8] zeroinitializer }, align 32
@tda10086_get_frontend._entry_ptr = internal global ptr @tda10086_get_frontend._entry, section ".printk_index", align 4
@tda10086_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.16, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda10086_read_status\00", [43 x i8] zeroinitializer }, align 32
@tda10086_read_status._entry_ptr = internal global ptr @tda10086_read_status._entry, section ".printk_index", align 4
@tda10086_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10086_read_ber\00", [46 x i8] zeroinitializer }, align 32
@tda10086_read_ber._entry_ptr = internal global ptr @tda10086_read_ber._entry, section ".printk_index", align 4
@tda10086_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.18, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tda10086_read_signal_strength\00", [34 x i8] zeroinitializer }, align 32
@tda10086_read_signal_strength._entry_ptr = internal global ptr @tda10086_read_signal_strength._entry, section ".printk_index", align 4
@tda10086_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.19, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10086_read_snr\00", [46 x i8] zeroinitializer }, align 32
@tda10086_read_snr._entry_ptr = internal global ptr @tda10086_read_snr._entry, section ".printk_index", align 4
@tda10086_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda10086_read_ucblocks\00", [41 x i8] zeroinitializer }, align 32
@tda10086_read_ucblocks._entry_ptr = internal global ptr @tda10086_read_ucblocks._entry, section ".printk_index", align 4
@tda10086_send_master_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tda10086_send_master_cmd\00", [39 x i8] zeroinitializer }, align 32
@tda10086_send_master_cmd._entry_ptr = internal global ptr @tda10086_send_master_cmd._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tda10086_diseqc_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: diseqc queue not ready, command may be lost.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda10086_diseqc_wait\00", [43 x i8] zeroinitializer }, align 32
@tda10086_diseqc_wait._entry_ptr = internal global ptr @tda10086_diseqc_wait._entry, section ".printk_index", align 4
@tda10086_send_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.24, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda10086_send_burst\00", [44 x i8] zeroinitializer }, align 32
@tda10086_send_burst._entry_ptr = internal global ptr @tda10086_send_burst._entry, section ".printk_index", align 4
@tda10086_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.25, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10086_set_tone\00", [46 x i8] zeroinitializer }, align 32
@tda10086_set_tone._entry_ptr = internal global ptr @tda10086_set_tone._entry, section ".printk_index", align 4
@tda10086_i2c_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.26, ptr @.str.2, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda10086_i2c_gate_ctrl\00", [41 x i8] zeroinitializer }, align 32
@tda10086_i2c_gate_ctrl._entry_ptr = internal global ptr @tda10086_i2c_gate_ctrl._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 33, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 737, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"tda10086_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 696, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 68, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 98, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 49, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 634, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 409, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 263, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 297, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 363, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 457, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 549, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 619, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 578, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 591, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 603, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 207, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 168, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 236, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 181, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [42 x i8] c"../drivers/media/dvb-frontends/tda10086.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 645, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_tda10086_attach, ptr @__param_debug, ptr @tda10086_attach._entry, ptr @tda10086_attach._entry_ptr, ptr @tda10086_diseqc_wait._entry, ptr @tda10086_diseqc_wait._entry_ptr, ptr @tda10086_get_frontend._entry, ptr @tda10086_get_frontend._entry_ptr, ptr @tda10086_i2c_gate_ctrl._entry, ptr @tda10086_i2c_gate_ctrl._entry_ptr, ptr @tda10086_init._entry, ptr @tda10086_init._entry_ptr, ptr @tda10086_read_ber._entry, ptr @tda10086_read_ber._entry_ptr, ptr @tda10086_read_byte._entry, ptr @tda10086_read_byte._entry_ptr, ptr @tda10086_read_signal_strength._entry, ptr @tda10086_read_signal_strength._entry_ptr, ptr @tda10086_read_snr._entry, ptr @tda10086_read_snr._entry_ptr, ptr @tda10086_read_status._entry, ptr @tda10086_read_status._entry_ptr, ptr @tda10086_read_ucblocks._entry, ptr @tda10086_read_ucblocks._entry_ptr, ptr @tda10086_send_burst._entry, ptr @tda10086_send_burst._entry_ptr, ptr @tda10086_send_master_cmd._entry, ptr @tda10086_send_master_cmd._entry_ptr, ptr @tda10086_set_fec._entry, ptr @tda10086_set_fec._entry_ptr, ptr @tda10086_set_frontend._entry, ptr @tda10086_set_frontend._entry_ptr, ptr @tda10086_set_inversion._entry, ptr @tda10086_set_inversion._entry_ptr, ptr @tda10086_set_symbol_rate._entry, ptr @tda10086_set_symbol_rate._entry_ptr, ptr @tda10086_set_tone._entry, ptr @tda10086_set_tone._entry_ptr, ptr @tda10086_sleep._entry, ptr @tda10086_sleep._entry_ptr, ptr @tda10086_write_byte._entry, ptr @tda10086_write_byte._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tda10086_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_read_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_write_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_set_inversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_set_symbol_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_set_fec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_send_master_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_diseqc_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_send_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10086_i2c_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda10086_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1060) #10
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end3.cleanup_crit_edge, label %if.end7

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %config8 = getelementptr inbounds %struct.tda10086_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config8, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 30, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %12 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b1.i, ptr %buf5.i, align 4
  %14 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %config, align 4
  %conv7.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv7.i, ptr %msg.i, align 4
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv7.i, ptr %arrayinit.element.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %if.end7
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_read_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_read_byte.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 30, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

if.end21.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %20 to i32
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit:                          ; preds = %if.end21.i, %do.end.i, %do.body.i.tda10086_read_byte.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end21.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.tda10086_read_byte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 225, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 225
  br i1 %cmp.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end12:                                         ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %frontend = getelementptr inbounds %struct.tda10086_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.tda10086_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %21 = call ptr @memcpy(ptr %ops, ptr @tda10086_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.tda10086_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %do.end3.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then11 ], [ %frontend, %if.end12 ], [ null, %do.end3.cleanup_crit_edge ]
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
define internal void @tda10086_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.tda10086_sleep.exit_crit_edge, label %do.end.i

entry.tda10086_sleep.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_sleep.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #9
  br label %tda10086_sleep.exit

tda10086_sleep.exit:                              ; preds = %do.end.i, %entry.tda10086_sleep.exit_crit_edge
  tail call fastcc void @tda10086_write_mask(ptr noundef %1, i32 noundef 0, i32 noundef 8, i32 noundef 8) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %b0.i563 = alloca [2 x i8], align 1
  %msg.i564 = alloca %struct.i2c_msg, align 4
  %b0.i548 = alloca [2 x i8], align 1
  %msg.i549 = alloca %struct.i2c_msg, align 4
  %b0.i533 = alloca [2 x i8], align 1
  %msg.i534 = alloca %struct.i2c_msg, align 4
  %b0.i518 = alloca [2 x i8], align 1
  %msg.i519 = alloca %struct.i2c_msg, align 4
  %b0.i503 = alloca [2 x i8], align 1
  %msg.i504 = alloca %struct.i2c_msg, align 4
  %b0.i488 = alloca [2 x i8], align 1
  %msg.i489 = alloca %struct.i2c_msg, align 4
  %b0.i473 = alloca [2 x i8], align 1
  %msg.i474 = alloca %struct.i2c_msg, align 4
  %b0.i458 = alloca [2 x i8], align 1
  %msg.i459 = alloca %struct.i2c_msg, align 4
  %b0.i443 = alloca [2 x i8], align 1
  %msg.i444 = alloca %struct.i2c_msg, align 4
  %b0.i428 = alloca [2 x i8], align 1
  %msg.i429 = alloca %struct.i2c_msg, align 4
  %b0.i413 = alloca [2 x i8], align 1
  %msg.i414 = alloca %struct.i2c_msg, align 4
  %b0.i398 = alloca [2 x i8], align 1
  %msg.i399 = alloca %struct.i2c_msg, align 4
  %b0.i383 = alloca [2 x i8], align 1
  %msg.i384 = alloca %struct.i2c_msg, align 4
  %b0.i368 = alloca [2 x i8], align 1
  %msg.i369 = alloca %struct.i2c_msg, align 4
  %b0.i353 = alloca [2 x i8], align 1
  %msg.i354 = alloca %struct.i2c_msg, align 4
  %b0.i338 = alloca [2 x i8], align 1
  %msg.i339 = alloca %struct.i2c_msg, align 4
  %b0.i323 = alloca [2 x i8], align 1
  %msg.i324 = alloca %struct.i2c_msg, align 4
  %b0.i308 = alloca [2 x i8], align 1
  %msg.i309 = alloca %struct.i2c_msg, align 4
  %b0.i293 = alloca [2 x i8], align 1
  %msg.i294 = alloca %struct.i2c_msg, align 4
  %b0.i278 = alloca [2 x i8], align 1
  %msg.i279 = alloca %struct.i2c_msg, align 4
  %b0.i263 = alloca [2 x i8], align 1
  %msg.i264 = alloca %struct.i2c_msg, align 4
  %b0.i248 = alloca [2 x i8], align 1
  %msg.i249 = alloca %struct.i2c_msg, align 4
  %b0.i233 = alloca [2 x i8], align 1
  %msg.i234 = alloca %struct.i2c_msg, align 4
  %b0.i218 = alloca [2 x i8], align 1
  %msg.i219 = alloca %struct.i2c_msg, align 4
  %b0.i203 = alloca [2 x i8], align 1
  %msg.i204 = alloca %struct.i2c_msg, align 4
  %b0.i188 = alloca [2 x i8], align 1
  %msg.i189 = alloca %struct.i2c_msg, align 4
  %b0.i173 = alloca [2 x i8], align 1
  %msg.i174 = alloca %struct.i2c_msg, align 4
  %b0.i158 = alloca [2 x i8], align 1
  %msg.i159 = alloca %struct.i2c_msg, align 4
  %b0.i143 = alloca [2 x i8], align 1
  %msg.i144 = alloca %struct.i2c_msg, align 4
  %b0.i128 = alloca [2 x i8], align 1
  %msg.i129 = alloca %struct.i2c_msg, align 4
  %b0.i113 = alloca [2 x i8], align 1
  %msg.i114 = alloca %struct.i2c_msg, align 4
  %b0.i98 = alloca [2 x i8], align 1
  %msg.i99 = alloca %struct.i2c_msg, align 4
  %b0.i83 = alloca [2 x i8], align 1
  %msg.i84 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [2 x i8], align 1
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %diseqc_tone = getelementptr inbounds %struct.tda10086_config, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %diseqc_tone to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %diseqc_tone, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool4.not, i32 128, i32 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %7 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %8 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %b0.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196607, ptr %10, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %14 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %conv2.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv2.i, ptr %msg.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end3.tda10086_write_byte.exit_crit_edge, label %do.body.i

do.end3.tda10086_write_byte.exit_crit_edge:       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.body.i:                                        ; preds = %do.end3
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_write_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_write_byte.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0, i32 noundef %call.i) #9
  br label %tda10086_write_byte.exit

tda10086_write_byte.exit:                         ; preds = %do.end.i, %do.body.i.tda10086_write_byte.exit_crit_edge, %do.end3.tda10086_write_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i83) #6
  %22 = getelementptr inbounds [2 x i8], ptr %b0.i83, i32 0, i32 1
  %23 = ptrtoint ptr %b0.i83 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %b0.i83, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -108, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84) #6
  %25 = getelementptr inbounds i8, ptr %msg.i84, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %flags.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i85 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i85, align 2
  %buf.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i87 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %b0.i83, ptr %buf.i87, align 4
  %29 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  %conv2.i89 = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i84 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv2.i89, ptr %msg.i84, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i90 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i84, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i90)
  %cmp.not.i91 = icmp eq i32 %call.i90, 1
  br i1 %cmp.not.i91, label %tda10086_write_byte.exit.tda10086_write_byte.exit97_crit_edge, label %do.body.i93

tda10086_write_byte.exit.tda10086_write_byte.exit97_crit_edge: ; preds = %tda10086_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit97

do.body.i93:                                      ; preds = %tda10086_write_byte.exit
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i92 = icmp eq i32 %36, 0
  br i1 %tobool.not.i92, label %do.body.i93.tda10086_write_byte.exit97_crit_edge, label %do.end.i95

do.body.i93.tda10086_write_byte.exit97_crit_edge: ; preds = %do.body.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit97

do.end.i95:                                       ; preds = %do.body.i93
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 148, i32 noundef %call.i90) #9
  br label %tda10086_write_byte.exit97

tda10086_write_byte.exit97:                       ; preds = %do.end.i95, %do.body.i93.tda10086_write_byte.exit97_crit_edge, %tda10086_write_byte.exit.tda10086_write_byte.exit97_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i83) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i98) #6
  %37 = getelementptr inbounds [2 x i8], ptr %b0.i98, i32 0, i32 1
  %38 = ptrtoint ptr %b0.i98 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %b0.i98, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 53, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i99) #6
  %40 = getelementptr inbounds i8, ptr %msg.i99, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %flags.i100 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99, i32 0, i32 1
  %42 = ptrtoint ptr %flags.i100 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i100, align 2
  %buf.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i102 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b0.i98, ptr %buf.i102, align 4
  %44 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 4
  %conv2.i104 = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i99 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv2.i104, ptr %msg.i99, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call.i105 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i99, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i105)
  %cmp.not.i106 = icmp eq i32 %call.i105, 1
  br i1 %cmp.not.i106, label %tda10086_write_byte.exit97.tda10086_write_byte.exit112_crit_edge, label %do.body.i108

tda10086_write_byte.exit97.tda10086_write_byte.exit112_crit_edge: ; preds = %tda10086_write_byte.exit97
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit112

do.body.i108:                                     ; preds = %tda10086_write_byte.exit97
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i107 = icmp eq i32 %51, 0
  br i1 %tobool.not.i107, label %do.body.i108.tda10086_write_byte.exit112_crit_edge, label %do.end.i110

do.body.i108.tda10086_write_byte.exit112_crit_edge: ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit112

do.end.i110:                                      ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 53, i32 noundef %call.i105) #9
  br label %tda10086_write_byte.exit112

tda10086_write_byte.exit112:                      ; preds = %do.end.i110, %do.body.i108.tda10086_write_byte.exit112_crit_edge, %tda10086_write_byte.exit97.tda10086_write_byte.exit112_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i99) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i98) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i113) #6
  %52 = getelementptr inbounds [2 x i8], ptr %b0.i113, i32 0, i32 1
  %53 = ptrtoint ptr %b0.i113 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 3, ptr %b0.i113, align 1
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -28, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i114) #6
  %55 = getelementptr inbounds i8, ptr %msg.i114, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 196607, ptr %55, align 4
  %flags.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i115 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i115, align 2
  %buf.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i117 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %b0.i113, ptr %buf.i117, align 4
  %59 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %config, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 4
  %conv2.i119 = zext i8 %62 to i16
  %63 = ptrtoint ptr %msg.i114 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv2.i119, ptr %msg.i114, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call.i120 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i114, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i120)
  %cmp.not.i121 = icmp eq i32 %call.i120, 1
  br i1 %cmp.not.i121, label %tda10086_write_byte.exit112.tda10086_write_byte.exit127_crit_edge, label %do.body.i123

tda10086_write_byte.exit112.tda10086_write_byte.exit127_crit_edge: ; preds = %tda10086_write_byte.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit127

do.body.i123:                                     ; preds = %tda10086_write_byte.exit112
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i122 = icmp eq i32 %66, 0
  br i1 %tobool.not.i122, label %do.body.i123.tda10086_write_byte.exit127_crit_edge, label %do.end.i125

do.body.i123.tda10086_write_byte.exit127_crit_edge: ; preds = %do.body.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit127

do.end.i125:                                      ; preds = %do.body.i123
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 3, i32 noundef 228, i32 noundef %call.i120) #9
  br label %tda10086_write_byte.exit127

tda10086_write_byte.exit127:                      ; preds = %do.end.i125, %do.body.i123.tda10086_write_byte.exit127_crit_edge, %tda10086_write_byte.exit112.tda10086_write_byte.exit127_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i114) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i113) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i128) #6
  %67 = getelementptr inbounds [2 x i8], ptr %b0.i128, i32 0, i32 1
  %68 = ptrtoint ptr %b0.i128 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 4, ptr %b0.i128, align 1
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 67, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i129) #6
  %70 = getelementptr inbounds i8, ptr %msg.i129, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %flags.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i130 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i130, align 2
  %buf.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 3
  %73 = ptrtoint ptr %buf.i132 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %b0.i128, ptr %buf.i132, align 4
  %74 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 4
  %conv2.i134 = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i129 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv2.i134, ptr %msg.i129, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call.i135 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i129, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i135)
  %cmp.not.i136 = icmp eq i32 %call.i135, 1
  br i1 %cmp.not.i136, label %tda10086_write_byte.exit127.tda10086_write_byte.exit142_crit_edge, label %do.body.i138

tda10086_write_byte.exit127.tda10086_write_byte.exit142_crit_edge: ; preds = %tda10086_write_byte.exit127
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit142

do.body.i138:                                     ; preds = %tda10086_write_byte.exit127
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i137 = icmp eq i32 %81, 0
  br i1 %tobool.not.i137, label %do.body.i138.tda10086_write_byte.exit142_crit_edge, label %do.end.i140

do.body.i138.tda10086_write_byte.exit142_crit_edge: ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit142

do.end.i140:                                      ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 4, i32 noundef 67, i32 noundef %call.i135) #9
  br label %tda10086_write_byte.exit142

tda10086_write_byte.exit142:                      ; preds = %do.end.i140, %do.body.i138.tda10086_write_byte.exit142_crit_edge, %tda10086_write_byte.exit127.tda10086_write_byte.exit142_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i129) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i128) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i143) #6
  %82 = getelementptr inbounds [2 x i8], ptr %b0.i143, i32 0, i32 1
  %83 = ptrtoint ptr %b0.i143 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 12, ptr %b0.i143, align 1
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 12, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i144) #6
  %85 = getelementptr inbounds i8, ptr %msg.i144, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 196607, ptr %85, align 4
  %flags.i145 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i144, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i145 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i145, align 2
  %buf.i147 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i144, i32 0, i32 3
  %88 = ptrtoint ptr %buf.i147 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %b0.i143, ptr %buf.i147, align 4
  %89 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %config, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %90, align 4
  %conv2.i149 = zext i8 %92 to i16
  %93 = ptrtoint ptr %msg.i144 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv2.i149, ptr %msg.i144, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %call.i150 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i144, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i150)
  %cmp.not.i151 = icmp eq i32 %call.i150, 1
  br i1 %cmp.not.i151, label %tda10086_write_byte.exit142.tda10086_write_byte.exit157_crit_edge, label %do.body.i153

tda10086_write_byte.exit142.tda10086_write_byte.exit157_crit_edge: ; preds = %tda10086_write_byte.exit142
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit157

do.body.i153:                                     ; preds = %tda10086_write_byte.exit142
  %96 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i152 = icmp eq i32 %96, 0
  br i1 %tobool.not.i152, label %do.body.i153.tda10086_write_byte.exit157_crit_edge, label %do.end.i155

do.body.i153.tda10086_write_byte.exit157_crit_edge: ; preds = %do.body.i153
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit157

do.end.i155:                                      ; preds = %do.body.i153
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i154 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 12, i32 noundef 12, i32 noundef %call.i150) #9
  br label %tda10086_write_byte.exit157

tda10086_write_byte.exit157:                      ; preds = %do.end.i155, %do.body.i153.tda10086_write_byte.exit157_crit_edge, %tda10086_write_byte.exit142.tda10086_write_byte.exit157_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i144) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i143) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i158) #6
  %97 = getelementptr inbounds [2 x i8], ptr %b0.i158, i32 0, i32 1
  %98 = ptrtoint ptr %b0.i158 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 27, ptr %b0.i158, align 1
  %99 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 -80, ptr %97, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i159) #6
  %100 = getelementptr inbounds i8, ptr %msg.i159, i32 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 196607, ptr %100, align 4
  %flags.i160 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i159, i32 0, i32 1
  %102 = ptrtoint ptr %flags.i160 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i160, align 2
  %buf.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i159, i32 0, i32 3
  %103 = ptrtoint ptr %buf.i162 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %b0.i158, ptr %buf.i162, align 4
  %104 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 4
  %conv2.i164 = zext i8 %107 to i16
  %108 = ptrtoint ptr %msg.i159 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv2.i164, ptr %msg.i159, align 4
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %call.i165 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %msg.i159, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i165)
  %cmp.not.i166 = icmp eq i32 %call.i165, 1
  br i1 %cmp.not.i166, label %tda10086_write_byte.exit157.tda10086_write_byte.exit172_crit_edge, label %do.body.i168

tda10086_write_byte.exit157.tda10086_write_byte.exit172_crit_edge: ; preds = %tda10086_write_byte.exit157
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit172

do.body.i168:                                     ; preds = %tda10086_write_byte.exit157
  %111 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i167 = icmp eq i32 %111, 0
  br i1 %tobool.not.i167, label %do.body.i168.tda10086_write_byte.exit172_crit_edge, label %do.end.i170

do.body.i168.tda10086_write_byte.exit172_crit_edge: ; preds = %do.body.i168
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit172

do.end.i170:                                      ; preds = %do.body.i168
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 27, i32 noundef 176, i32 noundef %call.i165) #9
  br label %tda10086_write_byte.exit172

tda10086_write_byte.exit172:                      ; preds = %do.end.i170, %do.body.i168.tda10086_write_byte.exit172_crit_edge, %tda10086_write_byte.exit157.tda10086_write_byte.exit172_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i159) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i158) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i173) #6
  %112 = getelementptr inbounds [2 x i8], ptr %b0.i173, i32 0, i32 1
  %113 = ptrtoint ptr %b0.i173 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 32, ptr %b0.i173, align 1
  %114 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -119, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i174) #6
  %115 = getelementptr inbounds i8, ptr %msg.i174, i32 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 196607, ptr %115, align 4
  %flags.i175 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 1
  %117 = ptrtoint ptr %flags.i175 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %flags.i175, align 2
  %buf.i177 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i174, i32 0, i32 3
  %118 = ptrtoint ptr %buf.i177 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %b0.i173, ptr %buf.i177, align 4
  %119 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %config, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %120, align 4
  %conv2.i179 = zext i8 %122 to i16
  %123 = ptrtoint ptr %msg.i174 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv2.i179, ptr %msg.i174, align 4
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  %call.i180 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %msg.i174, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i180)
  %cmp.not.i181 = icmp eq i32 %call.i180, 1
  br i1 %cmp.not.i181, label %tda10086_write_byte.exit172.tda10086_write_byte.exit187_crit_edge, label %do.body.i183

tda10086_write_byte.exit172.tda10086_write_byte.exit187_crit_edge: ; preds = %tda10086_write_byte.exit172
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit187

do.body.i183:                                     ; preds = %tda10086_write_byte.exit172
  %126 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i182 = icmp eq i32 %126, 0
  br i1 %tobool.not.i182, label %do.body.i183.tda10086_write_byte.exit187_crit_edge, label %do.end.i185

do.body.i183.tda10086_write_byte.exit187_crit_edge: ; preds = %do.body.i183
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit187

do.end.i185:                                      ; preds = %do.body.i183
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 32, i32 noundef 137, i32 noundef %call.i180) #9
  br label %tda10086_write_byte.exit187

tda10086_write_byte.exit187:                      ; preds = %do.end.i185, %do.body.i183.tda10086_write_byte.exit187_crit_edge, %tda10086_write_byte.exit172.tda10086_write_byte.exit187_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i174) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i173) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i188) #6
  %127 = getelementptr inbounds [2 x i8], ptr %b0.i188, i32 0, i32 1
  %128 = ptrtoint ptr %b0.i188 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 48, ptr %b0.i188, align 1
  %129 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 4, ptr %127, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i189) #6
  %130 = getelementptr inbounds i8, ptr %msg.i189, i32 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 196607, ptr %130, align 4
  %flags.i190 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i189, i32 0, i32 1
  %132 = ptrtoint ptr %flags.i190 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %flags.i190, align 2
  %buf.i192 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i189, i32 0, i32 3
  %133 = ptrtoint ptr %buf.i192 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %b0.i188, ptr %buf.i192, align 4
  %134 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %config, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %135, align 4
  %conv2.i194 = zext i8 %137 to i16
  %138 = ptrtoint ptr %msg.i189 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv2.i194, ptr %msg.i189, align 4
  %139 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %1, align 4
  %call.i195 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %msg.i189, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i195)
  %cmp.not.i196 = icmp eq i32 %call.i195, 1
  br i1 %cmp.not.i196, label %tda10086_write_byte.exit187.tda10086_write_byte.exit202_crit_edge, label %do.body.i198

tda10086_write_byte.exit187.tda10086_write_byte.exit202_crit_edge: ; preds = %tda10086_write_byte.exit187
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit202

do.body.i198:                                     ; preds = %tda10086_write_byte.exit187
  %141 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i197 = icmp eq i32 %141, 0
  br i1 %tobool.not.i197, label %do.body.i198.tda10086_write_byte.exit202_crit_edge, label %do.end.i200

do.body.i198.tda10086_write_byte.exit202_crit_edge: ; preds = %do.body.i198
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit202

do.end.i200:                                      ; preds = %do.body.i198
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 48, i32 noundef 4, i32 noundef %call.i195) #9
  br label %tda10086_write_byte.exit202

tda10086_write_byte.exit202:                      ; preds = %do.end.i200, %do.body.i198.tda10086_write_byte.exit202_crit_edge, %tda10086_write_byte.exit187.tda10086_write_byte.exit202_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i189) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i188) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i203) #6
  %142 = getelementptr inbounds [2 x i8], ptr %b0.i203, i32 0, i32 1
  %143 = ptrtoint ptr %b0.i203 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 50, ptr %b0.i203, align 1
  %144 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %142, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i204) #6
  %145 = getelementptr inbounds i8, ptr %msg.i204, i32 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 196607, ptr %145, align 4
  %flags.i205 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204, i32 0, i32 1
  %147 = ptrtoint ptr %flags.i205 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %flags.i205, align 2
  %buf.i207 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204, i32 0, i32 3
  %148 = ptrtoint ptr %buf.i207 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %b0.i203, ptr %buf.i207, align 4
  %149 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %config, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 4
  %conv2.i209 = zext i8 %152 to i16
  %153 = ptrtoint ptr %msg.i204 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv2.i209, ptr %msg.i204, align 4
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 4
  %call.i210 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %msg.i204, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i210)
  %cmp.not.i211 = icmp eq i32 %call.i210, 1
  br i1 %cmp.not.i211, label %tda10086_write_byte.exit202.tda10086_write_byte.exit217_crit_edge, label %do.body.i213

tda10086_write_byte.exit202.tda10086_write_byte.exit217_crit_edge: ; preds = %tda10086_write_byte.exit202
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit217

do.body.i213:                                     ; preds = %tda10086_write_byte.exit202
  %156 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i212 = icmp eq i32 %156, 0
  br i1 %tobool.not.i212, label %do.body.i213.tda10086_write_byte.exit217_crit_edge, label %do.end.i215

do.body.i213.tda10086_write_byte.exit217_crit_edge: ; preds = %do.body.i213
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit217

do.end.i215:                                      ; preds = %do.body.i213
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 50, i32 noundef 0, i32 noundef %call.i210) #9
  br label %tda10086_write_byte.exit217

tda10086_write_byte.exit217:                      ; preds = %do.end.i215, %do.body.i213.tda10086_write_byte.exit217_crit_edge, %tda10086_write_byte.exit202.tda10086_write_byte.exit217_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i204) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i203) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i218) #6
  %157 = getelementptr inbounds [2 x i8], ptr %b0.i218, i32 0, i32 1
  %158 = ptrtoint ptr %b0.i218 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 49, ptr %b0.i218, align 1
  %159 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 86, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i219) #6
  %160 = getelementptr inbounds i8, ptr %msg.i219, i32 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 196607, ptr %160, align 4
  %flags.i220 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i219, i32 0, i32 1
  %162 = ptrtoint ptr %flags.i220 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %flags.i220, align 2
  %buf.i222 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i219, i32 0, i32 3
  %163 = ptrtoint ptr %buf.i222 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %b0.i218, ptr %buf.i222, align 4
  %164 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %config, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %165, align 4
  %conv2.i224 = zext i8 %167 to i16
  %168 = ptrtoint ptr %msg.i219 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv2.i224, ptr %msg.i219, align 4
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 4
  %call.i225 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %msg.i219, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i225)
  %cmp.not.i226 = icmp eq i32 %call.i225, 1
  br i1 %cmp.not.i226, label %tda10086_write_byte.exit217.tda10086_write_byte.exit232_crit_edge, label %do.body.i228

tda10086_write_byte.exit217.tda10086_write_byte.exit232_crit_edge: ; preds = %tda10086_write_byte.exit217
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit232

do.body.i228:                                     ; preds = %tda10086_write_byte.exit217
  %171 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.not.i227 = icmp eq i32 %171, 0
  br i1 %tobool.not.i227, label %do.body.i228.tda10086_write_byte.exit232_crit_edge, label %do.end.i230

do.body.i228.tda10086_write_byte.exit232_crit_edge: ; preds = %do.body.i228
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit232

do.end.i230:                                      ; preds = %do.body.i228
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 49, i32 noundef 86, i32 noundef %call.i225) #9
  br label %tda10086_write_byte.exit232

tda10086_write_byte.exit232:                      ; preds = %do.end.i230, %do.body.i228.tda10086_write_byte.exit232_crit_edge, %tda10086_write_byte.exit217.tda10086_write_byte.exit232_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i219) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i218) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i233) #6
  %172 = getelementptr inbounds [2 x i8], ptr %b0.i233, i32 0, i32 1
  %173 = ptrtoint ptr %b0.i233 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 85, ptr %b0.i233, align 1
  %174 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 44, ptr %172, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i234) #6
  %175 = getelementptr inbounds i8, ptr %msg.i234, i32 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 196607, ptr %175, align 4
  %flags.i235 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i234, i32 0, i32 1
  %177 = ptrtoint ptr %flags.i235 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 0, ptr %flags.i235, align 2
  %buf.i237 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i234, i32 0, i32 3
  %178 = ptrtoint ptr %buf.i237 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %b0.i233, ptr %buf.i237, align 4
  %179 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %config, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 4
  %conv2.i239 = zext i8 %182 to i16
  %183 = ptrtoint ptr %msg.i234 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv2.i239, ptr %msg.i234, align 4
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 4
  %call.i240 = call i32 @i2c_transfer(ptr noundef %185, ptr noundef nonnull %msg.i234, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i240)
  %cmp.not.i241 = icmp eq i32 %call.i240, 1
  br i1 %cmp.not.i241, label %tda10086_write_byte.exit232.tda10086_write_byte.exit247_crit_edge, label %do.body.i243

tda10086_write_byte.exit232.tda10086_write_byte.exit247_crit_edge: ; preds = %tda10086_write_byte.exit232
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit247

do.body.i243:                                     ; preds = %tda10086_write_byte.exit232
  %186 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i242 = icmp eq i32 %186, 0
  br i1 %tobool.not.i242, label %do.body.i243.tda10086_write_byte.exit247_crit_edge, label %do.end.i245

do.body.i243.tda10086_write_byte.exit247_crit_edge: ; preds = %do.body.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit247

do.end.i245:                                      ; preds = %do.body.i243
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 85, i32 noundef 44, i32 noundef %call.i240) #9
  br label %tda10086_write_byte.exit247

tda10086_write_byte.exit247:                      ; preds = %do.end.i245, %do.body.i243.tda10086_write_byte.exit247_crit_edge, %tda10086_write_byte.exit232.tda10086_write_byte.exit247_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i234) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i233) #6
  %187 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %config, align 4
  %xtal_freq = getelementptr inbounds %struct.tda10086_config, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %xtal_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %cmp = icmp eq i32 %190, 0
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %tda10086_write_byte.exit247
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i248) #6
  %191 = getelementptr inbounds [2 x i8], ptr %b0.i248, i32 0, i32 1
  %192 = ptrtoint ptr %b0.i248 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 58, ptr %b0.i248, align 1
  %193 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 11, ptr %191, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i249) #6
  %194 = getelementptr inbounds i8, ptr %msg.i249, i32 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 196607, ptr %194, align 4
  %flags.i250 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249, i32 0, i32 1
  %196 = ptrtoint ptr %flags.i250 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 0, ptr %flags.i250, align 2
  %buf.i252 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249, i32 0, i32 3
  %197 = ptrtoint ptr %buf.i252 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %b0.i248, ptr %buf.i252, align 4
  %198 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %config, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %199, align 4
  %conv2.i254 = zext i8 %201 to i16
  %202 = ptrtoint ptr %msg.i249 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %conv2.i254, ptr %msg.i249, align 4
  %203 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %1, align 4
  %call.i255 = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %msg.i249, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i255)
  %cmp.not.i256 = icmp eq i32 %call.i255, 1
  br i1 %cmp.not.i256, label %if.then20.tda10086_write_byte.exit262_crit_edge, label %do.body.i258

if.then20.tda10086_write_byte.exit262_crit_edge:  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit262

do.body.i258:                                     ; preds = %if.then20
  %205 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i257 = icmp eq i32 %205, 0
  br i1 %tobool.not.i257, label %do.body.i258.tda10086_write_byte.exit262_crit_edge, label %do.end.i260

do.body.i258.tda10086_write_byte.exit262_crit_edge: ; preds = %do.body.i258
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit262

do.end.i260:                                      ; preds = %do.body.i258
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 58, i32 noundef 11, i32 noundef %call.i255) #9
  br label %tda10086_write_byte.exit262

tda10086_write_byte.exit262:                      ; preds = %do.end.i260, %do.body.i258.tda10086_write_byte.exit262_crit_edge, %if.then20.tda10086_write_byte.exit262_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i249) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i248) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i263) #6
  %206 = getelementptr inbounds [2 x i8], ptr %b0.i263, i32 0, i32 1
  %207 = ptrtoint ptr %b0.i263 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 59, ptr %b0.i263, align 1
  %208 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 1, ptr %206, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i264) #6
  %209 = getelementptr inbounds i8, ptr %msg.i264, i32 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 196607, ptr %209, align 4
  %flags.i265 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i264, i32 0, i32 1
  %211 = ptrtoint ptr %flags.i265 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %flags.i265, align 2
  %buf.i267 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i264, i32 0, i32 3
  %212 = ptrtoint ptr %buf.i267 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %b0.i263, ptr %buf.i267, align 4
  %213 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %config, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %214, align 4
  %conv2.i269 = zext i8 %216 to i16
  %217 = ptrtoint ptr %msg.i264 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv2.i269, ptr %msg.i264, align 4
  %218 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %1, align 4
  %call.i270 = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %msg.i264, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i270)
  %cmp.not.i271 = icmp eq i32 %call.i270, 1
  br i1 %cmp.not.i271, label %tda10086_write_byte.exit262.tda10086_write_byte.exit277_crit_edge, label %do.body.i273

tda10086_write_byte.exit262.tda10086_write_byte.exit277_crit_edge: ; preds = %tda10086_write_byte.exit262
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit277

do.body.i273:                                     ; preds = %tda10086_write_byte.exit262
  %220 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i272 = icmp eq i32 %220, 0
  br i1 %tobool.not.i272, label %do.body.i273.tda10086_write_byte.exit277_crit_edge, label %do.end.i275

do.body.i273.tda10086_write_byte.exit277_crit_edge: ; preds = %do.body.i273
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit277

do.end.i275:                                      ; preds = %do.body.i273
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 59, i32 noundef 1, i32 noundef %call.i270) #9
  br label %tda10086_write_byte.exit277

tda10086_write_byte.exit277:                      ; preds = %do.end.i275, %do.body.i273.tda10086_write_byte.exit277_crit_edge, %tda10086_write_byte.exit262.tda10086_write_byte.exit277_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i264) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i263) #6
  br label %if.end25

if.else:                                          ; preds = %tda10086_write_byte.exit247
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i278) #6
  %221 = getelementptr inbounds [2 x i8], ptr %b0.i278, i32 0, i32 1
  %222 = ptrtoint ptr %b0.i278 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 58, ptr %b0.i278, align 1
  %223 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 23, ptr %221, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i279) #6
  %224 = getelementptr inbounds i8, ptr %msg.i279, i32 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 196607, ptr %224, align 4
  %flags.i280 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279, i32 0, i32 1
  %226 = ptrtoint ptr %flags.i280 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 0, ptr %flags.i280, align 2
  %buf.i282 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279, i32 0, i32 3
  %227 = ptrtoint ptr %buf.i282 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %b0.i278, ptr %buf.i282, align 4
  %228 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %config, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %229, align 4
  %conv2.i284 = zext i8 %231 to i16
  %232 = ptrtoint ptr %msg.i279 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %conv2.i284, ptr %msg.i279, align 4
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %1, align 4
  %call.i285 = call i32 @i2c_transfer(ptr noundef %234, ptr noundef nonnull %msg.i279, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i285)
  %cmp.not.i286 = icmp eq i32 %call.i285, 1
  br i1 %cmp.not.i286, label %if.else.tda10086_write_byte.exit292_crit_edge, label %do.body.i288

if.else.tda10086_write_byte.exit292_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit292

do.body.i288:                                     ; preds = %if.else
  %235 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool.not.i287 = icmp eq i32 %235, 0
  br i1 %tobool.not.i287, label %do.body.i288.tda10086_write_byte.exit292_crit_edge, label %do.end.i290

do.body.i288.tda10086_write_byte.exit292_crit_edge: ; preds = %do.body.i288
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit292

do.end.i290:                                      ; preds = %do.body.i288
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i289 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 58, i32 noundef 23, i32 noundef %call.i285) #9
  br label %tda10086_write_byte.exit292

tda10086_write_byte.exit292:                      ; preds = %do.end.i290, %do.body.i288.tda10086_write_byte.exit292_crit_edge, %if.else.tda10086_write_byte.exit292_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i279) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i278) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i293) #6
  %236 = getelementptr inbounds [2 x i8], ptr %b0.i293, i32 0, i32 1
  %237 = ptrtoint ptr %b0.i293 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 59, ptr %b0.i293, align 1
  %238 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %236, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i294) #6
  %239 = getelementptr inbounds i8, ptr %msg.i294, i32 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 196607, ptr %239, align 4
  %flags.i295 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i294, i32 0, i32 1
  %241 = ptrtoint ptr %flags.i295 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 0, ptr %flags.i295, align 2
  %buf.i297 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i294, i32 0, i32 3
  %242 = ptrtoint ptr %buf.i297 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %b0.i293, ptr %buf.i297, align 4
  %243 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %config, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %244, align 4
  %conv2.i299 = zext i8 %246 to i16
  %247 = ptrtoint ptr %msg.i294 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv2.i299, ptr %msg.i294, align 4
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 4
  %call.i300 = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %msg.i294, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i300)
  %cmp.not.i301 = icmp eq i32 %call.i300, 1
  br i1 %cmp.not.i301, label %tda10086_write_byte.exit292.tda10086_write_byte.exit307_crit_edge, label %do.body.i303

tda10086_write_byte.exit292.tda10086_write_byte.exit307_crit_edge: ; preds = %tda10086_write_byte.exit292
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit307

do.body.i303:                                     ; preds = %tda10086_write_byte.exit292
  %250 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool.not.i302 = icmp eq i32 %250, 0
  br i1 %tobool.not.i302, label %do.body.i303.tda10086_write_byte.exit307_crit_edge, label %do.end.i305

do.body.i303.tda10086_write_byte.exit307_crit_edge: ; preds = %do.body.i303
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit307

do.end.i305:                                      ; preds = %do.body.i303
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 59, i32 noundef 0, i32 noundef %call.i300) #9
  br label %tda10086_write_byte.exit307

tda10086_write_byte.exit307:                      ; preds = %do.end.i305, %do.body.i303.tda10086_write_byte.exit307_crit_edge, %tda10086_write_byte.exit292.tda10086_write_byte.exit307_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i294) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i293) #6
  br label %if.end25

if.end25:                                         ; preds = %tda10086_write_byte.exit307, %tda10086_write_byte.exit277
  call fastcc void @tda10086_write_mask(ptr noundef %1, i32 noundef 85, i32 noundef 32, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i308) #6
  %251 = getelementptr inbounds [2 x i8], ptr %b0.i308, i32 0, i32 1
  %252 = ptrtoint ptr %b0.i308 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 17, ptr %b0.i308, align 1
  %253 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 -127, ptr %251, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i309) #6
  %254 = getelementptr inbounds i8, ptr %msg.i309, i32 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 196607, ptr %254, align 4
  %flags.i310 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i309, i32 0, i32 1
  %256 = ptrtoint ptr %flags.i310 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 0, ptr %flags.i310, align 2
  %buf.i312 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i309, i32 0, i32 3
  %257 = ptrtoint ptr %buf.i312 to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %b0.i308, ptr %buf.i312, align 4
  %258 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %config, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %259, align 4
  %conv2.i314 = zext i8 %261 to i16
  %262 = ptrtoint ptr %msg.i309 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv2.i314, ptr %msg.i309, align 4
  %263 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %1, align 4
  %call.i315 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %msg.i309, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i315)
  %cmp.not.i316 = icmp eq i32 %call.i315, 1
  br i1 %cmp.not.i316, label %if.end25.tda10086_write_byte.exit322_crit_edge, label %do.body.i318

if.end25.tda10086_write_byte.exit322_crit_edge:   ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit322

do.body.i318:                                     ; preds = %if.end25
  %265 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool.not.i317 = icmp eq i32 %265, 0
  br i1 %tobool.not.i317, label %do.body.i318.tda10086_write_byte.exit322_crit_edge, label %do.end.i320

do.body.i318.tda10086_write_byte.exit322_crit_edge: ; preds = %do.body.i318
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit322

do.end.i320:                                      ; preds = %do.body.i318
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i319 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 17, i32 noundef 129, i32 noundef %call.i315) #9
  br label %tda10086_write_byte.exit322

tda10086_write_byte.exit322:                      ; preds = %do.end.i320, %do.body.i318.tda10086_write_byte.exit322_crit_edge, %if.end25.tda10086_write_byte.exit322_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i309) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i308) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i323) #6
  %266 = getelementptr inbounds [2 x i8], ptr %b0.i323, i32 0, i32 1
  %267 = ptrtoint ptr %b0.i323 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 18, ptr %b0.i323, align 1
  %268 = ptrtoint ptr %266 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 -127, ptr %266, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i324) #6
  %269 = getelementptr inbounds i8, ptr %msg.i324, i32 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 196607, ptr %269, align 4
  %flags.i325 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i324, i32 0, i32 1
  %271 = ptrtoint ptr %flags.i325 to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 0, ptr %flags.i325, align 2
  %buf.i327 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i324, i32 0, i32 3
  %272 = ptrtoint ptr %buf.i327 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %b0.i323, ptr %buf.i327, align 4
  %273 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %config, align 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %274, align 4
  %conv2.i329 = zext i8 %276 to i16
  %277 = ptrtoint ptr %msg.i324 to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %conv2.i329, ptr %msg.i324, align 4
  %278 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %1, align 4
  %call.i330 = call i32 @i2c_transfer(ptr noundef %279, ptr noundef nonnull %msg.i324, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i330)
  %cmp.not.i331 = icmp eq i32 %call.i330, 1
  br i1 %cmp.not.i331, label %tda10086_write_byte.exit322.tda10086_write_byte.exit337_crit_edge, label %do.body.i333

tda10086_write_byte.exit322.tda10086_write_byte.exit337_crit_edge: ; preds = %tda10086_write_byte.exit322
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit337

do.body.i333:                                     ; preds = %tda10086_write_byte.exit322
  %280 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool.not.i332 = icmp eq i32 %280, 0
  br i1 %tobool.not.i332, label %do.body.i333.tda10086_write_byte.exit337_crit_edge, label %do.end.i335

do.body.i333.tda10086_write_byte.exit337_crit_edge: ; preds = %do.body.i333
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit337

do.end.i335:                                      ; preds = %do.body.i333
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 18, i32 noundef 129, i32 noundef %call.i330) #9
  br label %tda10086_write_byte.exit337

tda10086_write_byte.exit337:                      ; preds = %do.end.i335, %do.body.i333.tda10086_write_byte.exit337_crit_edge, %tda10086_write_byte.exit322.tda10086_write_byte.exit337_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i324) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i323) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i338) #6
  %281 = getelementptr inbounds [2 x i8], ptr %b0.i338, i32 0, i32 1
  %282 = ptrtoint ptr %b0.i338 to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 25, ptr %b0.i338, align 1
  %283 = ptrtoint ptr %281 to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 64, ptr %281, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i339) #6
  %284 = getelementptr inbounds i8, ptr %msg.i339, i32 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 196607, ptr %284, align 4
  %flags.i340 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i339, i32 0, i32 1
  %286 = ptrtoint ptr %flags.i340 to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 0, ptr %flags.i340, align 2
  %buf.i342 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i339, i32 0, i32 3
  %287 = ptrtoint ptr %buf.i342 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %b0.i338, ptr %buf.i342, align 4
  %288 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %config, align 4
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %289, align 4
  %conv2.i344 = zext i8 %291 to i16
  %292 = ptrtoint ptr %msg.i339 to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %conv2.i344, ptr %msg.i339, align 4
  %293 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %1, align 4
  %call.i345 = call i32 @i2c_transfer(ptr noundef %294, ptr noundef nonnull %msg.i339, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i345)
  %cmp.not.i346 = icmp eq i32 %call.i345, 1
  br i1 %cmp.not.i346, label %tda10086_write_byte.exit337.tda10086_write_byte.exit352_crit_edge, label %do.body.i348

tda10086_write_byte.exit337.tda10086_write_byte.exit352_crit_edge: ; preds = %tda10086_write_byte.exit337
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit352

do.body.i348:                                     ; preds = %tda10086_write_byte.exit337
  %295 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool.not.i347 = icmp eq i32 %295, 0
  br i1 %tobool.not.i347, label %do.body.i348.tda10086_write_byte.exit352_crit_edge, label %do.end.i350

do.body.i348.tda10086_write_byte.exit352_crit_edge: ; preds = %do.body.i348
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit352

do.end.i350:                                      ; preds = %do.body.i348
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i349 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 25, i32 noundef 64, i32 noundef %call.i345) #9
  br label %tda10086_write_byte.exit352

tda10086_write_byte.exit352:                      ; preds = %do.end.i350, %do.body.i348.tda10086_write_byte.exit352_crit_edge, %tda10086_write_byte.exit337.tda10086_write_byte.exit352_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i339) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i338) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i353) #6
  %296 = getelementptr inbounds [2 x i8], ptr %b0.i353, i32 0, i32 1
  %297 = ptrtoint ptr %b0.i353 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 86, ptr %b0.i353, align 1
  %298 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 -128, ptr %296, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i354) #6
  %299 = getelementptr inbounds i8, ptr %msg.i354, i32 4
  %300 = ptrtoint ptr %299 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 196607, ptr %299, align 4
  %flags.i355 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i354, i32 0, i32 1
  %301 = ptrtoint ptr %flags.i355 to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 0, ptr %flags.i355, align 2
  %buf.i357 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i354, i32 0, i32 3
  %302 = ptrtoint ptr %buf.i357 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %b0.i353, ptr %buf.i357, align 4
  %303 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %config, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %304, align 4
  %conv2.i359 = zext i8 %306 to i16
  %307 = ptrtoint ptr %msg.i354 to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 %conv2.i359, ptr %msg.i354, align 4
  %308 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %1, align 4
  %call.i360 = call i32 @i2c_transfer(ptr noundef %309, ptr noundef nonnull %msg.i354, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i360)
  %cmp.not.i361 = icmp eq i32 %call.i360, 1
  br i1 %cmp.not.i361, label %tda10086_write_byte.exit352.tda10086_write_byte.exit367_crit_edge, label %do.body.i363

tda10086_write_byte.exit352.tda10086_write_byte.exit367_crit_edge: ; preds = %tda10086_write_byte.exit352
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit367

do.body.i363:                                     ; preds = %tda10086_write_byte.exit352
  %310 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool.not.i362 = icmp eq i32 %310, 0
  br i1 %tobool.not.i362, label %do.body.i363.tda10086_write_byte.exit367_crit_edge, label %do.end.i365

do.body.i363.tda10086_write_byte.exit367_crit_edge: ; preds = %do.body.i363
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit367

do.end.i365:                                      ; preds = %do.body.i363
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 86, i32 noundef 128, i32 noundef %call.i360) #9
  br label %tda10086_write_byte.exit367

tda10086_write_byte.exit367:                      ; preds = %do.end.i365, %do.body.i363.tda10086_write_byte.exit367_crit_edge, %tda10086_write_byte.exit352.tda10086_write_byte.exit367_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i354) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i353) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i368) #6
  %311 = getelementptr inbounds [2 x i8], ptr %b0.i368, i32 0, i32 1
  %312 = ptrtoint ptr %b0.i368 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 87, ptr %b0.i368, align 1
  %313 = ptrtoint ptr %311 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 8, ptr %311, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i369) #6
  %314 = getelementptr inbounds i8, ptr %msg.i369, i32 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 196607, ptr %314, align 4
  %flags.i370 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i369, i32 0, i32 1
  %316 = ptrtoint ptr %flags.i370 to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 0, ptr %flags.i370, align 2
  %buf.i372 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i369, i32 0, i32 3
  %317 = ptrtoint ptr %buf.i372 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %b0.i368, ptr %buf.i372, align 4
  %318 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %config, align 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %319, align 4
  %conv2.i374 = zext i8 %321 to i16
  %322 = ptrtoint ptr %msg.i369 to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 %conv2.i374, ptr %msg.i369, align 4
  %323 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %1, align 4
  %call.i375 = call i32 @i2c_transfer(ptr noundef %324, ptr noundef nonnull %msg.i369, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i375)
  %cmp.not.i376 = icmp eq i32 %call.i375, 1
  br i1 %cmp.not.i376, label %tda10086_write_byte.exit367.tda10086_write_byte.exit382_crit_edge, label %do.body.i378

tda10086_write_byte.exit367.tda10086_write_byte.exit382_crit_edge: ; preds = %tda10086_write_byte.exit367
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit382

do.body.i378:                                     ; preds = %tda10086_write_byte.exit367
  %325 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %tobool.not.i377 = icmp eq i32 %325, 0
  br i1 %tobool.not.i377, label %do.body.i378.tda10086_write_byte.exit382_crit_edge, label %do.end.i380

do.body.i378.tda10086_write_byte.exit382_crit_edge: ; preds = %do.body.i378
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit382

do.end.i380:                                      ; preds = %do.body.i378
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 87, i32 noundef 8, i32 noundef %call.i375) #9
  br label %tda10086_write_byte.exit382

tda10086_write_byte.exit382:                      ; preds = %do.end.i380, %do.body.i378.tda10086_write_byte.exit382_crit_edge, %tda10086_write_byte.exit367.tda10086_write_byte.exit382_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i369) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i368) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i383) #6
  %326 = getelementptr inbounds [2 x i8], ptr %b0.i383, i32 0, i32 1
  %327 = ptrtoint ptr %b0.i383 to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 16, ptr %b0.i383, align 1
  %328 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 42, ptr %326, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i384) #6
  %329 = getelementptr inbounds i8, ptr %msg.i384, i32 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 196607, ptr %329, align 4
  %flags.i385 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i384, i32 0, i32 1
  %331 = ptrtoint ptr %flags.i385 to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 0, ptr %flags.i385, align 2
  %buf.i387 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i384, i32 0, i32 3
  %332 = ptrtoint ptr %buf.i387 to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %b0.i383, ptr %buf.i387, align 4
  %333 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %config, align 4
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %334, align 4
  %conv2.i389 = zext i8 %336 to i16
  %337 = ptrtoint ptr %msg.i384 to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 %conv2.i389, ptr %msg.i384, align 4
  %338 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %1, align 4
  %call.i390 = call i32 @i2c_transfer(ptr noundef %339, ptr noundef nonnull %msg.i384, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i390)
  %cmp.not.i391 = icmp eq i32 %call.i390, 1
  br i1 %cmp.not.i391, label %tda10086_write_byte.exit382.tda10086_write_byte.exit397_crit_edge, label %do.body.i393

tda10086_write_byte.exit382.tda10086_write_byte.exit397_crit_edge: ; preds = %tda10086_write_byte.exit382
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit397

do.body.i393:                                     ; preds = %tda10086_write_byte.exit382
  %340 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %tobool.not.i392 = icmp eq i32 %340, 0
  br i1 %tobool.not.i392, label %do.body.i393.tda10086_write_byte.exit397_crit_edge, label %do.end.i395

do.body.i393.tda10086_write_byte.exit397_crit_edge: ; preds = %do.body.i393
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit397

do.end.i395:                                      ; preds = %do.body.i393
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 16, i32 noundef 42, i32 noundef %call.i390) #9
  br label %tda10086_write_byte.exit397

tda10086_write_byte.exit397:                      ; preds = %do.end.i395, %do.body.i393.tda10086_write_byte.exit397_crit_edge, %tda10086_write_byte.exit382.tda10086_write_byte.exit397_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i384) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i383) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i398) #6
  %341 = getelementptr inbounds [2 x i8], ptr %b0.i398, i32 0, i32 1
  %342 = ptrtoint ptr %b0.i398 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 88, ptr %b0.i398, align 1
  %343 = ptrtoint ptr %341 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 97, ptr %341, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i399) #6
  %344 = getelementptr inbounds i8, ptr %msg.i399, i32 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 196607, ptr %344, align 4
  %flags.i400 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i399, i32 0, i32 1
  %346 = ptrtoint ptr %flags.i400 to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 0, ptr %flags.i400, align 2
  %buf.i402 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i399, i32 0, i32 3
  %347 = ptrtoint ptr %buf.i402 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %b0.i398, ptr %buf.i402, align 4
  %348 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %config, align 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %349, align 4
  %conv2.i404 = zext i8 %351 to i16
  %352 = ptrtoint ptr %msg.i399 to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %conv2.i404, ptr %msg.i399, align 4
  %353 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %1, align 4
  %call.i405 = call i32 @i2c_transfer(ptr noundef %354, ptr noundef nonnull %msg.i399, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i405)
  %cmp.not.i406 = icmp eq i32 %call.i405, 1
  br i1 %cmp.not.i406, label %tda10086_write_byte.exit397.tda10086_write_byte.exit412_crit_edge, label %do.body.i408

tda10086_write_byte.exit397.tda10086_write_byte.exit412_crit_edge: ; preds = %tda10086_write_byte.exit397
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit412

do.body.i408:                                     ; preds = %tda10086_write_byte.exit397
  %355 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %355)
  %tobool.not.i407 = icmp eq i32 %355, 0
  br i1 %tobool.not.i407, label %do.body.i408.tda10086_write_byte.exit412_crit_edge, label %do.end.i410

do.body.i408.tda10086_write_byte.exit412_crit_edge: ; preds = %do.body.i408
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit412

do.end.i410:                                      ; preds = %do.body.i408
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i409 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 88, i32 noundef 97, i32 noundef %call.i405) #9
  br label %tda10086_write_byte.exit412

tda10086_write_byte.exit412:                      ; preds = %do.end.i410, %do.body.i408.tda10086_write_byte.exit412_crit_edge, %tda10086_write_byte.exit397.tda10086_write_byte.exit412_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i399) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i398) #6
  call fastcc void @tda10086_write_mask(ptr noundef %1, i32 noundef 88, i32 noundef 1, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i413) #6
  %356 = getelementptr inbounds [2 x i8], ptr %b0.i413, i32 0, i32 1
  %357 = ptrtoint ptr %b0.i413 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 5, ptr %b0.i413, align 1
  %358 = ptrtoint ptr %356 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 11, ptr %356, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i414) #6
  %359 = getelementptr inbounds i8, ptr %msg.i414, i32 4
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 196607, ptr %359, align 4
  %flags.i415 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i414, i32 0, i32 1
  %361 = ptrtoint ptr %flags.i415 to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 0, ptr %flags.i415, align 2
  %buf.i417 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i414, i32 0, i32 3
  %362 = ptrtoint ptr %buf.i417 to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %b0.i413, ptr %buf.i417, align 4
  %363 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %config, align 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %364, align 4
  %conv2.i419 = zext i8 %366 to i16
  %367 = ptrtoint ptr %msg.i414 to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 %conv2.i419, ptr %msg.i414, align 4
  %368 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %1, align 4
  %call.i420 = call i32 @i2c_transfer(ptr noundef %369, ptr noundef nonnull %msg.i414, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i420)
  %cmp.not.i421 = icmp eq i32 %call.i420, 1
  br i1 %cmp.not.i421, label %tda10086_write_byte.exit412.tda10086_write_byte.exit427_crit_edge, label %do.body.i423

tda10086_write_byte.exit412.tda10086_write_byte.exit427_crit_edge: ; preds = %tda10086_write_byte.exit412
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit427

do.body.i423:                                     ; preds = %tda10086_write_byte.exit412
  %370 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool.not.i422 = icmp eq i32 %370, 0
  br i1 %tobool.not.i422, label %do.body.i423.tda10086_write_byte.exit427_crit_edge, label %do.end.i425

do.body.i423.tda10086_write_byte.exit427_crit_edge: ; preds = %do.body.i423
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit427

do.end.i425:                                      ; preds = %do.body.i423
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i424 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 5, i32 noundef 11, i32 noundef %call.i420) #9
  br label %tda10086_write_byte.exit427

tda10086_write_byte.exit427:                      ; preds = %do.end.i425, %do.body.i423.tda10086_write_byte.exit427_crit_edge, %tda10086_write_byte.exit412.tda10086_write_byte.exit427_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i414) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i413) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i428) #6
  %371 = getelementptr inbounds [2 x i8], ptr %b0.i428, i32 0, i32 1
  %372 = ptrtoint ptr %b0.i428 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 55, ptr %b0.i428, align 1
  %373 = ptrtoint ptr %371 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 99, ptr %371, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i429) #6
  %374 = getelementptr inbounds i8, ptr %msg.i429, i32 4
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 196607, ptr %374, align 4
  %flags.i430 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i429, i32 0, i32 1
  %376 = ptrtoint ptr %flags.i430 to i32
  call void @__asan_store2_noabort(i32 %376)
  store i16 0, ptr %flags.i430, align 2
  %buf.i432 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i429, i32 0, i32 3
  %377 = ptrtoint ptr %buf.i432 to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr %b0.i428, ptr %buf.i432, align 4
  %378 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %config, align 4
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %379, align 4
  %conv2.i434 = zext i8 %381 to i16
  %382 = ptrtoint ptr %msg.i429 to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 %conv2.i434, ptr %msg.i429, align 4
  %383 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %1, align 4
  %call.i435 = call i32 @i2c_transfer(ptr noundef %384, ptr noundef nonnull %msg.i429, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i435)
  %cmp.not.i436 = icmp eq i32 %call.i435, 1
  br i1 %cmp.not.i436, label %tda10086_write_byte.exit427.tda10086_write_byte.exit442_crit_edge, label %do.body.i438

tda10086_write_byte.exit427.tda10086_write_byte.exit442_crit_edge: ; preds = %tda10086_write_byte.exit427
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit442

do.body.i438:                                     ; preds = %tda10086_write_byte.exit427
  %385 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %tobool.not.i437 = icmp eq i32 %385, 0
  br i1 %tobool.not.i437, label %do.body.i438.tda10086_write_byte.exit442_crit_edge, label %do.end.i440

do.body.i438.tda10086_write_byte.exit442_crit_edge: ; preds = %do.body.i438
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit442

do.end.i440:                                      ; preds = %do.body.i438
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i439 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 55, i32 noundef 99, i32 noundef %call.i435) #9
  br label %tda10086_write_byte.exit442

tda10086_write_byte.exit442:                      ; preds = %do.end.i440, %do.body.i438.tda10086_write_byte.exit442_crit_edge, %tda10086_write_byte.exit427.tda10086_write_byte.exit442_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i429) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i428) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i443) #6
  %386 = getelementptr inbounds [2 x i8], ptr %b0.i443, i32 0, i32 1
  %387 = ptrtoint ptr %b0.i443 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 63, ptr %b0.i443, align 1
  %388 = ptrtoint ptr %386 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 10, ptr %386, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i444) #6
  %389 = getelementptr inbounds i8, ptr %msg.i444, i32 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 196607, ptr %389, align 4
  %flags.i445 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i444, i32 0, i32 1
  %391 = ptrtoint ptr %flags.i445 to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 0, ptr %flags.i445, align 2
  %buf.i447 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i444, i32 0, i32 3
  %392 = ptrtoint ptr %buf.i447 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %b0.i443, ptr %buf.i447, align 4
  %393 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %config, align 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %394, align 4
  %conv2.i449 = zext i8 %396 to i16
  %397 = ptrtoint ptr %msg.i444 to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 %conv2.i449, ptr %msg.i444, align 4
  %398 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %1, align 4
  %call.i450 = call i32 @i2c_transfer(ptr noundef %399, ptr noundef nonnull %msg.i444, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i450)
  %cmp.not.i451 = icmp eq i32 %call.i450, 1
  br i1 %cmp.not.i451, label %tda10086_write_byte.exit442.tda10086_write_byte.exit457_crit_edge, label %do.body.i453

tda10086_write_byte.exit442.tda10086_write_byte.exit457_crit_edge: ; preds = %tda10086_write_byte.exit442
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit457

do.body.i453:                                     ; preds = %tda10086_write_byte.exit442
  %400 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %400)
  %tobool.not.i452 = icmp eq i32 %400, 0
  br i1 %tobool.not.i452, label %do.body.i453.tda10086_write_byte.exit457_crit_edge, label %do.end.i455

do.body.i453.tda10086_write_byte.exit457_crit_edge: ; preds = %do.body.i453
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit457

do.end.i455:                                      ; preds = %do.body.i453
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 63, i32 noundef 10, i32 noundef %call.i450) #9
  br label %tda10086_write_byte.exit457

tda10086_write_byte.exit457:                      ; preds = %do.end.i455, %do.body.i453.tda10086_write_byte.exit457_crit_edge, %tda10086_write_byte.exit442.tda10086_write_byte.exit457_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i444) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i443) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i458) #6
  %401 = getelementptr inbounds [2 x i8], ptr %b0.i458, i32 0, i32 1
  %402 = ptrtoint ptr %b0.i458 to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 64, ptr %b0.i458, align 1
  %403 = ptrtoint ptr %401 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 100, ptr %401, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i459) #6
  %404 = getelementptr inbounds i8, ptr %msg.i459, i32 4
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 196607, ptr %404, align 4
  %flags.i460 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i459, i32 0, i32 1
  %406 = ptrtoint ptr %flags.i460 to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 0, ptr %flags.i460, align 2
  %buf.i462 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i459, i32 0, i32 3
  %407 = ptrtoint ptr %buf.i462 to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr %b0.i458, ptr %buf.i462, align 4
  %408 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %config, align 4
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_load1_noabort(i32 %410)
  %411 = load i8, ptr %409, align 4
  %conv2.i464 = zext i8 %411 to i16
  %412 = ptrtoint ptr %msg.i459 to i32
  call void @__asan_store2_noabort(i32 %412)
  store i16 %conv2.i464, ptr %msg.i459, align 4
  %413 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %1, align 4
  %call.i465 = call i32 @i2c_transfer(ptr noundef %414, ptr noundef nonnull %msg.i459, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i465)
  %cmp.not.i466 = icmp eq i32 %call.i465, 1
  br i1 %cmp.not.i466, label %tda10086_write_byte.exit457.tda10086_write_byte.exit472_crit_edge, label %do.body.i468

tda10086_write_byte.exit457.tda10086_write_byte.exit472_crit_edge: ; preds = %tda10086_write_byte.exit457
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit472

do.body.i468:                                     ; preds = %tda10086_write_byte.exit457
  %415 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %415)
  %tobool.not.i467 = icmp eq i32 %415, 0
  br i1 %tobool.not.i467, label %do.body.i468.tda10086_write_byte.exit472_crit_edge, label %do.end.i470

do.body.i468.tda10086_write_byte.exit472_crit_edge: ; preds = %do.body.i468
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit472

do.end.i470:                                      ; preds = %do.body.i468
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i469 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 64, i32 noundef 100, i32 noundef %call.i465) #9
  br label %tda10086_write_byte.exit472

tda10086_write_byte.exit472:                      ; preds = %do.end.i470, %do.body.i468.tda10086_write_byte.exit472_crit_edge, %tda10086_write_byte.exit457.tda10086_write_byte.exit472_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i459) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i458) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i473) #6
  %416 = getelementptr inbounds [2 x i8], ptr %b0.i473, i32 0, i32 1
  %417 = ptrtoint ptr %b0.i473 to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 65, ptr %b0.i473, align 1
  %418 = ptrtoint ptr %416 to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 79, ptr %416, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i474) #6
  %419 = getelementptr inbounds i8, ptr %msg.i474, i32 4
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 196607, ptr %419, align 4
  %flags.i475 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i474, i32 0, i32 1
  %421 = ptrtoint ptr %flags.i475 to i32
  call void @__asan_store2_noabort(i32 %421)
  store i16 0, ptr %flags.i475, align 2
  %buf.i477 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i474, i32 0, i32 3
  %422 = ptrtoint ptr %buf.i477 to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr %b0.i473, ptr %buf.i477, align 4
  %423 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %config, align 4
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %424, align 4
  %conv2.i479 = zext i8 %426 to i16
  %427 = ptrtoint ptr %msg.i474 to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 %conv2.i479, ptr %msg.i474, align 4
  %428 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %1, align 4
  %call.i480 = call i32 @i2c_transfer(ptr noundef %429, ptr noundef nonnull %msg.i474, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i480)
  %cmp.not.i481 = icmp eq i32 %call.i480, 1
  br i1 %cmp.not.i481, label %tda10086_write_byte.exit472.tda10086_write_byte.exit487_crit_edge, label %do.body.i483

tda10086_write_byte.exit472.tda10086_write_byte.exit487_crit_edge: ; preds = %tda10086_write_byte.exit472
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit487

do.body.i483:                                     ; preds = %tda10086_write_byte.exit472
  %430 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %430)
  %tobool.not.i482 = icmp eq i32 %430, 0
  br i1 %tobool.not.i482, label %do.body.i483.tda10086_write_byte.exit487_crit_edge, label %do.end.i485

do.body.i483.tda10086_write_byte.exit487_crit_edge: ; preds = %do.body.i483
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit487

do.end.i485:                                      ; preds = %do.body.i483
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i484 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 65, i32 noundef 79, i32 noundef %call.i480) #9
  br label %tda10086_write_byte.exit487

tda10086_write_byte.exit487:                      ; preds = %do.end.i485, %do.body.i483.tda10086_write_byte.exit487_crit_edge, %tda10086_write_byte.exit472.tda10086_write_byte.exit487_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i474) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i473) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i488) #6
  %431 = getelementptr inbounds [2 x i8], ptr %b0.i488, i32 0, i32 1
  %432 = ptrtoint ptr %b0.i488 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 66, ptr %b0.i488, align 1
  %433 = ptrtoint ptr %431 to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 67, ptr %431, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i489) #6
  %434 = getelementptr inbounds i8, ptr %msg.i489, i32 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 196607, ptr %434, align 4
  %flags.i490 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i489, i32 0, i32 1
  %436 = ptrtoint ptr %flags.i490 to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 0, ptr %flags.i490, align 2
  %buf.i492 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i489, i32 0, i32 3
  %437 = ptrtoint ptr %buf.i492 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr %b0.i488, ptr %buf.i492, align 4
  %438 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %config, align 4
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %439, align 4
  %conv2.i494 = zext i8 %441 to i16
  %442 = ptrtoint ptr %msg.i489 to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 %conv2.i494, ptr %msg.i489, align 4
  %443 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %1, align 4
  %call.i495 = call i32 @i2c_transfer(ptr noundef %444, ptr noundef nonnull %msg.i489, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i495)
  %cmp.not.i496 = icmp eq i32 %call.i495, 1
  br i1 %cmp.not.i496, label %tda10086_write_byte.exit487.tda10086_write_byte.exit502_crit_edge, label %do.body.i498

tda10086_write_byte.exit487.tda10086_write_byte.exit502_crit_edge: ; preds = %tda10086_write_byte.exit487
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit502

do.body.i498:                                     ; preds = %tda10086_write_byte.exit487
  %445 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %445)
  %tobool.not.i497 = icmp eq i32 %445, 0
  br i1 %tobool.not.i497, label %do.body.i498.tda10086_write_byte.exit502_crit_edge, label %do.end.i500

do.body.i498.tda10086_write_byte.exit502_crit_edge: ; preds = %do.body.i498
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit502

do.end.i500:                                      ; preds = %do.body.i498
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i499 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 66, i32 noundef 67, i32 noundef %call.i495) #9
  br label %tda10086_write_byte.exit502

tda10086_write_byte.exit502:                      ; preds = %do.end.i500, %do.body.i498.tda10086_write_byte.exit502_crit_edge, %tda10086_write_byte.exit487.tda10086_write_byte.exit502_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i489) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i488) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i503) #6
  %446 = getelementptr inbounds [2 x i8], ptr %b0.i503, i32 0, i32 1
  %447 = ptrtoint ptr %b0.i503 to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 26, ptr %b0.i503, align 1
  %448 = ptrtoint ptr %446 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 17, ptr %446, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i504) #6
  %449 = getelementptr inbounds i8, ptr %msg.i504, i32 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 196607, ptr %449, align 4
  %flags.i505 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i504, i32 0, i32 1
  %451 = ptrtoint ptr %flags.i505 to i32
  call void @__asan_store2_noabort(i32 %451)
  store i16 0, ptr %flags.i505, align 2
  %buf.i507 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i504, i32 0, i32 3
  %452 = ptrtoint ptr %buf.i507 to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr %b0.i503, ptr %buf.i507, align 4
  %453 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %config, align 4
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %454, align 4
  %conv2.i509 = zext i8 %456 to i16
  %457 = ptrtoint ptr %msg.i504 to i32
  call void @__asan_store2_noabort(i32 %457)
  store i16 %conv2.i509, ptr %msg.i504, align 4
  %458 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %1, align 4
  %call.i510 = call i32 @i2c_transfer(ptr noundef %459, ptr noundef nonnull %msg.i504, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i510)
  %cmp.not.i511 = icmp eq i32 %call.i510, 1
  br i1 %cmp.not.i511, label %tda10086_write_byte.exit502.tda10086_write_byte.exit517_crit_edge, label %do.body.i513

tda10086_write_byte.exit502.tda10086_write_byte.exit517_crit_edge: ; preds = %tda10086_write_byte.exit502
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit517

do.body.i513:                                     ; preds = %tda10086_write_byte.exit502
  %460 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %460)
  %tobool.not.i512 = icmp eq i32 %460, 0
  br i1 %tobool.not.i512, label %do.body.i513.tda10086_write_byte.exit517_crit_edge, label %do.end.i515

do.body.i513.tda10086_write_byte.exit517_crit_edge: ; preds = %do.body.i513
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit517

do.end.i515:                                      ; preds = %do.body.i513
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i514 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 26, i32 noundef 17, i32 noundef %call.i510) #9
  br label %tda10086_write_byte.exit517

tda10086_write_byte.exit517:                      ; preds = %do.end.i515, %do.body.i513.tda10086_write_byte.exit517_crit_edge, %tda10086_write_byte.exit502.tda10086_write_byte.exit517_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i504) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i503) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i518) #6
  %461 = getelementptr inbounds [2 x i8], ptr %b0.i518, i32 0, i32 1
  %462 = ptrtoint ptr %b0.i518 to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 61, ptr %b0.i518, align 1
  %463 = ptrtoint ptr %461 to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 -128, ptr %461, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i519) #6
  %464 = getelementptr inbounds i8, ptr %msg.i519, i32 4
  %465 = ptrtoint ptr %464 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 196607, ptr %464, align 4
  %flags.i520 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i519, i32 0, i32 1
  %466 = ptrtoint ptr %flags.i520 to i32
  call void @__asan_store2_noabort(i32 %466)
  store i16 0, ptr %flags.i520, align 2
  %buf.i522 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i519, i32 0, i32 3
  %467 = ptrtoint ptr %buf.i522 to i32
  call void @__asan_store4_noabort(i32 %467)
  store ptr %b0.i518, ptr %buf.i522, align 4
  %468 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %config, align 4
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %469, align 4
  %conv2.i524 = zext i8 %471 to i16
  %472 = ptrtoint ptr %msg.i519 to i32
  call void @__asan_store2_noabort(i32 %472)
  store i16 %conv2.i524, ptr %msg.i519, align 4
  %473 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %1, align 4
  %call.i525 = call i32 @i2c_transfer(ptr noundef %474, ptr noundef nonnull %msg.i519, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i525)
  %cmp.not.i526 = icmp eq i32 %call.i525, 1
  br i1 %cmp.not.i526, label %tda10086_write_byte.exit517.tda10086_write_byte.exit532_crit_edge, label %do.body.i528

tda10086_write_byte.exit517.tda10086_write_byte.exit532_crit_edge: ; preds = %tda10086_write_byte.exit517
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit532

do.body.i528:                                     ; preds = %tda10086_write_byte.exit517
  %475 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %475)
  %tobool.not.i527 = icmp eq i32 %475, 0
  br i1 %tobool.not.i527, label %do.body.i528.tda10086_write_byte.exit532_crit_edge, label %do.end.i530

do.body.i528.tda10086_write_byte.exit532_crit_edge: ; preds = %do.body.i528
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit532

do.end.i530:                                      ; preds = %do.body.i528
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i529 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 61, i32 noundef 128, i32 noundef %call.i525) #9
  br label %tda10086_write_byte.exit532

tda10086_write_byte.exit532:                      ; preds = %do.end.i530, %do.body.i528.tda10086_write_byte.exit532_crit_edge, %tda10086_write_byte.exit517.tda10086_write_byte.exit532_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i519) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i518) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i533) #6
  %476 = getelementptr inbounds [2 x i8], ptr %b0.i533, i32 0, i32 1
  %477 = ptrtoint ptr %b0.i533 to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 54, ptr %b0.i533, align 1
  %conv1.i = trunc i32 %spec.select to i8
  %478 = ptrtoint ptr %476 to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 %conv1.i, ptr %476, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i534) #6
  %479 = getelementptr inbounds i8, ptr %msg.i534, i32 4
  %480 = ptrtoint ptr %479 to i32
  call void @__asan_store4_noabort(i32 %480)
  store i32 196607, ptr %479, align 4
  %flags.i535 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i534, i32 0, i32 1
  %481 = ptrtoint ptr %flags.i535 to i32
  call void @__asan_store2_noabort(i32 %481)
  store i16 0, ptr %flags.i535, align 2
  %buf.i537 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i534, i32 0, i32 3
  %482 = ptrtoint ptr %buf.i537 to i32
  call void @__asan_store4_noabort(i32 %482)
  store ptr %b0.i533, ptr %buf.i537, align 4
  %483 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %config, align 4
  %485 = ptrtoint ptr %484 to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %484, align 4
  %conv2.i539 = zext i8 %486 to i16
  %487 = ptrtoint ptr %msg.i534 to i32
  call void @__asan_store2_noabort(i32 %487)
  store i16 %conv2.i539, ptr %msg.i534, align 4
  %488 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %1, align 4
  %call.i540 = call i32 @i2c_transfer(ptr noundef %489, ptr noundef nonnull %msg.i534, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i540)
  %cmp.not.i541 = icmp eq i32 %call.i540, 1
  br i1 %cmp.not.i541, label %tda10086_write_byte.exit532.tda10086_write_byte.exit547_crit_edge, label %do.body.i543

tda10086_write_byte.exit532.tda10086_write_byte.exit547_crit_edge: ; preds = %tda10086_write_byte.exit532
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit547

do.body.i543:                                     ; preds = %tda10086_write_byte.exit532
  %490 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %490)
  %tobool.not.i542 = icmp eq i32 %490, 0
  br i1 %tobool.not.i542, label %do.body.i543.tda10086_write_byte.exit547_crit_edge, label %do.end.i545

do.body.i543.tda10086_write_byte.exit547_crit_edge: ; preds = %do.body.i543
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit547

do.end.i545:                                      ; preds = %do.body.i543
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i544 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 54, i32 noundef %spec.select, i32 noundef %call.i540) #9
  br label %tda10086_write_byte.exit547

tda10086_write_byte.exit547:                      ; preds = %do.end.i545, %do.body.i543.tda10086_write_byte.exit547_crit_edge, %tda10086_write_byte.exit532.tda10086_write_byte.exit547_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i534) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i533) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i548) #6
  %491 = getelementptr inbounds [2 x i8], ptr %b0.i548, i32 0, i32 1
  %492 = ptrtoint ptr %b0.i548 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 52, ptr %b0.i548, align 1
  %493 = ptrtoint ptr %491 to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 120, ptr %491, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i549) #6
  %494 = getelementptr inbounds i8, ptr %msg.i549, i32 4
  %495 = ptrtoint ptr %494 to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 196607, ptr %494, align 4
  %flags.i550 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i549, i32 0, i32 1
  %496 = ptrtoint ptr %flags.i550 to i32
  call void @__asan_store2_noabort(i32 %496)
  store i16 0, ptr %flags.i550, align 2
  %buf.i552 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i549, i32 0, i32 3
  %497 = ptrtoint ptr %buf.i552 to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %b0.i548, ptr %buf.i552, align 4
  %498 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %config, align 4
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %499, align 4
  %conv2.i554 = zext i8 %501 to i16
  %502 = ptrtoint ptr %msg.i549 to i32
  call void @__asan_store2_noabort(i32 %502)
  store i16 %conv2.i554, ptr %msg.i549, align 4
  %503 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %1, align 4
  %call.i555 = call i32 @i2c_transfer(ptr noundef %504, ptr noundef nonnull %msg.i549, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i555)
  %cmp.not.i556 = icmp eq i32 %call.i555, 1
  br i1 %cmp.not.i556, label %tda10086_write_byte.exit547.tda10086_write_byte.exit562_crit_edge, label %do.body.i558

tda10086_write_byte.exit547.tda10086_write_byte.exit562_crit_edge: ; preds = %tda10086_write_byte.exit547
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit562

do.body.i558:                                     ; preds = %tda10086_write_byte.exit547
  %505 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %505)
  %tobool.not.i557 = icmp eq i32 %505, 0
  br i1 %tobool.not.i557, label %do.body.i558.tda10086_write_byte.exit562_crit_edge, label %do.end.i560

do.body.i558.tda10086_write_byte.exit562_crit_edge: ; preds = %do.body.i558
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit562

do.end.i560:                                      ; preds = %do.body.i558
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i559 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 52, i32 noundef 120, i32 noundef %call.i555) #9
  br label %tda10086_write_byte.exit562

tda10086_write_byte.exit562:                      ; preds = %do.end.i560, %do.body.i558.tda10086_write_byte.exit562_crit_edge, %tda10086_write_byte.exit547.tda10086_write_byte.exit562_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i549) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i548) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i563) #6
  %506 = getelementptr inbounds [2 x i8], ptr %b0.i563, i32 0, i32 1
  %507 = ptrtoint ptr %b0.i563 to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 53, ptr %b0.i563, align 1
  %508 = ptrtoint ptr %506 to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 0, ptr %506, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i564) #6
  %509 = getelementptr inbounds i8, ptr %msg.i564, i32 4
  %510 = ptrtoint ptr %509 to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 196607, ptr %509, align 4
  %flags.i565 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564, i32 0, i32 1
  %511 = ptrtoint ptr %flags.i565 to i32
  call void @__asan_store2_noabort(i32 %511)
  store i16 0, ptr %flags.i565, align 2
  %buf.i567 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564, i32 0, i32 3
  %512 = ptrtoint ptr %buf.i567 to i32
  call void @__asan_store4_noabort(i32 %512)
  store ptr %b0.i563, ptr %buf.i567, align 4
  %513 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %config, align 4
  %515 = ptrtoint ptr %514 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %514, align 4
  %conv2.i569 = zext i8 %516 to i16
  %517 = ptrtoint ptr %msg.i564 to i32
  call void @__asan_store2_noabort(i32 %517)
  store i16 %conv2.i569, ptr %msg.i564, align 4
  %518 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %1, align 4
  %call.i570 = call i32 @i2c_transfer(ptr noundef %519, ptr noundef nonnull %msg.i564, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i570)
  %cmp.not.i571 = icmp eq i32 %call.i570, 1
  br i1 %cmp.not.i571, label %tda10086_write_byte.exit562.tda10086_write_byte.exit577_crit_edge, label %do.body.i573

tda10086_write_byte.exit562.tda10086_write_byte.exit577_crit_edge: ; preds = %tda10086_write_byte.exit562
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit577

do.body.i573:                                     ; preds = %tda10086_write_byte.exit562
  %520 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %520)
  %tobool.not.i572 = icmp eq i32 %520, 0
  br i1 %tobool.not.i572, label %do.body.i573.tda10086_write_byte.exit577_crit_edge, label %do.end.i575

do.body.i573.tda10086_write_byte.exit577_crit_edge: ; preds = %do.body.i573
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit577

do.end.i575:                                      ; preds = %do.body.i573
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i574 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 53, i32 noundef 0, i32 noundef %call.i570) #9
  br label %tda10086_write_byte.exit577

tda10086_write_byte.exit577:                      ; preds = %do.end.i575, %do.body.i573.tda10086_write_byte.exit577_crit_edge, %tda10086_write_byte.exit562.tda10086_write_byte.exit577_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i564) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i563) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call fastcc void @tda10086_write_mask(ptr noundef %1, i32 noundef 0, i32 noundef 8, i32 noundef 8)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %b0.i.i132 = alloca [2 x i8], align 1
  %msg.i.i133 = alloca %struct.i2c_msg, align 4
  %b0.i86.i = alloca [2 x i8], align 1
  %msg.i87.i = alloca %struct.i2c_msg, align 4
  %b0.i70.i = alloca [2 x i8], align 1
  %msg.i71.i = alloca %struct.i2c_msg, align 4
  %b0.i54.i = alloca [2 x i8], align 1
  %msg.i55.i = alloca %struct.i2c_msg, align 4
  %b0.i38.i = alloca [2 x i8], align 1
  %msg.i39.i = alloca %struct.i2c_msg, align 4
  %b0.i22.i = alloca [2 x i8], align 1
  %msg.i23.i = alloca %struct.i2c_msg, align 4
  %b0.i6.i = alloca [2 x i8], align 1
  %msg.i7.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %b0.i108 = alloca [2 x i8], align 1
  %msg.i109 = alloca %struct.i2c_msg, align 4
  %b0.i93 = alloca [2 x i8], align 1
  %msg.i94 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #6
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %freq, align 4
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %4 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %b0.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 53, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %7, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %b0.i, ptr %buf.i, align 4
  %config.i = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv2.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv2.i, ptr %msg.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end3.tda10086_write_byte.exit_crit_edge, label %do.body.i

do.end3.tda10086_write_byte.exit_crit_edge:       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.body.i:                                        ; preds = %do.end3
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_write_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_write_byte.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 53, i32 noundef %call.i) #9
  br label %tda10086_write_byte.exit

tda10086_write_byte.exit:                         ; preds = %do.end.i, %do.body.i.tda10086_write_byte.exit_crit_edge, %do.end3.tda10086_write_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  %has_lock = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %has_lock to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %has_lock, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %20 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_params, align 4
  %tobool5.not = icmp eq ptr %21, null
  br i1 %tobool5.not, label %tda10086_write_byte.exit.if.end35_crit_edge, label %if.then6

tda10086_write_byte.exit.if.end35_crit_edge:      ; preds = %tda10086_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then6:                                         ; preds = %tda10086_write_byte.exit
  %call10 = call i32 %21(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %if.then6.if.end17_crit_edge, label %if.then13

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 %23(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then6.if.end17_crit_edge
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %24 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %get_frequency, align 4
  %tobool20.not = icmp eq ptr %25, null
  br i1 %tobool20.not, label %if.end17.if.end26_crit_edge, label %if.then21

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 %25(ptr noundef %fe, ptr noundef nonnull %freq) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %if.end17.if.end26_crit_edge
  %26 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool29.not = icmp eq ptr %27, null
  br i1 %tobool29.not, label %if.end26.if.end35_crit_edge, label %if.then30

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = call i32 %27(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end26.if.end35_crit_edge, %tda10086_write_byte.exit.if.end35_crit_edge
  %28 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dtv_property_cache, align 4
  %30 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %freq, align 4
  %sub = sub i32 %29, %31
  %mul = shl i32 %sub, 16
  %div = udiv i32 %mul, 96000
  %32 = lshr i32 %div, 8
  %or = or i32 %32, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i93) #6
  %33 = getelementptr inbounds [2 x i8], ptr %b0.i93, i32 0, i32 1
  %34 = ptrtoint ptr %b0.i93 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 61, ptr %b0.i93, align 1
  %conv1.i = trunc i32 %or to i8
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv1.i, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i94) #6
  %36 = getelementptr inbounds i8, ptr %msg.i94, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %flags.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i95 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i95, align 2
  %buf.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i97 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b0.i93, ptr %buf.i97, align 4
  %40 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %config.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 4
  %conv2.i99 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i94 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv2.i99, ptr %msg.i94, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i100 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i94, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i100)
  %cmp.not.i101 = icmp eq i32 %call.i100, 1
  br i1 %cmp.not.i101, label %if.end35.tda10086_write_byte.exit107_crit_edge, label %do.body.i103

if.end35.tda10086_write_byte.exit107_crit_edge:   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit107

do.body.i103:                                     ; preds = %if.end35
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i102 = icmp eq i32 %47, 0
  br i1 %tobool.not.i102, label %do.body.i103.tda10086_write_byte.exit107_crit_edge, label %do.end.i105

do.body.i103.tda10086_write_byte.exit107_crit_edge: ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit107

do.end.i105:                                      ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 61, i32 noundef %or, i32 noundef %call.i100) #9
  br label %tda10086_write_byte.exit107

tda10086_write_byte.exit107:                      ; preds = %do.end.i105, %do.body.i103.tda10086_write_byte.exit107_crit_edge, %if.end35.tda10086_write_byte.exit107_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i94) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i93) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i108) #6
  %48 = getelementptr inbounds [2 x i8], ptr %b0.i108, i32 0, i32 1
  %49 = ptrtoint ptr %b0.i108 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 62, ptr %b0.i108, align 1
  %conv1.i110 = trunc i32 %div to i8
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv1.i110, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i109) #6
  %51 = getelementptr inbounds i8, ptr %msg.i109, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 196607, ptr %51, align 4
  %flags.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i111 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i111, align 2
  %buf.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 3
  %54 = ptrtoint ptr %buf.i113 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %b0.i108, ptr %buf.i113, align 4
  %55 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 4
  %conv2.i115 = zext i8 %58 to i16
  %59 = ptrtoint ptr %msg.i109 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv2.i115, ptr %msg.i109, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call.i116 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i109, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i116)
  %cmp.not.i117 = icmp eq i32 %call.i116, 1
  br i1 %cmp.not.i117, label %tda10086_write_byte.exit107.tda10086_write_byte.exit123_crit_edge, label %do.body.i119

tda10086_write_byte.exit107.tda10086_write_byte.exit123_crit_edge: ; preds = %tda10086_write_byte.exit107
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit123

do.body.i119:                                     ; preds = %tda10086_write_byte.exit107
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i118 = icmp eq i32 %62, 0
  br i1 %tobool.not.i118, label %tda10086_write_byte.exit123.thread, label %do.end.i121

tda10086_write_byte.exit123.thread:               ; preds = %do.body.i119
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i108) #6
  br label %do.end3.i

do.end.i121:                                      ; preds = %do.body.i119
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 62, i32 noundef %div, i32 noundef %call.i116) #9
  br label %tda10086_write_byte.exit123

tda10086_write_byte.exit123:                      ; preds = %do.end.i121, %tda10086_write_byte.exit107.tda10086_write_byte.exit123_crit_edge
  %.pr = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i124 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i124, label %tda10086_write_byte.exit123.do.end3.i_crit_edge, label %do.end.i127

tda10086_write_byte.exit123.do.end3.i_crit_edge:  ; preds = %tda10086_write_byte.exit123
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i127:                                      ; preds = %tda10086_write_byte.exit123
  call void @__sanitizer_cov_trace_pc() #8
  %inversion.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %63 = ptrtoint ptr %inversion.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %inversion.i, align 4
  %65 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config.i, align 4
  %invert.i = getelementptr inbounds %struct.tda10086_config, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %invert.i, align 1
  %conv.i = zext i8 %68 to i32
  %call.i126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %64, i32 noundef %conv.i) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i127, %tda10086_write_byte.exit123.do.end3.i_crit_edge, %tda10086_write_byte.exit123.thread
  %inversion4.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %69 = ptrtoint ptr %inversion4.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %inversion4.i, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i32 %70, label %do.end3.i.tda10086_set_inversion.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb10.i
    i32 2, label %sw.bb16.i
  ]

do.end3.i.tda10086_set_inversion.exit_crit_edge:  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_set_inversion.exit

sw.bb.i:                                          ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %config.i, align 4
  %invert6.i = getelementptr inbounds %struct.tda10086_config, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %invert6.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %invert6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool7.not.i = icmp eq i8 %75, 0
  %spec.select.i128 = select i1 %tobool7.not.i, i32 128, i32 64
  br label %tda10086_set_inversion.exit

sw.bb10.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %config.i, align 4
  %invert12.i = getelementptr inbounds %struct.tda10086_config, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %invert12.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %invert12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool13.not.i = icmp eq i8 %79, 0
  %spec.select1.i = select i1 %tobool13.not.i, i32 64, i32 128
  br label %tda10086_set_inversion.exit

sw.bb16.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_set_inversion.exit

tda10086_set_inversion.exit:                      ; preds = %sw.bb16.i, %sw.bb10.i, %sw.bb.i, %do.end3.i.tda10086_set_inversion.exit_crit_edge
  %invval.0.i = phi i32 [ 128, %do.end3.i.tda10086_set_inversion.exit_crit_edge ], [ 0, %sw.bb16.i ], [ %spec.select.i128, %sw.bb.i ], [ %spec.select1.i, %sw.bb10.i ]
  call fastcc void @tda10086_write_mask(ptr noundef %1, i32 noundef 12, i32 noundef 192, i32 noundef %invval.0.i) #6
  %symbol_rate1.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %80 = ptrtoint ptr %symbol_rate1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %symbol_rate1.i, align 4
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i129 = icmp eq i32 %82, 0
  br i1 %tobool.not.i129, label %tda10086_set_inversion.exit.do.end5.i_crit_edge, label %do.end.i131

tda10086_set_inversion.exit.do.end5.i_crit_edge:  ; preds = %tda10086_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5.i

do.end.i131:                                      ; preds = %tda10086_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %81) #9
  br label %do.end5.i

do.end5.i:                                        ; preds = %do.end.i131, %tda10086_set_inversion.exit.do.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1315200, i32 %81)
  %cmp.i = icmp ult i32 %81, 1315200
  br i1 %cmp.i, label %do.end5.i.if.end237.i_crit_edge, label %if.else.i

do.end5.i.if.end237.i_crit_edge:                  ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i

if.else.i:                                        ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1996800, i32 %81)
  %cmp7.i = icmp ult i32 %81, 1996800
  br i1 %cmp7.i, label %if.else.i.if.end237.i_crit_edge, label %if.else9.i

if.else.i.if.end237.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2592000, i32 %81)
  %cmp10.i = icmp ult i32 %81, 2592000
  br i1 %cmp10.i, label %if.else9.i.if.end237.i_crit_edge, label %if.else12.i

if.else9.i.if.end237.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i

if.else12.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3993600, i32 %81)
  %cmp13.i = icmp ult i32 %81, 3993600
  br i1 %cmp13.i, label %if.else12.i.if.end237.i_crit_edge, label %if.else15.i

if.else12.i.if.end237.i_crit_edge:                ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i

if.else15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5280000, i32 %81)
  %cmp16.i = icmp ult i32 %81, 5280000
  br i1 %cmp16.i, label %if.else15.i.if.end237.i_crit_edge, label %if.else18.i

if.else15.i.if.end237.i_crit_edge:                ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i

if.else18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7996800, i32 %81)
  %cmp19.i = icmp ult i32 %81, 7996800
  br i1 %cmp19.i, label %if.else18.i.if.end237.i_crit_edge, label %if.else21.i

if.else18.i.if.end237.i_crit_edge:                ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i

if.else21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10560000, i32 %81)
  %cmp22.i = icmp ult i32 %81, 10560000
  br i1 %cmp22.i, label %if.else21.i.if.end237.i_crit_edge, label %if.else24.i

if.else21.i.if.end237.i_crit_edge:                ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i

if.else24.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15993600, i32 %81)
  %cmp25.i = icmp ult i32 %81, 15993600
  br i1 %cmp25.i, label %if.else24.i.if.end237.i_crit_edge, label %if.else27.i

if.else24.i.if.end237.i_crit_edge:                ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i

if.else27.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21120000, i32 %81)
  %cmp28.i = icmp ult i32 %81, 21120000
  br i1 %cmp28.i, label %if.else27.i.if.end237.i_crit_edge, label %if.else30.i

if.else27.i.if.end237.i_crit_edge:                ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i

if.else30.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31996800, i32 %81)
  %cmp31.i = icmp ult i32 %81, 31996800
  %..i = select i1 %cmp31.i, i32 67, i32 99
  %.4.i = select i1 %cmp31.i, i32 67, i32 79
  %.5.i = select i1 %cmp31.i, i32 0, i32 8
  br label %if.end237.i

if.end237.i:                                      ; preds = %if.else30.i, %if.else27.i.if.end237.i_crit_edge, %if.else24.i.if.end237.i_crit_edge, %if.else21.i.if.end237.i_crit_edge, %if.else18.i.if.end237.i_crit_edge, %if.else15.i.if.end237.i_crit_edge, %if.else12.i.if.end237.i_crit_edge, %if.else9.i.if.end237.i_crit_edge, %if.else.i.if.end237.i_crit_edge, %do.end5.i.if.end237.i_crit_edge
  %reg37.0.i = phi i32 [ 67, %do.end5.i.if.end237.i_crit_edge ], [ 67, %if.else.i.if.end237.i_crit_edge ], [ 67, %if.else9.i.if.end237.i_crit_edge ], [ 67, %if.else12.i.if.end237.i_crit_edge ], [ 67, %if.else15.i.if.end237.i_crit_edge ], [ 67, %if.else18.i.if.end237.i_crit_edge ], [ 67, %if.else21.i.if.end237.i_crit_edge ], [ 67, %if.else24.i.if.end237.i_crit_edge ], [ 67, %if.else27.i.if.end237.i_crit_edge ], [ %..i, %if.else30.i ]
  %reg42.0.i = phi i32 [ 67, %do.end5.i.if.end237.i_crit_edge ], [ 67, %if.else.i.if.end237.i_crit_edge ], [ 67, %if.else9.i.if.end237.i_crit_edge ], [ 67, %if.else12.i.if.end237.i_crit_edge ], [ 67, %if.else15.i.if.end237.i_crit_edge ], [ 67, %if.else18.i.if.end237.i_crit_edge ], [ 67, %if.else21.i.if.end237.i_crit_edge ], [ 67, %if.else24.i.if.end237.i_crit_edge ], [ 67, %if.else27.i.if.end237.i_crit_edge ], [ %.4.i, %if.else30.i ]
  %byp.0.i = phi i32 [ 0, %do.end5.i.if.end237.i_crit_edge ], [ 0, %if.else.i.if.end237.i_crit_edge ], [ 0, %if.else9.i.if.end237.i_crit_edge ], [ 0, %if.else12.i.if.end237.i_crit_edge ], [ 0, %if.else15.i.if.end237.i_crit_edge ], [ 0, %if.else18.i.if.end237.i_crit_edge ], [ 0, %if.else21.i.if.end237.i_crit_edge ], [ 0, %if.else24.i.if.end237.i_crit_edge ], [ 0, %if.else27.i.if.end237.i_crit_edge ], [ %.5.i, %if.else30.i ]
  %afs.0.i = phi i32 [ 128, %do.end5.i.if.end237.i_crit_edge ], [ 0, %if.else.i.if.end237.i_crit_edge ], [ 128, %if.else9.i.if.end237.i_crit_edge ], [ 0, %if.else12.i.if.end237.i_crit_edge ], [ 128, %if.else15.i.if.end237.i_crit_edge ], [ 0, %if.else18.i.if.end237.i_crit_edge ], [ 128, %if.else21.i.if.end237.i_crit_edge ], [ 0, %if.else24.i.if.end237.i_crit_edge ], [ 128, %if.else27.i.if.end237.i_crit_edge ], [ 0, %if.else30.i ]
  %dfn.0.i = phi i32 [ 4, %do.end5.i.if.end237.i_crit_edge ], [ 4, %if.else.i.if.end237.i_crit_edge ], [ 3, %if.else9.i.if.end237.i_crit_edge ], [ 3, %if.else12.i.if.end237.i_crit_edge ], [ 2, %if.else15.i.if.end237.i_crit_edge ], [ 2, %if.else18.i.if.end237.i_crit_edge ], [ 1, %if.else21.i.if.end237.i_crit_edge ], [ 1, %if.else24.i.if.end237.i_crit_edge ], [ 0, %if.else27.i.if.end237.i_crit_edge ], [ 0, %if.else30.i ]
  %83 = udiv i32 %81, 1000
  %div.i = zext i32 %83 to i64
  %mul.i = shl nuw nsw i64 %div.i, 21
  %sh_prom.i = zext i32 %dfn.0.i to i64
  %mul45.i = shl nuw nsw i64 %mul.i, %sh_prom.i
  %add.i = or i64 %mul45.i, 95999
  %84 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -5853766786057164379, i64 %add.i) #11, !srcloc !115
  %85 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5853766786057164379, i64 %add.i, i64 %84, i32 0) #11, !srcloc !116
  %asmresult10.i.i = extractvalue { i64, i32 } %85, 0
  %extract2.i = lshr i64 %asmresult10.i.i, 16
  %extract.t3.i = trunc i64 %extract2.i to i32
  %conv240.i = and i32 %extract.t3.i, 1048575
  %mul244.i = shl nuw nsw i32 %83, %dfn.0.i
  %add246.i = add nuw nsw i32 %mul244.i, 3071999
  %div247.i = udiv i32 %add246.i, %mul244.i
  %or251.i = or i32 %dfn.0.i, %afs.0.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i) #6
  %86 = getelementptr inbounds [2 x i8], ptr %b0.i.i, i32 0, i32 1
  %87 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 33, ptr %b0.i.i, align 1
  %conv1.i.i = trunc i32 %or251.i to i8
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv1.i.i, ptr %86, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %89 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 196607, ptr %89, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %92 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %93 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %config.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 4
  %conv2.i.i = zext i8 %96 to i16
  %97 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv2.i.i, ptr %msg.i.i, align 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end237.i.tda10086_write_byte.exit.i_crit_edge, label %do.body.i.i

if.end237.i.tda10086_write_byte.exit.i_crit_edge: ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit.i

do.body.i.i:                                      ; preds = %if.end237.i
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.tda10086_write_byte.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.tda10086_write_byte.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 33, i32 noundef %or251.i, i32 noundef %call.i.i) #9
  br label %tda10086_write_byte.exit.i

tda10086_write_byte.exit.i:                       ; preds = %do.end.i.i, %do.body.i.i.tda10086_write_byte.exit.i_crit_edge, %if.end237.i.tda10086_write_byte.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i) #6
  call fastcc void @tda10086_write_mask(ptr noundef %1, i32 noundef 32, i32 noundef 8, i32 noundef %byp.0.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i6.i) #6
  %101 = getelementptr inbounds [2 x i8], ptr %b0.i6.i, i32 0, i32 1
  %102 = ptrtoint ptr %b0.i6.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 6, ptr %b0.i6.i, align 1
  %conv1.i8.i = trunc i64 %extract2.i to i8
  %103 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv1.i8.i, ptr %101, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7.i) #6
  %104 = getelementptr inbounds i8, ptr %msg.i7.i, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 196607, ptr %104, align 4
  %flags.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i9.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i9.i, align 2
  %buf.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7.i, i32 0, i32 3
  %107 = ptrtoint ptr %buf.i11.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %b0.i6.i, ptr %buf.i11.i, align 4
  %108 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %config.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 4
  %conv2.i13.i = zext i8 %111 to i16
  %112 = ptrtoint ptr %msg.i7.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv2.i13.i, ptr %msg.i7.i, align 4
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  %call.i14.i = call i32 @i2c_transfer(ptr noundef %114, ptr noundef nonnull %msg.i7.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14.i)
  %cmp.not.i15.i = icmp eq i32 %call.i14.i, 1
  br i1 %cmp.not.i15.i, label %tda10086_write_byte.exit.i.tda10086_write_byte.exit21.i_crit_edge, label %do.body.i17.i

tda10086_write_byte.exit.i.tda10086_write_byte.exit21.i_crit_edge: ; preds = %tda10086_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit21.i

do.body.i17.i:                                    ; preds = %tda10086_write_byte.exit.i
  %115 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool.not.i16.i = icmp eq i32 %115, 0
  br i1 %tobool.not.i16.i, label %do.body.i17.i.tda10086_write_byte.exit21.i_crit_edge, label %do.end.i19.i

do.body.i17.i.tda10086_write_byte.exit21.i_crit_edge: ; preds = %do.body.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit21.i

do.end.i19.i:                                     ; preds = %do.body.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef %conv240.i, i32 noundef %call.i14.i) #9
  br label %tda10086_write_byte.exit21.i

tda10086_write_byte.exit21.i:                     ; preds = %do.end.i19.i, %do.body.i17.i.tda10086_write_byte.exit21.i_crit_edge, %tda10086_write_byte.exit.i.tda10086_write_byte.exit21.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i6.i) #6
  %shr257.i = lshr i32 %conv240.i, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i22.i) #6
  %116 = getelementptr inbounds [2 x i8], ptr %b0.i22.i, i32 0, i32 1
  %117 = ptrtoint ptr %b0.i22.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 7, ptr %b0.i22.i, align 1
  %conv1.i24.i = trunc i32 %shr257.i to i8
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv1.i24.i, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23.i) #6
  %119 = getelementptr inbounds i8, ptr %msg.i23.i, i32 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 196607, ptr %119, align 4
  %flags.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23.i, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i25.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %flags.i25.i, align 2
  %buf.i27.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23.i, i32 0, i32 3
  %122 = ptrtoint ptr %buf.i27.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %b0.i22.i, ptr %buf.i27.i, align 4
  %123 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %config.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %124, align 4
  %conv2.i29.i = zext i8 %126 to i16
  %127 = ptrtoint ptr %msg.i23.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv2.i29.i, ptr %msg.i23.i, align 4
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %call.i30.i = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %msg.i23.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i30.i)
  %cmp.not.i31.i = icmp eq i32 %call.i30.i, 1
  br i1 %cmp.not.i31.i, label %tda10086_write_byte.exit21.i.tda10086_write_byte.exit37.i_crit_edge, label %do.body.i33.i

tda10086_write_byte.exit21.i.tda10086_write_byte.exit37.i_crit_edge: ; preds = %tda10086_write_byte.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit37.i

do.body.i33.i:                                    ; preds = %tda10086_write_byte.exit21.i
  %130 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i32.i = icmp eq i32 %130, 0
  br i1 %tobool.not.i32.i, label %do.body.i33.i.tda10086_write_byte.exit37.i_crit_edge, label %do.end.i35.i

do.body.i33.i.tda10086_write_byte.exit37.i_crit_edge: ; preds = %do.body.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit37.i

do.end.i35.i:                                     ; preds = %do.body.i33.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 7, i32 noundef %shr257.i, i32 noundef %call.i30.i) #9
  br label %tda10086_write_byte.exit37.i

tda10086_write_byte.exit37.i:                     ; preds = %do.end.i35.i, %do.body.i33.i.tda10086_write_byte.exit37.i_crit_edge, %tda10086_write_byte.exit21.i.tda10086_write_byte.exit37.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i22.i) #6
  %shr259.i = lshr i32 %conv240.i, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i38.i) #6
  %131 = getelementptr inbounds [2 x i8], ptr %b0.i38.i, i32 0, i32 1
  %132 = ptrtoint ptr %b0.i38.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 8, ptr %b0.i38.i, align 1
  %conv1.i40.i = trunc i32 %shr259.i to i8
  %133 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv1.i40.i, ptr %131, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i39.i) #6
  %134 = getelementptr inbounds i8, ptr %msg.i39.i, i32 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 196607, ptr %134, align 4
  %flags.i41.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39.i, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i41.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i41.i, align 2
  %buf.i43.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39.i, i32 0, i32 3
  %137 = ptrtoint ptr %buf.i43.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %b0.i38.i, ptr %buf.i43.i, align 4
  %138 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %config.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %139, align 4
  %conv2.i45.i = zext i8 %141 to i16
  %142 = ptrtoint ptr %msg.i39.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv2.i45.i, ptr %msg.i39.i, align 4
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 4
  %call.i46.i = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i39.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i46.i)
  %cmp.not.i47.i = icmp eq i32 %call.i46.i, 1
  br i1 %cmp.not.i47.i, label %tda10086_write_byte.exit37.i.tda10086_write_byte.exit53.i_crit_edge, label %do.body.i49.i

tda10086_write_byte.exit37.i.tda10086_write_byte.exit53.i_crit_edge: ; preds = %tda10086_write_byte.exit37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit53.i

do.body.i49.i:                                    ; preds = %tda10086_write_byte.exit37.i
  %145 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not.i48.i = icmp eq i32 %145, 0
  br i1 %tobool.not.i48.i, label %do.body.i49.i.tda10086_write_byte.exit53.i_crit_edge, label %do.end.i51.i

do.body.i49.i.tda10086_write_byte.exit53.i_crit_edge: ; preds = %do.body.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit53.i

do.end.i51.i:                                     ; preds = %do.body.i49.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 8, i32 noundef %shr259.i, i32 noundef %call.i46.i) #9
  br label %tda10086_write_byte.exit53.i

tda10086_write_byte.exit53.i:                     ; preds = %do.end.i51.i, %do.body.i49.i.tda10086_write_byte.exit53.i_crit_edge, %tda10086_write_byte.exit37.i.tda10086_write_byte.exit53.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i39.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i38.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i54.i) #6
  %146 = getelementptr inbounds [2 x i8], ptr %b0.i54.i, i32 0, i32 1
  %147 = ptrtoint ptr %b0.i54.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 9, ptr %b0.i54.i, align 1
  %conv1.i56.i = trunc i32 %div247.i to i8
  %148 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv1.i56.i, ptr %146, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i55.i) #6
  %149 = getelementptr inbounds i8, ptr %msg.i55.i, i32 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 196607, ptr %149, align 4
  %flags.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55.i, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i57.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i57.i, align 2
  %buf.i59.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55.i, i32 0, i32 3
  %152 = ptrtoint ptr %buf.i59.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %b0.i54.i, ptr %buf.i59.i, align 4
  %153 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %config.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %154, align 4
  %conv2.i61.i = zext i8 %156 to i16
  %157 = ptrtoint ptr %msg.i55.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv2.i61.i, ptr %msg.i55.i, align 4
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 4
  %call.i62.i = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %msg.i55.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i62.i)
  %cmp.not.i63.i = icmp eq i32 %call.i62.i, 1
  br i1 %cmp.not.i63.i, label %tda10086_write_byte.exit53.i.tda10086_write_byte.exit69.i_crit_edge, label %do.body.i65.i

tda10086_write_byte.exit53.i.tda10086_write_byte.exit69.i_crit_edge: ; preds = %tda10086_write_byte.exit53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit69.i

do.body.i65.i:                                    ; preds = %tda10086_write_byte.exit53.i
  %160 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not.i64.i = icmp eq i32 %160, 0
  br i1 %tobool.not.i64.i, label %do.body.i65.i.tda10086_write_byte.exit69.i_crit_edge, label %do.end.i67.i

do.body.i65.i.tda10086_write_byte.exit69.i_crit_edge: ; preds = %do.body.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit69.i

do.end.i67.i:                                     ; preds = %do.body.i65.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 9, i32 noundef %div247.i, i32 noundef %call.i62.i) #9
  br label %tda10086_write_byte.exit69.i

tda10086_write_byte.exit69.i:                     ; preds = %do.end.i67.i, %do.body.i65.i.tda10086_write_byte.exit69.i_crit_edge, %tda10086_write_byte.exit53.i.tda10086_write_byte.exit69.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i55.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i54.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i70.i) #6
  %161 = getelementptr inbounds [2 x i8], ptr %b0.i70.i, i32 0, i32 1
  %162 = ptrtoint ptr %b0.i70.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 55, ptr %b0.i70.i, align 1
  %conv1.i72.i = trunc i32 %reg37.0.i to i8
  %163 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv1.i72.i, ptr %161, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i71.i) #6
  %164 = getelementptr inbounds i8, ptr %msg.i71.i, i32 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 196607, ptr %164, align 4
  %flags.i73.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i71.i, i32 0, i32 1
  %166 = ptrtoint ptr %flags.i73.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 0, ptr %flags.i73.i, align 2
  %buf.i75.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i71.i, i32 0, i32 3
  %167 = ptrtoint ptr %buf.i75.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %b0.i70.i, ptr %buf.i75.i, align 4
  %168 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %config.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %169, align 4
  %conv2.i77.i = zext i8 %171 to i16
  %172 = ptrtoint ptr %msg.i71.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv2.i77.i, ptr %msg.i71.i, align 4
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %1, align 4
  %call.i78.i = call i32 @i2c_transfer(ptr noundef %174, ptr noundef nonnull %msg.i71.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i78.i)
  %cmp.not.i79.i = icmp eq i32 %call.i78.i, 1
  br i1 %cmp.not.i79.i, label %tda10086_write_byte.exit69.i.tda10086_write_byte.exit85.i_crit_edge, label %do.body.i81.i

tda10086_write_byte.exit69.i.tda10086_write_byte.exit85.i_crit_edge: ; preds = %tda10086_write_byte.exit69.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit85.i

do.body.i81.i:                                    ; preds = %tda10086_write_byte.exit69.i
  %175 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool.not.i80.i = icmp eq i32 %175, 0
  br i1 %tobool.not.i80.i, label %do.body.i81.i.tda10086_write_byte.exit85.i_crit_edge, label %do.end.i83.i

do.body.i81.i.tda10086_write_byte.exit85.i_crit_edge: ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit85.i

do.end.i83.i:                                     ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 55, i32 noundef %reg37.0.i, i32 noundef %call.i78.i) #9
  br label %tda10086_write_byte.exit85.i

tda10086_write_byte.exit85.i:                     ; preds = %do.end.i83.i, %do.body.i81.i.tda10086_write_byte.exit85.i_crit_edge, %tda10086_write_byte.exit69.i.tda10086_write_byte.exit85.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i71.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i70.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i86.i) #6
  %176 = getelementptr inbounds [2 x i8], ptr %b0.i86.i, i32 0, i32 1
  %177 = ptrtoint ptr %b0.i86.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 66, ptr %b0.i86.i, align 1
  %conv1.i88.i = trunc i32 %reg42.0.i to i8
  %178 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv1.i88.i, ptr %176, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i87.i) #6
  %179 = getelementptr inbounds i8, ptr %msg.i87.i, i32 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 196607, ptr %179, align 4
  %flags.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i89.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i89.i, align 2
  %buf.i91.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 3
  %182 = ptrtoint ptr %buf.i91.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %b0.i86.i, ptr %buf.i91.i, align 4
  %183 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %config.i, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %184, align 4
  %conv2.i93.i = zext i8 %186 to i16
  %187 = ptrtoint ptr %msg.i87.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv2.i93.i, ptr %msg.i87.i, align 4
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 4
  %call.i94.i = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %msg.i87.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i94.i)
  %cmp.not.i95.i = icmp eq i32 %call.i94.i, 1
  br i1 %cmp.not.i95.i, label %tda10086_write_byte.exit85.i.tda10086_set_symbol_rate.exit_crit_edge, label %do.body.i97.i

tda10086_write_byte.exit85.i.tda10086_set_symbol_rate.exit_crit_edge: ; preds = %tda10086_write_byte.exit85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_set_symbol_rate.exit

do.body.i97.i:                                    ; preds = %tda10086_write_byte.exit85.i
  %190 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i96.i = icmp eq i32 %190, 0
  br i1 %tobool.not.i96.i, label %tda10086_set_symbol_rate.exit.thread, label %do.end.i99.i

tda10086_set_symbol_rate.exit.thread:             ; preds = %do.body.i97.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i87.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i86.i) #6
  br label %do.end3.i137

do.end.i99.i:                                     ; preds = %do.body.i97.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 66, i32 noundef %reg42.0.i, i32 noundef %call.i94.i) #9
  br label %tda10086_set_symbol_rate.exit

tda10086_set_symbol_rate.exit:                    ; preds = %do.end.i99.i, %tda10086_write_byte.exit85.i.tda10086_set_symbol_rate.exit_crit_edge
  %.pr152 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i87.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i86.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr152)
  %tobool.not.i134 = icmp eq i32 %.pr152, 0
  br i1 %tobool.not.i134, label %tda10086_set_symbol_rate.exit.do.end3.i137_crit_edge, label %do.end.i136

tda10086_set_symbol_rate.exit.do.end3.i137_crit_edge: ; preds = %tda10086_set_symbol_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i137

do.end.i136:                                      ; preds = %tda10086_set_symbol_rate.exit
  call void @__sanitizer_cov_trace_pc() #8
  %fec_inner.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %191 = ptrtoint ptr %fec_inner.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %fec_inner.i, align 4
  %call.i135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, i32 noundef %192) #9
  br label %do.end3.i137

do.end3.i137:                                     ; preds = %do.end.i136, %tda10086_set_symbol_rate.exit.do.end3.i137_crit_edge, %tda10086_set_symbol_rate.exit.thread
  %fec_inner4.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %193 = ptrtoint ptr %fec_inner4.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %fec_inner4.i, align 4
  %switch.tableidx = add i32 %194, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %195 = icmp ult i32 %switch.tableidx, 9
  br i1 %195, label %sw.epilog.i, label %do.end3.i137.cleanup_crit_edge

do.end3.i137.cleanup_crit_edge:                   ; preds = %do.end3.i137
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.i:                                      ; preds = %do.end3.i137
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i132) #6
  %196 = getelementptr inbounds [2 x i8], ptr %b0.i.i132, i32 0, i32 1
  %197 = ptrtoint ptr %b0.i.i132 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 13, ptr %b0.i.i132, align 1
  %conv1.i.i139 = trunc i32 %switch.tableidx to i8
  %198 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv1.i.i139, ptr %196, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i133) #6
  %199 = getelementptr inbounds i8, ptr %msg.i.i133, i32 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 196607, ptr %199, align 4
  %flags.i.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i133, i32 0, i32 1
  %201 = ptrtoint ptr %flags.i.i140 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 0, ptr %flags.i.i140, align 2
  %buf.i.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i133, i32 0, i32 3
  %202 = ptrtoint ptr %buf.i.i141 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %b0.i.i132, ptr %buf.i.i141, align 4
  %203 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %config.i, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %204, align 4
  %conv2.i.i143 = zext i8 %206 to i16
  %207 = ptrtoint ptr %msg.i.i133 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %conv2.i.i143, ptr %msg.i.i133, align 4
  %208 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %1, align 4
  %call.i.i144 = call i32 @i2c_transfer(ptr noundef %209, ptr noundef nonnull %msg.i.i133, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i144)
  %cmp.not.i.i145 = icmp eq i32 %call.i.i144, 1
  br i1 %cmp.not.i.i145, label %sw.epilog.i.if.end48_crit_edge, label %do.body.i.i147

sw.epilog.i.if.end48_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.body.i.i147:                                   ; preds = %sw.epilog.i
  %210 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.not.i.i146 = icmp eq i32 %210, 0
  br i1 %tobool.not.i.i146, label %do.body.i.i147.if.end48_crit_edge, label %do.end.i.i149

do.body.i.i147.if.end48_crit_edge:                ; preds = %do.body.i.i147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end.i.i149:                                    ; preds = %do.body.i.i147
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 13, i32 noundef %switch.tableidx, i32 noundef %call.i.i144) #9
  br label %if.end48

if.end48:                                         ; preds = %do.end.i.i149, %do.body.i.i147.if.end48_crit_edge, %sw.epilog.i.if.end48_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i133) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i132) #6
  call fastcc void @tda10086_write_mask(ptr noundef %1, i32 noundef 16, i32 noundef 64, i32 noundef 64)
  call fastcc void @tda10086_write_mask(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %211 = ptrtoint ptr %symbol_rate1.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %symbol_rate1.i, align 4
  %symbol_rate51 = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 4
  %213 = ptrtoint ptr %symbol_rate51 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %212, ptr %symbol_rate51, align 4
  %214 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %dtv_property_cache, align 4
  %frequency53 = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 3
  %216 = ptrtoint ptr %frequency53 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %215, ptr %frequency53, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end3.i137.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48 ], [ -1, %do.end3.i137.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda10086_get_tune_settings(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %1)
  %cmp = icmp ugt i32 %1, 20000000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 50, ptr %fesettings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %3 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2000, ptr %step_size, align 4
  br label %if.end41

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %1)
  %cmp2 = icmp ugt i32 %1, 12000000
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100, ptr %fesettings, align 4
  %step_size5 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %5 = ptrtoint ptr %step_size5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1500, ptr %step_size5, align 4
  br label %if.end41

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %1)
  %cmp9 = icmp ugt i32 %1, 8000000
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100, ptr %fesettings, align 4
  %step_size12 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %7 = ptrtoint ptr %step_size12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1000, ptr %step_size12, align 4
  br label %if.end41

if.else14:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %1)
  %cmp16 = icmp ugt i32 %1, 4000000
  br i1 %cmp16, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 100, ptr %fesettings, align 4
  %step_size19 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %9 = ptrtoint ptr %step_size19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 500, ptr %step_size19, align 4
  br label %if.end41

if.else21:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %1)
  %cmp23 = icmp ugt i32 %1, 2000000
  %10 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 200, ptr %fesettings, align 4
  %11 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %symbol_rate, align 4
  %div = udiv i32 %12, 8000
  %step_size27 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %13 = ptrtoint ptr %step_size27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %step_size27, align 4
  br i1 %cmp23, label %if.then24, label %if.else30

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul nuw nsw i32 %div, 14
  br label %if.end41

if.else30:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  %mul36 = mul nuw nsw i32 %div, 18
  br label %if.end41

if.end41:                                         ; preds = %if.else30, %if.then24, %if.then17, %if.then10, %if.then3, %if.then
  %.sink = phi i32 [ 9000, %if.then3 ], [ 7000, %if.then17 ], [ %mul36, %if.else30 ], [ %mul, %if.then24 ], [ 8000, %if.then10 ], [ 8000, %if.then ]
  %max_drift6 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 2
  %14 = ptrtoint ptr %max_drift6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %max_drift6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef %fe_params) #0 align 64 {
entry:
  %b0.i506 = alloca [1 x i8], align 1
  %b1.i507 = alloca [1 x i8], align 1
  %msg.i508 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i483 = alloca [1 x i8], align 1
  %b1.i484 = alloca [1 x i8], align 1
  %msg.i485 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i460 = alloca [1 x i8], align 1
  %b1.i461 = alloca [1 x i8], align 1
  %msg.i462 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i437 = alloca [1 x i8], align 1
  %b1.i438 = alloca [1 x i8], align 1
  %msg.i439 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i414 = alloca [1 x i8], align 1
  %b1.i415 = alloca [1 x i8], align 1
  %msg.i416 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 10
  %3 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %4)
  %cmp = icmp ult i32 %4, 500000
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 82, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %12 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %13 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %14 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b1.i, ptr %buf5.i, align 4
  %config.i = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %conv7.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv7.i, ptr %msg.i, align 4
  %20 = load i8, ptr %16, align 4
  %conv11.i = zext i8 %20 to i16
  %21 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv11.i, ptr %arrayinit.element.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %if.end6
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_read_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_read_byte.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 82, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

if.end21.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %26 to i32
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit:                          ; preds = %if.end21.i, %do.end.i, %do.body.i.tda10086_read_byte.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end21.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.tda10086_read_byte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i414) #6
  %27 = ptrtoint ptr %b0.i414 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 81, ptr %b0.i414, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i415) #6
  %28 = ptrtoint ptr %b1.i415 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i415, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i416) #6
  %29 = getelementptr inbounds i8, ptr %msg.i416, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %flags.i417 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i416, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i417 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i417, align 2
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %29, align 4
  %buf.i419 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i416, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i419 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b0.i414, ptr %buf.i419, align 4
  %arrayinit.element.i420 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i416, i32 1
  %flags3.i421 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i416, i32 1, i32 1
  %34 = ptrtoint ptr %flags3.i421 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags3.i421, align 2
  %len4.i422 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i416, i32 1, i32 2
  %35 = ptrtoint ptr %len4.i422 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %len4.i422, align 4
  %buf5.i423 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i416, i32 1, i32 3
  %36 = ptrtoint ptr %buf5.i423 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %b1.i415, ptr %buf5.i423, align 4
  %37 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  %conv7.i425 = zext i8 %40 to i16
  %41 = ptrtoint ptr %msg.i416 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv7.i425, ptr %msg.i416, align 4
  %42 = load i8, ptr %38, align 4
  %conv11.i426 = zext i8 %42 to i16
  %43 = ptrtoint ptr %arrayinit.element.i420 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv11.i426, ptr %arrayinit.element.i420, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i427 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i416, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i427)
  %cmp.not.i428 = icmp eq i32 %call.i427, 2
  br i1 %cmp.not.i428, label %if.end21.i434, label %do.body.i430

do.body.i430:                                     ; preds = %tda10086_read_byte.exit
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i429 = icmp eq i32 %46, 0
  br i1 %tobool.not.i429, label %do.body.i430.if.end203_crit_edge, label %do.end.i432

do.body.i430.if.end203_crit_edge:                 ; preds = %do.body.i430
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end203

do.end.i432:                                      ; preds = %do.body.i430
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 81, i32 noundef %call.i427) #9
  br label %if.end203

if.end21.i434:                                    ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %b1.i415 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b1.i415, align 1
  %conv23.i433 = zext i8 %48 to i32
  br label %if.end203

if.end203:                                        ; preds = %if.end21.i434, %do.end.i432, %do.body.i430.if.end203_crit_edge
  %retval.0.i435 = phi i32 [ %conv23.i433, %if.end21.i434 ], [ %call.i427, %do.end.i432 ], [ %call.i427, %do.body.i430.if.end203_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i416) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i415) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i414) #6
  %shl = shl i32 %retval.0.i435, 8
  %or407 = or i32 %shl, %retval.0.i
  %or = sext i32 %or407 to i64
  %and = and i64 %or, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool10.not = icmp eq i64 %and, 0
  %or12 = or i64 %or, 281474976645120
  %spec.select = select i1 %tobool10.not, i64 %or, i64 %or12
  %mul = mul i64 %spec.select, 96000
  %shr = lshr i64 %mul, 16
  %extract.t = trunc i64 %shr to i32
  %frequency = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %frequency, align 4
  %add206 = add i32 %50, %extract.t
  %51 = ptrtoint ptr %fe_params to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add206, ptr %fe_params, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i437) #6
  %52 = ptrtoint ptr %b0.i437 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 12, ptr %b0.i437, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i438) #6
  %53 = ptrtoint ptr %b1.i438 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %b1.i438, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i439) #6
  %54 = getelementptr inbounds i8, ptr %msg.i439, i32 4
  %55 = call ptr @memset(ptr %54, i32 255, i32 16)
  %flags.i440 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i439, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i440 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i440, align 2
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %54, align 4
  %buf.i442 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i439, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i442 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %b0.i437, ptr %buf.i442, align 4
  %arrayinit.element.i443 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i439, i32 1
  %flags3.i444 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i439, i32 1, i32 1
  %59 = ptrtoint ptr %flags3.i444 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %flags3.i444, align 2
  %len4.i445 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i439, i32 1, i32 2
  %60 = ptrtoint ptr %len4.i445 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %len4.i445, align 4
  %buf5.i446 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i439, i32 1, i32 3
  %61 = ptrtoint ptr %buf5.i446 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %b1.i438, ptr %buf5.i446, align 4
  %62 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 4
  %conv7.i448 = zext i8 %65 to i16
  %66 = ptrtoint ptr %msg.i439 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv7.i448, ptr %msg.i439, align 4
  %67 = load i8, ptr %63, align 4
  %conv11.i449 = zext i8 %67 to i16
  %68 = ptrtoint ptr %arrayinit.element.i443 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv11.i449, ptr %arrayinit.element.i443, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i450 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i439, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i450)
  %cmp.not.i451 = icmp eq i32 %call.i450, 2
  br i1 %cmp.not.i451, label %if.end21.i457, label %do.body.i453

do.body.i453:                                     ; preds = %if.end203
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i452 = icmp eq i32 %71, 0
  br i1 %tobool.not.i452, label %do.body.i453.tda10086_read_byte.exit459_crit_edge, label %do.end.i455

do.body.i453.tda10086_read_byte.exit459_crit_edge: ; preds = %do.body.i453
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit459

do.end.i455:                                      ; preds = %do.body.i453
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef %call.i450) #9
  br label %tda10086_read_byte.exit459

if.end21.i457:                                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %b1.i438 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %b1.i438, align 1
  %conv23.i456 = zext i8 %73 to i32
  br label %tda10086_read_byte.exit459

tda10086_read_byte.exit459:                       ; preds = %if.end21.i457, %do.end.i455, %do.body.i453.tda10086_read_byte.exit459_crit_edge
  %retval.0.i458 = phi i32 [ %conv23.i456, %if.end21.i457 ], [ %call.i450, %do.end.i455 ], [ %call.i450, %do.body.i453.tda10086_read_byte.exit459_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i439) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i438) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i437) #6
  %and211 = and i32 %retval.0.i458, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.else227, label %if.then213

if.then213:                                       ; preds = %tda10086_read_byte.exit459
  %and215 = and i32 %retval.0.i458, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %cond290 = icmp eq i32 %and215, 0
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 4
  br i1 %cond290, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %inversion, align 4
  %75 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %config.i, align 4
  %invert = getelementptr inbounds %struct.tda10086_config, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %invert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool216.not = icmp ne i8 %78, 0
  br label %if.end248

sw.default:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %inversion, align 4
  %80 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %config.i, align 4
  %invert222 = getelementptr inbounds %struct.tda10086_config, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %invert222 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %invert222, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool223.not = icmp eq i8 %83, 0
  br label %if.end248

if.else227:                                       ; preds = %tda10086_read_byte.exit459
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i460) #6
  %84 = ptrtoint ptr %b0.i460 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 15, ptr %b0.i460, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i461) #6
  %85 = ptrtoint ptr %b1.i461 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %b1.i461, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i462) #6
  %86 = getelementptr inbounds i8, ptr %msg.i462, i32 4
  %87 = call ptr @memset(ptr %86, i32 255, i32 16)
  %flags.i463 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i462, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i463 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i463, align 2
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 1, ptr %86, align 4
  %buf.i465 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i462, i32 0, i32 3
  %90 = ptrtoint ptr %buf.i465 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %b0.i460, ptr %buf.i465, align 4
  %arrayinit.element.i466 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i462, i32 1
  %flags3.i467 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i462, i32 1, i32 1
  %91 = ptrtoint ptr %flags3.i467 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %flags3.i467, align 2
  %len4.i468 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i462, i32 1, i32 2
  %92 = ptrtoint ptr %len4.i468 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %len4.i468, align 4
  %buf5.i469 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i462, i32 1, i32 3
  %93 = ptrtoint ptr %buf5.i469 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %b1.i461, ptr %buf5.i469, align 4
  %94 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %config.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 4
  %conv7.i471 = zext i8 %97 to i16
  %98 = ptrtoint ptr %msg.i462 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv7.i471, ptr %msg.i462, align 4
  %99 = load i8, ptr %95, align 4
  %conv11.i472 = zext i8 %99 to i16
  %100 = ptrtoint ptr %arrayinit.element.i466 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv11.i472, ptr %arrayinit.element.i466, align 4
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %call.i473 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %msg.i462, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i473)
  %cmp.not.i474 = icmp eq i32 %call.i473, 2
  br i1 %cmp.not.i474, label %if.else227.tda10086_read_byte.exit482_crit_edge, label %do.body.i476

if.else227.tda10086_read_byte.exit482_crit_edge:  ; preds = %if.else227
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit482

do.body.i476:                                     ; preds = %if.else227
  %103 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i475 = icmp eq i32 %103, 0
  br i1 %tobool.not.i475, label %do.body.i476.tda10086_read_byte.exit482_crit_edge, label %do.end.i478

do.body.i476.tda10086_read_byte.exit482_crit_edge: ; preds = %do.body.i476
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit482

do.end.i478:                                      ; preds = %do.body.i476
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i477 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 15, i32 noundef %call.i473) #9
  br label %tda10086_read_byte.exit482

tda10086_read_byte.exit482:                       ; preds = %do.end.i478, %do.body.i476.tda10086_read_byte.exit482_crit_edge, %if.else227.tda10086_read_byte.exit482_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i462) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i461) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i460) #6
  %and230 = and i32 %retval.0.i458, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %cond289 = icmp eq i32 %and230, 0
  %inversion232 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 4
  br i1 %cond289, label %sw.bb231, label %sw.default239

sw.bb231:                                         ; preds = %tda10086_read_byte.exit482
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %inversion232 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %inversion232, align 4
  %105 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %config.i, align 4
  %invert234 = getelementptr inbounds %struct.tda10086_config, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %invert234 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %invert234, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool235.not = icmp ne i8 %108, 0
  br label %if.end248

sw.default239:                                    ; preds = %tda10086_read_byte.exit482
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %inversion232 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 1, ptr %inversion232, align 4
  %110 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %config.i, align 4
  %invert242 = getelementptr inbounds %struct.tda10086_config, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %invert242 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %invert242, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool243.not = icmp eq i8 %113, 0
  br label %if.end248

if.end248:                                        ; preds = %sw.default239, %sw.bb231, %sw.default, %sw.bb
  %tobool243.not.sink = phi i1 [ %tobool243.not, %sw.default239 ], [ %tobool235.not, %sw.bb231 ], [ %tobool223.not, %sw.default ], [ %tobool216.not, %sw.bb ]
  %inversion232.sink = phi ptr [ %inversion232, %sw.default239 ], [ %inversion232, %sw.bb231 ], [ %inversion, %sw.default ], [ %inversion, %sw.bb ]
  %spec.store.select412 = zext i1 %tobool243.not.sink to i32
  %114 = ptrtoint ptr %inversion232.sink to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %spec.store.select412, ptr %inversion232.sink, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i483) #6
  %115 = ptrtoint ptr %b0.i483 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 29, ptr %b0.i483, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i484) #6
  %116 = ptrtoint ptr %b1.i484 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %b1.i484, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i485) #6
  %117 = getelementptr inbounds i8, ptr %msg.i485, i32 4
  %118 = call ptr @memset(ptr %117, i32 255, i32 16)
  %flags.i486 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i485, i32 0, i32 1
  %119 = ptrtoint ptr %flags.i486 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %flags.i486, align 2
  %120 = ptrtoint ptr %117 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %117, align 4
  %buf.i488 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i485, i32 0, i32 3
  %121 = ptrtoint ptr %buf.i488 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %b0.i483, ptr %buf.i488, align 4
  %arrayinit.element.i489 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i485, i32 1
  %flags3.i490 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i485, i32 1, i32 1
  %122 = ptrtoint ptr %flags3.i490 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 1, ptr %flags3.i490, align 2
  %len4.i491 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i485, i32 1, i32 2
  %123 = ptrtoint ptr %len4.i491 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 1, ptr %len4.i491, align 4
  %buf5.i492 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i485, i32 1, i32 3
  %124 = ptrtoint ptr %buf5.i492 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %b1.i484, ptr %buf5.i492, align 4
  %125 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %config.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %126, align 4
  %conv7.i494 = zext i8 %128 to i16
  %129 = ptrtoint ptr %msg.i485 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv7.i494, ptr %msg.i485, align 4
  %130 = load i8, ptr %126, align 4
  %conv11.i495 = zext i8 %130 to i16
  %131 = ptrtoint ptr %arrayinit.element.i489 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv11.i495, ptr %arrayinit.element.i489, align 4
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %call.i496 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %msg.i485, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i496)
  %cmp.not.i497 = icmp eq i32 %call.i496, 2
  br i1 %cmp.not.i497, label %if.end21.i503, label %do.body.i499

do.body.i499:                                     ; preds = %if.end248
  %134 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i498 = icmp eq i32 %134, 0
  br i1 %tobool.not.i498, label %do.body.i499.tda10086_read_byte.exit505_crit_edge, label %do.end.i501

do.body.i499.tda10086_read_byte.exit505_crit_edge: ; preds = %do.body.i499
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit505

do.end.i501:                                      ; preds = %do.body.i499
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i500 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 29, i32 noundef %call.i496) #9
  br label %tda10086_read_byte.exit505

if.end21.i503:                                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #8
  %135 = ptrtoint ptr %b1.i484 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %b1.i484, align 1
  %conv23.i502 = zext i8 %136 to i32
  br label %tda10086_read_byte.exit505

tda10086_read_byte.exit505:                       ; preds = %if.end21.i503, %do.end.i501, %do.body.i499.tda10086_read_byte.exit505_crit_edge
  %retval.0.i504 = phi i32 [ %conv23.i502, %if.end21.i503 ], [ %call.i496, %do.end.i501 ], [ %call.i496, %do.body.i499.tda10086_read_byte.exit505_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i485) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i484) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i483) #6
  %and250 = and i32 %retval.0.i504, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  %or253 = or i32 %retval.0.i504, -256
  %spec.select413 = select i1 %tobool251.not, i32 %retval.0.i504, i32 %or253
  %mul256 = mul i32 %spec.select413, 960
  %div257 = sdiv i32 %mul256, 128
  %symbol_rate258 = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 4
  %137 = ptrtoint ptr %symbol_rate258 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %symbol_rate258, align 4
  %div259 = udiv i32 %138, 1000
  %mul260 = mul i32 %div259, %div257
  %div261 = udiv i32 %mul260, 1000
  %add263 = add i32 %div261, %138
  %139 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %add263, ptr %symbol_rate, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i506) #6
  %140 = ptrtoint ptr %b0.i506 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 13, ptr %b0.i506, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i507) #6
  %141 = ptrtoint ptr %b1.i507 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %b1.i507, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i508) #6
  %142 = getelementptr inbounds i8, ptr %msg.i508, i32 4
  %143 = call ptr @memset(ptr %142, i32 255, i32 16)
  %flags.i509 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i508, i32 0, i32 1
  %144 = ptrtoint ptr %flags.i509 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %flags.i509, align 2
  %145 = ptrtoint ptr %142 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 1, ptr %142, align 4
  %buf.i511 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i508, i32 0, i32 3
  %146 = ptrtoint ptr %buf.i511 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %b0.i506, ptr %buf.i511, align 4
  %arrayinit.element.i512 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i508, i32 1
  %flags3.i513 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i508, i32 1, i32 1
  %147 = ptrtoint ptr %flags3.i513 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 1, ptr %flags3.i513, align 2
  %len4.i514 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i508, i32 1, i32 2
  %148 = ptrtoint ptr %len4.i514 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %len4.i514, align 4
  %buf5.i515 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i508, i32 1, i32 3
  %149 = ptrtoint ptr %buf5.i515 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %b1.i507, ptr %buf5.i515, align 4
  %150 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %config.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %151, align 4
  %conv7.i517 = zext i8 %153 to i16
  %154 = ptrtoint ptr %msg.i508 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv7.i517, ptr %msg.i508, align 4
  %155 = load i8, ptr %151, align 4
  %conv11.i518 = zext i8 %155 to i16
  %156 = ptrtoint ptr %arrayinit.element.i512 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv11.i518, ptr %arrayinit.element.i512, align 4
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %call.i519 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %msg.i508, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i519)
  %cmp.not.i520 = icmp eq i32 %call.i519, 2
  br i1 %cmp.not.i520, label %if.end21.i526, label %do.body.i522

do.body.i522:                                     ; preds = %tda10086_read_byte.exit505
  %159 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.not.i521 = icmp eq i32 %159, 0
  br i1 %tobool.not.i521, label %do.body.i522.tda10086_read_byte.exit528_crit_edge, label %do.end.i524

do.body.i522.tda10086_read_byte.exit528_crit_edge: ; preds = %do.body.i522
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit528

do.end.i524:                                      ; preds = %do.body.i522
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i523 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 13, i32 noundef %call.i519) #9
  br label %tda10086_read_byte.exit528

if.end21.i526:                                    ; preds = %tda10086_read_byte.exit505
  call void @__sanitizer_cov_trace_pc() #8
  %160 = ptrtoint ptr %b1.i507 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %b1.i507, align 1
  %conv23.i525 = zext i8 %161 to i32
  br label %tda10086_read_byte.exit528

tda10086_read_byte.exit528:                       ; preds = %if.end21.i526, %do.end.i524, %do.body.i522.tda10086_read_byte.exit528_crit_edge
  %retval.0.i527 = phi i32 [ %conv23.i525, %if.end21.i526 ], [ %call.i519, %do.end.i524 ], [ %call.i519, %do.body.i522.tda10086_read_byte.exit528_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i508) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i507) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i506) #6
  %162 = lshr i32 %retval.0.i527, 4
  %conv268 = and i32 %162, 7
  %switch.offset = add nuw nsw i32 %conv268, 1
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 5
  %163 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %switch.offset, ptr %fec_inner, align 4
  br label %cleanup

cleanup:                                          ; preds = %tda10086_read_byte.exit528, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end4.cleanup_crit_edge ], [ 0, %tda10086_read_byte.exit528 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %fe_status) #0 align 64 {
entry:
  %b0.i50 = alloca [2 x i8], align 1
  %msg.i51 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 14, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %10 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %11 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %12 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b1.i, ptr %buf5.i, align 4
  %config.i = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %conv7.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv7.i, ptr %msg.i, align 4
  %18 = load i8, ptr %14, align 4
  %conv11.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv11.i, ptr %arrayinit.element.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %do.end3
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_read_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_read_byte.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 14, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

if.end21.i:                                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %24 to i32
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit:                          ; preds = %if.end21.i, %do.end.i, %do.body.i.tda10086_read_byte.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end21.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.tda10086_read_byte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %25 = and i32 %retval.0.i, 3
  %26 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %fe_status, align 4
  %and16 = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %tda10086_read_byte.exit.if.end20_crit_edge, label %if.then18

tda10086_read_byte.exit.if.end20_crit_edge:       ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fe_status, align 4
  %or19 = or i32 %28, 4
  store i32 %or19, ptr %fe_status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %tda10086_read_byte.exit.if.end20_crit_edge
  %and22 = and i32 %retval.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end26_crit_edge, label %if.then24

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fe_status, align 4
  %or25 = or i32 %30, 8
  store i32 %or25, ptr %fe_status, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20.if.end26_crit_edge
  %and28 = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end37_crit_edge, label %if.then30

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then30:                                        ; preds = %if.end26
  %31 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fe_status, align 4
  %or31 = or i32 %32, 16
  store i32 %or31, ptr %fe_status, align 4
  %has_lock = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %has_lock to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_lock, align 4, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool32.not = icmp eq i8 %34, 0
  br i1 %tobool32.not, label %if.then33, label %if.then30.if.end37_crit_edge

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then33:                                        ; preds = %if.then30
  %35 = ptrtoint ptr %has_lock to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %has_lock, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i50) #6
  %36 = getelementptr inbounds [2 x i8], ptr %b0.i50, i32 0, i32 1
  %37 = ptrtoint ptr %b0.i50 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %b0.i50, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i51) #6
  %39 = getelementptr inbounds i8, ptr %msg.i51, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 196607, ptr %39, align 4
  %flags.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i52 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i52, align 2
  %buf.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i54 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %b0.i50, ptr %buf.i54, align 4
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 4
  %conv2.i = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i51 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv2.i, ptr %msg.i51, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i56 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i51, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i56)
  %cmp.not.i57 = icmp eq i32 %call.i56, 1
  br i1 %cmp.not.i57, label %if.then33.tda10086_write_byte.exit_crit_edge, label %do.body.i59

if.then33.tda10086_write_byte.exit_crit_edge:     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.body.i59:                                      ; preds = %if.then33
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i58 = icmp eq i32 %50, 0
  br i1 %tobool.not.i58, label %do.body.i59.tda10086_write_byte.exit_crit_edge, label %do.end.i60

do.body.i59.tda10086_write_byte.exit_crit_edge:   ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.end.i60:                                       ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 0, i32 noundef %call.i56) #9
  br label %tda10086_write_byte.exit

tda10086_write_byte.exit:                         ; preds = %do.end.i60, %do.body.i59.tda10086_write_byte.exit_crit_edge, %if.then33.tda10086_write_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i51) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i50) #6
  br label %if.end37

if.end37:                                         ; preds = %tda10086_write_byte.exit, %if.then30.if.end37_crit_edge, %if.end26.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef %ber) #0 align 64 {
entry:
  %b0.i38 = alloca [1 x i8], align 1
  %b1.i39 = alloca [1 x i8], align 1
  %msg.i40 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i15 = alloca [1 x i8], align 1
  %b1.i16 = alloca [1 x i8], align 1
  %msg.i17 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 21, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %11 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %12 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %13 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b1.i, ptr %buf5.i, align 4
  %config.i = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %conv7.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv7.i, ptr %msg.i, align 4
  %19 = load i8, ptr %15, align 4
  %conv11.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv11.i, ptr %arrayinit.element.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %do.end3
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_read_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_read_byte.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 21, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

if.end21.i:                                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %25 to i32
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit:                          ; preds = %if.end21.i, %do.end.i, %do.body.i.tda10086_read_byte.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end21.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.tda10086_read_byte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %26 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ber, align 4
  %or = or i32 %27, %retval.0.i
  store i32 %or, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i15) #6
  %28 = ptrtoint ptr %b0.i15 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 22, ptr %b0.i15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i16) #6
  %29 = ptrtoint ptr %b1.i16 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %b1.i16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i17) #6
  %30 = getelementptr inbounds i8, ptr %msg.i17, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 16)
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i18, align 2
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %30, align 4
  %buf.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b0.i15, ptr %buf.i20, align 4
  %arrayinit.element.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 1
  %flags3.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 1, i32 1
  %35 = ptrtoint ptr %flags3.i22 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %flags3.i22, align 2
  %len4.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 1, i32 2
  %36 = ptrtoint ptr %len4.i23 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %len4.i23, align 4
  %buf5.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 1, i32 3
  %37 = ptrtoint ptr %buf5.i24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %b1.i16, ptr %buf5.i24, align 4
  %38 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 4
  %conv7.i26 = zext i8 %41 to i16
  %42 = ptrtoint ptr %msg.i17 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv7.i26, ptr %msg.i17, align 4
  %43 = load i8, ptr %39, align 4
  %conv11.i27 = zext i8 %43 to i16
  %44 = ptrtoint ptr %arrayinit.element.i21 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv11.i27, ptr %arrayinit.element.i21, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i28 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i17, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i28)
  %cmp.not.i29 = icmp eq i32 %call.i28, 2
  br i1 %cmp.not.i29, label %if.end21.i35, label %do.body.i31

do.body.i31:                                      ; preds = %tda10086_read_byte.exit
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i30 = icmp eq i32 %47, 0
  br i1 %tobool.not.i30, label %do.body.i31.tda10086_read_byte.exit37_crit_edge, label %do.end.i33

do.body.i31.tda10086_read_byte.exit37_crit_edge:  ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit37

do.end.i33:                                       ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 22, i32 noundef %call.i28) #9
  br label %tda10086_read_byte.exit37

if.end21.i35:                                     ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %b1.i16 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %b1.i16, align 1
  %conv23.i34 = zext i8 %49 to i32
  br label %tda10086_read_byte.exit37

tda10086_read_byte.exit37:                        ; preds = %if.end21.i35, %do.end.i33, %do.body.i31.tda10086_read_byte.exit37_crit_edge
  %retval.0.i36 = phi i32 [ %conv23.i34, %if.end21.i35 ], [ %call.i28, %do.end.i33 ], [ %call.i28, %do.body.i31.tda10086_read_byte.exit37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i17) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i16) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i15) #6
  %shl = shl i32 %retval.0.i36, 8
  %50 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ber, align 4
  %or6 = or i32 %51, %shl
  store i32 %or6, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i38) #6
  %52 = ptrtoint ptr %b0.i38 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 23, ptr %b0.i38, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i39) #6
  %53 = ptrtoint ptr %b1.i39 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %b1.i39, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i40) #6
  %54 = getelementptr inbounds i8, ptr %msg.i40, i32 4
  %55 = call ptr @memset(ptr %54, i32 255, i32 16)
  %flags.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i41, align 2
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %54, align 4
  %buf.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %b0.i38, ptr %buf.i43, align 4
  %arrayinit.element.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 1
  %flags3.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 1, i32 1
  %59 = ptrtoint ptr %flags3.i45 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %flags3.i45, align 2
  %len4.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 1, i32 2
  %60 = ptrtoint ptr %len4.i46 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %len4.i46, align 4
  %buf5.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 1, i32 3
  %61 = ptrtoint ptr %buf5.i47 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %b1.i39, ptr %buf5.i47, align 4
  %62 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 4
  %conv7.i49 = zext i8 %65 to i16
  %66 = ptrtoint ptr %msg.i40 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv7.i49, ptr %msg.i40, align 4
  %67 = load i8, ptr %63, align 4
  %conv11.i50 = zext i8 %67 to i16
  %68 = ptrtoint ptr %arrayinit.element.i44 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv11.i50, ptr %arrayinit.element.i44, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i51 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i40, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i51)
  %cmp.not.i52 = icmp eq i32 %call.i51, 2
  br i1 %cmp.not.i52, label %if.end21.i58, label %do.body.i54

do.body.i54:                                      ; preds = %tda10086_read_byte.exit37
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i53 = icmp eq i32 %71, 0
  br i1 %tobool.not.i53, label %do.body.i54.tda10086_read_byte.exit60_crit_edge, label %do.end.i56

do.body.i54.tda10086_read_byte.exit60_crit_edge:  ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit60

do.end.i56:                                       ; preds = %do.body.i54
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 23, i32 noundef %call.i51) #9
  br label %tda10086_read_byte.exit60

if.end21.i58:                                     ; preds = %tda10086_read_byte.exit37
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %b1.i39 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %b1.i39, align 1
  %conv23.i57 = zext i8 %73 to i32
  br label %tda10086_read_byte.exit60

tda10086_read_byte.exit60:                        ; preds = %if.end21.i58, %do.end.i56, %do.body.i54.tda10086_read_byte.exit60_crit_edge
  %retval.0.i59 = phi i32 [ %conv23.i57, %if.end21.i58 ], [ %call.i51, %do.end.i56 ], [ %call.i51, %do.body.i54.tda10086_read_byte.exit60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i40) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i39) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i38) #6
  %and = shl i32 %retval.0.i59, 16
  %shl8 = and i32 %and, 983040
  %74 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ber, align 4
  %or9 = or i32 %75, %shl8
  store i32 %or9, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal) #0 align 64 {
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
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 67, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %10 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %11 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %12 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b1.i, ptr %buf5.i, align 4
  %config.i = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %conv7.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv7.i, ptr %msg.i, align 4
  %18 = load i8, ptr %14, align 4
  %conv11.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv11.i, ptr %arrayinit.element.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %do.end3
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_read_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_read_byte.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 67, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

if.end21.i:                                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %24 to i32
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit:                          ; preds = %if.end21.i, %do.end.i, %do.body.i.tda10086_read_byte.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end21.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.tda10086_read_byte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %25 = trunc i32 %retval.0.i to i16
  %26 = and i16 %25, 255
  %27 = xor i16 %26, 255
  %conv7 = mul nuw i16 %27, 257
  %28 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv7, ptr %signal, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
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
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 28, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %10 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %11 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %12 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b1.i, ptr %buf5.i, align 4
  %config.i = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %conv7.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv7.i, ptr %msg.i, align 4
  %18 = load i8, ptr %14, align 4
  %conv11.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv11.i, ptr %arrayinit.element.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %do.end3
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_read_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_read_byte.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 28, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

if.end21.i:                                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %24 to i32
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit:                          ; preds = %if.end21.i, %do.end.i, %do.body.i.tda10086_read_byte.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end21.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.tda10086_read_byte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %25 = trunc i32 %retval.0.i to i16
  %26 = and i16 %25, 255
  %27 = xor i16 %26, 255
  %conv7 = mul nuw i16 %27, 257
  %28 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv7, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %b0.i20 = alloca [2 x i8], align 1
  %msg.i21 = alloca %struct.i2c_msg, align 4
  %b0.i9 = alloca [2 x i8], align 1
  %msg.i10 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 24, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags.i, align 2
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %10 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %11 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %12 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b1.i, ptr %buf5.i, align 4
  %config.i = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %conv7.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv7.i, ptr %msg.i, align 4
  %18 = load i8, ptr %14, align 4
  %conv11.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv11.i, ptr %arrayinit.element.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %do.end3
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_read_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_read_byte.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 24, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

if.end21.i:                                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %24 to i32
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit:                          ; preds = %if.end21.i, %do.end.i, %do.body.i.tda10086_read_byte.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end21.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.tda10086_read_byte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i, 127
  %25 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and, ptr %ucblocks, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i9) #6
  %26 = getelementptr inbounds [2 x i8], ptr %b0.i9, i32 0, i32 1
  %27 = ptrtoint ptr %b0.i9 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 24, ptr %b0.i9, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10) #6
  %29 = getelementptr inbounds i8, ptr %msg.i10, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 196607, ptr %29, align 4
  %flags.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i11, align 2
  %buf.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10, i32 0, i32 3
  %32 = ptrtoint ptr %buf.i13 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %b0.i9, ptr %buf.i13, align 4
  %33 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %conv2.i = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i10 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv2.i, ptr %msg.i10, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i15 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i10, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i15)
  %cmp.not.i16 = icmp eq i32 %call.i15, 1
  br i1 %cmp.not.i16, label %tda10086_read_byte.exit.tda10086_write_byte.exit_crit_edge, label %do.body.i18

tda10086_read_byte.exit.tda10086_write_byte.exit_crit_edge: ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.body.i18:                                      ; preds = %tda10086_read_byte.exit
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i17 = icmp eq i32 %40, 0
  br i1 %tobool.not.i17, label %do.body.i18.tda10086_write_byte.exit_crit_edge, label %do.end.i19

do.body.i18.tda10086_write_byte.exit_crit_edge:   ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.end.i19:                                       ; preds = %do.body.i18
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 24, i32 noundef 0, i32 noundef %call.i15) #9
  br label %tda10086_write_byte.exit

tda10086_write_byte.exit:                         ; preds = %do.end.i19, %do.body.i18.tda10086_write_byte.exit_crit_edge, %tda10086_read_byte.exit.tda10086_write_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i9) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i20) #6
  %41 = getelementptr inbounds [2 x i8], ptr %b0.i20, i32 0, i32 1
  %42 = ptrtoint ptr %b0.i20 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 24, ptr %b0.i20, align 1
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -128, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21) #6
  %44 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 196607, ptr %44, align 4
  %flags.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i22 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i22, align 2
  %buf.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i24 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %b0.i20, ptr %buf.i24, align 4
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv2.i26 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv2.i26, ptr %msg.i21, align 4
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call.i27 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i21, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i27)
  %cmp.not.i28 = icmp eq i32 %call.i27, 1
  br i1 %cmp.not.i28, label %tda10086_write_byte.exit.tda10086_write_byte.exit34_crit_edge, label %do.body.i30

tda10086_write_byte.exit.tda10086_write_byte.exit34_crit_edge: ; preds = %tda10086_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit34

do.body.i30:                                      ; preds = %tda10086_write_byte.exit
  %55 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i29 = icmp eq i32 %55, 0
  br i1 %tobool.not.i29, label %do.body.i30.tda10086_write_byte.exit34_crit_edge, label %do.end.i32

do.body.i30.tda10086_write_byte.exit34_crit_edge: ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit34

do.end.i32:                                       ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 24, i32 noundef 128, i32 noundef %call.i27) #9
  br label %tda10086_write_byte.exit34

tda10086_write_byte.exit34:                       ; preds = %do.end.i32, %do.body.i30.tda10086_write_byte.exit34_crit_edge, %tda10086_write_byte.exit.tda10086_write_byte.exit34_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i20) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_send_master_cmd(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %b0.i65 = alloca [2 x i8], align 1
  %msg.i66 = alloca %struct.i2c_msg, align 4
  %b0.i50 = alloca [2 x i8], align 1
  %msg.i51 = alloca %struct.i2c_msg, align 4
  %b0.i39 = alloca [2 x i8], align 1
  %msg.i40 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.21) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %diseqc_tone = getelementptr inbounds %struct.tda10086_config, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %diseqc_tone to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %diseqc_tone, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool4.not, i32 136, i32 8
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %8)
  %cmp = icmp ugt i8 %8, 6
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end9

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %9 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 54, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %10 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %11, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf5.i, align 4
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  %conv7.i = zext i8 %22 to i16
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv7.i, ptr %msg.i, align 4
  %24 = load i8, ptr %20, align 4
  %conv11.i = zext i8 %24 to i16
  %25 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv11.i, ptr %arrayinit.element.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %if.end9
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_read_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_read_byte.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 54, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

if.end21.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %30 to i32
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit:                          ; preds = %if.end21.i, %do.end.i, %do.body.i.tda10086_read_byte.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end21.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.tda10086_read_byte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %31 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp1482.not = icmp eq i8 %32, 0
  br i1 %cmp1482.not, label %tda10086_read_byte.exit.for.end_crit_edge, label %for.body.lr.ph

tda10086_read_byte.exit.for.end_crit_edge:        ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %tda10086_read_byte.exit
  %33 = getelementptr inbounds [2 x i8], ptr %b0.i39, i32 0, i32 1
  %34 = getelementptr inbounds i8, ptr %msg.i40, i32 4
  %flags.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 0, i32 1
  %buf.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %tda10086_write_byte.exit.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %tda10086_write_byte.exit.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.083, 72
  %arrayidx = getelementptr [6 x i8], ptr %cmd, i32 0, i32 %i.083
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %36 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i39) #6
  %conv.i = trunc i32 %add to i8
  %37 = ptrtoint ptr %b0.i39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %b0.i39, align 1
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %36, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i40) #6
  %39 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 196607, ptr %34, align 4
  %40 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i41, align 2
  %41 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %b0.i39, ptr %buf.i43, align 4
  %42 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv2.i = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i40 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv2.i, ptr %msg.i40, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call.i45 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i40, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i45)
  %cmp.not.i46 = icmp eq i32 %call.i45, 1
  br i1 %cmp.not.i46, label %for.body.tda10086_write_byte.exit_crit_edge, label %do.body.i48

for.body.tda10086_write_byte.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.body.i48:                                      ; preds = %for.body
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i47 = icmp eq i32 %49, 0
  br i1 %tobool.not.i47, label %do.body.i48.tda10086_write_byte.exit_crit_edge, label %do.end.i49

do.body.i48.tda10086_write_byte.exit_crit_edge:   ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.end.i49:                                       ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %add, i32 noundef %conv16, i32 noundef %call.i45) #9
  br label %tda10086_write_byte.exit

tda10086_write_byte.exit:                         ; preds = %do.end.i49, %do.body.i48.tda10086_write_byte.exit_crit_edge, %for.body.tda10086_write_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i40) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i39) #6
  %inc = add nuw nsw i32 %i.083, 1
  %50 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %msg_len, align 1
  %conv13 = zext i8 %51 to i32
  %cmp14 = icmp ult i32 %inc, %conv13
  br i1 %cmp14, label %tda10086_write_byte.exit.for.body_crit_edge, label %for.end.loopexit

tda10086_write_byte.exit.for.body_crit_edge:      ; preds = %tda10086_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %tda10086_write_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast = zext i8 %51 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 4
  %phi.bo85 = add nsw i32 %phi.bo, -16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %tda10086_read_byte.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo85, %for.end.loopexit ], [ -16, %tda10086_read_byte.exit.for.end_crit_edge ]
  %or = or i32 %.lcssa, %spec.select
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i50) #6
  %52 = getelementptr inbounds [2 x i8], ptr %b0.i50, i32 0, i32 1
  %53 = ptrtoint ptr %b0.i50 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 54, ptr %b0.i50, align 1
  %conv1.i = trunc i32 %or to i8
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv1.i, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i51) #6
  %55 = getelementptr inbounds i8, ptr %msg.i51, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 196607, ptr %55, align 4
  %flags.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i52 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i52, align 2
  %buf.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %b0.i50, ptr %buf.i54, align 4
  %59 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %config, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 4
  %conv2.i56 = zext i8 %62 to i16
  %63 = ptrtoint ptr %msg.i51 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv2.i56, ptr %msg.i51, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call.i57 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i51, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i57)
  %cmp.not.i58 = icmp eq i32 %call.i57, 1
  br i1 %cmp.not.i58, label %for.end.tda10086_write_byte.exit64_crit_edge, label %do.body.i60

for.end.tda10086_write_byte.exit64_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit64

do.body.i60:                                      ; preds = %for.end
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i59 = icmp eq i32 %66, 0
  br i1 %tobool.not.i59, label %do.body.i60.tda10086_write_byte.exit64_crit_edge, label %do.end.i62

do.body.i60.tda10086_write_byte.exit64_crit_edge: ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit64

do.end.i62:                                       ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 54, i32 noundef %or, i32 noundef %call.i57) #9
  br label %tda10086_write_byte.exit64

tda10086_write_byte.exit64:                       ; preds = %do.end.i62, %do.body.i60.tda10086_write_byte.exit64_crit_edge, %for.end.tda10086_write_byte.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i51) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i50) #6
  call fastcc void @tda10086_diseqc_wait(ptr noundef %1)
  %conv23 = and i32 %retval.0.i, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i65) #6
  %67 = getelementptr inbounds [2 x i8], ptr %b0.i65, i32 0, i32 1
  %68 = ptrtoint ptr %b0.i65 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 54, ptr %b0.i65, align 1
  %conv1.i67 = trunc i32 %retval.0.i to i8
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv1.i67, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i66) #6
  %70 = getelementptr inbounds i8, ptr %msg.i66, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %flags.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i68, align 2
  %buf.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 3
  %73 = ptrtoint ptr %buf.i70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %b0.i65, ptr %buf.i70, align 4
  %74 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 4
  %conv2.i72 = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i66 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv2.i72, ptr %msg.i66, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call.i73 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i66, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i73)
  %cmp.not.i74 = icmp eq i32 %call.i73, 1
  br i1 %cmp.not.i74, label %tda10086_write_byte.exit64.tda10086_write_byte.exit80_crit_edge, label %do.body.i76

tda10086_write_byte.exit64.tda10086_write_byte.exit80_crit_edge: ; preds = %tda10086_write_byte.exit64
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit80

do.body.i76:                                      ; preds = %tda10086_write_byte.exit64
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i75 = icmp eq i32 %81, 0
  br i1 %tobool.not.i75, label %do.body.i76.tda10086_write_byte.exit80_crit_edge, label %do.end.i78

do.body.i76.tda10086_write_byte.exit80_crit_edge: ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit80

do.end.i78:                                       ; preds = %do.body.i76
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 54, i32 noundef %conv23, i32 noundef %call.i73) #9
  br label %tda10086_write_byte.exit80

tda10086_write_byte.exit80:                       ; preds = %do.end.i78, %do.body.i76.tda10086_write_byte.exit80_crit_edge, %tda10086_write_byte.exit64.tda10086_write_byte.exit80_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i66) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i65) #6
  br label %cleanup

cleanup:                                          ; preds = %tda10086_write_byte.exit80, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tda10086_write_byte.exit80 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %minicmd) #0 align 64 {
entry:
  %b0.i49 = alloca [2 x i8], align 1
  %msg.i50 = alloca %struct.i2c_msg, align 4
  %b0.i33 = alloca [2 x i8], align 1
  %msg.i34 = alloca %struct.i2c_msg, align 4
  %b0.i22 = alloca [2 x i8], align 1
  %msg.i23 = alloca %struct.i2c_msg, align 4
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
  store i8 54, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags.i, align 2
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %9 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %10 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %11 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b1.i, ptr %buf5.i, align 4
  %config.i = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv7.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv7.i, ptr %msg.i, align 4
  %17 = load i8, ptr %13, align 4
  %conv11.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv11.i, ptr %arrayinit.element.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %tda10086_read_byte.exit.thread, label %do.end.i

tda10086_read_byte.exit.thread:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  br label %do.end4

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 54, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

if.end21.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %23 to i32
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit:                          ; preds = %if.end21.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i, %do.end.i ], [ %conv23.i, %if.end21.i ]
  %.pr = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %tda10086_read_byte.exit.do.end4_crit_edge, label %do.end

tda10086_read_byte.exit.do.end4_crit_edge:        ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %tda10086_read_byte.exit.do.end4_crit_edge, %tda10086_read_byte.exit.thread
  %retval.0.i67 = phi i32 [ %call.i, %tda10086_read_byte.exit.thread ], [ %retval.0.i.ph, %do.end ], [ %retval.0.i.ph, %tda10086_read_byte.exit.do.end4_crit_edge ]
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config.i, align 4
  %diseqc_tone = getelementptr inbounds %struct.tda10086_config, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %diseqc_tone to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %diseqc_tone, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool5.not = icmp eq i8 %27, 0
  %spec.select = select i1 %tobool5.not, i32 128, i32 0
  %28 = zext i32 %minicmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %minicmd, label %do.end4.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

do.end4.sw.epilog_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end4
  %add = or i32 %spec.select, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i22) #6
  %29 = getelementptr inbounds [2 x i8], ptr %b0.i22, i32 0, i32 1
  %30 = ptrtoint ptr %b0.i22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 54, ptr %b0.i22, align 1
  %conv1.i = trunc i32 %add to i8
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv1.i, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23) #6
  %32 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 196607, ptr %32, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i24, align 2
  %buf.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i22, ptr %buf.i26, align 4
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 4
  %conv2.i = zext i8 %39 to i16
  %40 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv2.i, ptr %msg.i23, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i28 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i23, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i28)
  %cmp.not.i29 = icmp eq i32 %call.i28, 1
  br i1 %cmp.not.i29, label %sw.bb.tda10086_write_byte.exit_crit_edge, label %do.body.i31

sw.bb.tda10086_write_byte.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.body.i31:                                      ; preds = %sw.bb
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i30 = icmp eq i32 %43, 0
  br i1 %tobool.not.i30, label %do.body.i31.tda10086_write_byte.exit_crit_edge, label %do.end.i32

do.body.i31.tda10086_write_byte.exit_crit_edge:   ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.end.i32:                                       ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 54, i32 noundef %add, i32 noundef %call.i28) #9
  br label %tda10086_write_byte.exit

tda10086_write_byte.exit:                         ; preds = %do.end.i32, %do.body.i31.tda10086_write_byte.exit_crit_edge, %sw.bb.tda10086_write_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i22) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end4
  %add12 = or i32 %spec.select, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i33) #6
  %44 = getelementptr inbounds [2 x i8], ptr %b0.i33, i32 0, i32 1
  %45 = ptrtoint ptr %b0.i33 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 54, ptr %b0.i33, align 1
  %conv1.i35 = trunc i32 %add12 to i8
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv1.i35, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i34) #6
  %47 = getelementptr inbounds i8, ptr %msg.i34, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 196607, ptr %47, align 4
  %flags.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i36, align 2
  %buf.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %b0.i33, ptr %buf.i38, align 4
  %51 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4
  %conv2.i40 = zext i8 %54 to i16
  %55 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv2.i40, ptr %msg.i34, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i41 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i34, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i41)
  %cmp.not.i42 = icmp eq i32 %call.i41, 1
  br i1 %cmp.not.i42, label %sw.bb10.tda10086_write_byte.exit48_crit_edge, label %do.body.i44

sw.bb10.tda10086_write_byte.exit48_crit_edge:     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit48

do.body.i44:                                      ; preds = %sw.bb10
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i43 = icmp eq i32 %58, 0
  br i1 %tobool.not.i43, label %do.body.i44.tda10086_write_byte.exit48_crit_edge, label %do.end.i46

do.body.i44.tda10086_write_byte.exit48_crit_edge: ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit48

do.end.i46:                                       ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 54, i32 noundef %add12, i32 noundef %call.i41) #9
  br label %tda10086_write_byte.exit48

tda10086_write_byte.exit48:                       ; preds = %do.end.i46, %do.body.i44.tda10086_write_byte.exit48_crit_edge, %sw.bb10.tda10086_write_byte.exit48_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i34) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i33) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %tda10086_write_byte.exit48, %tda10086_write_byte.exit, %do.end4.sw.epilog_crit_edge
  call fastcc void @tda10086_diseqc_wait(ptr noundef %1)
  %conv14 = and i32 %retval.0.i67, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i49) #6
  %59 = getelementptr inbounds [2 x i8], ptr %b0.i49, i32 0, i32 1
  %60 = ptrtoint ptr %b0.i49 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 54, ptr %b0.i49, align 1
  %conv1.i51 = trunc i32 %retval.0.i67 to i8
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv1.i51, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50) #6
  %62 = getelementptr inbounds i8, ptr %msg.i50, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 196607, ptr %62, align 4
  %flags.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i52 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i52, align 2
  %buf.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 3
  %65 = ptrtoint ptr %buf.i54 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %b0.i49, ptr %buf.i54, align 4
  %66 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 4
  %conv2.i56 = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i50 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv2.i56, ptr %msg.i50, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call.i57 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i50, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i57)
  %cmp.not.i58 = icmp eq i32 %call.i57, 1
  br i1 %cmp.not.i58, label %sw.epilog.tda10086_write_byte.exit64_crit_edge, label %do.body.i60

sw.epilog.tda10086_write_byte.exit64_crit_edge:   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit64

do.body.i60:                                      ; preds = %sw.epilog
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i59 = icmp eq i32 %73, 0
  br i1 %tobool.not.i59, label %do.body.i60.tda10086_write_byte.exit64_crit_edge, label %do.end.i62

do.body.i60.tda10086_write_byte.exit64_crit_edge: ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit64

do.end.i62:                                       ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 54, i32 noundef %conv14, i32 noundef %call.i57) #9
  br label %tda10086_write_byte.exit64

tda10086_write_byte.exit64:                       ; preds = %do.end.i62, %do.body.i60.tda10086_write_byte.exit64_crit_edge, %sw.epilog.tda10086_write_byte.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i49) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %b0.i14 = alloca [2 x i8], align 1
  %msg.i15 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [2 x i8], align 1
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.25) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config = getelementptr inbounds %struct.tda10086_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %diseqc_tone = getelementptr inbounds %struct.tda10086_config, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %diseqc_tone to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %diseqc_tone, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  %spec.select = select i1 %tobool4.not, i32 128, i32 0
  %7 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %tone, label %do.end3.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb8
  ]

do.end3.sw.epilog_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %8 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %9 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 54, ptr %b0.i, align 1
  %conv1.i = trunc i32 %spec.select to i8
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv1.i, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 196607, ptr %11, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %conv2.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv2.i, ptr %msg.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.bb.tda10086_write_byte.exit_crit_edge, label %do.body.i

sw.bb.tda10086_write_byte.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.body.i:                                        ; preds = %sw.bb
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_write_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_write_byte.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 54, i32 noundef %spec.select, i32 noundef %call.i) #9
  br label %tda10086_write_byte.exit

tda10086_write_byte.exit:                         ; preds = %do.end.i, %do.body.i.tda10086_write_byte.exit_crit_edge, %sw.bb.tda10086_write_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end3
  %add = or i32 %spec.select, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i14) #6
  %23 = getelementptr inbounds [2 x i8], ptr %b0.i14, i32 0, i32 1
  %24 = ptrtoint ptr %b0.i14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 54, ptr %b0.i14, align 1
  %conv1.i16 = trunc i32 %add to i8
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.i16, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i15) #6
  %26 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i17, align 2
  %buf.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b0.i14, ptr %buf.i19, align 4
  %30 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv2.i21 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv2.i21, ptr %msg.i15, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i22 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i15, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i22)
  %cmp.not.i23 = icmp eq i32 %call.i22, 1
  br i1 %cmp.not.i23, label %sw.bb8.tda10086_write_byte.exit29_crit_edge, label %do.body.i25

sw.bb8.tda10086_write_byte.exit29_crit_edge:      ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit29

do.body.i25:                                      ; preds = %sw.bb8
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i24 = icmp eq i32 %37, 0
  br i1 %tobool.not.i24, label %do.body.i25.tda10086_write_byte.exit29_crit_edge, label %do.end.i27

do.body.i25.tda10086_write_byte.exit29_crit_edge: ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit29

do.end.i27:                                       ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 54, i32 noundef %add, i32 noundef %call.i22) #9
  br label %tda10086_write_byte.exit29

tda10086_write_byte.exit29:                       ; preds = %do.end.i27, %do.body.i25.tda10086_write_byte.exit29_crit_edge, %sw.bb8.tda10086_write_byte.exit29_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i15) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i14) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %tda10086_write_byte.exit29, %tda10086_write_byte.exit, %do.end3.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10086_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool4.not = icmp eq i32 %enable, 0
  %. = select i1 %tobool4.not, i32 0, i32 16
  tail call fastcc void @tda10086_write_mask(ptr noundef %1, i32 noundef 0, i32 noundef 16, i32 noundef %.)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda10086_write_mask(ptr nocapture noundef readonly %state, i32 noundef %reg, i32 noundef %mask, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %b0.i1 = alloca [2 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %conv.i = trunc i32 %reg to i8
  %0 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv.i, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %1 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags.i, align 2
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %7 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %8 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %9 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b1.i, ptr %buf5.i, align 4
  %config.i = getelementptr inbounds %struct.tda10086_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv7.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv7.i, ptr %msg.i, align 4
  %15 = load i8, ptr %11, align 4
  %conv11.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv11.i, ptr %arrayinit.element.i, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %tda10086_read_byte.exit.thread, label %do.body.i

do.body.i:                                        ; preds = %entry
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_read_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_read_byte.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %reg, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %21 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  br label %if.end

tda10086_read_byte.exit:                          ; preds = %do.end.i, %do.body.i.tda10086_read_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %tda10086_read_byte.exit.cleanup_crit_edge, label %tda10086_read_byte.exit.if.end_crit_edge

tda10086_read_byte.exit.if.end_crit_edge:         ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

tda10086_read_byte.exit.cleanup_crit_edge:        ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tda10086_read_byte.exit.if.end_crit_edge, %tda10086_read_byte.exit.thread
  %retval.0.i15 = phi i32 [ %conv23.i, %tda10086_read_byte.exit.thread ], [ %call.i, %tda10086_read_byte.exit.if.end_crit_edge ]
  %neg = xor i32 %mask, -1
  %and = and i32 %retval.0.i15, %neg
  %and1 = and i32 %data, 255
  %or = or i32 %and, %and1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i1) #6
  %22 = getelementptr inbounds [2 x i8], ptr %b0.i1, i32 0, i32 1
  %23 = ptrtoint ptr %b0.i1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %b0.i1, align 1
  %conv1.i = trunc i32 %or to i8
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #6
  %25 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %flags.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i4, align 2
  %buf.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %b0.i1, ptr %buf.i6, align 4
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  %conv2.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv2.i, ptr %msg.i2, align 4
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state, align 4
  %call.i8 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8)
  %cmp.not.i9 = icmp eq i32 %call.i8, 1
  br i1 %cmp.not.i9, label %if.end.tda10086_write_byte.exit_crit_edge, label %do.body.i11

if.end.tda10086_write_byte.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.body.i11:                                      ; preds = %if.end
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i10 = icmp eq i32 %36, 0
  br i1 %tobool.not.i10, label %do.body.i11.tda10086_write_byte.exit_crit_edge, label %do.end.i12

do.body.i11.tda10086_write_byte.exit_crit_edge:   ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_write_byte.exit

do.end.i12:                                       ; preds = %do.body.i11
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %reg, i32 noundef %or, i32 noundef %call.i8) #9
  br label %tda10086_write_byte.exit

tda10086_write_byte.exit:                         ; preds = %do.end.i12, %do.body.i11.tda10086_write_byte.exit_crit_edge, %if.end.tda10086_write_byte.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i1) #6
  br label %cleanup

cleanup:                                          ; preds = %tda10086_write_byte.exit, %tda10086_read_byte.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda10086_diseqc_wait(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 20
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %config.i = getelementptr inbounds %struct.tda10086_state, ptr %state, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 80, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = call ptr @memset(ptr %1, i32 255, i32 16)
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags.i, align 2
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %1, align 4
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %b0.i, ptr %buf.i, align 4
  %8 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %flags3.i, align 2
  %9 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len4.i, align 4
  %10 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %b1.i, ptr %buf5.i, align 4
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv7.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv7.i, ptr %msg.i, align 4
  %16 = load i8, ptr %12, align 4
  %conv11.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv11.i, ptr %arrayinit.element.i, align 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end21.i, label %do.body.i

do.body.i:                                        ; preds = %while.cond
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.tda10086_read_byte.exit_crit_edge, label %do.end.i

do.body.i.tda10086_read_byte.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tda10086_read_byte.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 80, i32 noundef %call.i) #9
  br label %tda10086_read_byte.exit

if.end21.i:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv23.i = zext i8 %22 to i32
  br label %tda10086_read_byte.exit

tda10086_read_byte.exit:                          ; preds = %if.end21.i, %do.end.i, %do.body.i.tda10086_read_byte.exit_crit_edge
  %retval.0.i = phi i32 [ %conv23.i, %if.end21.i ], [ %call.i, %do.end.i ], [ %call.i, %do.body.i.tda10086_read_byte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body, label %tda10086_read_byte.exit.while.end_crit_edge

tda10086_read_byte.exit.while.end_crit_edge:      ; preds = %tda10086_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %tda10086_read_byte.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %23
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #9
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 10) #6
  br label %while.cond

while.end:                                        ; preds = %do.end, %tda10086_read_byte.exit.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !18, !20, !22, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 737, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tda10086_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tda10086_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__param_debug, !7, !"__param_debug", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 760, i32 1}
!8 = !{ptr @__UNIQUE_ID_debugtype290, !7, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_debug291, !10, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 761, i32 1}
!11 = !{ptr @__UNIQUE_ID_description292, !12, !"__UNIQUE_ID_description292", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 763, i32 1}
!13 = !{ptr @__UNIQUE_ID_author293, !14, !"__UNIQUE_ID_author293", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 764, i32 1}
!15 = !{ptr @__UNIQUE_ID_file294, !16, !"__UNIQUE_ID_file294", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 765, i32 1}
!17 = !{ptr @__UNIQUE_ID_license295, !16, !"__UNIQUE_ID_license295", i1 false, i1 false}
!18 = !{ptr @__ksymtab_tda10086_attach, !19, !"__ksymtab_tda10086_attach", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 767, i32 1}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 33, i32 12}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 68, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tda10086_read_byte._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @tda10086_read_byte._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @tda10086_ops, !28, !"tda10086_ops", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 696, i32 38}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 98, i32 2}
!31 = !{ptr @tda10086_init._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tda10086_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 49, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @tda10086_write_byte._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @tda10086_write_byte._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 634, i32 2}
!40 = !{ptr @tda10086_sleep._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tda10086_sleep._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 409, i32 2}
!44 = !{ptr @tda10086_set_frontend._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tda10086_set_frontend._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 263, i32 2}
!48 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tda10086_set_inversion._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @tda10086_set_inversion._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 297, i32 2}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tda10086_set_symbol_rate._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @tda10086_set_symbol_rate._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 363, i32 2}
!58 = !{ptr @tda10086_set_fec._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tda10086_set_fec._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 457, i32 2}
!62 = !{ptr @tda10086_get_frontend._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tda10086_get_frontend._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 549, i32 2}
!66 = !{ptr @tda10086_read_status._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tda10086_read_status._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 619, i32 2}
!70 = !{ptr @tda10086_read_ber._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tda10086_read_ber._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 578, i32 2}
!74 = !{ptr @tda10086_read_signal_strength._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @tda10086_read_signal_strength._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 591, i32 2}
!78 = !{ptr @tda10086_read_snr._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @tda10086_read_snr._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 603, i32 2}
!82 = !{ptr @tda10086_read_ucblocks._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @tda10086_read_ucblocks._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 207, i32 2}
!86 = !{ptr @tda10086_send_master_cmd._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @tda10086_send_master_cmd._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 168, i32 4}
!90 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @tda10086_diseqc_wait._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @tda10086_diseqc_wait._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 236, i32 2}
!95 = !{ptr @tda10086_send_burst._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @tda10086_send_burst._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 181, i32 2}
!99 = !{ptr @tda10086_set_tone._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @tda10086_set_tone._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.26, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/tda10086.c", i32 645, i32 2}
!103 = !{ptr @tda10086_i2c_gate_ctrl._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @tda10086_i2c_gate_ctrl._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @__param_str_debug, !7, !"__param_str_debug", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 729703, i64 729730}
!116 = !{i64 730398, i64 730425, i64 730458, i64 730479, i64 730506, i64 730532}
!117 = !{i8 0, i8 2}
