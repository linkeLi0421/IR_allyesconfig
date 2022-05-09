; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stv0288.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0288.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stv0288_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stv0288_attach\09\09\09\09"
module asm "\09.long\09__crc_stv0288_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0288_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0288_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0288_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv0288_state = type { ptr, ptr, %struct.dvb_frontend, i8, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.stv0288_config = type { i8, ptr, i32, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stv0288_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017stv0288: stv0288 id %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0288_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/stv0288.c\00", [58 x i8] zeroinitializer }, align 32
@stv0288_attach._entry_ptr = internal global ptr @stv0288_attach._entry, section ".printk_index", align 4
@stv0288_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0288 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1000000, i32 0, i32 1000000, i32 45000000, i32 500, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @stv0288_release, ptr null, ptr @stv0288_init, ptr @stv0288_sleep, ptr null, ptr null, ptr @stv0288_write, ptr null, ptr null, ptr @stv0288_set_frontend, ptr null, ptr null, ptr @stv0288_read_status, ptr @stv0288_read_ber, ptr @stv0288_read_signal_strength, ptr @stv0288_read_snr, ptr @stv0288_read_ucblocks, ptr null, ptr @stv0288_send_diseqc_msg, ptr null, ptr @stv0288_send_diseqc_burst, ptr @stv0288_set_tone, ptr @stv0288_set_voltage, ptr null, ptr null, ptr @stv0288_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_stv0288_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0288_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0288_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0288_attach to i32), ptr @__kstrtab_stv0288_attach, ptr @__kstrtabns_stv0288_attach }, section "___ksymtab+stv0288_attach", align 4
@__param_str_debug_legacy_dish_switch = internal constant [33 x i8] c"stv0288.debug_legacy_dish_switch\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug_legacy_dish_switch = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug_legacy_dish_switch = internal constant %struct.kernel_param { ptr @__param_str_debug_legacy_dish_switch, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.78 { ptr @debug_legacy_dish_switch } }, section "__param", align 4
@__UNIQUE_ID_debug_legacy_dish_switchtype290 = internal constant [46 x i8] c"stv0288.parmtype=debug_legacy_dish_switch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_legacy_dish_switch291 = internal constant [94 x i8] c"stv0288.parm=debug_legacy_dish_switch:Enable timing analysis for Dish Network legacy switches\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"stv0288.debug\00", align 1
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [27 x i8] c"stv0288.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [65 x i8] c"stv0288.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [54 x i8] c"stv0288.description=ST STV0288 DVB Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [52 x i8] c"stv0288.author=Georg Acher, Bob Liu, Igor liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [49 x i8] c"stv0288.file=drivers/media/dvb-frontends/stv0288\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [20 x i8] c"stv0288.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stv0288_writeregI._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017stv0288: %s: writereg error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv0288_writeregI\00", [46 x i8] zeroinitializer }, align 32
@stv0288_writeregI._entry_ptr = internal global ptr @stv0288_writeregI._entry, section ".printk_index", align 4
@stv0288_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017stv0288: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stv0288_readreg\00", [16 x i8] zeroinitializer }, align 32
@stv0288_readreg._entry_ptr = internal global ptr @stv0288_readreg._entry, section ".printk_index", align 4
@stv0288_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017stv0288: stv0288: init chip\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stv0288_init\00", [19 x i8] zeroinitializer }, align 32
@stv0288_init._entry_ptr = internal global ptr @stv0288_init._entry, section ".printk_index", align 4
@stv0288_inittab = internal constant { [212 x i8], [44 x i8] } { [212 x i8] c"\01\15\02 \09\00\0A\04\0B\00\0C\00\0D\00\0E\D4\0F0\11\80\12\03\13H\14\84\15E\16\B7\17\9C\18\00\19\A6\1A\88\1B\8F\1C\F0 \0B!T\22\00#\00+\FF,\F70\001\1E2\143\0F4\095\0C6\057/8\169\BE:\00;\13<\11=0@cA\04B C\00D\00E\00F\00G\00J\00P\10Q8R!XTY\86Z\00[\9B\\\08]\7F^\00_\FFp\00q\00r\00t\00u\00v\00\81\00\82?\83?\84\00\85\00\88\00\89\00\8A\00\8B\00\8C\00\90\00\91\00\92\00\93\00\94\1C\97\00\A0H\A1\00\B0\B8\B1:\B2\10\B3\82\B4\80\B5\82\B6\82\B7\82\B8 \B9\00\F0\00\F1\00\F2\C0Q6R\09S\94TbU)VdW+\FF\FF", [44 x i8] zeroinitializer }, align 32
@stv0288_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017stv0288: %s : FE_SET_FRONTEND\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stv0288_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@stv0288_set_frontend._entry_ptr = internal global ptr @stv0288_set_frontend._entry, section ".printk_index", align 4
@stv0288_set_frontend._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017stv0288: %s: unsupported delivery system selected (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@stv0288_set_frontend._entry_ptr.13 = internal global ptr @stv0288_set_frontend._entry.11, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stv0288_set_symbolrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017stv0288: stv0288: stv0288_set_symbolrate\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stv0288_set_symbolrate\00", [41 x i8] zeroinitializer }, align 32
@stv0288_set_symbolrate._entry_ptr = internal global ptr @stv0288_set_symbolrate._entry, section ".printk_index", align 4
@stv0288_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017stv0288: %s : FE_READ_STATUS : VSTATUS: 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stv0288_read_status\00", [44 x i8] zeroinitializer }, align 32
@stv0288_read_status._entry_ptr = internal global ptr @stv0288_read_status._entry, section ".printk_index", align 4
@stv0288_read_status._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017stv0288: stv0288 has locked\0A\00", [33 x i8] zeroinitializer }, align 32
@stv0288_read_status._entry_ptr.20 = internal global ptr @stv0288_read_status._entry.18, section ".printk_index", align 4
@stv0288_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017stv0288: stv0288_read_ber %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stv0288_read_ber\00", [47 x i8] zeroinitializer }, align 32
@stv0288_read_ber._entry_ptr = internal global ptr @stv0288_read_ber._entry, section ".printk_index", align 4
@stv0288_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017stv0288: stv0288_read_signal_strength %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stv0288_read_signal_strength\00", [35 x i8] zeroinitializer }, align 32
@stv0288_read_signal_strength._entry_ptr = internal global ptr @stv0288_read_signal_strength._entry, section ".printk_index", align 4
@stv0288_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017stv0288: stv0288_read_snr %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stv0288_read_snr\00", [47 x i8] zeroinitializer }, align 32
@stv0288_read_snr._entry_ptr = internal global ptr @stv0288_read_snr._entry, section ".printk_index", align 4
@stv0288_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.27, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stv0288_read_ucblocks\00", [42 x i8] zeroinitializer }, align 32
@stv0288_read_ucblocks._entry_ptr = internal global ptr @stv0288_read_ucblocks._entry, section ".printk_index", align 4
@stv0288_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017stv0288: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stv0288_send_diseqc_msg\00", [40 x i8] zeroinitializer }, align 32
@stv0288_send_diseqc_msg._entry_ptr = internal global ptr @stv0288_send_diseqc_msg._entry, section ".printk_index", align 4
@stv0288_send_diseqc_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.30, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stv0288_send_diseqc_burst\00", [38 x i8] zeroinitializer }, align 32
@stv0288_send_diseqc_burst._entry_ptr = internal global ptr @stv0288_send_diseqc_burst._entry, section ".printk_index", align 4
@stv0288_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017stv0288: %s: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stv0288_set_voltage\00", [44 x i8] zeroinitializer }, align 32
@stv0288_set_voltage._entry_ptr = internal global ptr @stv0288_set_voltage._entry, section ".printk_index", align 4
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEC_VOLTAGE_13\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEC_VOLTAGE_18\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 42, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 577, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"stv0288_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 520, i32 38 }
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"debug_legacy_dish_switch\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 43, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 65, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 103, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 331, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"stv0288_inittab\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 205, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 447, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 450, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 138, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 361, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 370, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 384, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 399, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 420, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 433, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 150, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 169, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [41 x i8] c"../drivers/media/dvb-frontends/stv0288.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 317, i32 2 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debug_legacy_dish_switch291, ptr @__UNIQUE_ID_debug_legacy_dish_switchtype290, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__ksymtab_stv0288_attach, ptr @__param_debug, ptr @__param_debug_legacy_dish_switch, ptr @stv0288_attach._entry, ptr @stv0288_attach._entry_ptr, ptr @stv0288_init._entry, ptr @stv0288_init._entry_ptr, ptr @stv0288_read_ber._entry, ptr @stv0288_read_ber._entry_ptr, ptr @stv0288_read_signal_strength._entry, ptr @stv0288_read_signal_strength._entry_ptr, ptr @stv0288_read_snr._entry, ptr @stv0288_read_snr._entry_ptr, ptr @stv0288_read_status._entry, ptr @stv0288_read_status._entry.18, ptr @stv0288_read_status._entry_ptr, ptr @stv0288_read_status._entry_ptr.20, ptr @stv0288_read_ucblocks._entry, ptr @stv0288_read_ucblocks._entry_ptr, ptr @stv0288_readreg._entry, ptr @stv0288_readreg._entry_ptr, ptr @stv0288_send_diseqc_burst._entry, ptr @stv0288_send_diseqc_burst._entry_ptr, ptr @stv0288_send_diseqc_msg._entry, ptr @stv0288_send_diseqc_msg._entry_ptr, ptr @stv0288_set_frontend._entry, ptr @stv0288_set_frontend._entry.11, ptr @stv0288_set_frontend._entry_ptr, ptr @stv0288_set_frontend._entry_ptr.13, ptr @stv0288_set_symbolrate._entry, ptr @stv0288_set_symbolrate._entry_ptr, ptr @stv0288_set_voltage._entry, ptr @stv0288_set_voltage._entry_ptr, ptr @stv0288_writeregI._entry, ptr @stv0288_writeregI._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @stv0288_ops, ptr @debug_legacy_dish_switch, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @stv0288_inittab, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_legacy_dish_switch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_writeregI._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_inittab to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_set_frontend._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_set_symbolrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_read_status._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_send_diseqc_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0288_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stv0288_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i33 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1068) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.stv0288_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %initialised = getelementptr inbounds %struct.stv0288_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %initialised, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %initialised, align 8
  %tuner_frequency = getelementptr inbounds %struct.stv0288_state, ptr %call7.i.i, i32 0, i32 4
  %4 = call ptr @memset(ptr %tuner_frequency, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 65, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
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
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.stv0288_writeregI.exit_crit_edge, label %do.body.i

if.end.stv0288_writeregI.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.body.i:                                        ; preds = %if.end
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0288_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 65, i32 noundef 4, i32 noundef %call.i) #9
  br label %stv0288_writeregI.exit

stv0288_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0288_writeregI.exit_crit_edge, %if.end.stv0288_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  call void @msleep(i32 noundef 200) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #5
  %16 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #5
  %17 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i33) #5
  %18 = getelementptr inbounds i8, ptr %msg.i33, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  %20 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %conv.i35 = zext i8 %23 to i16
  %24 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i35, ptr %msg.i33, align 4
  %flags.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i36, align 2
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %18, align 4
  %buf.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %b0.i, ptr %buf.i38, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1
  %28 = load i8, ptr %21, align 4
  %conv5.i = zext i8 %28 to i16
  %29 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 1
  %30 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 2
  %31 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 3
  %32 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %b1.i, ptr %buf8.i, align 4
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i, align 8
  %call.i39 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i33, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i39)
  %cmp.not.i40 = icmp eq i32 %call.i39, 2
  br i1 %cmp.not.i40, label %stv0288_writeregI.exit.stv0288_readreg.exit_crit_edge, label %do.body.i42

