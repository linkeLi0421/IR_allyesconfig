; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stv0299.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0299.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stv0299_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stv0299_attach\09\09\09\09"
module asm "\09.long\09__crc_stv0299_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0299_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0299_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0299_attach:\09\09\09\09\09"
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
%struct.stv0299_state = type { ptr, ptr, %struct.dvb_frontend, i8, i32, i32, i32, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.stv0299_config = type { i8, ptr, i32, i8, i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@stv0299_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0299 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 500, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @stv0299_release, ptr null, ptr @stv0299_init, ptr @stv0299_sleep, ptr null, ptr null, ptr @stv0299_write, ptr null, ptr null, ptr @stv0299_set_frontend, ptr @stv0299_get_tune_settings, ptr @stv0299_get_frontend, ptr @stv0299_read_status, ptr @stv0299_read_ber, ptr @stv0299_read_signal_strength, ptr @stv0299_read_snr, ptr @stv0299_read_ucblocks, ptr null, ptr @stv0299_send_diseqc_msg, ptr null, ptr @stv0299_send_diseqc_burst, ptr @stv0299_set_tone, ptr @stv0299_set_voltage, ptr null, ptr @stv0299_send_legacy_dish_cmd, ptr @stv0299_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug_legacy_dish_switch = internal constant [33 x i8] c"stv0299.debug_legacy_dish_switch\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug_legacy_dish_switch = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_legacy_dish_switch = internal constant %struct.kernel_param { ptr @__param_str_debug_legacy_dish_switch, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.78 { ptr @debug_legacy_dish_switch } }, section "__param", align 4
@__UNIQUE_ID_debug_legacy_dish_switchtype290 = internal constant [46 x i8] c"stv0299.parmtype=debug_legacy_dish_switch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_legacy_dish_switch291 = internal constant [94 x i8] c"stv0299.parm=debug_legacy_dish_switch:Enable timing analysis for Dish Network legacy switches\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"stv0299.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"stv0299.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [65 x i8] c"stv0299.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [54 x i8] c"stv0299.description=ST STV0299 DVB Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [132 x i8] c"stv0299.author=Ralph Metzler, Holger Waechtler, Peter Schildmann, Felix Domke, Andreas Oberritter, Andrew de Quincey, Kenneth Aafly\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [49 x i8] c"stv0299.file=drivers/media/dvb-frontends/stv0299\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"stv0299.license=GPL\00", section ".modinfo", align 1
@__kstrtab_stv0299_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0299_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0299_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0299_attach to i32), ptr @__kstrtab_stv0299_attach, ptr @__kstrtabns_stv0299_attach }, section "___ksymtab+stv0299_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stv0299_writeregI._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017stv0299: %s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv0299_writeregI\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/stv0299.c\00", [58 x i8] zeroinitializer }, align 32
@stv0299_writeregI._entry_ptr = internal global ptr @stv0299_writeregI._entry, section ".printk_index", align 4
@stv0299_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017stv0299: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv0299_readreg\00", [16 x i8] zeroinitializer }, align 32
@stv0299_readreg._entry_ptr = internal global ptr @stv0299_readreg._entry, section ".printk_index", align 4
@stv0299_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017stv0299: stv0299: init chip\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stv0299_init\00", [19 x i8] zeroinitializer }, align 32
@stv0299_init._entry_ptr = internal global ptr @stv0299_init._entry, section ".printk_index", align 4
@stv0299_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017stv0299: %s : FE_SET_FRONTEND\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stv0299_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@stv0299_set_frontend._entry_ptr = internal global ptr @stv0299_set_frontend._entry, section ".printk_index", align 4
@stv0299_set_frontend._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"stv0299 does not support auto-inversion\0A\00", [55 x i8] zeroinitializer }, align 32
@stv0299_set_frontend._entry_ptr.11 = internal global ptr @stv0299_set_frontend._entry.9, section ".printk_index", align 4
@stv0299_set_FEC._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017stv0299: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv0299_set_FEC\00", [16 x i8] zeroinitializer }, align 32
@stv0299_set_FEC._entry_ptr = internal global ptr @stv0299_set_FEC._entry, section ".printk_index", align 4
@stv0299_get_fec.fec_tab = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2, i32 3, i32 5, i32 7, i32 1], [44 x i8] zeroinitializer }, align 32
@stv0299_get_fec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.14, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv0299_get_fec\00", [16 x i8] zeroinitializer }, align 32
@stv0299_get_fec._entry_ptr = internal global ptr @stv0299_get_fec._entry, section ".printk_index", align 4
@stv0299_get_symbolrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.15, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stv0299_get_symbolrate\00", [41 x i8] zeroinitializer }, align 32
@stv0299_get_symbolrate._entry_ptr = internal global ptr @stv0299_get_symbolrate._entry, section ".printk_index", align 4
@stv0299_get_symbolrate._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017stv0299: %s : srate = %i\0A\00", [36 x i8] zeroinitializer }, align 32
@stv0299_get_symbolrate._entry_ptr.18 = internal global ptr @stv0299_get_symbolrate._entry.16, section ".printk_index", align 4
@stv0299_get_symbolrate._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017stv0299: %s : ofset = %i\0A\00", [36 x i8] zeroinitializer }, align 32
@stv0299_get_symbolrate._entry_ptr.21 = internal global ptr @stv0299_get_symbolrate._entry.19, section ".printk_index", align 4
@stv0299_readregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017stv0299: %s: readreg error (ret == %i)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stv0299_readregs\00", [47 x i8] zeroinitializer }, align 32
@stv0299_readregs._entry_ptr = internal global ptr @stv0299_readregs._entry, section ".printk_index", align 4
@stv0299_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017stv0299: %s : FE_READ_STATUS : VSTATUS: 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stv0299_read_status\00", [44 x i8] zeroinitializer }, align 32
@stv0299_read_status._entry_ptr = internal global ptr @stv0299_read_status._entry, section ".printk_index", align 4
@stv0299_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\017stv0299: %s : FE_READ_SIGNAL_STRENGTH : AGC2I: 0x%02x%02x, signal=0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stv0299_read_signal_strength\00", [35 x i8] zeroinitializer }, align 32
@stv0299_read_signal_strength._entry_ptr = internal global ptr @stv0299_read_signal_strength._entry, section ".printk_index", align 4
@stv0299_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.28, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stv0299_send_diseqc_msg\00", [40 x i8] zeroinitializer }, align 32
@stv0299_send_diseqc_msg._entry_ptr = internal global ptr @stv0299_send_diseqc_msg._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@stv0299_wait_diseqc_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.29, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stv0299_wait_diseqc_idle\00", [39 x i8] zeroinitializer }, align 32
@stv0299_wait_diseqc_idle._entry_ptr = internal global ptr @stv0299_wait_diseqc_idle._entry, section ".printk_index", align 4
@stv0299_wait_diseqc_idle._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017stv0299: %s: timeout!!\0A\00", [38 x i8] zeroinitializer }, align 32
@stv0299_wait_diseqc_idle._entry_ptr.32 = internal global ptr @stv0299_wait_diseqc_idle._entry.30, section ".printk_index", align 4
@stv0299_wait_diseqc_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.33, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stv0299_wait_diseqc_fifo\00", [39 x i8] zeroinitializer }, align 32
@stv0299_wait_diseqc_fifo._entry_ptr = internal global ptr @stv0299_wait_diseqc_fifo._entry, section ".printk_index", align 4
@stv0299_wait_diseqc_fifo._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.33, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stv0299_wait_diseqc_fifo._entry_ptr.35 = internal global ptr @stv0299_wait_diseqc_fifo._entry.34, section ".printk_index", align 4
@stv0299_send_diseqc_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.36, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stv0299_send_diseqc_burst\00", [38 x i8] zeroinitializer }, align 32
@stv0299_send_diseqc_burst._entry_ptr = internal global ptr @stv0299_send_diseqc_burst._entry, section ".printk_index", align 4
@stv0299_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017stv0299: %s: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stv0299_set_voltage\00", [44 x i8] zeroinitializer }, align 32
@stv0299_set_voltage._entry_ptr = internal global ptr @stv0299_set_voltage._entry, section ".printk_index", align 4
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEC_VOLTAGE_13\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEC_VOLTAGE_18\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@stv0299_send_legacy_dish_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s switch command: 0x%04lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stv0299_send_legacy_dish_cmd\00", [35 x i8] zeroinitializer }, align 32
@stv0299_send_legacy_dish_cmd._entry_ptr = internal global ptr @stv0299_send_legacy_dish_cmd._entry, section ".printk_index", align 4
@stv0299_send_legacy_dish_cmd._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s(%d): switch delay (should be 32k followed by all 8k\0A\00", [40 x i8] zeroinitializer }, align 32
@stv0299_send_legacy_dish_cmd._entry_ptr.46 = internal global ptr @stv0299_send_legacy_dish_cmd._entry.44, section ".printk_index", align 4
@stv0299_send_legacy_dish_cmd._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@stv0299_send_legacy_dish_cmd._entry_ptr.49 = internal global ptr @stv0299_send_legacy_dish_cmd._entry.47, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 161]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 12]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"stv0299_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 704, i32 38 }
@___asan_gen_.57 = private unnamed_addr constant [25 x i8] c"debug_legacy_dish_switch\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 63, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 62, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 79, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 106, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 452, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 562, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 570, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 128, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [8 x i8] c"fec_tab\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 164, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 168, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 239, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 251, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 252, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 121, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 480, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 520, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 270, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 200, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 204, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 183, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 187, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 300, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 352, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 411, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 435, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [41 x i8] c"../drivers/media/dvb-frontends/stv0299.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 438, i32 4 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debug_legacy_dish_switch291, ptr @__UNIQUE_ID_debug_legacy_dish_switchtype290, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__ksymtab_stv0299_attach, ptr @__param_debug, ptr @__param_debug_legacy_dish_switch, ptr @stv0299_get_fec._entry, ptr @stv0299_get_fec._entry_ptr, ptr @stv0299_get_symbolrate._entry, ptr @stv0299_get_symbolrate._entry.16, ptr @stv0299_get_symbolrate._entry.19, ptr @stv0299_get_symbolrate._entry_ptr, ptr @stv0299_get_symbolrate._entry_ptr.18, ptr @stv0299_get_symbolrate._entry_ptr.21, ptr @stv0299_init._entry, ptr @stv0299_init._entry_ptr, ptr @stv0299_read_signal_strength._entry, ptr @stv0299_read_signal_strength._entry_ptr, ptr @stv0299_read_status._entry, ptr @stv0299_read_status._entry_ptr, ptr @stv0299_readreg._entry, ptr @stv0299_readreg._entry_ptr, ptr @stv0299_readregs._entry, ptr @stv0299_readregs._entry_ptr, ptr @stv0299_send_diseqc_burst._entry, ptr @stv0299_send_diseqc_burst._entry_ptr, ptr @stv0299_send_diseqc_msg._entry, ptr @stv0299_send_diseqc_msg._entry_ptr, ptr @stv0299_send_legacy_dish_cmd._entry, ptr @stv0299_send_legacy_dish_cmd._entry.44, ptr @stv0299_send_legacy_dish_cmd._entry.47, ptr @stv0299_send_legacy_dish_cmd._entry_ptr, ptr @stv0299_send_legacy_dish_cmd._entry_ptr.46, ptr @stv0299_send_legacy_dish_cmd._entry_ptr.49, ptr @stv0299_set_FEC._entry, ptr @stv0299_set_FEC._entry_ptr, ptr @stv0299_set_frontend._entry, ptr @stv0299_set_frontend._entry.9, ptr @stv0299_set_frontend._entry_ptr, ptr @stv0299_set_frontend._entry_ptr.11, ptr @stv0299_set_voltage._entry, ptr @stv0299_set_voltage._entry_ptr, ptr @stv0299_wait_diseqc_fifo._entry, ptr @stv0299_wait_diseqc_fifo._entry.34, ptr @stv0299_wait_diseqc_fifo._entry_ptr, ptr @stv0299_wait_diseqc_fifo._entry_ptr.35, ptr @stv0299_wait_diseqc_idle._entry, ptr @stv0299_wait_diseqc_idle._entry.30, ptr @stv0299_wait_diseqc_idle._entry_ptr, ptr @stv0299_wait_diseqc_idle._entry_ptr.32, ptr @stv0299_writeregI._entry, ptr @stv0299_writeregI._entry_ptr, ptr @stv0299_ops, ptr @debug_legacy_dish_switch, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @stv0299_get_fec.fec_tab, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_legacy_dish_switch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_writeregI._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_set_frontend._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_set_FEC._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_get_fec.fec_tab to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_get_fec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_get_symbolrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_get_symbolrate._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_get_symbolrate._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_readregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_wait_diseqc_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_wait_diseqc_idle._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_wait_diseqc_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_wait_diseqc_fifo._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_send_diseqc_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_send_legacy_dish_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_send_legacy_dish_cmd._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0299_send_legacy_dish_cmd._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stv0299_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i29 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1076) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.stv0299_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %initialised = getelementptr inbounds %struct.stv0299_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %initialised, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %initialised, align 8
  %tuner_frequency = getelementptr inbounds %struct.stv0299_state, ptr %call7.i.i, i32 0, i32 4
  %4 = call ptr @memset(ptr %tuner_frequency, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 48, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.stv0299_writeregI.exit_crit_edge, label %do.body.i

if.end.stv0299_writeregI.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.body.i:                                        ; preds = %if.end
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0299_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef 48, i32 noundef %call.i) #11
  br label %stv0299_writeregI.exit

stv0299_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0299_writeregI.exit_crit_edge, %if.end.stv0299_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @msleep(i32 noundef 200) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %16 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %17 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i29) #7
  %18 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  %20 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %conv.i31 = zext i8 %23 to i16
  %24 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i31, ptr %msg.i29, align 4
  %flags.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i32, align 2
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %18, align 4
  %buf.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %b0.i, ptr %buf.i34, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1
  %28 = load i8, ptr %21, align 4
  %conv5.i = zext i8 %28 to i16
  %29 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 1
  %30 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 2
  %31 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 3
  %32 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %b1.i, ptr %buf8.i, align 4
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 8
  %call.i35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i29, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i35)
  %cmp.not.i36 = icmp eq i32 %call.i35, 2
  br i1 %cmp.not.i36, label %stv0299_writeregI.exit.stv0299_readreg.exit_crit_edge, label %do.body.i38

stv0299_writeregI.exit.stv0299_readreg.exit_crit_edge: ; preds = %stv0299_writeregI.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i38:                                      ; preds = %stv0299_writeregI.exit
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i37 = icmp eq i32 %35, 0
  br i1 %tobool.not.i37, label %do.body.i38.stv0299_readreg.exit_crit_edge, label %do.end.i39

do.body.i38.stv0299_readreg.exit_crit_edge:       ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i39:                                       ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i35) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i39, %do.body.i38.stv0299_readreg.exit_crit_edge, %stv0299_writeregI.exit.stv0299_readreg.exit_crit_edge
  %36 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i29) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %38 = zext i8 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i8 %37, label %stv0299_readreg.exit.error_crit_edge [
    i8 -95, label %stv0299_readreg.exit.if.end10_crit_edge
    i8 -128, label %stv0299_readreg.exit.if.end10_crit_edge40
  ]

stv0299_readreg.exit.if.end10_crit_edge40:        ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

stv0299_readreg.exit.if.end10_crit_edge:          ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

stv0299_readreg.exit.error_crit_edge:             ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end10:                                         ; preds = %stv0299_readreg.exit.if.end10_crit_edge, %stv0299_readreg.exit.if.end10_crit_edge40
  %frontend = getelementptr inbounds %struct.stv0299_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.stv0299_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %39 = call ptr @memcpy(ptr %ops, ptr @stv0299_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.stv0299_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %stv0299_readreg.exit.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end10
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end10 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

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
define internal void @stv0299_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @stv0299_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i52 = alloca [2 x i8], align 1
  %msg.i53 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %mcr_reg = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %mcr_reg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mcr_reg, align 4
  %5 = or i8 %4, 48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
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
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end3.stv0299_writeregI.exit_crit_edge, label %do.body.i

do.end3.stv0299_writeregI.exit_crit_edge:         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.body.i:                                        ; preds = %do.end3
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0299_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %5 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %conv6.i, i32 noundef %call.i) #11
  br label %stv0299_writeregI.exit