stv0288_writeregI.exit.stv0288_readreg.exit_crit_edge: ; preds = %stv0288_writeregI.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit

do.body.i42:                                      ; preds = %stv0288_writeregI.exit
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i41 = icmp eq i32 %35, 0
  br i1 %tobool.not.i41, label %stv0288_readreg.exit.thread, label %do.end.i43

stv0288_readreg.exit.thread:                      ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i33) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #5
  br label %do.end10

do.end.i43:                                       ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef %call.i39) #9
  br label %stv0288_readreg.exit

stv0288_readreg.exit:                             ; preds = %do.end.i43, %stv0288_writeregI.exit.stv0288_readreg.exit_crit_edge
  %.pr = load i32, ptr @debug, align 4
  %38 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i33) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %stv0288_readreg.exit.do.end10_crit_edge, label %do.end

stv0288_readreg.exit.do.end10_crit_edge:          ; preds = %stv0288_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.end:                                           ; preds = %stv0288_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %39 to i32
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #9
  br label %do.end10

do.end10:                                         ; preds = %do.end, %stv0288_readreg.exit.do.end10_crit_edge, %stv0288_readreg.exit.thread
  %40 = phi i8 [ %37, %stv0288_readreg.exit.thread ], [ %39, %do.end ], [ %39, %stv0288_readreg.exit.do.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %40)
  %cmp11.not = icmp eq i8 %40, 17
  br i1 %cmp11.not, label %if.end14, label %do.end10.error_crit_edge

do.end10.error_crit_edge:                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

if.end14:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  %frontend = getelementptr inbounds %struct.stv0288_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.stv0288_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %41 = call ptr @memcpy(ptr %ops, ptr @stv0288_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.stv0288_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %do.end10.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end14
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end14 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stv0288_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i67 = alloca [2 x i8], align 1
  %msg.i68 = alloca %struct.i2c_msg, align 4
  %buf.i52 = alloca [2 x i8], align 1
  %msg.i53 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 65, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf1.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end3.stv0288_writeregI.exit_crit_edge, label %do.body.i

do.end3.stv0288_writeregI.exit_crit_edge:         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.body.i:                                        ; preds = %do.end3
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0288_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 65, i32 noundef 4, i32 noundef %call.i) #9
  br label %stv0288_writeregI.exit

stv0288_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0288_writeregI.exit_crit_edge, %do.end3.stv0288_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  call void @msleep(i32 noundef 50) #5
  %18 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config.i, align 4
  %inittab = getelementptr inbounds %struct.stv0288_config, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %inittab to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inittab, align 4
  %cmp = icmp eq ptr %21, null
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %stv0288_writeregI.exit
  %22 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i, align 4
  %inittab1985 = getelementptr inbounds %struct.stv0288_config, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %inittab1985 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %inittab1985, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %arrayidx2486 = getelementptr i8, ptr %25, i32 1
  %28 = ptrtoint ptr %arrayidx2486 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx2486, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp2687 = icmp eq i8 %27, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp2988 = icmp eq i8 %29, -1
  %or.cond89 = select i1 %cmp2687, i1 %cmp2988, i1 false
  br i1 %or.cond89, label %for.cond17.preheader.if.end37_crit_edge, label %if.end32.lr.ph

for.cond17.preheader.if.end37_crit_edge:          ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end32.lr.ph:                                   ; preds = %for.cond17.preheader
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i67, i32 0, i32 1
  %31 = getelementptr inbounds i8, ptr %msg.i68, i32 4
  %flags.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 1
  %buf1.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68, i32 0, i32 3
  br label %if.end32

for.cond.preheader:                               ; preds = %stv0288_writeregI.exit
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i52, i32 0, i32 1
  %33 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %buf1.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %stv0288_writeregI.exit66, %for.cond.preheader
  %i.0 = phi i32 [ %add16, %stv0288_writeregI.exit66 ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr [212 x i8], ptr @stv0288_inittab, i32 0, i32 %i.0
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp6 = icmp eq i8 %35, -1
  %add = or i32 %i.0, 1
  br i1 %cmp6, label %land.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

land.rhs:                                         ; preds = %for.cond
  %arrayidx8 = getelementptr [212 x i8], ptr @stv0288_inittab, i32 0, i32 %add
  %36 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %37)
  %cmp10 = icmp eq i8 %37, -1
  br i1 %cmp10, label %land.rhs.if.end37_crit_edge, label %land.rhs.for.body_crit_edge

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %arrayidx14 = getelementptr [212 x i8], ptr @stv0288_inittab, i32 0, i32 %add
  %38 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx14, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52) #5
  %40 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %35, ptr %buf.i52, align 1
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %39, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i53) #5
  %42 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %33, align 4
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
  store i16 2, ptr %33, align 4
  %49 = ptrtoint ptr %buf1.i58 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf.i52, ptr %buf1.i58, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i59 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i53, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59)
  %cmp.not.i60 = icmp eq i32 %call.i59, 1
  br i1 %cmp.not.i60, label %for.body.stv0288_writeregI.exit66_crit_edge, label %do.body.i62

for.body.stv0288_writeregI.exit66_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit66

do.body.i62:                                      ; preds = %for.body
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i61 = icmp eq i32 %52, 0
  br i1 %tobool.not.i61, label %do.body.i62.stv0288_writeregI.exit66_crit_edge, label %do.end.i64

do.body.i62.stv0288_writeregI.exit66_crit_edge:   ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit66

do.end.i64:                                       ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.i = zext i8 %35 to i32
  %conv6.i = zext i8 %39 to i32
  %call7.i63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %call.i59) #9
  br label %stv0288_writeregI.exit66

stv0288_writeregI.exit66:                         ; preds = %do.end.i64, %do.body.i62.stv0288_writeregI.exit66_crit_edge, %for.body.stv0288_writeregI.exit66_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #5
  %add16 = add i32 %i.0, 2
  br label %for.cond

if.end32:                                         ; preds = %stv0288_writeregI.exit83.if.end32_crit_edge, %if.end32.lr.ph
  %53 = phi i8 [ %29, %if.end32.lr.ph ], [ %75, %stv0288_writeregI.exit83.if.end32_crit_edge ]
  %54 = phi i8 [ %27, %if.end32.lr.ph ], [ %73, %stv0288_writeregI.exit83.if.end32_crit_edge ]
  %i.190 = phi i32 [ 0, %if.end32.lr.ph ], [ %add35, %stv0288_writeregI.exit83.if.end32_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i67) #5
  %55 = ptrtoint ptr %buf.i67 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %buf.i67, align 1
  %56 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %53, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i68) #5
  %57 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %31, align 4
  %58 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 4
  %conv.i70 = zext i8 %61 to i16
  %62 = ptrtoint ptr %msg.i68 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i70, ptr %msg.i68, align 4
  %63 = ptrtoint ptr %flags.i71 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i71, align 2
  store i16 2, ptr %31, align 4
  %64 = ptrtoint ptr %buf1.i73 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buf.i67, ptr %buf1.i73, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call.i74 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i68, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i74)
  %cmp.not.i75 = icmp eq i32 %call.i74, 1
  br i1 %cmp.not.i75, label %if.end32.stv0288_writeregI.exit83_crit_edge, label %do.body.i77