stv0299_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0299_writeregI.exit_crit_edge, %do.end3.stv0299_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @msleep(i32 noundef 50) #7
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %inittab71 = getelementptr inbounds %struct.stv0299_config, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %inittab71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inittab71, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  %arrayidx872 = getelementptr i8, ptr %24, i32 1
  %27 = ptrtoint ptr %arrayidx872 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx872, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %cmp73 = icmp eq i8 %26, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %cmp1274 = icmp eq i8 %28, -1
  %or.cond75 = select i1 %cmp73, i1 %cmp1274, i1 false
  br i1 %or.cond75, label %stv0299_writeregI.exit.for.end_crit_edge, label %if.end15.lr.ph

stv0299_writeregI.exit.for.end_crit_edge:         ; preds = %stv0299_writeregI.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end15.lr.ph:                                   ; preds = %stv0299_writeregI.exit
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i52, i32 0, i32 1
  %30 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %buf1.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  br label %if.end15

if.end15:                                         ; preds = %stv0299_writeregI.exit67.if.end15_crit_edge, %if.end15.lr.ph
  %31 = phi i8 [ %28, %if.end15.lr.ph ], [ %60, %stv0299_writeregI.exit67.if.end15_crit_edge ]
  %32 = phi i8 [ %26, %if.end15.lr.ph ], [ %58, %stv0299_writeregI.exit67.if.end15_crit_edge ]
  %33 = phi ptr [ %22, %if.end15.lr.ph ], [ %54, %stv0299_writeregI.exit67.if.end15_crit_edge ]
  %i.076 = phi i32 [ 0, %if.end15.lr.ph ], [ %add37, %stv0299_writeregI.exit67.if.end15_crit_edge ]
  %34 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %32, label %if.end15.if.end35_crit_edge [
    i8 12, label %if.end26.thread
    i8 2, label %if.then30
  ]

if.end15.if.end35_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end26.thread:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %op0_off = getelementptr inbounds %struct.stv0299_config, ptr %33, i32 0, i32 3
  %35 = ptrtoint ptr %op0_off to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %op0_off, align 4
  %36 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool22.not = icmp eq i8 %36, 0
  %37 = and i8 %31, -17
  %spec.select = select i1 %tobool22.not, i8 %31, i8 %37
  br label %if.end35

if.then30:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %38 = and i8 %31, 15
  %39 = ptrtoint ptr %mcr_reg to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %mcr_reg, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end26.thread, %if.end15.if.end35_crit_edge
  %val.070 = phi i8 [ %spec.select, %if.end26.thread ], [ %31, %if.then30 ], [ %31, %if.end15.if.end35_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52) #7
  %40 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %32, ptr %buf.i52, align 1
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %val.070, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i53) #7
  %42 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %30, align 4
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 4
  %conv.i55 = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i55, ptr %msg.i53, align 4
  %48 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i56, align 2
  store i16 2, ptr %30, align 4
  %49 = ptrtoint ptr %buf1.i58 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf.i52, ptr %buf1.i58, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i59 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i53, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59)
  %cmp.not.i60 = icmp eq i32 %call.i59, 1
  br i1 %cmp.not.i60, label %if.end35.stv0299_writeregI.exit67_crit_edge, label %do.body.i62

if.end35.stv0299_writeregI.exit67_crit_edge:      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit67

do.body.i62:                                      ; preds = %if.end35
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i61 = icmp eq i32 %52, 0
  br i1 %tobool.not.i61, label %do.body.i62.stv0299_writeregI.exit67_crit_edge, label %do.end.i65

do.body.i62.stv0299_writeregI.exit67_crit_edge:   ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit67

do.end.i65:                                       ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %32 to i32
  %conv6.i63 = zext i8 %val.070 to i32
  %call7.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv5.i, i32 noundef %conv6.i63, i32 noundef %call.i59) #11
  br label %stv0299_writeregI.exit67

stv0299_writeregI.exit67:                         ; preds = %do.end.i65, %do.body.i62.stv0299_writeregI.exit67_crit_edge, %if.end35.stv0299_writeregI.exit67_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #7
  %add37 = add i32 %i.076, 2
  %53 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config.i, align 4
  %inittab = getelementptr inbounds %struct.stv0299_config, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %inittab to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %inittab, align 4
  %arrayidx = getelementptr i8, ptr %56, i32 %add37
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx, align 1
  %add = or i32 %add37, 1
  %arrayidx8 = getelementptr i8, ptr %56, i32 %add
  %59 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %cmp = icmp eq i8 %58, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %60)
  %cmp12 = icmp eq i8 %60, -1
  %or.cond = select i1 %cmp, i1 %cmp12, i1 false
  br i1 %or.cond, label %stv0299_writeregI.exit67.for.end_crit_edge, label %stv0299_writeregI.exit67.if.end15_crit_edge

stv0299_writeregI.exit67.if.end15_crit_edge:      ; preds = %stv0299_writeregI.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

stv0299_writeregI.exit67.for.end_crit_edge:       ; preds = %stv0299_writeregI.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %stv0299_writeregI.exit67.for.end_crit_edge, %stv0299_writeregI.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %mcr_reg = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mcr_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mcr_reg, align 4
  %4 = or i8 %3, -80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf1.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.stv0299_writeregI.exit_crit_edge, label %do.body.i

entry.stv0299_writeregI.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.body.i:                                        ; preds = %entry
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0299_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %4 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %conv6.i, i32 noundef %call.i) #11
  br label %stv0299_writeregI.exit

stv0299_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0299_writeregI.exit_crit_edge, %entry.stv0299_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %initialised = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %initialised, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %initialised, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_write(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp.not = icmp eq i32 %len, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
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
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.stv0299_writeregI.exit_crit_edge, label %do.body.i

if.end.stv0299_writeregI.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.body.i:                                        ; preds = %if.end
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0299_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %3 to i32
  %conv6.i = zext i8 %5 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %call.i) #11
  br label %stv0299_writeregI.exit

stv0299_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0299_writeregI.exit_crit_edge, %if.end.stv0299_writeregI.exit_crit_edge
  %cond.i = phi i32 [ -121, %do.body.i.stv0299_writeregI.exit_crit_edge ], [ -121, %do.end.i ], [ 0, %if.end.stv0299_writeregI.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %cleanup

cleanup:                                          ; preds = %stv0299_writeregI.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i, %stv0299_writeregI.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i116 = alloca [2 x i8], align 1
  %msg.i117 = alloca %struct.i2c_msg, align 4
  %buf.i101 = alloca [2 x i8], align 1
  %msg.i102 = alloca %struct.i2c_msg, align 4
  %buf.i61.i = alloca [2 x i8], align 1
  %msg.i62.i = alloca %struct.i2c_msg, align 4
  %buf.i46.i = alloca [2 x i8], align 1
  %msg.i47.i = alloca %struct.i2c_msg, align 4
  %buf.i31.i = alloca [2 x i8], align 1
  %msg.i32.i = alloca %struct.i2c_msg, align 4
  %buf.i16.i = alloca [2 x i8], align 1
  %msg.i17.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i83 = alloca [2 x i8], align 1
  %msg.i84 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %config = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %set_ts_params = getelementptr inbounds %struct.stv0299_config, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %set_ts_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_ts_params, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end3.if.end9_crit_edge, label %if.then5

do.end3.if.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 %6(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end3.if.end9_crit_edge
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %7 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch = icmp ult i32 %8, 2
  br i1 %switch, label %if.end21, label %do.end17

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 4
  %invert = getelementptr inbounds %struct.stv0299_config, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %invert, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %12 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 12, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %13 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  %16 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %14, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %24 = load i8, ptr %17, align 4
  %conv5.i = zext i8 %24 to i16
  %25 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
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
  br i1 %cmp.not.i, label %if.end21.stv0299_readreg.exit_crit_edge, label %do.body.i

if.end21.stv0299_readreg.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %if.end21
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %if.end21.stv0299_readreg.exit_crit_edge
  %32 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %34 = and i8 %33, -2
  %35 = trunc i32 %8 to i8
  %36 = xor i8 %bf.load.lobit, %35
  %conv28 = or i8 %34, %36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i83) #7
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i83, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i83 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 12, ptr %buf.i83, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv28, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84) #7
  %40 = getelementptr inbounds i8, ptr %msg.i84, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %40, align 4
  %42 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv.i86 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i84 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i86, ptr %msg.i84, align 4
  %flags.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i87 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i87, align 2
  store i16 2, ptr %40, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 3
  %48 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i83, ptr %buf1.i, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call.i89 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i84, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i89)
  %cmp.not.i90 = icmp eq i32 %call.i89, 1
  br i1 %cmp.not.i90, label %stv0299_readreg.exit.stv0299_writeregI.exit_crit_edge, label %do.body.i92

stv0299_readreg.exit.stv0299_writeregI.exit_crit_edge: ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.body.i92:                                      ; preds = %stv0299_readreg.exit
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i91 = icmp eq i32 %51, 0
  br i1 %tobool.not.i91, label %do.body.i92.stv0299_writeregI.exit_crit_edge, label %do.end.i93

do.body.i92.stv0299_writeregI.exit_crit_edge:     ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.end.i93:                                       ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %conv28 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 12, i32 noundef %conv6.i, i32 noundef %call.i89) #11
  br label %stv0299_writeregI.exit

stv0299_writeregI.exit:                           ; preds = %do.end.i93, %do.body.i92.stv0299_writeregI.exit_crit_edge, %stv0299_readreg.exit.stv0299_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i83) #7
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %52 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_params, align 4
  %tobool30.not = icmp eq ptr %53, null
  br i1 %tobool30.not, label %stv0299_writeregI.exit.if.end43_crit_edge, label %if.then31

stv0299_writeregI.exit.if.end43_crit_edge:        ; preds = %stv0299_writeregI.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then31:                                        ; preds = %stv0299_writeregI.exit
  %call35 = call i32 %53(ptr noundef %fe) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %54 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool37.not = icmp eq ptr %55, null
  br i1 %tobool37.not, label %if.then31.if.end43_crit_edge, label %if.then38

if.then31.if.end43_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then38:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 %55(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.then31.if.end43_crit_edge, %stv0299_writeregI.exit.if.end43_crit_edge
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %56 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fec_inner, align 4
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i94 = icmp eq i32 %58, 0
  br i1 %tobool.not.i94, label %if.end43.do.end2.i_crit_edge, label %do.end.i96

if.end43.do.end2.i_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2.i

do.end.i96:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %call.i95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #11
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i96, %if.end43.do.end2.i_crit_edge
  %59 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %57, label %do.end2.i.stv0299_set_FEC.exit_crit_edge [
    i32 9, label %sw.bb.i
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb6.i
    i32 3, label %sw.bb8.i
    i32 5, label %sw.bb10.i
    i32 7, label %sw.bb12.i
  ]

do.end2.i.stv0299_set_FEC.exit_crit_edge:         ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_set_FEC.exit

sw.bb.i:                                          ; preds = %do.end2.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %60 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 49, ptr %buf.i.i, align 1
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 31, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %63 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 196607, ptr %63, align 4
  %65 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4
  %conv.i.i = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %sw.bb.i.stv0299_writeregI.exit.i_crit_edge, label %do.body.i.i

sw.bb.i.stv0299_writeregI.exit.i_crit_edge:       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit.i

do.body.i.i:                                      ; preds = %sw.bb.i
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.stv0299_writeregI.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.stv0299_writeregI.exit.i_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 49, i32 noundef 31, i32 noundef %call.i.i) #11
  br label %stv0299_writeregI.exit.i

stv0299_writeregI.exit.i:                         ; preds = %do.end.i.i, %do.body.i.i.stv0299_writeregI.exit.i_crit_edge, %sw.bb.i.stv0299_writeregI.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %stv0299_set_FEC.exit

sw.bb4.i:                                         ; preds = %do.end2.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #7
  %75 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %76 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 49, ptr %buf.i1.i, align 1
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %75, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #7
  %78 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 196607, ptr %78, align 4
  %80 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %config, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 4
  %conv.i4.i = zext i8 %83 to i16
  %84 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i5.i, align 2
  %buf1.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %86 = ptrtoint ptr %buf1.i7.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %buf.i1.i, ptr %buf1.i7.i, align 4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %call.i8.i = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i)
  %cmp.not.i9.i = icmp eq i32 %call.i8.i, 1
  br i1 %cmp.not.i9.i, label %sw.bb4.i.stv0299_writeregI.exit15.i_crit_edge, label %do.body.i11.i

sw.bb4.i.stv0299_writeregI.exit15.i_crit_edge:    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit15.i

do.body.i11.i:                                    ; preds = %sw.bb4.i
  %89 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i10.i = icmp eq i32 %89, 0
  br i1 %tobool.not.i10.i, label %do.body.i11.i.stv0299_writeregI.exit15.i_crit_edge, label %do.end.i13.i

do.body.i11.i.stv0299_writeregI.exit15.i_crit_edge: ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit15.i

do.end.i13.i:                                     ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 49, i32 noundef 1, i32 noundef %call.i8.i) #11
  br label %stv0299_writeregI.exit15.i

stv0299_writeregI.exit15.i:                       ; preds = %do.end.i13.i, %do.body.i11.i.stv0299_writeregI.exit15.i_crit_edge, %sw.bb4.i.stv0299_writeregI.exit15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #7
  br label %stv0299_set_FEC.exit

sw.bb6.i:                                         ; preds = %do.end2.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i16.i) #7
  %90 = getelementptr inbounds [2 x i8], ptr %buf.i16.i, i32 0, i32 1
  %91 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 49, ptr %buf.i16.i, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 2, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i17.i) #7
  %93 = getelementptr inbounds i8, ptr %msg.i17.i, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 196607, ptr %93, align 4
  %95 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %config, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 4
  %conv.i19.i = zext i8 %98 to i16
  %99 = ptrtoint ptr %msg.i17.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i19.i, ptr %msg.i17.i, align 4
  %flags.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17.i, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i20.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i20.i, align 2
  %buf1.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17.i, i32 0, i32 3
  %101 = ptrtoint ptr %buf1.i22.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %buf.i16.i, ptr %buf1.i22.i, align 4
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %call.i23.i = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msg.i17.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i23.i)
  %cmp.not.i24.i = icmp eq i32 %call.i23.i, 1
  br i1 %cmp.not.i24.i, label %sw.bb6.i.stv0299_writeregI.exit30.i_crit_edge, label %do.body.i26.i

sw.bb6.i.stv0299_writeregI.exit30.i_crit_edge:    ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit30.i

do.body.i26.i:                                    ; preds = %sw.bb6.i
  %104 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i25.i = icmp eq i32 %104, 0
  br i1 %tobool.not.i25.i, label %do.body.i26.i.stv0299_writeregI.exit30.i_crit_edge, label %do.end.i28.i

do.body.i26.i.stv0299_writeregI.exit30.i_crit_edge: ; preds = %do.body.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit30.i

do.end.i28.i:                                     ; preds = %do.body.i26.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 49, i32 noundef 2, i32 noundef %call.i23.i) #11
  br label %stv0299_writeregI.exit30.i

stv0299_writeregI.exit30.i:                       ; preds = %do.end.i28.i, %do.body.i26.i.stv0299_writeregI.exit30.i_crit_edge, %sw.bb6.i.stv0299_writeregI.exit30.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i17.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i16.i) #7
  br label %stv0299_set_FEC.exit

sw.bb8.i:                                         ; preds = %do.end2.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i31.i) #7
  %105 = getelementptr inbounds [2 x i8], ptr %buf.i31.i, i32 0, i32 1
  %106 = ptrtoint ptr %buf.i31.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 49, ptr %buf.i31.i, align 1
  %107 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 4, ptr %105, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i32.i) #7
  %108 = getelementptr inbounds i8, ptr %msg.i32.i, i32 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 196607, ptr %108, align 4
  %110 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %config, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 4
  %conv.i34.i = zext i8 %113 to i16
  %114 = ptrtoint ptr %msg.i32.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i34.i, ptr %msg.i32.i, align 4
  %flags.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32.i, i32 0, i32 1
  %115 = ptrtoint ptr %flags.i35.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags.i35.i, align 2
  %buf1.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32.i, i32 0, i32 3
  %116 = ptrtoint ptr %buf1.i37.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %buf.i31.i, ptr %buf1.i37.i, align 4
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %call.i38.i = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %msg.i32.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i38.i)
  %cmp.not.i39.i = icmp eq i32 %call.i38.i, 1
  br i1 %cmp.not.i39.i, label %sw.bb8.i.stv0299_writeregI.exit45.i_crit_edge, label %do.body.i41.i