if.end32.stv0288_writeregI.exit83_crit_edge:      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit83

do.body.i77:                                      ; preds = %if.end32
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i76 = icmp eq i32 %67, 0
  br i1 %tobool.not.i76, label %do.body.i77.stv0288_writeregI.exit83_crit_edge, label %do.end.i81

do.body.i77.stv0288_writeregI.exit83_crit_edge:   ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit83

do.end.i81:                                       ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.i78 = zext i8 %54 to i32
  %conv6.i79 = zext i8 %53 to i32
  %call7.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv5.i78, i32 noundef %conv6.i79, i32 noundef %call.i74) #9
  br label %stv0288_writeregI.exit83

stv0288_writeregI.exit83:                         ; preds = %do.end.i81, %do.body.i77.stv0288_writeregI.exit83_crit_edge, %if.end32.stv0288_writeregI.exit83_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i68) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i67) #5
  %add35 = add i32 %i.190, 2
  %68 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %config.i, align 4
  %inittab19 = getelementptr inbounds %struct.stv0288_config, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %inittab19 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %inittab19, align 4
  %arrayidx20 = getelementptr i8, ptr %71, i32 %add35
  %72 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx20, align 1
  %add23 = or i32 %add35, 1
  %arrayidx24 = getelementptr i8, ptr %71, i32 %add23
  %74 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %73)
  %cmp26 = icmp eq i8 %73, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %cmp29 = icmp eq i8 %75, -1
  %or.cond = select i1 %cmp26, i1 %cmp29, i1 false
  br i1 %or.cond, label %stv0288_writeregI.exit83.if.end37_crit_edge, label %stv0288_writeregI.exit83.if.end32_crit_edge

stv0288_writeregI.exit83.if.end32_crit_edge:      ; preds = %stv0288_writeregI.exit83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

stv0288_writeregI.exit83.if.end37_crit_edge:      ; preds = %stv0288_writeregI.exit83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end37:                                         ; preds = %stv0288_writeregI.exit83.if.end37_crit_edge, %land.rhs.if.end37_crit_edge, %for.cond17.preheader.if.end37_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 65, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -124, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.stv0288_writeregI.exit_crit_edge, label %do.body.i

entry.stv0288_writeregI.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.body.i:                                        ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0288_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 65, i32 noundef 132, i32 noundef %call.i) #9
  br label %stv0288_writeregI.exit

stv0288_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0288_writeregI.exit_crit_edge, %entry.stv0288_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %initialised = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %initialised, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %initialised, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_write(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp.not = icmp eq i32 %len, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.stv0288_writeregI.exit_crit_edge, label %do.body.i

if.end.stv0288_writeregI.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.body.i:                                        ; preds = %if.end
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0288_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.i = zext i8 %3 to i32
  %conv6.i = zext i8 %5 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %call.i) #9
  br label %stv0288_writeregI.exit

stv0288_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0288_writeregI.exit_crit_edge, %if.end.stv0288_writeregI.exit_crit_edge
  %cond.i = phi i32 [ -121, %do.body.i.stv0288_writeregI.exit_crit_edge ], [ -121, %do.end.i ], [ 0, %if.end.stv0288_writeregI.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %cleanup

cleanup:                                          ; preds = %stv0288_writeregI.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i, %stv0288_writeregI.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i122.i = alloca [2 x i8], align 1
  %msg.i123.i = alloca %struct.i2c_msg, align 4
  %buf.i106.i = alloca [2 x i8], align 1
  %msg.i107.i = alloca %struct.i2c_msg, align 4
  %buf.i91.i = alloca [2 x i8], align 1
  %msg.i92.i = alloca %struct.i2c_msg, align 4
  %buf.i76.i = alloca [2 x i8], align 1
  %msg.i77.i = alloca %struct.i2c_msg, align 4
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
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %3 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp.not = icmp eq i32 %4, 5
  br i1 %cmp.not, label %if.end17, label %do.body5

do.body5:                                         ; preds = %do.end3
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %do.body5.cleanup_crit_edge, label %do.end10

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %4) #9
  br label %cleanup

if.end17:                                         ; preds = %do.end3
  %config = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %set_ts_params = getelementptr inbounds %struct.stv0288_config, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %set_ts_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_ts_params, align 4
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.end17.if.end23_crit_edge, label %if.then19

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 %9(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17.if.end23_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %10 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_params, align 4
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %if.end23.if.end37_crit_edge, label %if.then25

if.end23.if.end37_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then25:                                        ; preds = %if.end23
  %call29 = tail call i32 %11(ptr noundef %fe) #5
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool31.not = icmp eq ptr %13, null
  br i1 %tobool31.not, label %if.then25.if.end37_crit_edge, label %if.then32

if.then25.if.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 %13(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.then25.if.end37_crit_edge, %if.end23.if.end37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #5
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %15 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %symbol_rate, align 4
  %17 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %demodulator_priv, align 4
  %19 = add i32 %16, -45000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -44000001, i32 %19)
  %20 = icmp ult i32 %19, -44000001
  br i1 %20, label %if.end37.stv0288_set_symbolrate.exit_crit_edge, label %if.end.i

if.end37.stv0288_set_symbolrate.exit_crit_edge:   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_set_symbolrate.exit

if.end.i:                                         ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #5
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 34, ptr %buf.i.i, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %24 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %24, align 4
  %config.i.i = getelementptr inbounds %struct.stv0288_state, ptr %18, i32 0, i32 1
  %26 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv.i.i = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i.i, align 2
  store i16 2, ptr %24, align 4
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %33 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %18, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end.i.stv0288_writeregI.exit.i_crit_edge, label %do.body.i.i

if.end.i.stv0288_writeregI.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.stv0288_writeregI.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.stv0288_writeregI.exit.i_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 34, i32 noundef 0, i32 noundef %call.i.i) #9
  br label %stv0288_writeregI.exit.i

stv0288_writeregI.exit.i:                         ; preds = %do.end.i.i, %do.body.i.i.stv0288_writeregI.exit.i_crit_edge, %if.end.i.stv0288_writeregI.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #5
  %36 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %37 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 35, ptr %buf.i1.i, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #5
  %39 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 196607, ptr %39, align 4
  %41 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  %conv.i4.i = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i5.i, align 2
  %buf1.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %47 = ptrtoint ptr %buf1.i7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i1.i, ptr %buf1.i7.i, align 4
  %48 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %18, align 4
  %call.i8.i = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i)
  %cmp.not.i9.i = icmp eq i32 %call.i8.i, 1
  br i1 %cmp.not.i9.i, label %stv0288_writeregI.exit.i.stv0288_writeregI.exit15.i_crit_edge, label %do.body.i11.i

stv0288_writeregI.exit.i.stv0288_writeregI.exit15.i_crit_edge: ; preds = %stv0288_writeregI.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit15.i

do.body.i11.i:                                    ; preds = %stv0288_writeregI.exit.i
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i10.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i10.i, label %do.body.i11.i.stv0288_writeregI.exit15.i_crit_edge, label %do.end.i13.i

do.body.i11.i.stv0288_writeregI.exit15.i_crit_edge: ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit15.i

do.end.i13.i:                                     ; preds = %do.body.i11.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 35, i32 noundef 0, i32 noundef %call.i8.i) #9
  br label %stv0288_writeregI.exit15.i

stv0288_writeregI.exit15.i:                       ; preds = %do.end.i13.i, %do.body.i11.i.stv0288_writeregI.exit15.i_crit_edge, %stv0288_writeregI.exit.i.stv0288_writeregI.exit15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i16.i) #5
  %51 = getelementptr inbounds [2 x i8], ptr %buf.i16.i, i32 0, i32 1
  %52 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 43, ptr %buf.i16.i, align 1
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i17.i) #5
  %54 = getelementptr inbounds i8, ptr %msg.i17.i, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 196607, ptr %54, align 4
  %56 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv.i19.i = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i17.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i19.i, ptr %msg.i17.i, align 4
  %flags.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17.i, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i20.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i20.i, align 2
  %buf1.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17.i, i32 0, i32 3
  %62 = ptrtoint ptr %buf1.i22.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %buf.i16.i, ptr %buf1.i22.i, align 4
  %63 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %18, align 4
  %call.i23.i = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i17.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i23.i)
  %cmp.not.i24.i = icmp eq i32 %call.i23.i, 1
  br i1 %cmp.not.i24.i, label %stv0288_writeregI.exit15.i.stv0288_writeregI.exit30.i_crit_edge, label %do.body.i26.i

stv0288_writeregI.exit15.i.stv0288_writeregI.exit30.i_crit_edge: ; preds = %stv0288_writeregI.exit15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit30.i

do.body.i26.i:                                    ; preds = %stv0288_writeregI.exit15.i
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i25.i = icmp eq i32 %65, 0
  br i1 %tobool.not.i25.i, label %do.body.i26.i.stv0288_writeregI.exit30.i_crit_edge, label %do.end.i28.i

do.body.i26.i.stv0288_writeregI.exit30.i_crit_edge: ; preds = %do.body.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit30.i

do.end.i28.i:                                     ; preds = %do.body.i26.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 43, i32 noundef 255, i32 noundef %call.i23.i) #9
  br label %stv0288_writeregI.exit30.i