sw.bb8.i.stv0299_writeregI.exit45.i_crit_edge:    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit45.i

do.body.i41.i:                                    ; preds = %sw.bb8.i
  %119 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i40.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i40.i, label %do.body.i41.i.stv0299_writeregI.exit45.i_crit_edge, label %do.end.i43.i

do.body.i41.i.stv0299_writeregI.exit45.i_crit_edge: ; preds = %do.body.i41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit45.i

do.end.i43.i:                                     ; preds = %do.body.i41.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 49, i32 noundef 4, i32 noundef %call.i38.i) #11
  br label %stv0299_writeregI.exit45.i

stv0299_writeregI.exit45.i:                       ; preds = %do.end.i43.i, %do.body.i41.i.stv0299_writeregI.exit45.i_crit_edge, %sw.bb8.i.stv0299_writeregI.exit45.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i32.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i31.i) #7
  br label %stv0299_set_FEC.exit

sw.bb10.i:                                        ; preds = %do.end2.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i46.i) #7
  %120 = getelementptr inbounds [2 x i8], ptr %buf.i46.i, i32 0, i32 1
  %121 = ptrtoint ptr %buf.i46.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 49, ptr %buf.i46.i, align 1
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 8, ptr %120, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i47.i) #7
  %123 = getelementptr inbounds i8, ptr %msg.i47.i, i32 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 196607, ptr %123, align 4
  %125 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %config, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %126, align 4
  %conv.i49.i = zext i8 %128 to i16
  %129 = ptrtoint ptr %msg.i47.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i49.i, ptr %msg.i47.i, align 4
  %flags.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 0, i32 1
  %130 = ptrtoint ptr %flags.i50.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i50.i, align 2
  %buf1.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 0, i32 3
  %131 = ptrtoint ptr %buf1.i52.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %buf.i46.i, ptr %buf1.i52.i, align 4
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %call.i53.i = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %msg.i47.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i53.i)
  %cmp.not.i54.i = icmp eq i32 %call.i53.i, 1
  br i1 %cmp.not.i54.i, label %sw.bb10.i.stv0299_writeregI.exit60.i_crit_edge, label %do.body.i56.i

sw.bb10.i.stv0299_writeregI.exit60.i_crit_edge:   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit60.i

do.body.i56.i:                                    ; preds = %sw.bb10.i
  %134 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i55.i = icmp eq i32 %134, 0
  br i1 %tobool.not.i55.i, label %do.body.i56.i.stv0299_writeregI.exit60.i_crit_edge, label %do.end.i58.i

do.body.i56.i.stv0299_writeregI.exit60.i_crit_edge: ; preds = %do.body.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit60.i

do.end.i58.i:                                     ; preds = %do.body.i56.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 49, i32 noundef 8, i32 noundef %call.i53.i) #11
  br label %stv0299_writeregI.exit60.i

stv0299_writeregI.exit60.i:                       ; preds = %do.end.i58.i, %do.body.i56.i.stv0299_writeregI.exit60.i_crit_edge, %sw.bb10.i.stv0299_writeregI.exit60.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i47.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i46.i) #7
  br label %stv0299_set_FEC.exit

sw.bb12.i:                                        ; preds = %do.end2.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i61.i) #7
  %135 = getelementptr inbounds [2 x i8], ptr %buf.i61.i, i32 0, i32 1
  %136 = ptrtoint ptr %buf.i61.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 49, ptr %buf.i61.i, align 1
  %137 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 16, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i62.i) #7
  %138 = getelementptr inbounds i8, ptr %msg.i62.i, i32 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 196607, ptr %138, align 4
  %140 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %config, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %141, align 4
  %conv.i64.i = zext i8 %143 to i16
  %144 = ptrtoint ptr %msg.i62.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv.i64.i, ptr %msg.i62.i, align 4
  %flags.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 1
  %145 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %flags.i65.i, align 2
  %buf1.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 3
  %146 = ptrtoint ptr %buf1.i67.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %buf.i61.i, ptr %buf1.i67.i, align 4
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %call.i68.i = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i62.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i68.i)
  %cmp.not.i69.i = icmp eq i32 %call.i68.i, 1
  br i1 %cmp.not.i69.i, label %sw.bb12.i.stv0299_writeregI.exit75.i_crit_edge, label %do.body.i71.i

sw.bb12.i.stv0299_writeregI.exit75.i_crit_edge:   ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit75.i

do.body.i71.i:                                    ; preds = %sw.bb12.i
  %149 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i70.i = icmp eq i32 %149, 0
  br i1 %tobool.not.i70.i, label %do.body.i71.i.stv0299_writeregI.exit75.i_crit_edge, label %do.end.i73.i

do.body.i71.i.stv0299_writeregI.exit75.i_crit_edge: ; preds = %do.body.i71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit75.i

do.end.i73.i:                                     ; preds = %do.body.i71.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 49, i32 noundef 16, i32 noundef %call.i68.i) #11
  br label %stv0299_writeregI.exit75.i

stv0299_writeregI.exit75.i:                       ; preds = %do.end.i73.i, %do.body.i71.i.stv0299_writeregI.exit75.i_crit_edge, %sw.bb12.i.stv0299_writeregI.exit75.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i62.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i61.i) #7
  br label %stv0299_set_FEC.exit

stv0299_set_FEC.exit:                             ; preds = %stv0299_writeregI.exit75.i, %stv0299_writeregI.exit60.i, %stv0299_writeregI.exit45.i, %stv0299_writeregI.exit30.i, %stv0299_writeregI.exit15.i, %stv0299_writeregI.exit.i, %do.end2.i.stv0299_set_FEC.exit_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %150 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %symbol_rate, align 4
  %152 = add i32 %151, -45000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -44000001, i32 %152)
  %153 = icmp ult i32 %152, -44000001
  br i1 %153, label %stv0299_set_FEC.exit.stv0299_set_symbolrate.exit_crit_edge, label %if.end.i

stv0299_set_FEC.exit.stv0299_set_symbolrate.exit_crit_edge: ; preds = %stv0299_set_FEC.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_set_symbolrate.exit

if.end.i:                                         ; preds = %stv0299_set_FEC.exit
  call void @__sanitizer_cov_trace_pc() #9
  %154 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %demodulator_priv, align 4
  %config.i98 = getelementptr inbounds %struct.stv0299_state, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %config.i98 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %config.i98, align 4
  %conv.i97 = zext i32 %151 to i64
  %shl.i = shl nuw nsw i64 %conv.i97, 20
  %mclk.i = getelementptr inbounds %struct.stv0299_config, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mclk.i, align 4
  %sub.i = add i32 %159, -1
  %conv4.i = zext i32 %sub.i to i64
  %add.i = add nuw nsw i64 %shl.i, %conv4.i
  %160 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %159, i64 %add.i) #12, !srcloc !143
  %asmresult1.i.i = extractvalue { i64, i64 } %160, 1
  %extract.t = trunc i64 %asmresult1.i.i to i32
  %conv195.i = shl i32 %extract.t, 4
  %set_symbol_rate.i = getelementptr inbounds %struct.stv0299_config, ptr %157, i32 0, i32 5
  %161 = ptrtoint ptr %set_symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %set_symbol_rate.i, align 4
  %call197.i = call i32 %162(ptr noundef %fe, i32 noundef %151, i32 noundef %conv195.i) #7
  br label %stv0299_set_symbolrate.exit

stv0299_set_symbolrate.exit:                      ; preds = %if.end.i, %stv0299_set_FEC.exit.stv0299_set_symbolrate.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i101) #7
  %163 = getelementptr inbounds [2 x i8], ptr %buf.i101, i32 0, i32 1
  %164 = ptrtoint ptr %buf.i101 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 34, ptr %buf.i101, align 1
  %165 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %163, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i102) #7
  %166 = getelementptr inbounds i8, ptr %msg.i102, i32 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 196607, ptr %166, align 4
  %168 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %config, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %169, align 4
  %conv.i104 = zext i8 %171 to i16
  %172 = ptrtoint ptr %msg.i102 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv.i104, ptr %msg.i102, align 4
  %flags.i105 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 0, i32 1
  %173 = ptrtoint ptr %flags.i105 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %flags.i105, align 2
  %buf1.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 0, i32 3
  %174 = ptrtoint ptr %buf1.i107 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %buf.i101, ptr %buf1.i107, align 4
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 4
  %call.i108 = call i32 @i2c_transfer(ptr noundef %176, ptr noundef nonnull %msg.i102, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i108)
  %cmp.not.i109 = icmp eq i32 %call.i108, 1
  br i1 %cmp.not.i109, label %stv0299_set_symbolrate.exit.stv0299_writeregI.exit115_crit_edge, label %do.body.i111

stv0299_set_symbolrate.exit.stv0299_writeregI.exit115_crit_edge: ; preds = %stv0299_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit115

do.body.i111:                                     ; preds = %stv0299_set_symbolrate.exit
  %177 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.not.i110 = icmp eq i32 %177, 0
  br i1 %tobool.not.i110, label %do.body.i111.stv0299_writeregI.exit115_crit_edge, label %do.end.i113

do.body.i111.stv0299_writeregI.exit115_crit_edge: ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit115

do.end.i113:                                      ; preds = %do.body.i111
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 34, i32 noundef 0, i32 noundef %call.i108) #11
  br label %stv0299_writeregI.exit115

stv0299_writeregI.exit115:                        ; preds = %do.end.i113, %do.body.i111.stv0299_writeregI.exit115_crit_edge, %stv0299_set_symbolrate.exit.stv0299_writeregI.exit115_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i102) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i101) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i116) #7
  %178 = getelementptr inbounds [2 x i8], ptr %buf.i116, i32 0, i32 1
  %179 = ptrtoint ptr %buf.i116 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 35, ptr %buf.i116, align 1
  %180 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %178, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i117) #7
  %181 = getelementptr inbounds i8, ptr %msg.i117, i32 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 196607, ptr %181, align 4
  %183 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %config, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %184, align 4
  %conv.i119 = zext i8 %186 to i16
  %187 = ptrtoint ptr %msg.i117 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv.i119, ptr %msg.i117, align 4
  %flags.i120 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117, i32 0, i32 1
  %188 = ptrtoint ptr %flags.i120 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %flags.i120, align 2
  %buf1.i122 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117, i32 0, i32 3
  %189 = ptrtoint ptr %buf1.i122 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %buf.i116, ptr %buf1.i122, align 4
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 4
  %call.i123 = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %msg.i117, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i123)
  %cmp.not.i124 = icmp eq i32 %call.i123, 1
  br i1 %cmp.not.i124, label %stv0299_writeregI.exit115.stv0299_writeregI.exit130_crit_edge, label %do.body.i126

stv0299_writeregI.exit115.stv0299_writeregI.exit130_crit_edge: ; preds = %stv0299_writeregI.exit115
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit130

do.body.i126:                                     ; preds = %stv0299_writeregI.exit115
  %192 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool.not.i125 = icmp eq i32 %192, 0
  br i1 %tobool.not.i125, label %do.body.i126.stv0299_writeregI.exit130_crit_edge, label %do.end.i128

do.body.i126.stv0299_writeregI.exit130_crit_edge: ; preds = %do.body.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit130

do.end.i128:                                      ; preds = %do.body.i126
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 35, i32 noundef 0, i32 noundef %call.i123) #11
  br label %stv0299_writeregI.exit130

stv0299_writeregI.exit130:                        ; preds = %do.end.i128, %do.body.i126.stv0299_writeregI.exit130_crit_edge, %stv0299_writeregI.exit115.stv0299_writeregI.exit130_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i117) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i116) #7
  %193 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %dtv_property_cache, align 4
  %tuner_frequency = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 4
  %195 = ptrtoint ptr %tuner_frequency to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %tuner_frequency, align 4
  %196 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %fec_inner, align 4
  %fec_inner49 = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 6
  %198 = ptrtoint ptr %fec_inner49 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %fec_inner49, align 4
  %199 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %symbol_rate, align 4
  %symbol_rate51 = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 5
  %201 = ptrtoint ptr %symbol_rate51 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %symbol_rate51, align 4
  br label %cleanup

cleanup:                                          ; preds = %stv0299_writeregI.exit130, %do.end17
  %retval.0 = phi i32 [ 0, %stv0299_writeregI.exit130 ], [ -22, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stv0299_get_tune_settings(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %min_delay_ms = getelementptr inbounds %struct.stv0299_config, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %min_delay_ms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_delay_ms, align 4
  %6 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fesettings, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %7 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %8)
  %cmp = icmp ult i32 %8, 10000000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %8, 32000
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %9 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %step_size, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div4 = udiv i32 %8, 16000
  %step_size5 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %10 = ptrtoint ptr %step_size5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div4, ptr %step_size5, align 4
  %11 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %symbol_rate, align 4
  %div7 = udiv i32 %12, 2000
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %div7.sink = phi i32 [ 5000, %if.then ], [ %div7, %if.else ]
  %13 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div7.sink, ptr %13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef %p) #0 align 64 {
entry:
  %reg1.addr.i61.i = alloca i8, align 1
  %msg.i62.i = alloca [2 x %struct.i2c_msg], align 4
  %reg1.addr.i.i = alloca i8, align 1
  %msg.i.i69 = alloca [2 x %struct.i2c_msg], align 4
  %sfr.i = alloca [3 x i8], align 1
  %rtf.i = alloca i8, align 1
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i46 = alloca [1 x i8], align 1
  %b1.i47 = alloca [1 x i8], align 1
  %msg.i48 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i26 = alloca [1 x i8], align 1
  %b1.i27 = alloca [1 x i8], align 1
  %msg.i28 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 34, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
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
  %14 = load i8, ptr %7, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.stv0299_readreg.exit_crit_edge, label %do.body.i

entry.stv0299_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 34, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %entry.stv0299_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %conv = zext i8 %23 to i16
  %shl = shl nuw i16 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i26) #7
  %24 = ptrtoint ptr %b0.i26 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 35, ptr %b0.i26, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i27) #7
  %25 = ptrtoint ptr %b1.i27 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i27, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i28) #7
  %26 = getelementptr inbounds i8, ptr %msg.i28, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.i30 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i28 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i30, ptr %msg.i28, align 4
  %flags.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i31, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i26, ptr %buf.i33, align 4
  %arrayinit.element.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1
  %36 = load i8, ptr %29, align 4
  %conv5.i35 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i34 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i35, ptr %arrayinit.element.i34, align 4
  %flags6.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i36 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i36, align 2
  %len7.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i37 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i37, align 4
  %buf8.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i27, ptr %buf8.i38, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i39 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i28, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i39)
  %cmp.not.i40 = icmp eq i32 %call.i39, 2
  br i1 %cmp.not.i40, label %stv0299_readreg.exit.stv0299_readreg.exit45_crit_edge, label %do.body.i42

stv0299_readreg.exit.stv0299_readreg.exit45_crit_edge: ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit45

do.body.i42:                                      ; preds = %stv0299_readreg.exit
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i41 = icmp eq i32 %43, 0
  br i1 %tobool.not.i41, label %do.body.i42.stv0299_readreg.exit45_crit_edge, label %do.end.i44

do.body.i42.stv0299_readreg.exit45_crit_edge:     ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit45

do.end.i44:                                       ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 35, i32 noundef %call.i39) #11
  br label %stv0299_readreg.exit45

stv0299_readreg.exit45:                           ; preds = %do.end.i44, %do.body.i42.stv0299_readreg.exit45_crit_edge, %stv0299_readreg.exit.stv0299_readreg.exit45_crit_edge
  %44 = ptrtoint ptr %b1.i27 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i27, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i28) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i27) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i26) #7
  %conv2 = zext i8 %45 to i16
  %or = or i16 %shl, %conv2
  %conv4 = sext i16 %or to i32
  %46 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config.i, align 4
  %mclk = getelementptr inbounds %struct.stv0299_config, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mclk, align 4
  %shr = lshr i32 %49, 16
  %mul = mul nsw i32 %shr, %conv4
  %add = add nsw i32 %mul, 500
  %div = sdiv i32 %add, 1000
  %50 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %p, align 4
  %add5 = add i32 %div, %51
  store i32 %add5, ptr %p, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i46) #7
  %52 = ptrtoint ptr %b0.i46 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 12, ptr %b0.i46, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i47) #7
  %53 = ptrtoint ptr %b1.i47 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %b1.i47, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i48) #7
  %54 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %55 = call ptr @memset(ptr %54, i32 255, i32 16)
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv.i50 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i50, ptr %msg.i48, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i51, align 2
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %54, align 4
  %buf.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %63 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %b0.i46, ptr %buf.i53, align 4
  %arrayinit.element.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1
  %64 = load i8, ptr %57, align 4
  %conv5.i55 = zext i8 %64 to i16
  %65 = ptrtoint ptr %arrayinit.element.i54 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv5.i55, ptr %arrayinit.element.i54, align 4
  %flags6.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 1
  %66 = ptrtoint ptr %flags6.i56 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags6.i56, align 2
  %len7.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 2
  %67 = ptrtoint ptr %len7.i57 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %len7.i57, align 4
  %buf8.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 3
  %68 = ptrtoint ptr %buf8.i58 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %b1.i47, ptr %buf8.i58, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i59 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i48, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i59)
  %cmp.not.i60 = icmp eq i32 %call.i59, 2
  br i1 %cmp.not.i60, label %stv0299_readreg.exit45.stv0299_readreg.exit65_crit_edge, label %do.body.i62

stv0299_readreg.exit45.stv0299_readreg.exit65_crit_edge: ; preds = %stv0299_readreg.exit45
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit65

do.body.i62:                                      ; preds = %stv0299_readreg.exit45
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i61 = icmp eq i32 %71, 0
  br i1 %tobool.not.i61, label %do.body.i62.stv0299_readreg.exit65_crit_edge, label %do.end.i64

do.body.i62.stv0299_readreg.exit65_crit_edge:     ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit65

do.end.i64:                                       ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef %call.i59) #11
  br label %stv0299_readreg.exit65

stv0299_readreg.exit65:                           ; preds = %do.end.i64, %do.body.i62.stv0299_readreg.exit65_crit_edge, %stv0299_readreg.exit45.stv0299_readreg.exit65_crit_edge
  %72 = ptrtoint ptr %b1.i47 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %b1.i47, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i48) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i47) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i46) #7
  %74 = and i8 %73, 1
  %75 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %config.i, align 4
  %invert = getelementptr inbounds %struct.stv0299_config, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load = load i8, ptr %invert, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %bf.load.lobit)
  %tobool10.not = icmp ne i8 %74, %bf.load.lobit
  %cond = zext i1 %tobool10.not to i32
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %78 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond, ptr %inversion, align 4
  %79 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i66 = icmp eq i32 %79, 0
  br i1 %tobool.not.i66, label %stv0299_readreg.exit65.do.end3.i_crit_edge, label %do.end.i68

stv0299_readreg.exit65.do.end3.i_crit_edge:       ; preds = %stv0299_readreg.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i68:                                       ; preds = %stv0299_readreg.exit65
  call void @__sanitizer_cov_trace_pc() #9
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i68, %stv0299_readreg.exit65.do.end3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #7
  %80 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 27, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #7
  %81 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %82 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %83 = call ptr @memset(ptr %82, i32 255, i32 16)
  %84 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %config.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 4
  %conv.i.i = zext i8 %87 to i16
  %88 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %89 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %flags.i.i, align 2
  %90 = ptrtoint ptr %82 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 1, ptr %82, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %92 = load i8, ptr %85, align 4
  %conv5.i.i = zext i8 %92 to i16
  %93 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %94 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %95 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %96 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %97 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %do.end3.i.stv0299_readreg.exit.i_crit_edge, label %do.body.i.i

do.end3.i.stv0299_readreg.exit.i_crit_edge:       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit.i

do.body.i.i:                                      ; preds = %do.end3.i
  %99 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i.i = icmp eq i32 %99, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.stv0299_readreg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.stv0299_readreg.exit.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 27, i32 noundef %call.i.i) #11
  br label %stv0299_readreg.exit.i

stv0299_readreg.exit.i:                           ; preds = %do.end.i.i, %do.body.i.i.stv0299_readreg.exit.i_crit_edge, %do.end3.i.stv0299_readreg.exit.i_crit_edge
  %100 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %b1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #7
  %102 = and i8 %101, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %102)
  %cmp.i = icmp ugt i8 %102, 4
  br i1 %cmp.i, label %stv0299_readreg.exit.i.stv0299_get_fec.exit_crit_edge, label %if.end9.i

stv0299_readreg.exit.i.stv0299_get_fec.exit_crit_edge: ; preds = %stv0299_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_get_fec.exit

if.end9.i:                                        ; preds = %stv0299_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %102 to i32
  %arrayidx.i = getelementptr [5 x i32], ptr @stv0299_get_fec.fec_tab, i32 0, i32 %conv6.i
  %103 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i, align 4
  br label %stv0299_get_fec.exit

stv0299_get_fec.exit:                             ; preds = %if.end9.i, %stv0299_readreg.exit.i.stv0299_get_fec.exit_crit_edge
  %retval.0.i = phi i32 [ %104, %if.end9.i ], [ 9, %stv0299_readreg.exit.i.stv0299_get_fec.exit_crit_edge ]
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %105 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i, ptr %fec_inner, align 4
  %106 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %config.i, align 4
  %mclk.i = getelementptr inbounds %struct.stv0299_config, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mclk.i, align 4
  %div57.i = lshr i32 %109, 12
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %sfr.i) #7
  %110 = ptrtoint ptr %sfr.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -1, ptr %sfr.i, align 1, !annotation !144
  %111 = getelementptr inbounds [3 x i8], ptr %sfr.i, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -1, ptr %111, align 1, !annotation !144
  %113 = getelementptr inbounds [3 x i8], ptr %sfr.i, i32 0, i32 2
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -1, ptr %113, align 1, !annotation !144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rtf.i) #7
  %115 = ptrtoint ptr %rtf.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 -1, ptr %rtf.i, align 1, !annotation !144
  %116 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i71 = icmp eq i32 %116, 0
  br i1 %tobool.not.i71, label %stv0299_get_fec.exit.do.end3.i82_crit_edge, label %do.end.i73

stv0299_get_fec.exit.do.end3.i82_crit_edge:       ; preds = %stv0299_get_fec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i82

do.end.i73:                                       ; preds = %stv0299_get_fec.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.15) #11
  br label %do.end3.i82

do.end3.i82:                                      ; preds = %do.end.i73, %stv0299_get_fec.exit.do.end3.i82_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i) #7
  %117 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 31, ptr %reg1.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i69) #7
  %118 = getelementptr inbounds i8, ptr %msg.i.i69, i32 4
  %119 = call ptr @memset(ptr %118, i32 255, i32 16)
  %120 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %config.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %121, align 4
  %conv.i.i74 = zext i8 %123 to i16
  %124 = ptrtoint ptr %msg.i.i69 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i.i74, ptr %msg.i.i69, align 4
  %flags.i.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 0, i32 1
  %125 = ptrtoint ptr %flags.i.i75 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i.i75, align 2
  %126 = ptrtoint ptr %118 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 1, ptr %118, align 4
  %buf.i.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 0, i32 3
  %127 = ptrtoint ptr %buf.i.i76 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %reg1.addr.i.i, ptr %buf.i.i76, align 4
  %arrayinit.element.i.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 1
  %128 = load i8, ptr %121, align 4
  %conv5.i.i78 = zext i8 %128 to i16
  %129 = ptrtoint ptr %arrayinit.element.i.i77 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv5.i.i78, ptr %arrayinit.element.i.i77, align 4
  %flags6.i.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 1, i32 1
  %130 = ptrtoint ptr %flags6.i.i79 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 1, ptr %flags6.i.i79, align 2
  %len7.i.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 1, i32 2
  %131 = ptrtoint ptr %len7.i.i80 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 3, ptr %len7.i.i80, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i69, i32 1, i32 3
  %132 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %sfr.i, ptr %buf9.i.i, align 4
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %call.i.i81 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i.i69, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i81)
  %cond.i.i = icmp eq i32 %call.i.i81, 2
  br i1 %cond.i.i, label %do.end3.i82.stv0299_readregs.exit.i_crit_edge, label %do.body.i.i84

do.end3.i82.stv0299_readregs.exit.i_crit_edge:    ; preds = %do.end3.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readregs.exit.i

do.body.i.i84:                                    ; preds = %do.end3.i82
  %135 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i.i83 = icmp eq i32 %135, 0
  br i1 %tobool.not.i.i83, label %do.body.i.i84.stv0299_readregs.exit.i_crit_edge, label %do.end.i.i85

do.body.i.i84.stv0299_readregs.exit.i_crit_edge:  ; preds = %do.body.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readregs.exit.i

do.end.i.i85:                                     ; preds = %do.body.i.i84
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call.i.i81) #11
  br label %stv0299_readregs.exit.i

stv0299_readregs.exit.i:                          ; preds = %do.end.i.i85, %do.body.i.i84.stv0299_readregs.exit.i_crit_edge, %do.end3.i82.stv0299_readregs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i69) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i61.i) #7
  %136 = ptrtoint ptr %reg1.addr.i61.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 26, ptr %reg1.addr.i61.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i62.i) #7
  %137 = getelementptr inbounds i8, ptr %msg.i62.i, i32 4
  %138 = call ptr @memset(ptr %137, i32 255, i32 16)
  %139 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %config.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %140, align 4
  %conv.i64.i = zext i8 %142 to i16
  %143 = ptrtoint ptr %msg.i62.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv.i64.i, ptr %msg.i62.i, align 4
  %flags.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 1
  %144 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %flags.i65.i, align 2
  %145 = ptrtoint ptr %137 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 1, ptr %137, align 4
  %buf.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 3
  %146 = ptrtoint ptr %buf.i67.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %reg1.addr.i61.i, ptr %buf.i67.i, align 4
  %arrayinit.element.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 1
  %147 = load i8, ptr %140, align 4
  %conv5.i69.i = zext i8 %147 to i16
  %148 = ptrtoint ptr %arrayinit.element.i68.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv5.i69.i, ptr %arrayinit.element.i68.i, align 4
  %flags6.i70.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 1, i32 1
  %149 = ptrtoint ptr %flags6.i70.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 1, ptr %flags6.i70.i, align 2
  %len7.i71.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 1, i32 2
  %150 = ptrtoint ptr %len7.i71.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 1, ptr %len7.i71.i, align 4
  %buf9.i72.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 1, i32 3
  %151 = ptrtoint ptr %buf9.i72.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %rtf.i, ptr %buf9.i72.i, align 4
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  %call.i73.i = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %msg.i62.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i73.i)
  %cond.i74.i = icmp eq i32 %call.i73.i, 2
  br i1 %cond.i74.i, label %stv0299_readregs.exit.i.stv0299_readregs.exit79.i_crit_edge, label %do.body.i76.i

stv0299_readregs.exit.i.stv0299_readregs.exit79.i_crit_edge: ; preds = %stv0299_readregs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readregs.exit79.i

do.body.i76.i:                                    ; preds = %stv0299_readregs.exit.i
  %154 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i75.i = icmp eq i32 %154, 0
  br i1 %tobool.not.i75.i, label %do.body.i76.i.stv0299_readregs.exit79.i_crit_edge, label %do.end.i78.i

do.body.i76.i.stv0299_readregs.exit79.i_crit_edge: ; preds = %do.body.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readregs.exit79.i

do.end.i78.i:                                     ; preds = %do.body.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  %call13.i77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %call.i73.i) #11
  br label %stv0299_readregs.exit79.i

stv0299_readregs.exit79.i:                        ; preds = %do.end.i78.i, %do.body.i76.i.stv0299_readregs.exit79.i_crit_edge, %stv0299_readregs.exit.i.stv0299_readregs.exit79.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i62.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i61.i) #7
  %155 = ptrtoint ptr %sfr.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %sfr.i, align 1
  %conv.i86 = zext i8 %156 to i32
  %shl.i = shl nuw nsw i32 %conv.i86, 8
  %157 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %111, align 1
  %conv7.i = zext i8 %158 to i32
  %or.i = or i32 %shl.i, %conv7.i
  %mul.i = mul i32 %or.i, %div57.i
  %div858.i = lshr i32 %mul.i, 4
  %159 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %113, align 1
  %161 = lshr i8 %160, 4
  %162 = zext i8 %161 to i32
  %mul11.i = mul nuw nsw i32 %div57.i, %162
  %div1259.i = lshr i32 %mul11.i, 8
  %add.i = add nuw nsw i32 %div1259.i, %div858.i
  %163 = ptrtoint ptr %rtf.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %rtf.i, align 1
  %conv13.i = sext i8 %164 to i32
  %div1460.i = lshr i32 %add.i, 12
  %mul15.i = mul nsw i32 %div1460.i, %conv13.i
  %div16.i = sdiv i32 %mul15.i, 128
  %165 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool18.not.i = icmp eq i32 %165, 0
  br i1 %tobool18.not.i, label %stv0299_readregs.exit79.i.stv0299_get_symbolrate.exit_crit_edge, label %do.body28.i

stv0299_readregs.exit79.i.stv0299_get_symbolrate.exit_crit_edge: ; preds = %stv0299_readregs.exit79.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_get_symbolrate.exit

do.body28.i:                                      ; preds = %stv0299_readregs.exit79.i
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef %add.i) #11
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool29.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool29.not.i, label %do.body28.i.stv0299_get_symbolrate.exit_crit_edge, label %do.end33.i

do.body28.i.stv0299_get_symbolrate.exit_crit_edge: ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_get_symbolrate.exit

do.end33.i:                                       ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15, i32 noundef %div16.i) #11
  br label %stv0299_get_symbolrate.exit

stv0299_get_symbolrate.exit:                      ; preds = %do.end33.i, %do.body28.i.stv0299_get_symbolrate.exit_crit_edge, %stv0299_readregs.exit79.i.stv0299_get_symbolrate.exit_crit_edge
  %add39.i = add nuw nsw i32 %add.i, 1000
  %add40.i = add nsw i32 %add39.i, %div16.i
  %166 = urem i32 %add40.i, 2000
  %mul42.i = sub nsw i32 %add40.i, %166
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rtf.i) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %sfr.i) #7
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %167 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %mul42.i, ptr %symbol_rate, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i46 = alloca [1 x i8], align 1
  %b1.i47 = alloca [1 x i8], align 1
  %msg.i48 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 24, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
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
  %14 = load i8, ptr %7, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.stv0299_readreg.exit_crit_edge, label %do.body.i

entry.stv0299_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 24, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %entry.stv0299_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i46) #7
  %24 = ptrtoint ptr %b0.i46 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 27, ptr %b0.i46, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i47) #7
  %25 = ptrtoint ptr %b1.i47 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i47, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i48) #7
  %26 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.i50 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i50, ptr %msg.i48, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i51, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i46, ptr %buf.i53, align 4
  %arrayinit.element.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1
  %36 = load i8, ptr %29, align 4
  %conv5.i55 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i54 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i55, ptr %arrayinit.element.i54, align 4
  %flags6.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i56 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i56, align 2
  %len7.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i57 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i57, align 4
  %buf8.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i58 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i47, ptr %buf8.i58, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i59 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i48, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i59)
  %cmp.not.i60 = icmp eq i32 %call.i59, 2
  br i1 %cmp.not.i60, label %stv0299_readreg.exit.stv0299_readreg.exit65_crit_edge, label %do.body.i62

stv0299_readreg.exit.stv0299_readreg.exit65_crit_edge: ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit65

do.body.i62:                                      ; preds = %stv0299_readreg.exit
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i61 = icmp eq i32 %43, 0
  br i1 %tobool.not.i61, label %stv0299_readreg.exit65.thread, label %do.end.i64

stv0299_readreg.exit65.thread:                    ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %b1.i47 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i47, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i48) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i47) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i46) #7
  br label %do.end7

do.end.i64:                                       ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 27, i32 noundef %call.i59) #11
  br label %stv0299_readreg.exit65

stv0299_readreg.exit65:                           ; preds = %do.end.i64, %stv0299_readreg.exit.stv0299_readreg.exit65_crit_edge
  %.pr = load i32, ptr @debug, align 4
  %46 = ptrtoint ptr %b1.i47 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b1.i47, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i48) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i47) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %stv0299_readreg.exit65.do.end7_crit_edge, label %do.end