stv0288_writeregI.exit30.i:                       ; preds = %do.end.i28.i, %do.body.i26.i.stv0288_writeregI.exit30.i_crit_edge, %stv0288_writeregI.exit15.i.stv0288_writeregI.exit30.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i17.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i16.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i31.i) #5
  %66 = getelementptr inbounds [2 x i8], ptr %buf.i31.i, i32 0, i32 1
  %67 = ptrtoint ptr %buf.i31.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 44, ptr %buf.i31.i, align 1
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -9, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i32.i) #5
  %69 = getelementptr inbounds i8, ptr %msg.i32.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %71 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %conv.i34.i = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i32.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i34.i, ptr %msg.i32.i, align 4
  %flags.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32.i, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i35.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i35.i, align 2
  %buf1.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32.i, i32 0, i32 3
  %77 = ptrtoint ptr %buf1.i37.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i31.i, ptr %buf1.i37.i, align 4
  %78 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %18, align 4
  %call.i38.i = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i38.i)
  %cmp.not.i39.i = icmp eq i32 %call.i38.i, 1
  br i1 %cmp.not.i39.i, label %stv0288_writeregI.exit30.i.stv0288_writeregI.exit45.i_crit_edge, label %do.body.i41.i

stv0288_writeregI.exit30.i.stv0288_writeregI.exit45.i_crit_edge: ; preds = %stv0288_writeregI.exit30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit45.i

do.body.i41.i:                                    ; preds = %stv0288_writeregI.exit30.i
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i40.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i40.i, label %do.body.i41.i.stv0288_writeregI.exit45.i_crit_edge, label %do.end.i43.i

do.body.i41.i.stv0288_writeregI.exit45.i_crit_edge: ; preds = %do.body.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit45.i

do.end.i43.i:                                     ; preds = %do.body.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 44, i32 noundef 247, i32 noundef %call.i38.i) #9
  br label %stv0288_writeregI.exit45.i

stv0288_writeregI.exit45.i:                       ; preds = %do.end.i43.i, %do.body.i41.i.stv0288_writeregI.exit45.i_crit_edge, %stv0288_writeregI.exit30.i.stv0288_writeregI.exit45.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i32.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i31.i) #5
  %div.i = udiv i32 %16, 1000
  %mul.i = shl nuw nsw i32 %div.i, 15
  %div6.i = udiv i32 %mul.i, 3125
  %shr.i = lshr i32 %div6.i, 12
  %conv.i = trunc i32 %shr.i to i8
  %shr7.i = lshr i32 %div6.i, 4
  %conv9.i = trunc i32 %shr7.i to i8
  %div6.tr.i = trunc i32 %div6.i to i8
  %conv12.i = shl i8 %div6.tr.i, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i46.i) #5
  %81 = getelementptr inbounds [2 x i8], ptr %buf.i46.i, i32 0, i32 1
  %82 = ptrtoint ptr %buf.i46.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 40, ptr %buf.i46.i, align 1
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -128, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i47.i) #5
  %84 = getelementptr inbounds i8, ptr %msg.i47.i, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 196607, ptr %84, align 4
  %86 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %config.i.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 4
  %conv.i49.i = zext i8 %89 to i16
  %90 = ptrtoint ptr %msg.i47.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv.i49.i, ptr %msg.i47.i, align 4
  %flags.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i50.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %flags.i50.i, align 2
  %buf1.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47.i, i32 0, i32 3
  %92 = ptrtoint ptr %buf1.i52.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %buf.i46.i, ptr %buf1.i52.i, align 4
  %93 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %18, align 4
  %call.i53.i = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msg.i47.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i53.i)
  %cmp.not.i54.i = icmp eq i32 %call.i53.i, 1
  br i1 %cmp.not.i54.i, label %stv0288_writeregI.exit45.i.stv0288_writeregI.exit60.i_crit_edge, label %do.body.i56.i

stv0288_writeregI.exit45.i.stv0288_writeregI.exit60.i_crit_edge: ; preds = %stv0288_writeregI.exit45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit60.i

do.body.i56.i:                                    ; preds = %stv0288_writeregI.exit45.i
  %95 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i55.i = icmp eq i32 %95, 0
  br i1 %tobool.not.i55.i, label %do.body.i56.i.stv0288_writeregI.exit60.i_crit_edge, label %do.end.i58.i

do.body.i56.i.stv0288_writeregI.exit60.i_crit_edge: ; preds = %do.body.i56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit60.i

do.end.i58.i:                                     ; preds = %do.body.i56.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 40, i32 noundef 128, i32 noundef %call.i53.i) #9
  br label %stv0288_writeregI.exit60.i

stv0288_writeregI.exit60.i:                       ; preds = %do.end.i58.i, %do.body.i56.i.stv0288_writeregI.exit60.i_crit_edge, %stv0288_writeregI.exit45.i.stv0288_writeregI.exit60.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i47.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i46.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i61.i) #5
  %96 = getelementptr inbounds [2 x i8], ptr %buf.i61.i, i32 0, i32 1
  %97 = ptrtoint ptr %buf.i61.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 41, ptr %buf.i61.i, align 1
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i62.i) #5
  %99 = getelementptr inbounds i8, ptr %msg.i62.i, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196607, ptr %99, align 4
  %101 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %config.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 4
  %conv.i64.i = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i62.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i64.i, ptr %msg.i62.i, align 4
  %flags.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i65.i, align 2
  %buf1.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 3
  %107 = ptrtoint ptr %buf1.i67.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i61.i, ptr %buf1.i67.i, align 4
  %108 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %18, align 4
  %call.i68.i = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i62.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i68.i)
  %cmp.not.i69.i = icmp eq i32 %call.i68.i, 1
  br i1 %cmp.not.i69.i, label %stv0288_writeregI.exit60.i.stv0288_writeregI.exit75.i_crit_edge, label %do.body.i71.i

stv0288_writeregI.exit60.i.stv0288_writeregI.exit75.i_crit_edge: ; preds = %stv0288_writeregI.exit60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit75.i

do.body.i71.i:                                    ; preds = %stv0288_writeregI.exit60.i
  %110 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i70.i = icmp eq i32 %110, 0
  br i1 %tobool.not.i70.i, label %do.body.i71.i.stv0288_writeregI.exit75.i_crit_edge, label %do.end.i73.i

do.body.i71.i.stv0288_writeregI.exit75.i_crit_edge: ; preds = %do.body.i71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit75.i

do.end.i73.i:                                     ; preds = %do.body.i71.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 41, i32 noundef 0, i32 noundef %call.i68.i) #9
  br label %stv0288_writeregI.exit75.i

stv0288_writeregI.exit75.i:                       ; preds = %do.end.i73.i, %do.body.i71.i.stv0288_writeregI.exit75.i_crit_edge, %stv0288_writeregI.exit60.i.stv0288_writeregI.exit75.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i62.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i61.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i76.i) #5
  %111 = getelementptr inbounds [2 x i8], ptr %buf.i76.i, i32 0, i32 1
  %112 = ptrtoint ptr %buf.i76.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 42, ptr %buf.i76.i, align 1
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i77.i) #5
  %114 = getelementptr inbounds i8, ptr %msg.i77.i, i32 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 196607, ptr %114, align 4
  %116 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %config.i.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 4
  %conv.i79.i = zext i8 %119 to i16
  %120 = ptrtoint ptr %msg.i77.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i79.i, ptr %msg.i77.i, align 4
  %flags.i80.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77.i, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i80.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %flags.i80.i, align 2
  %buf1.i82.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i77.i, i32 0, i32 3
  %122 = ptrtoint ptr %buf1.i82.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %buf.i76.i, ptr %buf1.i82.i, align 4
  %123 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %18, align 4
  %call.i83.i = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %msg.i77.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i83.i)
  %cmp.not.i84.i = icmp eq i32 %call.i83.i, 1
  br i1 %cmp.not.i84.i, label %stv0288_writeregI.exit75.i.stv0288_writeregI.exit90.i_crit_edge, label %do.body.i86.i

stv0288_writeregI.exit75.i.stv0288_writeregI.exit90.i_crit_edge: ; preds = %stv0288_writeregI.exit75.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit90.i

do.body.i86.i:                                    ; preds = %stv0288_writeregI.exit75.i
  %125 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i85.i = icmp eq i32 %125, 0
  br i1 %tobool.not.i85.i, label %do.body.i86.i.stv0288_writeregI.exit90.i_crit_edge, label %do.end.i88.i

do.body.i86.i.stv0288_writeregI.exit90.i_crit_edge: ; preds = %do.body.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit90.i

do.end.i88.i:                                     ; preds = %do.body.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 42, i32 noundef 0, i32 noundef %call.i83.i) #9
  br label %stv0288_writeregI.exit90.i

stv0288_writeregI.exit90.i:                       ; preds = %do.end.i88.i, %do.body.i86.i.stv0288_writeregI.exit90.i_crit_edge, %stv0288_writeregI.exit75.i.stv0288_writeregI.exit90.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i77.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i76.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i91.i) #5
  %126 = getelementptr inbounds [2 x i8], ptr %buf.i91.i, i32 0, i32 1
  %127 = ptrtoint ptr %buf.i91.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 40, ptr %buf.i91.i, align 1
  %128 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv.i, ptr %126, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i92.i) #5
  %129 = getelementptr inbounds i8, ptr %msg.i92.i, i32 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 196607, ptr %129, align 4
  %131 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %config.i.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %132, align 4
  %conv.i94.i = zext i8 %134 to i16
  %135 = ptrtoint ptr %msg.i92.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i94.i, ptr %msg.i92.i, align 4
  %flags.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92.i, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i95.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i95.i, align 2
  %buf1.i97.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92.i, i32 0, i32 3
  %137 = ptrtoint ptr %buf1.i97.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %buf.i91.i, ptr %buf1.i97.i, align 4
  %138 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %18, align 4
  %call.i98.i = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %msg.i92.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i98.i)
  %cmp.not.i99.i = icmp eq i32 %call.i98.i, 1
  br i1 %cmp.not.i99.i, label %stv0288_writeregI.exit90.i.stv0288_writeregI.exit105.i_crit_edge, label %do.body.i101.i

stv0288_writeregI.exit90.i.stv0288_writeregI.exit105.i_crit_edge: ; preds = %stv0288_writeregI.exit90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit105.i

do.body.i101.i:                                   ; preds = %stv0288_writeregI.exit90.i
  %140 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool.not.i100.i = icmp eq i32 %140, 0
  br i1 %tobool.not.i100.i, label %do.body.i101.i.stv0288_writeregI.exit105.i_crit_edge, label %do.end.i103.i

do.body.i101.i.stv0288_writeregI.exit105.i_crit_edge: ; preds = %do.body.i101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit105.i

do.end.i103.i:                                    ; preds = %do.body.i101.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 40, i32 noundef %shr.i, i32 noundef %call.i98.i) #9
  br label %stv0288_writeregI.exit105.i

stv0288_writeregI.exit105.i:                      ; preds = %do.end.i103.i, %do.body.i101.i.stv0288_writeregI.exit105.i_crit_edge, %stv0288_writeregI.exit90.i.stv0288_writeregI.exit105.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i92.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i91.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i106.i) #5
  %141 = getelementptr inbounds [2 x i8], ptr %buf.i106.i, i32 0, i32 1
  %142 = ptrtoint ptr %buf.i106.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 41, ptr %buf.i106.i, align 1
  %143 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv9.i, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i107.i) #5
  %144 = getelementptr inbounds i8, ptr %msg.i107.i, i32 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 196607, ptr %144, align 4
  %146 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %config.i.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %147, align 4
  %conv.i109.i = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i107.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i109.i, ptr %msg.i107.i, align 4
  %flags.i110.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107.i, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i110.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i110.i, align 2
  %buf1.i112.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107.i, i32 0, i32 3
  %152 = ptrtoint ptr %buf1.i112.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %buf.i106.i, ptr %buf1.i112.i, align 4
  %153 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %18, align 4
  %call.i113.i = call i32 @i2c_transfer(ptr noundef %154, ptr noundef nonnull %msg.i107.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i113.i)
  %cmp.not.i114.i = icmp eq i32 %call.i113.i, 1
  br i1 %cmp.not.i114.i, label %stv0288_writeregI.exit105.i.stv0288_writeregI.exit121.i_crit_edge, label %do.body.i116.i

stv0288_writeregI.exit105.i.stv0288_writeregI.exit121.i_crit_edge: ; preds = %stv0288_writeregI.exit105.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit121.i

do.body.i116.i:                                   ; preds = %stv0288_writeregI.exit105.i
  %155 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i115.i = icmp eq i32 %155, 0
  br i1 %tobool.not.i115.i, label %do.body.i116.i.stv0288_writeregI.exit121.i_crit_edge, label %do.end.i119.i

do.body.i116.i.stv0288_writeregI.exit121.i_crit_edge: ; preds = %do.body.i116.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit121.i

do.end.i119.i:                                    ; preds = %do.body.i116.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i117.i = and i32 %shr7.i, 255
  %call7.i118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 41, i32 noundef %conv6.i117.i, i32 noundef %call.i113.i) #9
  br label %stv0288_writeregI.exit121.i

stv0288_writeregI.exit121.i:                      ; preds = %do.end.i119.i, %do.body.i116.i.stv0288_writeregI.exit121.i_crit_edge, %stv0288_writeregI.exit105.i.stv0288_writeregI.exit121.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i107.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i106.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i122.i) #5
  %156 = getelementptr inbounds [2 x i8], ptr %buf.i122.i, i32 0, i32 1
  %157 = ptrtoint ptr %buf.i122.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 42, ptr %buf.i122.i, align 1
  %158 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv12.i, ptr %156, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i123.i) #5
  %159 = getelementptr inbounds i8, ptr %msg.i123.i, i32 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 196607, ptr %159, align 4
  %161 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %config.i.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %162, align 4
  %conv.i125.i = zext i8 %164 to i16
  %165 = ptrtoint ptr %msg.i123.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv.i125.i, ptr %msg.i123.i, align 4
  %flags.i126.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123.i, i32 0, i32 1
  %166 = ptrtoint ptr %flags.i126.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 0, ptr %flags.i126.i, align 2
  %buf1.i128.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123.i, i32 0, i32 3
  %167 = ptrtoint ptr %buf1.i128.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %buf.i122.i, ptr %buf1.i128.i, align 4
  %168 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %18, align 4
  %call.i129.i = call i32 @i2c_transfer(ptr noundef %169, ptr noundef nonnull %msg.i123.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i129.i)
  %cmp.not.i130.i = icmp eq i32 %call.i129.i, 1
  br i1 %cmp.not.i130.i, label %stv0288_writeregI.exit121.i.stv0288_writeregI.exit137.i_crit_edge, label %do.body.i132.i

stv0288_writeregI.exit121.i.stv0288_writeregI.exit137.i_crit_edge: ; preds = %stv0288_writeregI.exit121.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit137.i

do.body.i132.i:                                   ; preds = %stv0288_writeregI.exit121.i
  %170 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i131.i = icmp eq i32 %170, 0
  br i1 %tobool.not.i131.i, label %stv0288_writeregI.exit137.thread.i, label %do.end.i135.i

stv0288_writeregI.exit137.thread.i:               ; preds = %do.body.i132.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i123.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i122.i) #5
  br label %stv0288_set_symbolrate.exit

do.end.i135.i:                                    ; preds = %do.body.i132.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i133.i = zext i8 %conv12.i to i32
  %call7.i134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 42, i32 noundef %conv6.i133.i, i32 noundef %call.i129.i) #9
  br label %stv0288_writeregI.exit137.i

stv0288_writeregI.exit137.i:                      ; preds = %do.end.i135.i, %stv0288_writeregI.exit121.i.stv0288_writeregI.exit137.i_crit_edge
  %.pr.i = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i123.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i122.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i, label %stv0288_writeregI.exit137.i.stv0288_set_symbolrate.exit_crit_edge, label %do.end.i

stv0288_writeregI.exit137.i.stv0288_set_symbolrate.exit_crit_edge: ; preds = %stv0288_writeregI.exit137.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_set_symbolrate.exit

do.end.i:                                         ; preds = %stv0288_writeregI.exit137.i
  call void @__sanitizer_cov_trace_pc() #7
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  br label %stv0288_set_symbolrate.exit

stv0288_set_symbolrate.exit:                      ; preds = %do.end.i, %stv0288_writeregI.exit137.i.stv0288_set_symbolrate.exit_crit_edge, %stv0288_writeregI.exit137.thread.i, %if.end37.stv0288_set_symbolrate.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %171 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %172 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 21, ptr %buf.i, align 1
  %173 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -59, ptr %171, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %174 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 196607, ptr %174, align 4
  %176 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %config, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %177, align 4
  %conv.i112 = zext i8 %179 to i16
  %180 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv.i112, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %182 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %buf.i, ptr %buf1.i, align 4
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %stv0288_set_symbolrate.exit.stv0288_writeregI.exit_crit_edge, label %do.body.i

stv0288_set_symbolrate.exit.stv0288_writeregI.exit_crit_edge: ; preds = %stv0288_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.body.i:                                        ; preds = %stv0288_set_symbolrate.exit
  %185 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.not.i113 = icmp eq i32 %185, 0
  br i1 %tobool.not.i113, label %do.body.i.stv0288_writeregI.exit_crit_edge, label %do.end.i114

do.body.i.stv0288_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.end.i114:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 21, i32 noundef 197, i32 noundef %call.i) #9
  br label %stv0288_writeregI.exit

stv0288_writeregI.exit:                           ; preds = %do.end.i114, %do.body.i.stv0288_writeregI.exit_crit_edge, %stv0288_set_symbolrate.exit.stv0288_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %186 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %dtv_property_cache, align 4
  %tuner_frequency = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 4
  %188 = ptrtoint ptr %tuner_frequency to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %tuner_frequency, align 4
  %fec_inner = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 6
  %189 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 9, ptr %fec_inner, align 4
  %190 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %symbol_rate, align 4
  %symbol_rate75 = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 5
  %192 = ptrtoint ptr %symbol_rate75 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %191, ptr %symbol_rate75, align 4
  br label %cleanup

cleanup:                                          ; preds = %stv0288_writeregI.exit, %do.end10, %do.body5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %stv0288_writeregI.exit ], [ -95, %do.end10 ], [ -95, %do.body5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #5
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 36, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #5
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.stv0288_readreg.exit_crit_edge, label %do.body.i

entry.stv0288_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %stv0288_readreg.exit.thread, label %do.end.i

stv0288_readreg.exit.thread:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %23)
  %cmp43 = icmp eq i8 %23, -1
  %spec.store.select44 = select i1 %cmp43, i8 0, i8 %23
  br label %do.end8

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 36, i32 noundef %call.i) #9
  br label %stv0288_readreg.exit