stv0299_readreg.exit65.do.end7_crit_edge:         ; preds = %stv0299_readreg.exit65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %stv0299_readreg.exit65
  call void @__sanitizer_cov_trace_pc() #9
  %conv4 = zext i8 %47 to i32
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %conv4) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %stv0299_readreg.exit65.do.end7_crit_edge, %stv0299_readreg.exit65.thread
  %48 = phi i8 [ %45, %stv0299_readreg.exit65.thread ], [ %47, %do.end ], [ %47, %stv0299_readreg.exit65.do.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -11, i8 %23)
  %cmp = icmp ult i8 %23, -11
  %spec.select = zext i1 %cmp to i32
  %conv12 = zext i8 %48 to i32
  %and = lshr i32 %conv12, 6
  %49 = and i32 %and, 2
  %50 = or i32 %49, %spec.select
  %51 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %status, align 4
  %and18 = and i32 %conv12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.end7.if.end22_crit_edge, label %if.then20

do.end7.if.end22_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status, align 4
  %or21 = or i32 %53, 4
  store i32 %or21, ptr %status, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.end7.if.end22_crit_edge
  %and24 = and i32 %conv12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.if.end28_crit_edge, label %if.then26

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status, align 4
  %or27 = or i32 %55, 8
  store i32 %or27, ptr %status, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  %and30 = and i32 %conv12, 152
  call void @__sanitizer_cov_trace_const_cmp4(i32 152, i32 %and30)
  %cmp31 = icmp eq i32 %and30, 152
  br i1 %cmp31, label %if.then33, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %status, align 4
  %or34 = or i32 %57, 16
  store i32 %or34, ptr %status, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end28.if.end35_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %b0.i5 = alloca [1 x i8], align 1
  %b1.i6 = alloca [1 x i8], align 1
  %msg.i7 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %errmode = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %errmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %errmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 30, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
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
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv5.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf8.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.stv0299_readreg.exit_crit_edge, label %do.body.i

if.end.stv0299_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %if.end
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 30, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %if.end.stv0299_readreg.exit_crit_edge
  %24 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %conv = zext i8 %25 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i5) #7
  %26 = ptrtoint ptr %b0.i5 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 29, ptr %b0.i5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i6) #7
  %27 = ptrtoint ptr %b1.i6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %b1.i6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i7) #7
  %28 = getelementptr inbounds i8, ptr %msg.i7, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv.i9 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i7 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i9, ptr %msg.i7, align 4
  %flags.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i10, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %b0.i5, ptr %buf.i12, align 4
  %arrayinit.element.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 1
  %38 = load i8, ptr %31, align 4
  %conv5.i14 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i13 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv5.i14, ptr %arrayinit.element.i13, align 4
  %flags6.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 1, i32 1
  %40 = ptrtoint ptr %flags6.i15 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags6.i15, align 2
  %len7.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 1, i32 2
  %41 = ptrtoint ptr %len7.i16 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len7.i16, align 4
  %buf8.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 1, i32 3
  %42 = ptrtoint ptr %buf8.i17 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %b1.i6, ptr %buf8.i17, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i18 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i7, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i18)
  %cmp.not.i19 = icmp eq i32 %call.i18, 2
  br i1 %cmp.not.i19, label %stv0299_readreg.exit.stv0299_readreg.exit24_crit_edge, label %do.body.i21

stv0299_readreg.exit.stv0299_readreg.exit24_crit_edge: ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit24

do.body.i21:                                      ; preds = %stv0299_readreg.exit
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i20 = icmp eq i32 %45, 0
  br i1 %tobool.not.i20, label %do.body.i21.stv0299_readreg.exit24_crit_edge, label %do.end.i23

do.body.i21.stv0299_readreg.exit24_crit_edge:     ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit24

do.end.i23:                                       ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 29, i32 noundef %call.i18) #11
  br label %stv0299_readreg.exit24

stv0299_readreg.exit24:                           ; preds = %do.end.i23, %do.body.i21.stv0299_readreg.exit24_crit_edge, %stv0299_readreg.exit.stv0299_readreg.exit24_crit_edge
  %46 = ptrtoint ptr %b1.i6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b1.i6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i7) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i6) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i5) #7
  %conv2 = zext i8 %47 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl, %conv
  %48 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or, ptr %ber, align 4
  br label %cleanup

cleanup:                                          ; preds = %stv0299_readreg.exit24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %stv0299_readreg.exit24 ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %b0.i67 = alloca [1 x i8], align 1
  %b1.i68 = alloca [1 x i8], align 1
  %msg.i69 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i47 = alloca [1 x i8], align 1
  %b1.i48 = alloca [1 x i8], align 1
  %msg.i49 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i27 = alloca [1 x i8], align 1
  %b1.i28 = alloca [1 x i8], align 1
  %msg.i29 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 24, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
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
  %14 = load i8, ptr %7, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.stv0299_readreg.exit_crit_edge, label %do.body.i

entry.stv0299_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 24, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %entry.stv0299_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %conv = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i27) #7
  %24 = ptrtoint ptr %b0.i27 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 25, ptr %b0.i27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i28) #7
  %25 = ptrtoint ptr %b1.i28 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i28, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i29) #7
  %26 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.i31 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i31, ptr %msg.i29, align 4
  %flags.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i32, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i27, ptr %buf.i34, align 4
  %arrayinit.element.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1
  %36 = load i8, ptr %29, align 4
  %conv5.i36 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i35 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i36, ptr %arrayinit.element.i35, align 4
  %flags6.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i37 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i37, align 2
  %len7.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i38, align 4
  %buf8.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i28, ptr %buf8.i39, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i40 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i29, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i40)
  %cmp.not.i41 = icmp eq i32 %call.i40, 2
  br i1 %cmp.not.i41, label %stv0299_readreg.exit.stv0299_readreg.exit46_crit_edge, label %do.body.i43

stv0299_readreg.exit.stv0299_readreg.exit46_crit_edge: ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit46

do.body.i43:                                      ; preds = %stv0299_readreg.exit
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i42 = icmp eq i32 %43, 0
  br i1 %tobool.not.i42, label %do.body.i43.stv0299_readreg.exit46_crit_edge, label %do.end.i45

do.body.i43.stv0299_readreg.exit46_crit_edge:     ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit46

do.end.i45:                                       ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 25, i32 noundef %call.i40) #11
  br label %stv0299_readreg.exit46

stv0299_readreg.exit46:                           ; preds = %do.end.i45, %do.body.i43.stv0299_readreg.exit46_crit_edge, %stv0299_readreg.exit.stv0299_readreg.exit46_crit_edge
  %44 = ptrtoint ptr %b1.i28 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i28, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i29) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i28) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i27) #7
  %conv2 = zext i8 %45 to i32
  %or = or i32 %shl, %conv2
  %sub = xor i32 %or, 65535
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not = icmp eq i32 %46, 0
  br i1 %tobool.not, label %stv0299_readreg.exit46.do.end10_crit_edge, label %do.end

stv0299_readreg.exit46.do.end10_crit_edge:        ; preds = %stv0299_readreg.exit46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end:                                           ; preds = %stv0299_readreg.exit46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i47) #7
  %47 = ptrtoint ptr %b0.i47 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 24, ptr %b0.i47, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i48) #7
  %48 = ptrtoint ptr %b1.i48 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %b1.i48, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i49) #7
  %49 = getelementptr inbounds i8, ptr %msg.i49, i32 4
  %50 = call ptr @memset(ptr %49, i32 255, i32 16)
  %51 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4
  %conv.i51 = zext i8 %54 to i16
  %55 = ptrtoint ptr %msg.i49 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i51, ptr %msg.i49, align 4
  %flags.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i52 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i52, align 2
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %49, align 4
  %buf.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %b0.i47, ptr %buf.i54, align 4
  %arrayinit.element.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 1
  %59 = load i8, ptr %52, align 4
  %conv5.i56 = zext i8 %59 to i16
  %60 = ptrtoint ptr %arrayinit.element.i55 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv5.i56, ptr %arrayinit.element.i55, align 4
  %flags6.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 1, i32 1
  %61 = ptrtoint ptr %flags6.i57 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %flags6.i57, align 2
  %len7.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 1, i32 2
  %62 = ptrtoint ptr %len7.i58 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %len7.i58, align 4
  %buf8.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 1, i32 3
  %63 = ptrtoint ptr %buf8.i59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %b1.i48, ptr %buf8.i59, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call.i60 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i49, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i60)
  %cmp.not.i61 = icmp eq i32 %call.i60, 2
  br i1 %cmp.not.i61, label %do.end.stv0299_readreg.exit66_crit_edge, label %do.body.i63

do.end.stv0299_readreg.exit66_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit66

do.body.i63:                                      ; preds = %do.end
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i62 = icmp eq i32 %66, 0
  br i1 %tobool.not.i62, label %do.body.i63.stv0299_readreg.exit66_crit_edge, label %do.end.i65

do.body.i63.stv0299_readreg.exit66_crit_edge:     ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit66

do.end.i65:                                       ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 24, i32 noundef %call.i60) #11
  br label %stv0299_readreg.exit66

stv0299_readreg.exit66:                           ; preds = %do.end.i65, %do.body.i63.stv0299_readreg.exit66_crit_edge, %do.end.stv0299_readreg.exit66_crit_edge
  %67 = ptrtoint ptr %b1.i48 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %b1.i48, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i49) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i48) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i47) #7
  %conv5 = zext i8 %68 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i67) #7
  %69 = ptrtoint ptr %b0.i67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 25, ptr %b0.i67, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i68) #7
  %70 = ptrtoint ptr %b1.i68 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %b1.i68, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i69) #7
  %71 = getelementptr inbounds i8, ptr %msg.i69, i32 4
  %72 = call ptr @memset(ptr %71, i32 255, i32 16)
  %73 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %config.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 4
  %conv.i71 = zext i8 %76 to i16
  %77 = ptrtoint ptr %msg.i69 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i71, ptr %msg.i69, align 4
  %flags.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i72 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i72, align 2
  %79 = ptrtoint ptr %71 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %71, align 4
  %buf.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 0, i32 3
  %80 = ptrtoint ptr %buf.i74 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %b0.i67, ptr %buf.i74, align 4
  %arrayinit.element.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1
  %81 = load i8, ptr %74, align 4
  %conv5.i76 = zext i8 %81 to i16
  %82 = ptrtoint ptr %arrayinit.element.i75 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv5.i76, ptr %arrayinit.element.i75, align 4
  %flags6.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 1
  %83 = ptrtoint ptr %flags6.i77 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 1, ptr %flags6.i77, align 2
  %len7.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 2
  %84 = ptrtoint ptr %len7.i78 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %len7.i78, align 4
  %buf8.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69, i32 1, i32 3
  %85 = ptrtoint ptr %buf8.i79 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %b1.i68, ptr %buf8.i79, align 4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %call.i80 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %msg.i69, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i80)
  %cmp.not.i81 = icmp eq i32 %call.i80, 2
  br i1 %cmp.not.i81, label %stv0299_readreg.exit66.stv0299_readreg.exit86_crit_edge, label %do.body.i83

stv0299_readreg.exit66.stv0299_readreg.exit86_crit_edge: ; preds = %stv0299_readreg.exit66
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit86

do.body.i83:                                      ; preds = %stv0299_readreg.exit66
  %88 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i82 = icmp eq i32 %88, 0
  br i1 %tobool.not.i82, label %do.body.i83.stv0299_readreg.exit86_crit_edge, label %do.end.i85

do.body.i83.stv0299_readreg.exit86_crit_edge:     ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit86

do.end.i85:                                       ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 25, i32 noundef %call.i80) #11
  br label %stv0299_readreg.exit86

stv0299_readreg.exit86:                           ; preds = %do.end.i85, %do.body.i83.stv0299_readreg.exit86_crit_edge, %stv0299_readreg.exit66.stv0299_readreg.exit86_crit_edge
  %89 = ptrtoint ptr %b1.i68 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %b1.i68, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i69) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i68) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i67) #7
  %conv7 = zext i8 %90 to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %sub) #11
  br label %do.end10

do.end10:                                         ; preds = %stv0299_readreg.exit86, %stv0299_readreg.exit46.do.end10_crit_edge
  %mul = mul nuw nsw i32 %sub, 5
  %div26 = lshr i32 %mul, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %mul)
  %cmp = icmp ugt i32 %mul, 262143
  %phi.cast = trunc i32 %div26 to i16
  %cond17 = select i1 %cmp, i16 -1, i16 %phi.cast
  %91 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %cond17, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 36, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
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
  %14 = load i8, ptr %7, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.stv0299_readreg.exit_crit_edge, label %do.body.i

entry.stv0299_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 36, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %entry.stv0299_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i16) #7
  %24 = ptrtoint ptr %b0.i16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 37, ptr %b0.i16, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i17) #7
  %25 = ptrtoint ptr %b1.i17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i17, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i18) #7
  %26 = getelementptr inbounds i8, ptr %msg.i18, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.i20 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i20, ptr %msg.i18, align 4
  %flags.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i21 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i21, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i23 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i16, ptr %buf.i23, align 4
  %arrayinit.element.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1
  %36 = load i8, ptr %29, align 4
  %conv5.i25 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i24 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i25, ptr %arrayinit.element.i24, align 4
  %flags6.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i26 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i26, align 2
  %len7.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i27 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i27, align 4
  %buf8.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i18, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i28 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i17, ptr %buf8.i28, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i29 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i18, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i29)
  %cmp.not.i30 = icmp eq i32 %call.i29, 2
  br i1 %cmp.not.i30, label %stv0299_readreg.exit.stv0299_readreg.exit35_crit_edge, label %do.body.i32

stv0299_readreg.exit.stv0299_readreg.exit35_crit_edge: ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit35

do.body.i32:                                      ; preds = %stv0299_readreg.exit
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i31 = icmp eq i32 %43, 0
  br i1 %tobool.not.i31, label %do.body.i32.stv0299_readreg.exit35_crit_edge, label %do.end.i34

do.body.i32.stv0299_readreg.exit35_crit_edge:     ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit35

do.end.i34:                                       ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 37, i32 noundef %call.i29) #11
  br label %stv0299_readreg.exit35

stv0299_readreg.exit35:                           ; preds = %do.end.i34, %do.body.i32.stv0299_readreg.exit35_crit_edge, %stv0299_readreg.exit.stv0299_readreg.exit35_crit_edge
  %conv = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %44 = ptrtoint ptr %b1.i17 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i17, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i18) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i17) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i16) #7
  %conv2 = zext i8 %45 to i32
  %or = or i32 %shl, %conv2
  %sub3 = sub nsw i32 24319, %or
  %mul = mul nsw i32 %sub3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %mul)
  %cmp = icmp sgt i32 %mul, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 24319, i32 %or)
  %cmp5 = icmp ugt i32 %or, 24319
  %phi.cast = trunc i32 %mul to i16
  %spec.select = select i1 %cmp5, i16 0, i16 %phi.cast
  %cond10 = select i1 %cmp, i16 -1, i16 %spec.select
  %46 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %cond10, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %b0.i12 = alloca [1 x i8], align 1
  %b1.i13 = alloca [1 x i8], align 1
  %msg.i14 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %errmode = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %errmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %errmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 30, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
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
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv5.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf8.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.stv0299_readreg.exit_crit_edge, label %do.body.i

if.end.stv0299_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %if.end
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 30, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %if.end.stv0299_readreg.exit_crit_edge
  %24 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %conv = zext i8 %25 to i32
  %ucblocks1 = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %ucblocks1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ucblocks1, align 4
  %add = add i32 %27, %conv
  store i32 %add, ptr %ucblocks1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i12) #7
  %28 = ptrtoint ptr %b0.i12 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 29, ptr %b0.i12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i13) #7
  %29 = ptrtoint ptr %b1.i13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %b1.i13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i14) #7
  %30 = getelementptr inbounds i8, ptr %msg.i14, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 16)
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv.i16 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i16, ptr %msg.i14, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i17, align 2
  %38 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %30, align 4
  %buf.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b0.i12, ptr %buf.i19, align 4
  %arrayinit.element.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1
  %40 = load i8, ptr %33, align 4
  %conv5.i21 = zext i8 %40 to i16
  %41 = ptrtoint ptr %arrayinit.element.i20 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv5.i21, ptr %arrayinit.element.i20, align 4
  %flags6.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 1
  %42 = ptrtoint ptr %flags6.i22 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags6.i22, align 2
  %len7.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 2
  %43 = ptrtoint ptr %len7.i23 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %len7.i23, align 4
  %buf8.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 3
  %44 = ptrtoint ptr %buf8.i24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %b1.i13, ptr %buf8.i24, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i25 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i14, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i25)
  %cmp.not.i26 = icmp eq i32 %call.i25, 2
  br i1 %cmp.not.i26, label %stv0299_readreg.exit.stv0299_readreg.exit31_crit_edge, label %do.body.i28

stv0299_readreg.exit.stv0299_readreg.exit31_crit_edge: ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit31

do.body.i28:                                      ; preds = %stv0299_readreg.exit
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i27 = icmp eq i32 %47, 0
  br i1 %tobool.not.i27, label %do.body.i28.stv0299_readreg.exit31_crit_edge, label %do.end.i30

do.body.i28.stv0299_readreg.exit31_crit_edge:     ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit31

do.end.i30:                                       ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 29, i32 noundef %call.i25) #11
  br label %stv0299_readreg.exit31

stv0299_readreg.exit31:                           ; preds = %do.end.i30, %do.body.i28.stv0299_readreg.exit31_crit_edge, %stv0299_readreg.exit.stv0299_readreg.exit31_crit_edge
  %48 = ptrtoint ptr %b1.i13 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %b1.i13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i14) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i13) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i12) #7
  %conv3 = zext i8 %49 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %50 = ptrtoint ptr %ucblocks1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ucblocks1, align 4
  %add5 = add i32 %51, %shl
  store i32 %add5, ptr %ucblocks1, align 4
  %52 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add5, ptr %ucblocks, align 4
  br label %cleanup

cleanup:                                          ; preds = %stv0299_readreg.exit31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %stv0299_readreg.exit31 ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %m) #0 align 64 {
entry:
  %buf.i55 = alloca [2 x i8], align 1
  %msg.i56 = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i40 = alloca [2 x i8], align 1
  %msg.i41 = alloca %struct.i2c_msg, align 4
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.28) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @stv0299_wait_diseqc_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
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
  %15 = load i8, ptr %8, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end6.stv0299_readreg.exit_crit_edge, label %do.body.i

if.end6.stv0299_readreg.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %if.end6
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 8, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %if.end6.stv0299_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %25 = and i8 %24, -8
  %26 = or i8 %25, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i40) #7
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i40, i32 0, i32 1
  %28 = ptrtoint ptr %buf.i40 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %buf.i40, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i41) #7
  %30 = getelementptr inbounds i8, ptr %msg.i41, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196607, ptr %30, align 4
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv.i43 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i41 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i43, ptr %msg.i41, align 4
  %flags.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i44, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 0, i32 3
  %38 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i40, ptr %buf1.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i46 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i41, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i46)
  %cmp.not.i47 = icmp eq i32 %call.i46, 1
  br i1 %cmp.not.i47, label %stv0299_writeregI.exit, label %do.body.i49

do.body.i49:                                      ; preds = %stv0299_readreg.exit
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i48 = icmp eq i32 %41, 0
  br i1 %tobool.not.i48, label %do.body.i49.stv0299_writeregI.exit.thread_crit_edge, label %do.end.i50

do.body.i49.stv0299_writeregI.exit.thread_crit_edge: ; preds = %do.body.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit.thread

do.end.i50:                                       ; preds = %do.body.i49
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %26 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef %conv6.i, i32 noundef %call.i46) #11
  br label %stv0299_writeregI.exit.thread

stv0299_writeregI.exit.thread:                    ; preds = %do.end.i50, %do.body.i49.stv0299_writeregI.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i41) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i40) #7
  br label %cleanup

stv0299_writeregI.exit:                           ; preds = %stv0299_readreg.exit
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i41) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i40) #7
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %m, i32 0, i32 1
  %42 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp1478.not = icmp eq i8 %43, 0
  br i1 %cmp1478.not, label %stv0299_writeregI.exit.for.end_crit_edge, label %for.body.lr.ph

stv0299_writeregI.exit.for.end_crit_edge:         ; preds = %stv0299_writeregI.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %stv0299_writeregI.exit
  %44 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %45 = getelementptr inbounds [2 x i8], ptr %buf.i55, i32 0, i32 1
  %46 = getelementptr inbounds i8, ptr %msg.i56, i32 4
  %flags.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 1
  %buf1.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i51 = icmp eq i32 %48, 0
  br i1 %tobool.not.i51, label %for.body.while.cond.i.preheader_crit_edge, label %do.end.i53

for.body.while.cond.i.preheader_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.preheader

do.end.i53:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.33) #11
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %do.end.i53, %for.body.while.cond.i.preheader_crit_edge
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end19.i, %while.cond.i.preheader
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #7
  %49 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 10, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #7
  %50 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %51 = call ptr @memset(ptr %44, i32 255, i32 16)
  %52 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 4
  %conv.i.i = zext i8 %55 to i16
  %56 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %57 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i.i, align 2
  %58 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %44, align 4
  %59 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %60 = load i8, ptr %53, align 4
  %conv5.i.i = zext i8 %60 to i16
  %61 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %62 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %flags6.i.i, align 2
  %63 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %len7.i.i, align 4
  %64 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %while.cond.i.stv0299_readreg.exit.i_crit_edge, label %do.body.i.i

while.cond.i.stv0299_readreg.exit.i_crit_edge:    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit.i

do.body.i.i:                                      ; preds = %while.cond.i
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i.i = icmp eq i32 %67, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.stv0299_readreg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.stv0299_readreg.exit.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 10, i32 noundef %call.i.i) #11
  br label %stv0299_readreg.exit.i

stv0299_readreg.exit.i:                           ; preds = %do.end.i.i, %do.body.i.i.stv0299_readreg.exit.i_crit_edge, %while.cond.i.stv0299_readreg.exit.i_crit_edge
  %68 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %b1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #7
  %70 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool5.not.i = icmp eq i8 %70, 0
  br i1 %tobool5.not.i, label %if.end20, label %while.body.i

while.body.i:                                     ; preds = %stv0299_readreg.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %71 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %71, %47
  %cmp.i = icmp ugt i32 %sub.i, 100
  br i1 %cmp.i, label %do.body8.i, label %if.end19.i

do.body8.i:                                       ; preds = %while.body.i
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool9.not.i = icmp eq i32 %72, 0
  br i1 %tobool9.not.i, label %do.body8.i.cleanup_crit_edge, label %do.end13.i

do.body8.i.cleanup_crit_edge:                     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33) #11
  br label %cleanup

if.end19.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 10) #7
  br label %while.cond.i

if.end20:                                         ; preds = %stv0299_readreg.exit.i
  %arrayidx = getelementptr [6 x i8], ptr %m, i32 0, i32 %i.079
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i55) #7
  %75 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 9, ptr %buf.i55, align 1
  %76 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %74, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56) #7
  %77 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %46, align 4
  %78 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %config.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %79, align 4
  %conv.i58 = zext i8 %81 to i16
  %82 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i58, ptr %msg.i56, align 4
  %83 = ptrtoint ptr %flags.i59 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %flags.i59, align 2
  store i16 2, ptr %46, align 4
  %84 = ptrtoint ptr %buf1.i61 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %buf.i55, ptr %buf1.i61, align 4
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %call.i62 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %msg.i56, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i62)
  %cmp.not.i63 = icmp eq i32 %call.i62, 1
  br i1 %cmp.not.i63, label %for.inc, label %do.body.i65

do.body.i65:                                      ; preds = %if.end20
  %87 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i64 = icmp eq i32 %87, 0
  br i1 %tobool.not.i64, label %do.body.i65.stv0299_writeregI.exit70.thread_crit_edge, label %do.end.i68

do.body.i65.stv0299_writeregI.exit70.thread_crit_edge: ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit70.thread

do.end.i68:                                       ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i66 = zext i8 %74 to i32
  %call7.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 9, i32 noundef %conv6.i66, i32 noundef %call.i62) #11
  br label %stv0299_writeregI.exit70.thread

stv0299_writeregI.exit70.thread:                  ; preds = %do.end.i68, %do.body.i65.stv0299_writeregI.exit70.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i55) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end20
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i55) #7
  %inc = add nuw nsw i32 %i.079, 1
  %88 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %msg_len, align 1
  %conv13 = zext i8 %89 to i32
  %cmp14 = icmp ult i32 %inc, %conv13
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %stv0299_writeregI.exit.for.end_crit_edge
  %call25 = call fastcc i32 @stv0299_wait_diseqc_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  %. = select i1 %cmp26, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %stv0299_writeregI.exit70.thread, %do.end13.i, %do.body8.i.cleanup_crit_edge, %stv0299_writeregI.exit.thread, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end3.cleanup_crit_edge ], [ %., %for.end ], [ -121, %stv0299_writeregI.exit.thread ], [ -121, %stv0299_writeregI.exit70.thread ], [ -110, %do.end13.i ], [ -110, %do.body8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_send_diseqc_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %buf.i63 = alloca [2 x i8], align 1
  %msg.i64 = alloca %struct.i2c_msg, align 4
  %buf.i47 = alloca [2 x i8], align 1
  %msg.i48 = alloca %struct.i2c_msg, align 4
  %buf.i36 = alloca [2 x i8], align 1
  %msg.i37 = alloca %struct.i2c_msg, align 4
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.36) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @stv0299_wait_diseqc_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
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
  %15 = load i8, ptr %8, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end6.stv0299_readreg.exit_crit_edge, label %do.body.i

if.end6.stv0299_readreg.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %if.end6
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 8, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %if.end6.stv0299_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %25 = and i8 %24, -8
  %26 = or i8 %25, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i36) #7
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i36, i32 0, i32 1
  %28 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 8, ptr %buf.i36, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i37) #7
  %30 = getelementptr inbounds i8, ptr %msg.i37, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196607, ptr %30, align 4
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv.i39 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i37 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i39, ptr %msg.i37, align 4
  %flags.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i40, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 3
  %38 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i36, ptr %buf1.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i42 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i37, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i42)
  %cmp.not.i43 = icmp eq i32 %call.i42, 1
  br i1 %cmp.not.i43, label %if.end12, label %do.body.i45

do.body.i45:                                      ; preds = %stv0299_readreg.exit
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i44 = icmp eq i32 %41, 0
  br i1 %tobool.not.i44, label %do.body.i45.stv0299_writeregI.exit.thread_crit_edge, label %do.end.i46

do.body.i45.stv0299_writeregI.exit.thread_crit_edge: ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit.thread

do.end.i46:                                       ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %26 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef %conv6.i, i32 noundef %call.i42) #11
  br label %stv0299_writeregI.exit.thread

stv0299_writeregI.exit.thread:                    ; preds = %do.end.i46, %do.body.i45.stv0299_writeregI.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i37) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i36) #7
  br label %cleanup

if.end12:                                         ; preds = %stv0299_readreg.exit
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i37) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %burst)
  %cmp13 = icmp ne i32 %burst, 0
  %conv15 = sext i1 %cmp13 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #7
  %42 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %43 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 9, ptr %buf.i47, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv15, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i48) #7
  %45 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 196607, ptr %45, align 4
  %47 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %conv.i50 = zext i8 %50 to i16
  %51 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i50, ptr %msg.i48, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i51, align 2
  %buf1.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %53 = ptrtoint ptr %buf1.i53 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i47, ptr %buf1.i53, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call.i54 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i48, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i54)
  %cmp.not.i55 = icmp eq i32 %call.i54, 1
  br i1 %cmp.not.i55, label %if.end19, label %do.body.i57

do.body.i57:                                      ; preds = %if.end12
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i56 = icmp eq i32 %56, 0
  br i1 %tobool.not.i56, label %do.body.i57.stv0299_writeregI.exit62.thread_crit_edge, label %do.end.i60

do.body.i57.stv0299_writeregI.exit62.thread_crit_edge: ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit62.thread

do.end.i60:                                       ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i58 = zext i8 %conv15 to i32
  %call7.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 9, i32 noundef %conv6.i58, i32 noundef %call.i54) #11
  br label %stv0299_writeregI.exit62.thread

stv0299_writeregI.exit62.thread:                  ; preds = %do.end.i60, %do.body.i57.stv0299_writeregI.exit62.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i48) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i48) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #7
  %call20 = call fastcc i32 @stv0299_wait_diseqc_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i63) #7
  %57 = getelementptr inbounds [2 x i8], ptr %buf.i63, i32 0, i32 1
  %58 = ptrtoint ptr %buf.i63 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 8, ptr %buf.i63, align 1
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %24, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i64) #7
  %60 = getelementptr inbounds i8, ptr %msg.i64, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 196607, ptr %60, align 4
  %62 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 4
  %conv.i66 = zext i8 %65 to i16
  %66 = ptrtoint ptr %msg.i64 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i66, ptr %msg.i64, align 4
  %flags.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i67, align 2
  %buf1.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 0, i32 3
  %68 = ptrtoint ptr %buf1.i69 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf.i63, ptr %buf1.i69, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i70 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i64, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i70)
  %cmp.not.i71 = icmp eq i32 %call.i70, 1
  br i1 %cmp.not.i71, label %72, label %do.body.i73

do.body.i73:                                      ; preds = %if.end24
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i72 = icmp eq i32 %71, 0
  br i1 %tobool.not.i72, label %do.body.i73.stv0299_writeregI.exit78.thread_crit_edge, label %do.end.i76

do.body.i73.stv0299_writeregI.exit78.thread_crit_edge: ; preds = %do.body.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit78.thread

do.end.i76:                                       ; preds = %do.body.i73
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i74 = zext i8 %24 to i32
  %call7.i75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef %conv6.i74, i32 noundef %call.i70) #11
  br label %stv0299_writeregI.exit78.thread

stv0299_writeregI.exit78.thread:                  ; preds = %do.end.i76, %do.body.i73.stv0299_writeregI.exit78.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i63) #7
  br label %cleanup

72:                                               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i63) #7
  br label %cleanup

cleanup:                                          ; preds = %72, %stv0299_writeregI.exit78.thread, %if.end19.cleanup_crit_edge, %stv0299_writeregI.exit62.thread, %stv0299_writeregI.exit.thread, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end3.cleanup_crit_edge ], [ -110, %if.end19.cleanup_crit_edge ], [ -121, %stv0299_writeregI.exit.thread ], [ -121, %stv0299_writeregI.exit62.thread ], [ 0, %72 ], [ -121, %stv0299_writeregI.exit78.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %buf.i25 = alloca [2 x i8], align 1
  %msg.i26 = alloca %struct.i2c_msg, align 4
  %buf.i14 = alloca [2 x i8], align 1
  %msg.i15 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @stv0299_wait_diseqc_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
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
  %14 = load i8, ptr %7, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.stv0299_readreg.exit_crit_edge, label %do.body.i

if.end.stv0299_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %if.end
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 8, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %if.end.stv0299_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %24 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %tone, label %stv0299_readreg.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

stv0299_readreg.exit.cleanup_crit_edge:           ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %stv0299_readreg.exit
  %25 = or i8 %23, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i14) #7
  %26 = getelementptr inbounds [2 x i8], ptr %buf.i14, i32 0, i32 1
  %27 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 8, ptr %buf.i14, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %25, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i15) #7
  %29 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 196607, ptr %29, align 4
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i17 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i17, ptr %msg.i15, align 4
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i18, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  %37 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i14, ptr %buf1.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i20 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i15, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i20)
  %cmp.not.i21 = icmp eq i32 %call.i20, 1
  br i1 %cmp.not.i21, label %sw.bb.stv0299_writeregI.exit_crit_edge, label %do.body.i23

sw.bb.stv0299_writeregI.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.body.i23:                                      ; preds = %sw.bb
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i22 = icmp eq i32 %40, 0
  br i1 %tobool.not.i22, label %do.body.i23.stv0299_writeregI.exit_crit_edge, label %do.end.i24

do.body.i23.stv0299_writeregI.exit_crit_edge:     ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.end.i24:                                       ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %25 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef %conv6.i, i32 noundef %call.i20) #11
  br label %stv0299_writeregI.exit

stv0299_writeregI.exit:                           ; preds = %do.end.i24, %do.body.i23.stv0299_writeregI.exit_crit_edge, %sw.bb.stv0299_writeregI.exit_crit_edge
  %cond.i = phi i32 [ -121, %do.body.i23.stv0299_writeregI.exit_crit_edge ], [ -121, %do.end.i24 ], [ 0, %sw.bb.stv0299_writeregI.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i15) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i14) #7
  br label %cleanup