stv0288_readreg.exit:                             ; preds = %do.end.i, %entry.stv0288_readreg.exit_crit_edge
  %.pr = load i32, ptr @debug, align 4
  %24 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp = icmp eq i8 %25, -1
  %spec.store.select = select i1 %cmp, i8 0, i8 %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %stv0288_readreg.exit.do.end8_crit_edge, label %do.end

stv0288_readreg.exit.do.end8_crit_edge:           ; preds = %stv0288_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.end:                                           ; preds = %stv0288_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv4 = zext i8 %spec.store.select to i32
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %conv4) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %stv0288_readreg.exit.do.end8_crit_edge, %stv0288_readreg.exit.thread
  %spec.store.select46 = phi i8 [ %spec.store.select44, %stv0288_readreg.exit.thread ], [ %spec.store.select, %do.end ], [ %spec.store.select, %stv0288_readreg.exit.do.end8_crit_edge ]
  %conv9 = zext i8 %spec.store.select46 to i32
  %and = and i32 %conv9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool10.not, i32 0, i32 3
  %and14 = lshr i32 %conv9, 2
  %26 = and i32 %and14, 4
  %27 = or i32 %26, %spec.select
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %status, align 4
  %and20 = and i32 %conv9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end8.if.end35_crit_edge, label %if.then22

do.end8.if.end35_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then22:                                        ; preds = %do.end8
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  %or23 = or i32 %30, 16
  store i32 %or23, ptr %status, align 4
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool25.not = icmp eq i32 %31, 0
  br i1 %tobool25.not, label %if.then22.if.end35_crit_edge, label %do.end29

if.then22.if.end35_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end29, %if.then22.if.end35_crit_edge, %do.end8.if.end35_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %b0.i12 = alloca [1 x i8], align 1
  %b1.i13 = alloca [1 x i8], align 1
  %msg.i14 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %errmode = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %errmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %errmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #5
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 38, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #5
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.stv0288_readreg.exit_crit_edge, label %do.body.i

if.end.stv0288_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit

do.body.i:                                        ; preds = %if.end
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0288_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 38, i32 noundef %call.i) #9
  br label %stv0288_readreg.exit

stv0288_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0288_readreg.exit_crit_edge, %if.end.stv0288_readreg.exit_crit_edge
  %24 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #5
  %conv = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i12) #5
  %26 = ptrtoint ptr %b0.i12 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 39, ptr %b0.i12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i13) #5
  %27 = ptrtoint ptr %b1.i13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %b1.i13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i14) #5
  %28 = getelementptr inbounds i8, ptr %msg.i14, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv.i16 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i16, ptr %msg.i14, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i17, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %b0.i12, ptr %buf.i19, align 4
  %arrayinit.element.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1
  %38 = load i8, ptr %31, align 4
  %conv5.i21 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i20 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv5.i21, ptr %arrayinit.element.i20, align 4
  %flags6.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 1
  %40 = ptrtoint ptr %flags6.i22 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags6.i22, align 2
  %len7.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 2
  %41 = ptrtoint ptr %len7.i23 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len7.i23, align 4
  %buf8.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 3
  %42 = ptrtoint ptr %buf8.i24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %b1.i13, ptr %buf8.i24, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i25 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i14, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i25)
  %cmp.not.i26 = icmp eq i32 %call.i25, 2
  br i1 %cmp.not.i26, label %stv0288_readreg.exit.stv0288_readreg.exit31_crit_edge, label %do.body.i28

stv0288_readreg.exit.stv0288_readreg.exit31_crit_edge: ; preds = %stv0288_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit31

do.body.i28:                                      ; preds = %stv0288_readreg.exit
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i27 = icmp eq i32 %45, 0
  br i1 %tobool.not.i27, label %do.body.i28.stv0288_readreg.exit31_crit_edge, label %do.end.i30

do.body.i28.stv0288_readreg.exit31_crit_edge:     ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit31

do.end.i30:                                       ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 39, i32 noundef %call.i25) #9
  br label %stv0288_readreg.exit31

stv0288_readreg.exit31:                           ; preds = %do.end.i30, %do.body.i28.stv0288_readreg.exit31_crit_edge, %stv0288_readreg.exit.stv0288_readreg.exit31_crit_edge
  %46 = ptrtoint ptr %b1.i13 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b1.i13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i14) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i13) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i12) #5
  %conv2 = zext i8 %47 to i32
  %or = or i32 %shl, %conv2
  %48 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or, ptr %ber, align 4
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  br i1 %tobool.not, label %stv0288_readreg.exit31.cleanup_crit_edge, label %do.end

stv0288_readreg.exit31.cleanup_crit_edge:         ; preds = %stv0288_readreg.exit31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %stv0288_readreg.exit31
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %or) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %stv0288_readreg.exit31.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #5
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #5
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.stv0288_readreg.exit_crit_edge, label %do.body.i

entry.stv0288_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0288_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 16, i32 noundef %call.i) #9
  br label %stv0288_readreg.exit

stv0288_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0288_readreg.exit_crit_edge, %entry.stv0288_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #5
  %conv = zext i8 %23 to i32
  %24 = mul nsw i32 %conv, -1280
  %mul = add nsw i32 %24, 65531
  %div1819 = lshr i32 %mul, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65532, i32 %24)
  %cmp = icmp sgt i32 %24, -65532
  %phi.cast = trunc i32 %div1819 to i16
  %cond7 = select i1 %cmp, i16 -1, i16 %phi.cast
  %25 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %cond7, ptr %strength, align 2
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %stv0288_readreg.exit.do.end13_crit_edge, label %do.end

stv0288_readreg.exit.do.end13_crit_edge:          ; preds = %stv0288_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

do.end:                                           ; preds = %stv0288_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv10 = zext i16 %cond7 to i32
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv10) #9
  br label %do.end13

do.end13:                                         ; preds = %do.end, %stv0288_readreg.exit.do.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %b0.i22 = alloca [1 x i8], align 1
  %b1.i23 = alloca [1 x i8], align 1
  %msg.i24 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #5
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 45, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #5
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.stv0288_readreg.exit_crit_edge, label %do.body.i

entry.stv0288_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0288_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 45, i32 noundef %call.i) #9
  br label %stv0288_readreg.exit

stv0288_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0288_readreg.exit_crit_edge, %entry.stv0288_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #5
  %conv = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i22) #5
  %24 = ptrtoint ptr %b0.i22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 46, ptr %b0.i22, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i23) #5
  %25 = ptrtoint ptr %b1.i23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i23, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i24) #5
  %26 = getelementptr inbounds i8, ptr %msg.i24, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.i26 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i26, ptr %msg.i24, align 4
  %flags.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i27, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i22, ptr %buf.i29, align 4
  %arrayinit.element.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1
  %36 = load i8, ptr %29, align 4
  %conv5.i31 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i30 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i31, ptr %arrayinit.element.i30, align 4
  %flags6.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i32 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i32, align 2
  %len7.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i33 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i33, align 4
  %buf8.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i23, ptr %buf8.i34, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i35 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i24, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i35)
  %cmp.not.i36 = icmp eq i32 %call.i35, 2
  br i1 %cmp.not.i36, label %stv0288_readreg.exit.stv0288_readreg.exit41_crit_edge, label %do.body.i38

stv0288_readreg.exit.stv0288_readreg.exit41_crit_edge: ; preds = %stv0288_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit41

do.body.i38:                                      ; preds = %stv0288_readreg.exit
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i37 = icmp eq i32 %43, 0
  br i1 %tobool.not.i37, label %do.body.i38.stv0288_readreg.exit41_crit_edge, label %do.end.i40

do.body.i38.stv0288_readreg.exit41_crit_edge:     ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit41

do.end.i40:                                       ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 46, i32 noundef %call.i35) #9
  br label %stv0288_readreg.exit41

stv0288_readreg.exit41:                           ; preds = %do.end.i40, %do.body.i38.stv0288_readreg.exit41_crit_edge, %stv0288_readreg.exit.stv0288_readreg.exit41_crit_edge
  %44 = ptrtoint ptr %b1.i23 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i23, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i24) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i23) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i22) #5
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
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not = icmp eq i32 %47, 0
  br i1 %tobool.not, label %stv0288_readreg.exit41.do.end16_crit_edge, label %do.end

stv0288_readreg.exit41.do.end16_crit_edge:        ; preds = %stv0288_readreg.exit41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

do.end:                                           ; preds = %stv0288_readreg.exit41
  call void @__sanitizer_cov_trace_pc() #7
  %conv13 = zext i16 %cond10 to i32
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv13) #9
  br label %do.end16

do.end16:                                         ; preds = %do.end, %stv0288_readreg.exit41.do.end16_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %b0.i12 = alloca [1 x i8], align 1
  %b1.i13 = alloca [1 x i8], align 1
  %msg.i14 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %errmode = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %errmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %errmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #5
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 38, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #5
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.stv0288_readreg.exit_crit_edge, label %do.body.i

if.end.stv0288_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit

do.body.i:                                        ; preds = %if.end
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_readreg.exit_crit_edge, label %do.end.i

do.body.i.stv0288_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 38, i32 noundef %call.i) #9
  br label %stv0288_readreg.exit