sw.bb4:                                           ; preds = %stv0299_readreg.exit
  %41 = and i8 %23, -4
  %42 = or i8 %41, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i25) #7
  %43 = getelementptr inbounds [2 x i8], ptr %buf.i25, i32 0, i32 1
  %44 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %buf.i25, align 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %42, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26) #7
  %46 = getelementptr inbounds i8, ptr %msg.i26, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 196607, ptr %46, align 4
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv.i28 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i26 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i28, ptr %msg.i26, align 4
  %flags.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i29, align 2
  %buf1.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 3
  %54 = ptrtoint ptr %buf1.i31 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf.i25, ptr %buf1.i31, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call.i32 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i26, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i32)
  %cmp.not.i33 = icmp eq i32 %call.i32, 1
  br i1 %cmp.not.i33, label %sw.bb4.stv0299_writeregI.exit40_crit_edge, label %do.body.i35

sw.bb4.stv0299_writeregI.exit40_crit_edge:        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit40

do.body.i35:                                      ; preds = %sw.bb4
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i34 = icmp eq i32 %57, 0
  br i1 %tobool.not.i34, label %do.body.i35.stv0299_writeregI.exit40_crit_edge, label %do.end.i38

do.body.i35.stv0299_writeregI.exit40_crit_edge:   ; preds = %do.body.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit40

do.end.i38:                                       ; preds = %do.body.i35
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i36 = zext i8 %42 to i32
  %call7.i37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef %conv6.i36, i32 noundef %call.i32) #11
  br label %stv0299_writeregI.exit40

stv0299_writeregI.exit40:                         ; preds = %do.end.i38, %do.body.i35.stv0299_writeregI.exit40_crit_edge, %sw.bb4.stv0299_writeregI.exit40_crit_edge
  %cond.i39 = phi i32 [ -121, %do.body.i35.stv0299_writeregI.exit40_crit_edge ], [ -121, %do.end.i38 ], [ 0, %sw.bb4.stv0299_writeregI.exit40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i25) #7
  br label %cleanup

cleanup:                                          ; preds = %stv0299_writeregI.exit40, %stv0299_writeregI.exit, %stv0299_readreg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i39, %stv0299_writeregI.exit40 ], [ %cond.i, %stv0299_writeregI.exit ], [ -110, %entry.cleanup_crit_edge ], [ -22, %stv0299_readreg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %buf.i93 = alloca [2 x i8], align 1
  %msg.i94 = alloca %struct.i2c_msg, align 4
  %buf.i82 = alloca [2 x i8], align 1
  %msg.i83 = alloca %struct.i2c_msg, align 4
  %b0.i62 = alloca [1 x i8], align 1
  %b1.i63 = alloca [1 x i8], align 1
  %msg.i64 = alloca [2 x %struct.i2c_msg], align 4
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
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %voltage)
  %cmp = icmp eq i32 %voltage, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp2 = icmp eq i32 %voltage, 1
  %cond = select i1 %cmp2, ptr @.str.40, ptr @.str.41
  %cond3 = select i1 %cmp, ptr @.str.39, ptr %cond
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond3) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
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
  %15 = load i8, ptr %8, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.end5.stv0299_readreg.exit_crit_edge, label %do.body.i

do.end5.stv0299_readreg.exit_crit_edge:           ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %do.end5
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 8, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %do.end5.stv0299_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i62) #7
  %25 = ptrtoint ptr %b0.i62 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 12, ptr %b0.i62, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i63) #7
  %26 = ptrtoint ptr %b1.i63 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %b1.i63, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i64) #7
  %27 = getelementptr inbounds i8, ptr %msg.i64, i32 4
  %28 = call ptr @memset(ptr %27, i32 255, i32 16)
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  %conv.i66 = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i64 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i66, ptr %msg.i64, align 4
  %flags.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i67 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i67, align 2
  %35 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %27, align 4
  %buf.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 0, i32 3
  %36 = ptrtoint ptr %buf.i69 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %b0.i62, ptr %buf.i69, align 4
  %arrayinit.element.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 1
  %37 = load i8, ptr %30, align 4
  %conv5.i71 = zext i8 %37 to i16
  %38 = ptrtoint ptr %arrayinit.element.i70 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv5.i71, ptr %arrayinit.element.i70, align 4
  %flags6.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 1, i32 1
  %39 = ptrtoint ptr %flags6.i72 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %flags6.i72, align 2
  %len7.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 1, i32 2
  %40 = ptrtoint ptr %len7.i73 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %len7.i73, align 4
  %buf8.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 1, i32 3
  %41 = ptrtoint ptr %buf8.i74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %b1.i63, ptr %buf8.i74, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i75 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i64, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i75)
  %cmp.not.i76 = icmp eq i32 %call.i75, 2
  br i1 %cmp.not.i76, label %stv0299_readreg.exit.stv0299_readreg.exit81_crit_edge, label %do.body.i78

stv0299_readreg.exit.stv0299_readreg.exit81_crit_edge: ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit81

do.body.i78:                                      ; preds = %stv0299_readreg.exit
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i77 = icmp eq i32 %44, 0
  br i1 %tobool.not.i77, label %do.body.i78.stv0299_readreg.exit81_crit_edge, label %do.end.i80

do.body.i78.stv0299_readreg.exit81_crit_edge:     ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit81

do.end.i80:                                       ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef %call.i75) #11
  br label %stv0299_readreg.exit81

stv0299_readreg.exit81:                           ; preds = %do.end.i80, %do.body.i78.stv0299_readreg.exit81_crit_edge, %stv0299_readreg.exit.stv0299_readreg.exit81_crit_edge
  %45 = ptrtoint ptr %b1.i63 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %b1.i63, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i64) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i63) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i62) #7
  %47 = and i8 %46, 15
  %48 = and i8 %24, 63
  %49 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %config.i, align 4
  %lock_output = getelementptr inbounds %struct.stv0299_config, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %lock_output to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %lock_output, align 4
  %52 = shl i8 %bf.load, 2
  %53 = and i8 %52, -64
  %or61 = or i8 %53, %48
  %54 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %voltage, label %stv0299_readreg.exit81.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
    i32 2, label %stv0299_readreg.exit81.sw.epilog_crit_edge
  ]

stv0299_readreg.exit81.sw.epilog_crit_edge:       ; preds = %stv0299_readreg.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

stv0299_readreg.exit81.cleanup_crit_edge:         ; preds = %stv0299_readreg.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %stv0299_readreg.exit81
  %55 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp18 = icmp eq i8 %55, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %56 = or i8 %47, 16
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %57 = or i8 %47, 64
  br label %sw.epilog

sw.bb28:                                          ; preds = %stv0299_readreg.exit81
  call void @__sanitizer_cov_trace_pc() #9
  %58 = or i8 %47, 80
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %if.else, %if.then20, %stv0299_readreg.exit81.sw.epilog_crit_edge
  %reg0x08.0 = phi i8 [ %or61, %sw.bb28 ], [ %or61, %if.then20 ], [ %or61, %if.else ], [ 0, %stv0299_readreg.exit81.sw.epilog_crit_edge ]
  %reg0x0c.0 = phi i8 [ %58, %sw.bb28 ], [ %56, %if.then20 ], [ %57, %if.else ], [ 0, %stv0299_readreg.exit81.sw.epilog_crit_edge ]
  %59 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool37.not = icmp eq i8 %59, 0
  %60 = and i8 %reg0x0c.0, -17
  %spec.select = select i1 %tobool37.not, i8 %reg0x0c.0, i8 %60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i82) #7
  %61 = getelementptr inbounds [2 x i8], ptr %buf.i82, i32 0, i32 1
  %62 = ptrtoint ptr %buf.i82 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 8, ptr %buf.i82, align 1
  %63 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %reg0x08.0, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i83) #7
  %64 = getelementptr inbounds i8, ptr %msg.i83, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 196607, ptr %64, align 4
  %66 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %config.i, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %67, align 4
  %conv.i85 = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i83 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i85, ptr %msg.i83, align 4
  %flags.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i86 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i86, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83, i32 0, i32 3
  %72 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %buf.i82, ptr %buf1.i, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call.i88 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i83, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i88)
  %cmp.not.i89 = icmp eq i32 %call.i88, 1
  br i1 %cmp.not.i89, label %sw.epilog.stv0299_writeregI.exit_crit_edge, label %do.body.i91

sw.epilog.stv0299_writeregI.exit_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.body.i91:                                      ; preds = %sw.epilog
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i90 = icmp eq i32 %75, 0
  br i1 %tobool.not.i90, label %do.body.i91.stv0299_writeregI.exit_crit_edge, label %do.end.i92

do.body.i91.stv0299_writeregI.exit_crit_edge:     ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.end.i92:                                       ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %reg0x08.0 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef %conv6.i, i32 noundef %call.i88) #11
  br label %stv0299_writeregI.exit

stv0299_writeregI.exit:                           ; preds = %do.end.i92, %do.body.i91.stv0299_writeregI.exit_crit_edge, %sw.epilog.stv0299_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i83) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i82) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i93) #7
  %76 = getelementptr inbounds [2 x i8], ptr %buf.i93, i32 0, i32 1
  %77 = ptrtoint ptr %buf.i93 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 12, ptr %buf.i93, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %spec.select, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i94) #7
  %79 = getelementptr inbounds i8, ptr %msg.i94, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 196607, ptr %79, align 4
  %81 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 4
  %conv.i96 = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i94 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i96, ptr %msg.i94, align 4
  %flags.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i97 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i97, align 2
  %buf1.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 3
  %87 = ptrtoint ptr %buf1.i99 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %buf.i93, ptr %buf1.i99, align 4
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %call.i100 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i94, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i100)
  %cmp.not.i101 = icmp eq i32 %call.i100, 1
  br i1 %cmp.not.i101, label %stv0299_writeregI.exit.stv0299_writeregI.exit108_crit_edge, label %do.body.i103

stv0299_writeregI.exit.stv0299_writeregI.exit108_crit_edge: ; preds = %stv0299_writeregI.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit108

do.body.i103:                                     ; preds = %stv0299_writeregI.exit
  %90 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i102 = icmp eq i32 %90, 0
  br i1 %tobool.not.i102, label %do.body.i103.stv0299_writeregI.exit108_crit_edge, label %do.end.i106

do.body.i103.stv0299_writeregI.exit108_crit_edge: ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit108

do.end.i106:                                      ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i104 = zext i8 %spec.select to i32
  %call7.i105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 12, i32 noundef %conv6.i104, i32 noundef %call.i100) #11
  br label %stv0299_writeregI.exit108

stv0299_writeregI.exit108:                        ; preds = %do.end.i106, %do.body.i103.stv0299_writeregI.exit108_crit_edge, %stv0299_writeregI.exit.stv0299_writeregI.exit108_crit_edge
  %cond.i107 = phi i32 [ -121, %do.body.i103.stv0299_writeregI.exit108_crit_edge ], [ -121, %do.end.i106 ], [ 0, %stv0299_writeregI.exit.stv0299_writeregI.exit108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i94) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i93) #7
  br label %cleanup

cleanup:                                          ; preds = %stv0299_writeregI.exit108, %stv0299_readreg.exit81.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i107, %stv0299_writeregI.exit108 ], [ -22, %stv0299_readreg.exit81.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_send_legacy_dish_cmd(ptr nocapture noundef readonly %fe, i32 noundef %cmd) #0 align 64 {
entry:
  %buf.i151 = alloca [2 x i8], align 1
  %msg.i152 = alloca %struct.i2c_msg, align 4
  %buf.i134 = alloca [2 x i8], align 1
  %msg.i135 = alloca %struct.i2c_msg, align 4
  %buf.i122 = alloca [2 x i8], align 1
  %msg.i123 = alloca %struct.i2c_msg, align 4
  %b0.i102 = alloca [1 x i8], align 1
  %b1.i103 = alloca [1 x i8], align 1
  %msg.i104 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %nexttime = alloca i64, align 8
  %tv = alloca [10 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nexttime) #7
  %2 = ptrtoint ptr %nexttime to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %nexttime, align 8, !annotation !144
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tv) #7
  %3 = call ptr @memset(ptr %tv, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 8, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
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
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv5.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf8.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.stv0299_readreg.exit_crit_edge, label %do.body.i

entry.stv0299_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %entry
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 8, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %entry.stv0299_readreg.exit_crit_edge
  %24 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i102) #7
  %26 = ptrtoint ptr %b0.i102 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 12, ptr %b0.i102, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i103) #7
  %27 = ptrtoint ptr %b1.i103 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %b1.i103, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i104) #7
  %28 = getelementptr inbounds i8, ptr %msg.i104, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv.i106 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i104 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i106, ptr %msg.i104, align 4
  %flags.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i107 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i107, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i109 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %b0.i102, ptr %buf.i109, align 4
  %arrayinit.element.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1
  %38 = load i8, ptr %31, align 4
  %conv5.i111 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i110 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv5.i111, ptr %arrayinit.element.i110, align 4
  %flags6.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 1
  %40 = ptrtoint ptr %flags6.i112 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags6.i112, align 2
  %len7.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 2
  %41 = ptrtoint ptr %len7.i113 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len7.i113, align 4
  %buf8.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 3
  %42 = ptrtoint ptr %buf8.i114 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %b1.i103, ptr %buf8.i114, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i115 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i104, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i115)
  %cmp.not.i116 = icmp eq i32 %call.i115, 2
  br i1 %cmp.not.i116, label %stv0299_readreg.exit.stv0299_readreg.exit121_crit_edge, label %do.body.i118

stv0299_readreg.exit.stv0299_readreg.exit121_crit_edge: ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit121

do.body.i118:                                     ; preds = %stv0299_readreg.exit
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i117 = icmp eq i32 %45, 0
  br i1 %tobool.not.i117, label %do.body.i118.stv0299_readreg.exit121_crit_edge, label %do.end.i120

do.body.i118.stv0299_readreg.exit121_crit_edge:   ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit121

do.end.i120:                                      ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef %call.i115) #11
  br label %stv0299_readreg.exit121

stv0299_readreg.exit121:                          ; preds = %do.end.i120, %do.body.i118.stv0299_readreg.exit121_crit_edge, %stv0299_readreg.exit.stv0299_readreg.exit121_crit_edge
  %46 = ptrtoint ptr %b1.i103 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b1.i103, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i104) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i103) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i102) #7
  %48 = and i8 %47, 15
  %49 = and i8 %25, 63
  %50 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config.i, align 4
  %lock_output = getelementptr inbounds %struct.stv0299_config, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %lock_output to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load = load i8, ptr %lock_output, align 4
  %53 = shl i8 %bf.load, 2
  %54 = and i8 %53, -64
  %or100 = or i8 %54, %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i122) #7
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i122, i32 0, i32 1
  %56 = ptrtoint ptr %buf.i122 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 8, ptr %buf.i122, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %or100, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i123) #7
  %58 = getelementptr inbounds i8, ptr %msg.i123, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 196607, ptr %58, align 4
  %60 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %config.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  %conv.i125 = zext i8 %63 to i16
  %64 = ptrtoint ptr %msg.i123 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i125, ptr %msg.i123, align 4
  %flags.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i126 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i126, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123, i32 0, i32 3
  %66 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf.i122, ptr %buf1.i, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %call.i128 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i123, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i128)
  %cmp.not.i129 = icmp eq i32 %call.i128, 1
  br i1 %cmp.not.i129, label %stv0299_readreg.exit121.stv0299_writeregI.exit_crit_edge, label %do.body.i131

stv0299_readreg.exit121.stv0299_writeregI.exit_crit_edge: ; preds = %stv0299_readreg.exit121
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.body.i131:                                     ; preds = %stv0299_readreg.exit121
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i130 = icmp eq i32 %69, 0
  br i1 %tobool.not.i130, label %do.body.i131.stv0299_writeregI.exit_crit_edge, label %do.end.i132

do.body.i131.stv0299_writeregI.exit_crit_edge:    ; preds = %do.body.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.end.i132:                                      ; preds = %do.body.i131
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = zext i8 %or100 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 8, i32 noundef %conv6.i, i32 noundef %call.i128) #11
  br label %stv0299_writeregI.exit

stv0299_writeregI.exit:                           ; preds = %do.end.i132, %do.body.i131.stv0299_writeregI.exit_crit_edge, %stv0299_readreg.exit121.stv0299_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i123) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i122) #7
  %70 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %config.i, align 4
  %volt13_op0_op1 = getelementptr inbounds %struct.stv0299_config, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %volt13_op0_op1 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load9 = load i8, ptr %volt13_op0_op1, align 4
  %73 = and i8 %bf.load9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp = icmp eq i8 %73, 0
  %spec.select = select i1 %cmp, i8 16, i8 64
  %shl14 = shl i32 %cmd, 1
  %74 = load i32, ptr @debug_legacy_dish_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not = icmp eq i32 %74, 0
  br i1 %tobool.not, label %stv0299_writeregI.exit.if.end17_crit_edge, label %do.end