stv0288_readreg.exit:                             ; preds = %do.end.i, %do.body.i.stv0288_readreg.exit_crit_edge, %if.end.stv0288_readreg.exit_crit_edge
  %24 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #5
  %conv = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i12) #5
  %26 = ptrtoint ptr %b0.i12 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 39, ptr %b0.i12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i13) #5
  %27 = ptrtoint ptr %b1.i13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %b1.i13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i14) #5
  %28 = getelementptr inbounds i8, ptr %msg.i14, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv.i16 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i16, ptr %msg.i14, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i17, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i19 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %b0.i12, ptr %buf.i19, align 4
  %arrayinit.element.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1
  %38 = load i8, ptr %31, align 4
  %conv5.i21 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i20 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv5.i21, ptr %arrayinit.element.i20, align 4
  %flags6.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 1
  %40 = ptrtoint ptr %flags6.i22 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags6.i22, align 2
  %len7.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 2
  %41 = ptrtoint ptr %len7.i23 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len7.i23, align 4
  %buf8.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 3
  %42 = ptrtoint ptr %buf8.i24 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %b1.i13, ptr %buf8.i24, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i25 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i14, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i25)
  %cmp.not.i26 = icmp eq i32 %call.i25, 2
  br i1 %cmp.not.i26, label %stv0288_readreg.exit.stv0288_readreg.exit31_crit_edge, label %do.body.i28

stv0288_readreg.exit.stv0288_readreg.exit31_crit_edge: ; preds = %stv0288_readreg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit31

do.body.i28:                                      ; preds = %stv0288_readreg.exit
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i27 = icmp eq i32 %45, 0
  br i1 %tobool.not.i27, label %do.body.i28.stv0288_readreg.exit31_crit_edge, label %do.end.i30

do.body.i28.stv0288_readreg.exit31_crit_edge:     ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_readreg.exit31

do.end.i30:                                       ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 39, i32 noundef %call.i25) #9
  br label %stv0288_readreg.exit31

stv0288_readreg.exit31:                           ; preds = %do.end.i30, %do.body.i28.stv0288_readreg.exit31_crit_edge, %stv0288_readreg.exit.stv0288_readreg.exit31_crit_edge
  %46 = ptrtoint ptr %b1.i13 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b1.i13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i14) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i13) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i12) #5
  %conv2 = zext i8 %47 to i32
  %or = or i32 %shl, %conv2
  %48 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or, ptr %ucblocks, align 4
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  br i1 %tobool.not, label %stv0288_readreg.exit31.cleanup_crit_edge, label %do.end

stv0288_readreg.exit31.cleanup_crit_edge:         ; preds = %stv0288_readreg.exit31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %stv0288_readreg.exit31
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %or) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %stv0288_readreg.exit31.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %m) #0 align 64 {
entry:
  %buf.i35 = alloca [2 x i8], align 1
  %msg.i36 = alloca %struct.i2c_msg, align 4
  %buf.i20 = alloca [2 x i8], align 1
  %msg.i21 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 9, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf1.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end3.stv0288_writeregI.exit_crit_edge, label %do.body.i

do.end3.stv0288_writeregI.exit_crit_edge:         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.body.i:                                        ; preds = %do.end3
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0288_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 9, i32 noundef 0, i32 noundef %call.i) #9
  br label %stv0288_writeregI.exit

stv0288_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0288_writeregI.exit_crit_edge, %do.end3.stv0288_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  call void @msleep(i32 noundef 30) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i20) #5
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i20, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i20 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %buf.i20, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 18, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21) #5
  %21 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196607, ptr %21, align 4
  %23 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %conv.i23 = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i23, ptr %msg.i21, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i24, align 2
  %buf1.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %29 = ptrtoint ptr %buf1.i26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i20, ptr %buf1.i26, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i27 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i21, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i27)
  %cmp.not.i28 = icmp eq i32 %call.i27, 1
  br i1 %cmp.not.i28, label %stv0288_writeregI.exit.stv0288_writeregI.exit34_crit_edge, label %do.body.i30

stv0288_writeregI.exit.stv0288_writeregI.exit34_crit_edge: ; preds = %stv0288_writeregI.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit34

do.body.i30:                                      ; preds = %stv0288_writeregI.exit
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i29 = icmp eq i32 %32, 0
  br i1 %tobool.not.i29, label %do.body.i30.stv0288_writeregI.exit34_crit_edge, label %do.end.i32

do.body.i30.stv0288_writeregI.exit34_crit_edge:   ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit34

do.end.i32:                                       ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef 18, i32 noundef %call.i27) #9
  br label %stv0288_writeregI.exit34

stv0288_writeregI.exit34:                         ; preds = %do.end.i32, %do.body.i30.stv0288_writeregI.exit34_crit_edge, %stv0288_writeregI.exit.stv0288_writeregI.exit34_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i20) #5
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %m, i32 0, i32 1
  %33 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp55.not = icmp eq i8 %34, 0
  br i1 %cmp55.not, label %stv0288_writeregI.exit34.for.end_crit_edge, label %for.body.lr.ph

stv0288_writeregI.exit34.for.end_crit_edge:       ; preds = %stv0288_writeregI.exit34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %stv0288_writeregI.exit34
  %35 = getelementptr inbounds [2 x i8], ptr %buf.i35, i32 0, i32 1
  %36 = getelementptr inbounds i8, ptr %msg.i36, i32 4
  %flags.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 1
  %buf1.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x i8], ptr %m, i32 0, i32 %i.056
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i35) #5
  %39 = ptrtoint ptr %buf.i35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 6, ptr %buf.i35, align 1
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %38, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i36) #5
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %36, align 4
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv.i38 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i36 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i38, ptr %msg.i36, align 4
  %47 = ptrtoint ptr %flags.i39 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i39, align 2
  store i16 2, ptr %36, align 4
  %48 = ptrtoint ptr %buf1.i41 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i35, ptr %buf1.i41, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call.i42 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i36, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i42)
  %cmp.not.i43 = icmp eq i32 %call.i42, 1
  br i1 %cmp.not.i43, label %for.inc, label %do.body.i45

do.body.i45:                                      ; preds = %for.body
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i44 = icmp eq i32 %51, 0
  br i1 %tobool.not.i44, label %do.body.i45.stv0288_writeregI.exit49.thread_crit_edge, label %do.end.i47

do.body.i45.stv0288_writeregI.exit49.thread_crit_edge: ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit49.thread

do.end.i47:                                       ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i = zext i8 %38 to i32
  %call7.i46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 6, i32 noundef %conv6.i, i32 noundef %call.i42) #9
  br label %stv0288_writeregI.exit49.thread

stv0288_writeregI.exit49.thread:                  ; preds = %do.end.i47, %do.body.i45.stv0288_writeregI.exit49.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35) #5
  br label %cleanup

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35) #5
  %inc = add nuw nsw i32 %i.056, 1
  %52 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %53 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast = zext i8 %53 to i32
  %phi.bo = mul nuw nsw i32 %phi.cast, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %stv0288_writeregI.exit34.for.end_crit_edge
  %.lcssa53 = phi i32 [ %phi.bo, %for.end.loopexit ], [ 0, %stv0288_writeregI.exit34.for.end_crit_edge ]
  call void @msleep(i32 noundef %.lcssa53) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %stv0288_writeregI.exit49.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -121, %stv0288_writeregI.exit49.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_send_diseqc_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %buf.i33 = alloca [2 x i8], align 1
  %msg.i34 = alloca %struct.i2c_msg, align 4
  %buf.i18 = alloca [2 x i8], align 1
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.30) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 3, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf1.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end7, label %do.body.i

do.body.i:                                        ; preds = %do.end3
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_writeregI.exit.thread_crit_edge, label %do.end.i

do.body.i.stv0288_writeregI.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef 3, i32 noundef %call.i) #9
  br label %stv0288_writeregI.exit.thread

stv0288_writeregI.exit.thread:                    ; preds = %do.end.i, %do.body.i.stv0288_writeregI.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %burst)
  %cmp = icmp ne i32 %burst, 0
  %conv = sext i1 %cmp to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i18) #5
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i18, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %buf.i18, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #5
  %21 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196607, ptr %21, align 4
  %23 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %conv.i21 = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i21, ptr %msg.i19, align 4
  %flags.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i22 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i22, align 2
  %buf1.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %29 = ptrtoint ptr %buf1.i24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i18, ptr %buf1.i24, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i25 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i19, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i25)
  %cmp.not.i26 = icmp eq i32 %call.i25, 1
  br i1 %cmp.not.i26, label %if.end11, label %do.body.i28

do.body.i28:                                      ; preds = %if.end7
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i27 = icmp eq i32 %32, 0
  br i1 %tobool.not.i27, label %do.body.i28.stv0288_writeregI.exit32.thread_crit_edge, label %do.end.i30

do.body.i28.stv0288_writeregI.exit32.thread_crit_edge: ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit32.thread

do.end.i30:                                       ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #7
  %conv6.i = zext i8 %conv to i32
  %call7.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 6, i32 noundef %conv6.i, i32 noundef %call.i25) #9
  br label %stv0288_writeregI.exit32.thread