stv0299_writeregI.exit.if.end17_crit_edge:        ; preds = %stv0299_writeregI.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end:                                           ; preds = %stv0299_writeregI.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %shl14) #11
  br label %if.end17

if.end17:                                         ; preds = %do.end, %stv0299_writeregI.exit.if.end17_crit_edge
  %call.i133 = call i64 @ktime_get_with_offset(i32 noundef 1) #7
  %75 = ptrtoint ptr %nexttime to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %call.i133, ptr %nexttime, align 8
  %76 = load i32, ptr @debug_legacy_dish_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool19.not = icmp eq i32 %76, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %tv to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %call.i133, ptr %tv, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %or23 = or i8 %48, 80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i134) #7
  %78 = getelementptr inbounds [2 x i8], ptr %buf.i134, i32 0, i32 1
  %79 = ptrtoint ptr %buf.i134 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 12, ptr %buf.i134, align 1
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %or23, ptr %78, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i135) #7
  %81 = getelementptr inbounds i8, ptr %msg.i135, i32 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 196607, ptr %81, align 4
  %83 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 4
  %conv.i137 = zext i8 %86 to i16
  %87 = ptrtoint ptr %msg.i135 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i137, ptr %msg.i135, align 4
  %flags.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i138, align 2
  %buf1.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135, i32 0, i32 3
  %89 = ptrtoint ptr %buf1.i140 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %buf.i134, ptr %buf1.i140, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %call.i141 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i135, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i141)
  %cmp.not.i142 = icmp eq i32 %call.i141, 1
  br i1 %cmp.not.i142, label %if.end21.stv0299_writeregI.exit149_crit_edge, label %do.body.i144

if.end21.stv0299_writeregI.exit149_crit_edge:     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit149

do.body.i144:                                     ; preds = %if.end21
  %92 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i143 = icmp eq i32 %92, 0
  br i1 %tobool.not.i143, label %do.body.i144.stv0299_writeregI.exit149_crit_edge, label %do.end.i147

do.body.i144.stv0299_writeregI.exit149_crit_edge: ; preds = %do.body.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit149

do.end.i147:                                      ; preds = %do.body.i144
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i145 = zext i8 %or23 to i32
  %call7.i146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 12, i32 noundef %conv6.i145, i32 noundef %call.i141) #11
  br label %stv0299_writeregI.exit149

stv0299_writeregI.exit149:                        ; preds = %do.end.i147, %do.body.i144.stv0299_writeregI.exit149_crit_edge, %if.end21.stv0299_writeregI.exit149_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i135) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i134) #7
  call void @dvb_frontend_sleep_until(ptr noundef nonnull %nexttime, i32 noundef 32000) #7
  %93 = getelementptr inbounds [2 x i8], ptr %buf.i151, i32 0, i32 1
  %94 = getelementptr inbounds i8, ptr %msg.i152, i32 4
  %flags.i155 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i152, i32 0, i32 1
  %buf1.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i152, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc, %stv0299_writeregI.exit149
  %cmd.addr.0170 = phi i32 [ %shl14, %stv0299_writeregI.exit149 ], [ %shr, %for.inc ]
  %i.0168 = phi i32 [ 0, %stv0299_writeregI.exit149 ], [ %inc, %for.inc ]
  %last.0167 = phi i8 [ 1, %stv0299_writeregI.exit149 ], [ %last.1, %for.inc ]
  %95 = load i32, ptr @debug_legacy_dish_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool28.not = icmp eq i32 %95, 0
  br i1 %tobool28.not, label %for.body.if.end32_crit_edge, label %if.then29

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i150 = call i64 @ktime_get_with_offset(i32 noundef 1) #7
  %add = add nuw nsw i32 %i.0168, 1
  %arrayidx31 = getelementptr [10 x i64], ptr %tv, i32 0, i32 %add
  %96 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %call.i150, ptr %arrayidx31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %for.body.if.end32_crit_edge
  %and33 = and i32 %cmd.addr.0170, 1
  %conv34 = zext i8 %last.0167 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and33, i32 %conv34)
  %cmp35.not = icmp eq i32 %and33, %conv34
  br i1 %cmp35.not, label %if.end32.if.end49_crit_edge, label %if.then37

if.end32.if.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %last.0167)
  %tobool40.not = icmp eq i8 %last.0167, 0
  %spec.select101 = select i1 %tobool40.not, i8 80, i8 %spec.select
  %or42 = or i8 %spec.select101, %48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i151) #7
  %97 = ptrtoint ptr %buf.i151 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 12, ptr %buf.i151, align 1
  %98 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %or42, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i152) #7
  %99 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %94, align 4
  %100 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %config.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 4
  %conv.i154 = zext i8 %103 to i16
  %104 = ptrtoint ptr %msg.i152 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i154, ptr %msg.i152, align 4
  %105 = ptrtoint ptr %flags.i155 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i155, align 2
  store i16 2, ptr %94, align 4
  %106 = ptrtoint ptr %buf1.i157 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %buf.i151, ptr %buf1.i157, align 4
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %call.i158 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %msg.i152, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i158)
  %cmp.not.i159 = icmp eq i32 %call.i158, 1
  br i1 %cmp.not.i159, label %if.then37.stv0299_writeregI.exit166_crit_edge, label %do.body.i161

if.then37.stv0299_writeregI.exit166_crit_edge:    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit166

do.body.i161:                                     ; preds = %if.then37
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i160 = icmp eq i32 %109, 0
  br i1 %tobool.not.i160, label %do.body.i161.stv0299_writeregI.exit166_crit_edge, label %do.end.i164

do.body.i161.stv0299_writeregI.exit166_crit_edge: ; preds = %do.body.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit166

do.end.i164:                                      ; preds = %do.body.i161
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i162 = zext i8 %or42 to i32
  %call7.i163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 12, i32 noundef %conv6.i162, i32 noundef %call.i158) #11
  br label %stv0299_writeregI.exit166

stv0299_writeregI.exit166:                        ; preds = %do.end.i164, %do.body.i161.stv0299_writeregI.exit166_crit_edge, %if.then37.stv0299_writeregI.exit166_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i152) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i151) #7
  %conv48 = zext i1 %tobool40.not to i8
  br label %if.end49

if.end49:                                         ; preds = %stv0299_writeregI.exit166, %if.end32.if.end49_crit_edge
  %last.1 = phi i8 [ %conv48, %stv0299_writeregI.exit166 ], [ %last.0167, %if.end32.if.end49_crit_edge ]
  %cmp50.not = icmp eq i32 %i.0168, 8
  br i1 %cmp50.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %cmd.addr.0170, 1
  call void @dvb_frontend_sleep_until(ptr noundef nonnull %nexttime, i32 noundef 8000) #7
  %inc = add nuw nsw i32 %i.0168, 1
  br label %for.body

for.end:                                          ; preds = %if.end49
  %110 = load i32, ptr @debug_legacy_dish_switch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool54.not = icmp eq i32 %110, 0
  br i1 %tobool54.not, label %for.end.if.end77_crit_edge, label %do.end58

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

do.end58:                                         ; preds = %for.end
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %111 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dvb, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef %114) #11
  br label %do.end67

do.end67:                                         ; preds = %do.end67.do.end67_crit_edge, %do.end58
  %i.1171 = phi i32 [ 1, %do.end58 ], [ %inc75, %do.end67.do.end67_crit_edge ]
  %arrayidx69 = getelementptr [10 x i64], ptr %tv, i32 0, i32 %i.1171
  %115 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx69, align 8
  %sub = add nsw i32 %i.1171, -1
  %arrayidx70 = getelementptr [10 x i64], ptr %tv, i32 0, i32 %sub
  %117 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx70, align 8
  %sub.i = sub i64 %116, %118
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %119 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #7
  %120 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %119, i32 0) #12, !srcloc !145
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %120, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %120, 1
  %121 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %119, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !146
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %121, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %conv72 = trunc i64 %cond213.i.i.i to i32
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %i.1171, i32 noundef %conv72) #11
  %inc75 = add nuw nsw i32 %i.1171, 1
  %exitcond172.not = icmp eq i32 %inc75, 10
  br i1 %exitcond172.not, label %do.end67.if.end77_crit_edge, label %do.end67.do.end67_crit_edge

do.end67.do.end67_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

do.end67.if.end77_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.end77:                                         ; preds = %do.end67.if.end77_crit_edge, %for.end.if.end77_crit_edge
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tv) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nexttime) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0299_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -75, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.stv0299_writeregI.exit_crit_edge, label %do.body.i

if.then.stv0299_writeregI.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.body.i:                                        ; preds = %if.then
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0299_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 5, i32 noundef 181, i32 noundef %call.i) #11
  br label %stv0299_writeregI.exit

stv0299_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0299_writeregI.exit_crit_edge, %if.then.stv0299_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #7
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %buf.i3, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 53, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #7
  %20 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %config.i5 = getelementptr inbounds %struct.stv0299_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %config.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i5, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
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
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i4, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %if.else.stv0299_writeregI.exit17_crit_edge, label %do.body.i13

if.else.stv0299_writeregI.exit17_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit17

do.body.i13:                                      ; preds = %if.else
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i12 = icmp eq i32 %31, 0
  br i1 %tobool.not.i12, label %do.body.i13.stv0299_writeregI.exit17_crit_edge, label %do.end.i15

do.body.i13.stv0299_writeregI.exit17_crit_edge:   ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_writeregI.exit17

do.end.i15:                                       ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 5, i32 noundef 53, i32 noundef %call.i10) #11
  br label %stv0299_writeregI.exit17

stv0299_writeregI.exit17:                         ; preds = %do.end.i15, %do.body.i13.stv0299_writeregI.exit17_crit_edge, %if.else.stv0299_writeregI.exit17_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #7
  br label %if.end

if.end:                                           ; preds = %stv0299_writeregI.exit17, %stv0299_writeregI.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stv0299_wait_diseqc_idle(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.29) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.stv0299_state, ptr %state, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #7
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #7
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = call ptr @memset(ptr %2, i32 255, i32 16)
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %2, align 4
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %14 = load i8, ptr %7, align 4
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %while.cond.stv0299_readreg.exit_crit_edge, label %do.body.i

while.cond.stv0299_readreg.exit_crit_edge:        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.body.i:                                        ; preds = %while.cond
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.stv0299_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0299_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv0299_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 10, i32 noundef %call.i) #11
  br label %stv0299_readreg.exit

stv0299_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0299_readreg.exit_crit_edge, %while.cond.stv0299_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #7
  %24 = and i8 %23, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp.not = icmp eq i8 %24, 2
  br i1 %cmp.not, label %stv0299_readreg.exit.cleanup_crit_edge, label %while.body

stv0299_readreg.exit.cleanup_crit_edge:           ; preds = %stv0299_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %stv0299_readreg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %25, %0
  %cmp6 = icmp ugt i32 %sub, 100
  br i1 %cmp6, label %do.body9, label %if.end20

do.body9:                                         ; preds = %while.body
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not = icmp eq i32 %26, 0
  br i1 %tobool10.not, label %do.body9.cleanup_crit_edge, label %do.end14

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #11
  br label %cleanup

if.end20:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 10) #7
  br label %while.cond

cleanup:                                          ; preds = %do.end14, %do.body9.cleanup_crit_edge, %stv0299_readreg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end14 ], [ -110, %do.body9.cleanup_crit_edge ], [ 0, %stv0299_readreg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_sleep_until(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__param_debug_legacy_dish_switch, !1, !"__param_debug_legacy_dish_switch", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 744, i32 1}
!2 = !{ptr @__UNIQUE_ID_debug_legacy_dish_switchtype290, !1, !"__UNIQUE_ID_debug_legacy_dish_switchtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug_legacy_dish_switch291, !4, !"__UNIQUE_ID_debug_legacy_dish_switch291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 745, i32 1}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 747, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype292, !6, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug293, !9, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 748, i32 1}
!10 = !{ptr @__UNIQUE_ID_description294, !11, !"__UNIQUE_ID_description294", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 750, i32 1}
!12 = !{ptr @__UNIQUE_ID_author295, !13, !"__UNIQUE_ID_author295", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 751, i32 1}
!14 = !{ptr @__UNIQUE_ID_file296, !15, !"__UNIQUE_ID_file296", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 752, i32 1}
!16 = !{ptr @__UNIQUE_ID_license297, !15, !"__UNIQUE_ID_license297", i1 false, i1 false}
!17 = !{ptr @__ksymtab_stv0299_attach, !18, !"__ksymtab_stv0299_attach", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 754, i32 1}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 62, i32 12}
!21 = !{ptr @debug_legacy_dish_switch, !22, !"debug_legacy_dish_switch", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 63, i32 12}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 79, i32 3}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @stv0299_writeregI._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @stv0299_writeregI._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 106, i32 3}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @stv0299_readreg._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @stv0299_readreg._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @stv0299_ops, !35, !"stv0299_ops", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 704, i32 38}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 452, i32 2}
!38 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @stv0299_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @stv0299_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 562, i32 2}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @stv0299_set_frontend._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @stv0299_set_frontend._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 570, i32 3}
!48 = !{ptr @stv0299_set_frontend._entry.9, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @stv0299_set_frontend._entry_ptr.11, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 128, i32 2}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @stv0299_set_FEC._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @stv0299_set_FEC._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @stv0299_get_fec.fec_tab, !56, !"fec_tab", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 164, i32 27}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 168, i32 2}
!59 = !{ptr @stv0299_get_fec._entry, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @stv0299_get_fec._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 239, i32 2}
!63 = !{ptr @stv0299_get_symbolrate._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @stv0299_get_symbolrate._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 251, i32 2}
!67 = !{ptr @stv0299_get_symbolrate._entry.16, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @stv0299_get_symbolrate._entry_ptr.18, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 252, i32 2}
!71 = !{ptr @stv0299_get_symbolrate._entry.19, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @stv0299_get_symbolrate._entry_ptr.21, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 121, i32 3}
!75 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @stv0299_readregs._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @stv0299_readregs._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.24, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 480, i32 2}
!80 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @stv0299_read_status._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @stv0299_read_status._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 520, i32 2}
!85 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @stv0299_read_signal_strength._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @stv0299_read_signal_strength._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 270, i32 2}
!90 = !{ptr @stv0299_send_diseqc_msg._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @stv0299_send_diseqc_msg._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 200, i32 2}
!94 = !{ptr @stv0299_wait_diseqc_idle._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @stv0299_wait_diseqc_idle._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 204, i32 4}
!98 = !{ptr @stv0299_wait_diseqc_idle._entry.30, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @stv0299_wait_diseqc_idle._entry_ptr.32, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 183, i32 2}
!102 = !{ptr @stv0299_wait_diseqc_fifo._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @stv0299_wait_diseqc_fifo._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @stv0299_wait_diseqc_fifo._entry.34, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 187, i32 4}
!106 = !{ptr @stv0299_wait_diseqc_fifo._entry_ptr.35, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.36, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 300, i32 2}
!109 = !{ptr @stv0299_send_diseqc_burst._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @stv0299_send_diseqc_burst._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 352, i32 2}
!113 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @stv0299_set_voltage._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @stv0299_set_voltage._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 411, i32 3}
!121 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @stv0299_send_legacy_dish_cmd._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @stv0299_send_legacy_dish_cmd._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 435, i32 3}
!126 = !{ptr @stv0299_send_legacy_dish_cmd._entry.44, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @stv0299_send_legacy_dish_cmd._entry_ptr.46, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/stv0299.c", i32 438, i32 4}
!130 = !{ptr @stv0299_send_legacy_dish_cmd._entry.47, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @stv0299_send_legacy_dish_cmd._entry_ptr.49, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @__param_str_debug_legacy_dish_switch, !1, !"__param_str_debug_legacy_dish_switch", i1 false, i1 false}
!133 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2148628941, i64 2148629221, i64 2148629555, i64 2148629889}
!144 = !{!"auto-init"}
!145 = !{i64 1143397, i64 1143424, i64 1143446, i64 1143474}
!146 = !{i64 1143805, i64 1143832, i64 1143865, i64 1143886, i64 1143913, i64 1143939}