stv0288_writeregI.exit32.thread:                  ; preds = %do.end.i30, %do.body.i28.stv0288_writeregI.exit32.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i18) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i18) #5
  call void @msleep(i32 noundef 15) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i33) #5
  %33 = getelementptr inbounds [2 x i8], ptr %buf.i33, i32 0, i32 1
  %34 = ptrtoint ptr %buf.i33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 5, ptr %buf.i33, align 1
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 18, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i34) #5
  %36 = getelementptr inbounds i8, ptr %msg.i34, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 196607, ptr %36, align 4
  %38 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 4
  %conv.i36 = zext i8 %41 to i16
  %42 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i36, ptr %msg.i34, align 4
  %flags.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i37, align 2
  %buf1.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 3
  %44 = ptrtoint ptr %buf1.i39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %buf.i33, ptr %buf1.i39, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i40 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i34, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i40)
  %cmp.not.i41 = icmp eq i32 %call.i40, 1
  br i1 %cmp.not.i41, label %48, label %do.body.i43

do.body.i43:                                      ; preds = %if.end11
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i42 = icmp eq i32 %47, 0
  br i1 %tobool.not.i42, label %do.body.i43.stv0288_writeregI.exit47.thread_crit_edge, label %do.end.i45

do.body.i43.stv0288_writeregI.exit47.thread_crit_edge: ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit47.thread

do.end.i45:                                       ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef 18, i32 noundef %call.i40) #9
  br label %stv0288_writeregI.exit47.thread

stv0288_writeregI.exit47.thread:                  ; preds = %do.end.i45, %do.body.i43.stv0288_writeregI.exit47.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i34) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i33) #5
  br label %cleanup

48:                                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i34) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i33) #5
  br label %cleanup

cleanup:                                          ; preds = %48, %stv0288_writeregI.exit47.thread, %stv0288_writeregI.exit32.thread, %stv0288_writeregI.exit.thread
  %retval.0 = phi i32 [ -121, %stv0288_writeregI.exit.thread ], [ -121, %stv0288_writeregI.exit32.thread ], [ 0, %48 ], [ -121, %stv0288_writeregI.exit47.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %buf.i7 = alloca [2 x i8], align 1
  %msg.i8 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %tone, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 5, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf1.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %stv0288_writeregI.exit, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_writeregI.exit.thread_crit_edge, label %do.end.i

do.body.i.stv0288_writeregI.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef 16, i32 noundef %call.i) #9
  br label %stv0288_writeregI.exit.thread

stv0288_writeregI.exit.thread:                    ; preds = %do.end.i, %do.body.i.stv0288_writeregI.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %cleanup

stv0288_writeregI.exit:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i7) #5
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i7, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 5, ptr %buf.i7, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 18, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i8) #5
  %21 = getelementptr inbounds i8, ptr %msg.i8, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196607, ptr %21, align 4
  %config.i9 = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %config.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i9, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %conv.i10 = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i8 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i10, ptr %msg.i8, align 4
  %flags.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i11, align 2
  %buf1.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 3
  %29 = ptrtoint ptr %buf1.i13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i7, ptr %buf1.i13, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i14 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i8, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14)
  %cmp.not.i15 = icmp eq i32 %call.i14, 1
  br i1 %cmp.not.i15, label %stv0288_writeregI.exit21, label %do.body.i17

do.body.i17:                                      ; preds = %sw.bb1
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i16 = icmp eq i32 %32, 0
  br i1 %tobool.not.i16, label %do.body.i17.stv0288_writeregI.exit21.thread_crit_edge, label %do.end.i19

do.body.i17.stv0288_writeregI.exit21.thread_crit_edge: ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit21.thread

do.end.i19:                                       ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 5, i32 noundef 18, i32 noundef %call.i14) #9
  br label %stv0288_writeregI.exit21.thread

stv0288_writeregI.exit21.thread:                  ; preds = %do.end.i19, %do.body.i17.stv0288_writeregI.exit21.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i8) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i7) #5
  br label %cleanup

stv0288_writeregI.exit21:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i8) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i7) #5
  br label %cleanup

cleanup:                                          ; preds = %stv0288_writeregI.exit21, %stv0288_writeregI.exit21.thread, %stv0288_writeregI.exit, %stv0288_writeregI.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -121, %stv0288_writeregI.exit.thread ], [ -121, %stv0288_writeregI.exit21.thread ], [ 0, %stv0288_writeregI.exit21 ], [ 0, %stv0288_writeregI.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_set_voltage(ptr nocapture noundef readnone %fe, i32 noundef %volt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %volt)
  %cmp = icmp eq i32 %volt, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %volt)
  %cmp2 = icmp eq i32 %volt, 1
  %cond = select i1 %cmp2, ptr @.str.34, ptr @.str.35
  %cond3 = select i1 %cmp, ptr @.str.33, ptr %cond
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond3) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv0288_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -75, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.stv0288_writeregI.exit_crit_edge, label %do.body.i

if.then.stv0288_writeregI.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.body.i:                                        ; preds = %if.then
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.stv0288_writeregI.exit_crit_edge, label %do.end.i

do.body.i.stv0288_writeregI.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef 181, i32 noundef %call.i) #9
  br label %stv0288_writeregI.exit

stv0288_writeregI.exit:                           ; preds = %do.end.i, %do.body.i.stv0288_writeregI.exit_crit_edge, %if.then.stv0288_writeregI.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #5
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %buf.i3, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 53, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #5
  %20 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %config.i5 = getelementptr inbounds %struct.stv0288_state, ptr %1, i32 0, i32 1
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
  %call.i10 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i4, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %if.else.stv0288_writeregI.exit17_crit_edge, label %do.body.i13

if.else.stv0288_writeregI.exit17_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit17

do.body.i13:                                      ; preds = %if.else
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i12 = icmp eq i32 %31, 0
  br i1 %tobool.not.i12, label %do.body.i13.stv0288_writeregI.exit17_crit_edge, label %do.end.i15

do.body.i13.stv0288_writeregI.exit17_crit_edge:   ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %stv0288_writeregI.exit17

do.end.i15:                                       ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef 53, i32 noundef %call.i10) #9
  br label %stv0288_writeregI.exit17

stv0288_writeregI.exit17:                         ; preds = %do.end.i15, %do.body.i13.stv0288_writeregI.exit17_crit_edge, %if.else.stv0288_writeregI.exit17_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #5
  br label %if.end

if.end:                                           ; preds = %stv0288_writeregI.exit17, %stv0288_writeregI.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !105, !106, !107, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 577, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @stv0288_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @stv0288_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_stv0288_attach, !7, !"__ksymtab_stv0288_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 594, i32 1}
!8 = !{ptr @__param_debug_legacy_dish_switch, !9, !"__param_debug_legacy_dish_switch", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 596, i32 1}
!10 = !{ptr @__UNIQUE_ID_debug_legacy_dish_switchtype290, !9, !"__UNIQUE_ID_debug_legacy_dish_switchtype290", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_debug_legacy_dish_switch291, !12, !"__UNIQUE_ID_debug_legacy_dish_switch291", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 597, i32 1}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 600, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype292, !14, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_debug293, !17, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 601, i32 1}
!18 = !{ptr @__UNIQUE_ID_description294, !19, !"__UNIQUE_ID_description294", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 603, i32 1}
!20 = !{ptr @__UNIQUE_ID_author295, !21, !"__UNIQUE_ID_author295", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 604, i32 1}
!22 = !{ptr @__UNIQUE_ID_file296, !23, !"__UNIQUE_ID_file296", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 605, i32 1}
!24 = !{ptr @__UNIQUE_ID_license297, !23, !"__UNIQUE_ID_license297", i1 false, i1 false}
!25 = !{ptr @debug, !26, !"debug", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 42, i32 12}
!27 = !{ptr @debug_legacy_dish_switch, !28, !"debug_legacy_dish_switch", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 43, i32 12}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 65, i32 3}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @stv0288_writeregI._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @stv0288_writeregI._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 103, i32 3}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @stv0288_readreg._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @stv0288_readreg._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @stv0288_ops, !40, !"stv0288_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 520, i32 38}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 331, i32 2}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @stv0288_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @stv0288_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @stv0288_inittab, !47, !"stv0288_inittab", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 205, i32 11}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 447, i32 2}
!50 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @stv0288_set_frontend._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @stv0288_set_frontend._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 450, i32 3}
!55 = !{ptr @stv0288_set_frontend._entry.11, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @stv0288_set_frontend._entry_ptr.13, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 138, i32 2}
!59 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @stv0288_set_symbolrate._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @stv0288_set_symbolrate._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 361, i32 2}
!64 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @stv0288_read_status._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @stv0288_read_status._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 370, i32 3}
!69 = !{ptr @stv0288_read_status._entry.18, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @stv0288_read_status._entry_ptr.20, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 384, i32 2}
!73 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @stv0288_read_ber._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @stv0288_read_ber._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 399, i32 2}
!78 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @stv0288_read_signal_strength._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @stv0288_read_signal_strength._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 420, i32 2}
!83 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @stv0288_read_snr._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @stv0288_read_snr._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 433, i32 2}
!88 = !{ptr @stv0288_read_ucblocks._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @stv0288_read_ucblocks._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 150, i32 2}
!92 = !{ptr @.str.29, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @stv0288_send_diseqc_msg._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @stv0288_send_diseqc_msg._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 169, i32 2}
!97 = !{ptr @stv0288_send_diseqc_burst._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @stv0288_send_diseqc_burst._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/stv0288.c", i32 317, i32 2}
!101 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @stv0288_set_voltage._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @stv0288_set_voltage._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @__param_str_debug_legacy_dish_switch, !9, !"__param_str_debug_legacy_dish_switch", i1 false, i1 false}
!108 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
