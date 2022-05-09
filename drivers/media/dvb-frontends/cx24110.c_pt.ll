; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cx24110.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx24110_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cx24110_attach\09\09\09\09"
module asm "\09.long\09__crc_cx24110_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24110_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24110_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24110_attach:\09\09\09\09\09"
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
%struct.anon.91 = type { i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx24110_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@cx24110_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24110 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 29500000, i32 1000000, i32 45000000, i32 0, i32 1073743535 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @cx24110_release, ptr null, ptr @cx24110_initfe, ptr null, ptr null, ptr null, ptr @_cx24110_pll_write, ptr null, ptr null, ptr @cx24110_set_frontend, ptr null, ptr @cx24110_get_frontend, ptr @cx24110_read_status, ptr @cx24110_read_ber, ptr @cx24110_read_signal_strength, ptr @cx24110_read_snr, ptr @cx24110_read_ucblocks, ptr null, ptr @cx24110_send_diseqc_msg, ptr null, ptr @cx24110_diseqc_send_burst, ptr @cx24110_set_tone, ptr @cx24110_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [14 x i8] c"cx24110.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"cx24110.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"cx24110.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [62 x i8] c"cx24110.description=Conexant CX24110 DVB-S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [30 x i8] c"cx24110.author=Peter Hettkamp\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"cx24110.file=drivers/media/dvb-frontends/cx24110\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"cx24110.license=GPL\00", section ".modinfo", align 1
@__kstrtab_cx24110_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24110_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24110_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24110_attach to i32), ptr @__kstrtab_cx24110_attach, ptr @__kstrtabns_cx24110_attach }, section "___ksymtab+cx24110_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx24110_initfe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017cx24110: %s: init chip\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24110_initfe\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/cx24110.c\00", [58 x i8] zeroinitializer }, align 32
@cx24110_initfe._entry_ptr = internal global ptr @cx24110_initfe._entry, section ".printk_index", align 4
@cx24110_regdata = internal constant { [38 x %struct.anon.91], [52 x i8] } { [38 x %struct.anon.91] [%struct.anon.91 { i8 9, i8 1 }, %struct.anon.91 { i8 9, i8 0 }, %struct.anon.91 { i8 1, i8 -24 }, %struct.anon.91 { i8 2, i8 23 }, %struct.anon.91 { i8 3, i8 41 }, %struct.anon.91 { i8 5, i8 3 }, %struct.anon.91 { i8 6, i8 -91 }, %struct.anon.91 { i8 7, i8 1 }, %struct.anon.91 { i8 10, i8 0 }, %struct.anon.91 { i8 11, i8 1 }, %struct.anon.91 { i8 12, i8 17 }, %struct.anon.91 { i8 13, i8 111 }, %struct.anon.91 { i8 16, i8 64 }, %struct.anon.91 { i8 21, i8 -1 }, %struct.anon.91 { i8 22, i8 0 }, %struct.anon.91 { i8 23, i8 4 }, %struct.anon.91 { i8 24, i8 -82 }, %struct.anon.91 { i8 33, i8 16 }, %struct.anon.91 { i8 35, i8 24 }, %struct.anon.91 { i8 36, i8 36 }, %struct.anon.91 { i8 53, i8 64 }, %struct.anon.91 { i8 54, i8 -1 }, %struct.anon.91 { i8 55, i8 0 }, %struct.anon.91 { i8 56, i8 7 }, %struct.anon.91 { i8 65, i8 0 }, %struct.anon.91 { i8 66, i8 0 }, %struct.anon.91 { i8 67, i8 0 }, %struct.anon.91 { i8 86, i8 77 }, %struct.anon.91 { i8 87, i8 0 }, %struct.anon.91 { i8 97, i8 -107 }, %struct.anon.91 { i8 98, i8 5 }, %struct.anon.91 { i8 99, i8 0 }, %struct.anon.91 { i8 100, i8 32 }, %struct.anon.91 { i8 109, i8 48 }, %struct.anon.91 { i8 112, i8 21 }, %struct.anon.91 { i8 115, i8 0 }, %struct.anon.91 { i8 116, i8 0 }, %struct.anon.91 { i8 117, i8 0 }], [52 x i8] zeroinitializer }, align 32
@cx24110_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017cx24110: %s: writereg error (err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24110_writereg\00", [47 x i8] zeroinitializer }, align 32
@cx24110_writereg._entry_ptr = internal global ptr @cx24110_writereg._entry, section ".printk_index", align 4
@cx24110_set_fec.rate = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 1, i32 2, i32 3, i32 5, i32 7, i32 -1, i32 0, i32 0], [60 x i8] zeroinitializer }, align 32
@cx24110_set_fec.g1 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 1, i32 2, i32 5, i32 21, i32 69, i32 -1, i32 0, i32 0], [60 x i8] zeroinitializer }, align 32
@cx24110_set_fec.g2 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -1, i32 1, i32 3, i32 6, i32 26, i32 122, i32 -1, i32 0, i32 0], [60 x i8] zeroinitializer }, align 32
@cx24110_set_symbolrate.bands = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 5000000, i32 15000000, i32 45499500], [20 x i8] zeroinitializer }, align 32
@cx24110_set_symbolrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017cx24110: cx24110 debug: entering %s(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx24110_set_symbolrate\00", [41 x i8] zeroinitializer }, align 32
@cx24110_set_symbolrate._entry_ptr = internal global ptr @cx24110_set_symbolrate._entry, section ".printk_index", align 4
@cx24110_set_symbolrate._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017cx24110: cx24110 debug: fclk %d Hz\0A\00", [58 x i8] zeroinitializer }, align 32
@cx24110_set_symbolrate._entry_ptr.9 = internal global ptr @cx24110_set_symbolrate._entry.7, section ".printk_index", align 4
@cx24110_set_symbolrate._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017cx24110: srate= %d (range %d, up to %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@cx24110_set_symbolrate._entry_ptr.12 = internal global ptr @cx24110_set_symbolrate._entry.10, section ".printk_index", align 4
@cx24110_set_symbolrate._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017cx24110: fclk = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cx24110_set_symbolrate._entry_ptr.15 = internal global ptr @cx24110_set_symbolrate._entry.13, section ".printk_index", align 4
@cx24110_set_symbolrate._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017cx24110: ratio= %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@cx24110_set_symbolrate._entry_ptr.18 = internal global ptr @cx24110_set_symbolrate._entry.16, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@switch.table.cx24110_get_frontend = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 177732, i32 236976, i32 315968], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 90, i64 105]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"cx24110_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 615, i32 38 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 34, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 347, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"cx24110_regdata\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 40, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 110, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 170, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant [3 x i8] c"g1\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 171, i32 19 }
@___asan_gen_.59 = private unnamed_addr constant [3 x i8] c"g2\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 172, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"bands\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 233, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 236, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 265, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 287, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 288, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [41 x i8] c"../drivers/media/dvb-frontends/cx24110.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 289, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [34 x i8] c"switch.table.cx24110_get_frontend\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_cx24110_attach, ptr @__param_debug, ptr @cx24110_initfe._entry, ptr @cx24110_initfe._entry_ptr, ptr @cx24110_set_symbolrate._entry, ptr @cx24110_set_symbolrate._entry.10, ptr @cx24110_set_symbolrate._entry.13, ptr @cx24110_set_symbolrate._entry.16, ptr @cx24110_set_symbolrate._entry.7, ptr @cx24110_set_symbolrate._entry_ptr, ptr @cx24110_set_symbolrate._entry_ptr.12, ptr @cx24110_set_symbolrate._entry_ptr.15, ptr @cx24110_set_symbolrate._entry_ptr.18, ptr @cx24110_set_symbolrate._entry_ptr.9, ptr @cx24110_writereg._entry, ptr @cx24110_writereg._entry_ptr, ptr @cx24110_ops, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cx24110_regdata, ptr @.str.3, ptr @.str.4, ptr @cx24110_set_fec.rate, ptr @cx24110_set_fec.g1, ptr @cx24110_set_fec.g2, ptr @cx24110_set_symbolrate.bands, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @switch.table.cx24110_get_frontend], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_initfe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_regdata to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_set_fec.rate to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_set_fec.g1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_set_fec.g2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_set_symbolrate.bands to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_set_symbolrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_set_symbolrate._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_set_symbolrate._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_set_symbolrate._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24110_set_symbolrate._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx24110_get_frontend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx24110_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1060) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.cx24110_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %lastber = getelementptr inbounds %struct.cx24110_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %lastber to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %lastber, align 8
  %lastbler = getelementptr inbounds %struct.cx24110_state, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %lastbler to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %lastbler, align 4
  %lastesn0 = getelementptr inbounds %struct.cx24110_state, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %lastesn0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %lastesn0, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %6 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %7 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config, align 1
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
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
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cx24110_readreg.exit_crit_edge

if.end.cx24110_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %21 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %if.end.cx24110_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %if.end.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %22 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %cx24110_readreg.exit.error_crit_edge [
    i32 90, label %cx24110_readreg.exit.if.end7_crit_edge
    i32 105, label %cx24110_readreg.exit.if.end7_crit_edge23
  ]

cx24110_readreg.exit.if.end7_crit_edge23:         ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

cx24110_readreg.exit.if.end7_crit_edge:           ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

cx24110_readreg.exit.error_crit_edge:             ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end7:                                          ; preds = %cx24110_readreg.exit.if.end7_crit_edge, %cx24110_readreg.exit.if.end7_crit_edge23
  %frontend = getelementptr inbounds %struct.cx24110_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.cx24110_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %23 = call ptr @memcpy(ptr %ops, ptr @cx24110_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.cx24110_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %cx24110_readreg.exit.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end7
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end7 ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx24110_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @cx24110_initfe(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cx24110_writereg.exit.for.body_crit_edge, %do.end3
  %i.010 = phi i32 [ 0, %do.end3 ], [ %inc, %cx24110_writereg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [38 x %struct.anon.91], ptr @cx24110_regdata, i32 0, i32 %i.010
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %data = getelementptr [38 x %struct.anon.91], ptr @cx24110_regdata, i32 0, i32 %i.010, i32 1
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 1
  %conv5 = zext i8 %8 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %buf.i, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %8, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %4, align 4
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv2.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv2.i, ptr %msg.i, align 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %4, align 4
  %18 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i, ptr %buf3.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.body.cx24110_writereg.exit_crit_edge, label %do.body.i

for.body.cx24110_writereg.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.body.i:                                        ; preds = %for.body
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.cx24110_writereg.exit_crit_edge, label %do.end.i

do.body.i.cx24110_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i, i32 noundef %conv, i32 noundef %conv5) #10
  br label %cx24110_writereg.exit

cx24110_writereg.exit:                            ; preds = %do.end.i, %do.body.i.cx24110_writereg.exit_crit_edge, %for.body.cx24110_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 38
  br i1 %exitcond.not, label %for.end, label %cx24110_writereg.exit.for.body_crit_edge

cx24110_writereg.exit.for.body_crit_edge:         ; preds = %cx24110_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cx24110_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_cx24110_pll_write(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %buf.i202 = alloca [2 x i8], align 1
  %msg.i203 = alloca %struct.i2c_msg, align 4
  %buf.i187 = alloca [2 x i8], align 1
  %msg.i188 = alloca %struct.i2c_msg, align 4
  %b0.i168 = alloca [1 x i8], align 1
  %b1.i169 = alloca [1 x i8], align 1
  %msg.i170 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i153 = alloca [2 x i8], align 1
  %msg.i154 = alloca %struct.i2c_msg, align 4
  %b0.i134 = alloca [1 x i8], align 1
  %b1.i135 = alloca [1 x i8], align 1
  %msg.i136 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i119 = alloca [2 x i8], align 1
  %msg.i120 = alloca %struct.i2c_msg, align 4
  %b0.i100 = alloca [1 x i8], align 1
  %b1.i101 = alloca [1 x i8], align 1
  %msg.i102 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i85 = alloca [2 x i8], align 1
  %msg.i86 = alloca %struct.i2c_msg, align 4
  %buf.i70 = alloca [2 x i8], align 1
  %msg.i71 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i62 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i47 = alloca [2 x i8], align 1
  %msg.i48 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp.not = icmp eq i32 %len, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 109, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 48, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.cx24110_writereg.exit_crit_edge, label %do.body.i

if.end.cx24110_writereg.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.body.i:                                        ; preds = %if.end
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.cx24110_writereg.exit_crit_edge, label %do.end.i

do.body.i.cx24110_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i, i32 noundef 109, i32 noundef 48) #10
  br label %cx24110_writereg.exit

cx24110_writereg.exit:                            ; preds = %do.end.i, %do.body.i.cx24110_writereg.exit_crit_edge, %if.end.cx24110_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #6
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 112, ptr %buf.i47, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 21, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i48) #6
  %20 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %22 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv2.i50 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv2.i50, ptr %msg.i48, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i51, align 2
  %buf3.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %28 = ptrtoint ptr %buf3.i53 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i47, ptr %buf3.i53, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i54 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i48, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i54)
  %cmp.not.i55 = icmp eq i32 %call.i54, 1
  br i1 %cmp.not.i55, label %cx24110_writereg.exit.cx24110_writereg.exit61_crit_edge, label %do.body.i57

cx24110_writereg.exit.cx24110_writereg.exit61_crit_edge: ; preds = %cx24110_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit61

do.body.i57:                                      ; preds = %cx24110_writereg.exit
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i56 = icmp eq i32 %31, 0
  br i1 %tobool.not.i56, label %do.body.i57.cx24110_writereg.exit61_crit_edge, label %do.end.i59

do.body.i57.cx24110_writereg.exit61_crit_edge:    ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit61

do.end.i59:                                       ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i54, i32 noundef 112, i32 noundef 21) #10
  br label %cx24110_writereg.exit61

cx24110_writereg.exit61:                          ; preds = %do.end.i59, %do.body.i57.cx24110_writereg.exit61_crit_edge, %cx24110_writereg.exit.cx24110_writereg.exit61_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i48) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #6
  %32 = getelementptr inbounds i8, ptr %msg.i62, i32 4
  %flags.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 1
  %buf.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 1
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 1, i32 1
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 1, i32 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 1, i32 3
  %33 = getelementptr inbounds [2 x i8], ptr %buf.i70, i32 0, i32 1
  %34 = getelementptr inbounds i8, ptr %msg.i71, i32 4
  %flags.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i71, i32 0, i32 1
  %buf3.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i71, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %cx24110_writereg.exit84, %cx24110_writereg.exit61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %35 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 109, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %36 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i62) #6
  %37 = call ptr @memset(ptr %32, i32 255, i32 16)
  %38 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %conv.i = zext i8 %41 to i16
  %42 = ptrtoint ptr %msg.i62 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %msg.i62, align 4
  %43 = ptrtoint ptr %flags.i64 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i64, align 2
  %44 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %32, align 4
  %45 = ptrtoint ptr %buf.i66 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %b0.i, ptr %buf.i66, align 4
  %46 = load i8, ptr %39, align 1
  %conv5.i = zext i8 %46 to i16
  %47 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %48 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %flags6.i, align 2
  %49 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %len7.i, align 4
  %50 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %b1.i, ptr %buf8.i, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call.i67 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i62, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i67)
  %cmp.not.i68 = icmp eq i32 %call.i67, 2
  br i1 %cmp.not.i68, label %if.end.i, label %while.cond.cx24110_readreg.exit_crit_edge

while.cond.cx24110_readreg.exit_crit_edge:        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %54 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %while.cond.cx24110_readreg.exit_crit_edge
  %retval.0.i69 = phi i32 [ %conv12.i, %if.end.i ], [ %call.i67, %while.cond.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i62) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %cx24110_readreg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i70) #6
  %55 = ptrtoint ptr %buf.i70 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 114, ptr %buf.i70, align 1
  %56 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i71) #6
  %57 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %34, align 4
  %58 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 1
  %conv2.i73 = zext i8 %61 to i16
  %62 = ptrtoint ptr %msg.i71 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv2.i73, ptr %msg.i71, align 4
  %63 = ptrtoint ptr %flags.i74 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i74, align 2
  store i16 2, ptr %34, align 4
  %64 = ptrtoint ptr %buf3.i76 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buf.i70, ptr %buf3.i76, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call.i77 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i71, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i77)
  %cmp.not.i78 = icmp eq i32 %call.i77, 1
  br i1 %cmp.not.i78, label %while.body.cx24110_writereg.exit84_crit_edge, label %do.body.i80

while.body.cx24110_writereg.exit84_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit84

do.body.i80:                                      ; preds = %while.body
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i79 = icmp eq i32 %67, 0
  br i1 %tobool.not.i79, label %do.body.i80.cx24110_writereg.exit84_crit_edge, label %do.end.i82

do.body.i80.cx24110_writereg.exit84_crit_edge:    ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit84

do.end.i82:                                       ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i77, i32 noundef 114, i32 noundef 0) #10
  br label %cx24110_writereg.exit84

cx24110_writereg.exit84:                          ; preds = %do.end.i82, %do.body.i80.cx24110_writereg.exit84_crit_edge, %while.body.cx24110_writereg.exit84_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i71) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i70) #6
  br label %while.cond

while.end:                                        ; preds = %cx24110_readreg.exit
  %68 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %buf, align 1
  %conv = zext i8 %69 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i85) #6
  %70 = getelementptr inbounds [2 x i8], ptr %buf.i85, i32 0, i32 1
  %71 = ptrtoint ptr %buf.i85 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 114, ptr %buf.i85, align 1
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %69, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i86) #6
  %73 = getelementptr inbounds i8, ptr %msg.i86, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 196607, ptr %73, align 4
  %75 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %config.i, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  %conv2.i88 = zext i8 %78 to i16
  %79 = ptrtoint ptr %msg.i86 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv2.i88, ptr %msg.i86, align 4
  %flags.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i86, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i89 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i89, align 2
  %buf3.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i86, i32 0, i32 3
  %81 = ptrtoint ptr %buf3.i91 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %buf.i85, ptr %buf3.i91, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %call.i92 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i86, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i92)
  %cmp.not.i93 = icmp eq i32 %call.i92, 1
  br i1 %cmp.not.i93, label %while.end.cx24110_writereg.exit99_crit_edge, label %do.body.i95

while.end.cx24110_writereg.exit99_crit_edge:      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit99

do.body.i95:                                      ; preds = %while.end
  %84 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i94 = icmp eq i32 %84, 0
  br i1 %tobool.not.i94, label %do.body.i95.cx24110_writereg.exit99_crit_edge, label %do.end.i97

do.body.i95.cx24110_writereg.exit99_crit_edge:    ; preds = %do.body.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit99

do.end.i97:                                       ; preds = %do.body.i95
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i92, i32 noundef 114, i32 noundef %conv) #10
  br label %cx24110_writereg.exit99

cx24110_writereg.exit99:                          ; preds = %do.end.i97, %do.body.i95.cx24110_writereg.exit99_crit_edge, %while.end.cx24110_writereg.exit99_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i86) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i85) #6
  %85 = getelementptr inbounds i8, ptr %msg.i102, i32 4
  %flags.i105 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 0, i32 1
  %buf.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 0, i32 3
  %arrayinit.element.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 1
  %flags6.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 1, i32 1
  %len7.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 1, i32 2
  %buf8.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 1, i32 3
  br label %while.cond5

while.cond5:                                      ; preds = %cx24110_readreg.exit118.while.cond5_crit_edge, %cx24110_writereg.exit99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i100) #6
  %86 = ptrtoint ptr %b0.i100 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 109, ptr %b0.i100, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i101) #6
  %87 = ptrtoint ptr %b1.i101 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %b1.i101, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i102) #6
  %88 = call ptr @memset(ptr %85, i32 255, i32 16)
  %89 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %config.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %90, align 1
  %conv.i104 = zext i8 %92 to i16
  %93 = ptrtoint ptr %msg.i102 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.i104, ptr %msg.i102, align 4
  %94 = ptrtoint ptr %flags.i105 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %flags.i105, align 2
  %95 = ptrtoint ptr %85 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %85, align 4
  %96 = ptrtoint ptr %buf.i107 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %b0.i100, ptr %buf.i107, align 4
  %97 = load i8, ptr %90, align 1
  %conv5.i109 = zext i8 %97 to i16
  %98 = ptrtoint ptr %arrayinit.element.i108 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv5.i109, ptr %arrayinit.element.i108, align 4
  %99 = ptrtoint ptr %flags6.i110 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 1, ptr %flags6.i110, align 2
  %100 = ptrtoint ptr %len7.i111 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 1, ptr %len7.i111, align 4
  %101 = ptrtoint ptr %buf8.i112 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %b1.i101, ptr %buf8.i112, align 4
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %call.i113 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msg.i102, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i113)
  %cmp.not.i114 = icmp eq i32 %call.i113, 2
  br i1 %cmp.not.i114, label %if.end.i116, label %while.cond5.cx24110_readreg.exit118_crit_edge

while.cond5.cx24110_readreg.exit118_crit_edge:    ; preds = %while.cond5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit118

if.end.i116:                                      ; preds = %while.cond5
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %b1.i101 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %b1.i101, align 1
  %conv12.i115 = zext i8 %105 to i32
  br label %cx24110_readreg.exit118

cx24110_readreg.exit118:                          ; preds = %if.end.i116, %while.cond5.cx24110_readreg.exit118_crit_edge
  %retval.0.i117 = phi i32 [ %conv12.i115, %if.end.i116 ], [ %call.i113, %while.cond5.cx24110_readreg.exit118_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i102) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i101) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i100) #6
  %and7 = and i32 %retval.0.i117, 192
  %cmp8 = icmp eq i32 %and7, 128
  br i1 %cmp8, label %cx24110_readreg.exit118.while.cond5_crit_edge, label %while.end11

cx24110_readreg.exit118.while.cond5_crit_edge:    ; preds = %cx24110_readreg.exit118
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond5

while.end11:                                      ; preds = %cx24110_readreg.exit118
  %arrayidx12 = getelementptr i8, ptr %buf, i32 1
  %106 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %107 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i119) #6
  %108 = getelementptr inbounds [2 x i8], ptr %buf.i119, i32 0, i32 1
  %109 = ptrtoint ptr %buf.i119 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 114, ptr %buf.i119, align 1
  %110 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %107, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i120) #6
  %111 = getelementptr inbounds i8, ptr %msg.i120, i32 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 196607, ptr %111, align 4
  %113 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %config.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %114, align 1
  %conv2.i122 = zext i8 %116 to i16
  %117 = ptrtoint ptr %msg.i120 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv2.i122, ptr %msg.i120, align 4
  %flags.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120, i32 0, i32 1
  %118 = ptrtoint ptr %flags.i123 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %flags.i123, align 2
  %buf3.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i120, i32 0, i32 3
  %119 = ptrtoint ptr %buf3.i125 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %buf.i119, ptr %buf3.i125, align 4
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %call.i126 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %msg.i120, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i126)
  %cmp.not.i127 = icmp eq i32 %call.i126, 1
  br i1 %cmp.not.i127, label %while.end11.cx24110_writereg.exit133_crit_edge, label %do.body.i129

while.end11.cx24110_writereg.exit133_crit_edge:   ; preds = %while.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit133

do.body.i129:                                     ; preds = %while.end11
  %122 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i128 = icmp eq i32 %122, 0
  br i1 %tobool.not.i128, label %do.body.i129.cx24110_writereg.exit133_crit_edge, label %do.end.i131

do.body.i129.cx24110_writereg.exit133_crit_edge:  ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit133

do.end.i131:                                      ; preds = %do.body.i129
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i126, i32 noundef 114, i32 noundef %conv13) #10
  br label %cx24110_writereg.exit133

cx24110_writereg.exit133:                         ; preds = %do.end.i131, %do.body.i129.cx24110_writereg.exit133_crit_edge, %while.end11.cx24110_writereg.exit133_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i120) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i119) #6
  %123 = getelementptr inbounds i8, ptr %msg.i136, i32 4
  %flags.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136, i32 0, i32 1
  %buf.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136, i32 0, i32 3
  %arrayinit.element.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136, i32 1
  %flags6.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136, i32 1, i32 1
  %len7.i145 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136, i32 1, i32 2
  %buf8.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136, i32 1, i32 3
  br label %while.cond15

while.cond15:                                     ; preds = %cx24110_readreg.exit152.while.cond15_crit_edge, %cx24110_writereg.exit133
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i134) #6
  %124 = ptrtoint ptr %b0.i134 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 109, ptr %b0.i134, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i135) #6
  %125 = ptrtoint ptr %b1.i135 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %b1.i135, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i136) #6
  %126 = call ptr @memset(ptr %123, i32 255, i32 16)
  %127 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %config.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %128, align 1
  %conv.i138 = zext i8 %130 to i16
  %131 = ptrtoint ptr %msg.i136 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv.i138, ptr %msg.i136, align 4
  %132 = ptrtoint ptr %flags.i139 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %flags.i139, align 2
  %133 = ptrtoint ptr %123 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 1, ptr %123, align 4
  %134 = ptrtoint ptr %buf.i141 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %b0.i134, ptr %buf.i141, align 4
  %135 = load i8, ptr %128, align 1
  %conv5.i143 = zext i8 %135 to i16
  %136 = ptrtoint ptr %arrayinit.element.i142 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv5.i143, ptr %arrayinit.element.i142, align 4
  %137 = ptrtoint ptr %flags6.i144 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 1, ptr %flags6.i144, align 2
  %138 = ptrtoint ptr %len7.i145 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %len7.i145, align 4
  %139 = ptrtoint ptr %buf8.i146 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %b1.i135, ptr %buf8.i146, align 4
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %call.i147 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %msg.i136, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i147)
  %cmp.not.i148 = icmp eq i32 %call.i147, 2
  br i1 %cmp.not.i148, label %if.end.i150, label %while.cond15.cx24110_readreg.exit152_crit_edge

while.cond15.cx24110_readreg.exit152_crit_edge:   ; preds = %while.cond15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit152

if.end.i150:                                      ; preds = %while.cond15
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %b1.i135 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %b1.i135, align 1
  %conv12.i149 = zext i8 %143 to i32
  br label %cx24110_readreg.exit152

cx24110_readreg.exit152:                          ; preds = %if.end.i150, %while.cond15.cx24110_readreg.exit152_crit_edge
  %retval.0.i151 = phi i32 [ %conv12.i149, %if.end.i150 ], [ %call.i147, %while.cond15.cx24110_readreg.exit152_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i136) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i135) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i134) #6
  %and17 = and i32 %retval.0.i151, 192
  %cmp18 = icmp eq i32 %and17, 128
  br i1 %cmp18, label %cx24110_readreg.exit152.while.cond15_crit_edge, label %while.end21

cx24110_readreg.exit152.while.cond15_crit_edge:   ; preds = %cx24110_readreg.exit152
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond15

while.end21:                                      ; preds = %cx24110_readreg.exit152
  %arrayidx22 = getelementptr i8, ptr %buf, i32 2
  %144 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %145 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i153) #6
  %146 = getelementptr inbounds [2 x i8], ptr %buf.i153, i32 0, i32 1
  %147 = ptrtoint ptr %buf.i153 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 114, ptr %buf.i153, align 1
  %148 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %145, ptr %146, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i154) #6
  %149 = getelementptr inbounds i8, ptr %msg.i154, i32 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 196607, ptr %149, align 4
  %151 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %config.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %152, align 1
  %conv2.i156 = zext i8 %154 to i16
  %155 = ptrtoint ptr %msg.i154 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv2.i156, ptr %msg.i154, align 4
  %flags.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 0, i32 1
  %156 = ptrtoint ptr %flags.i157 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %flags.i157, align 2
  %buf3.i159 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 0, i32 3
  %157 = ptrtoint ptr %buf3.i159 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %buf.i153, ptr %buf3.i159, align 4
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 4
  %call.i160 = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %msg.i154, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i160)
  %cmp.not.i161 = icmp eq i32 %call.i160, 1
  br i1 %cmp.not.i161, label %while.end21.cx24110_writereg.exit167_crit_edge, label %do.body.i163

while.end21.cx24110_writereg.exit167_crit_edge:   ; preds = %while.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit167

do.body.i163:                                     ; preds = %while.end21
  %160 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.not.i162 = icmp eq i32 %160, 0
  br i1 %tobool.not.i162, label %do.body.i163.cx24110_writereg.exit167_crit_edge, label %do.end.i165

do.body.i163.cx24110_writereg.exit167_crit_edge:  ; preds = %do.body.i163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit167

do.end.i165:                                      ; preds = %do.body.i163
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i160, i32 noundef 114, i32 noundef %conv23) #10
  br label %cx24110_writereg.exit167

cx24110_writereg.exit167:                         ; preds = %do.end.i165, %do.body.i163.cx24110_writereg.exit167_crit_edge, %while.end21.cx24110_writereg.exit167_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i154) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i153) #6
  %161 = getelementptr inbounds i8, ptr %msg.i170, i32 4
  %flags.i173 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i170, i32 0, i32 1
  %buf.i175 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i170, i32 0, i32 3
  %arrayinit.element.i176 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i170, i32 1
  %flags6.i178 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i170, i32 1, i32 1
  %len7.i179 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i170, i32 1, i32 2
  %buf8.i180 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i170, i32 1, i32 3
  br label %while.cond25

while.cond25:                                     ; preds = %cx24110_readreg.exit186.while.cond25_crit_edge, %cx24110_writereg.exit167
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i168) #6
  %162 = ptrtoint ptr %b0.i168 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 109, ptr %b0.i168, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i169) #6
  %163 = ptrtoint ptr %b1.i169 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %b1.i169, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i170) #6
  %164 = call ptr @memset(ptr %161, i32 255, i32 16)
  %165 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %config.i, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %166, align 1
  %conv.i172 = zext i8 %168 to i16
  %169 = ptrtoint ptr %msg.i170 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv.i172, ptr %msg.i170, align 4
  %170 = ptrtoint ptr %flags.i173 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %flags.i173, align 2
  %171 = ptrtoint ptr %161 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 1, ptr %161, align 4
  %172 = ptrtoint ptr %buf.i175 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %b0.i168, ptr %buf.i175, align 4
  %173 = load i8, ptr %166, align 1
  %conv5.i177 = zext i8 %173 to i16
  %174 = ptrtoint ptr %arrayinit.element.i176 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv5.i177, ptr %arrayinit.element.i176, align 4
  %175 = ptrtoint ptr %flags6.i178 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 1, ptr %flags6.i178, align 2
  %176 = ptrtoint ptr %len7.i179 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 1, ptr %len7.i179, align 4
  %177 = ptrtoint ptr %buf8.i180 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %b1.i169, ptr %buf8.i180, align 4
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 4
  %call.i181 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %msg.i170, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i181)
  %cmp.not.i182 = icmp eq i32 %call.i181, 2
  br i1 %cmp.not.i182, label %if.end.i184, label %while.cond25.cx24110_readreg.exit186_crit_edge

while.cond25.cx24110_readreg.exit186_crit_edge:   ; preds = %while.cond25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit186

if.end.i184:                                      ; preds = %while.cond25
  call void @__sanitizer_cov_trace_pc() #8
  %180 = ptrtoint ptr %b1.i169 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %b1.i169, align 1
  %conv12.i183 = zext i8 %181 to i32
  br label %cx24110_readreg.exit186

cx24110_readreg.exit186:                          ; preds = %if.end.i184, %while.cond25.cx24110_readreg.exit186_crit_edge
  %retval.0.i185 = phi i32 [ %conv12.i183, %if.end.i184 ], [ %call.i181, %while.cond25.cx24110_readreg.exit186_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i170) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i169) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i168) #6
  %and27 = and i32 %retval.0.i185, 192
  %cmp28 = icmp eq i32 %and27, 128
  br i1 %cmp28, label %cx24110_readreg.exit186.while.cond25_crit_edge, label %while.end31

cx24110_readreg.exit186.while.cond25_crit_edge:   ; preds = %cx24110_readreg.exit186
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond25

while.end31:                                      ; preds = %cx24110_readreg.exit186
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i187) #6
  %182 = getelementptr inbounds [2 x i8], ptr %buf.i187, i32 0, i32 1
  %183 = ptrtoint ptr %buf.i187 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 109, ptr %buf.i187, align 1
  %184 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 50, ptr %182, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i188) #6
  %185 = getelementptr inbounds i8, ptr %msg.i188, i32 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 196607, ptr %185, align 4
  %187 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %config.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %188, align 1
  %conv2.i190 = zext i8 %190 to i16
  %191 = ptrtoint ptr %msg.i188 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv2.i190, ptr %msg.i188, align 4
  %flags.i191 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i188, i32 0, i32 1
  %192 = ptrtoint ptr %flags.i191 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 0, ptr %flags.i191, align 2
  %buf3.i193 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i188, i32 0, i32 3
  %193 = ptrtoint ptr %buf3.i193 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %buf.i187, ptr %buf3.i193, align 4
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 4
  %call.i194 = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %msg.i188, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i194)
  %cmp.not.i195 = icmp eq i32 %call.i194, 1
  br i1 %cmp.not.i195, label %while.end31.cx24110_writereg.exit201_crit_edge, label %do.body.i197

while.end31.cx24110_writereg.exit201_crit_edge:   ; preds = %while.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit201

do.body.i197:                                     ; preds = %while.end31
  %196 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.i196 = icmp eq i32 %196, 0
  br i1 %tobool.not.i196, label %do.body.i197.cx24110_writereg.exit201_crit_edge, label %do.end.i199

do.body.i197.cx24110_writereg.exit201_crit_edge:  ; preds = %do.body.i197
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit201

do.end.i199:                                      ; preds = %do.body.i197
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i194, i32 noundef 109, i32 noundef 50) #10
  br label %cx24110_writereg.exit201

cx24110_writereg.exit201:                         ; preds = %do.end.i199, %do.body.i197.cx24110_writereg.exit201_crit_edge, %while.end31.cx24110_writereg.exit201_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i188) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i187) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i202) #6
  %197 = getelementptr inbounds [2 x i8], ptr %buf.i202, i32 0, i32 1
  %198 = ptrtoint ptr %buf.i202 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 109, ptr %buf.i202, align 1
  %199 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 48, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i203) #6
  %200 = getelementptr inbounds i8, ptr %msg.i203, i32 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 196607, ptr %200, align 4
  %202 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %config.i, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %203, align 1
  %conv2.i205 = zext i8 %205 to i16
  %206 = ptrtoint ptr %msg.i203 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv2.i205, ptr %msg.i203, align 4
  %flags.i206 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i203, i32 0, i32 1
  %207 = ptrtoint ptr %flags.i206 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 0, ptr %flags.i206, align 2
  %buf3.i208 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i203, i32 0, i32 3
  %208 = ptrtoint ptr %buf3.i208 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %buf.i202, ptr %buf3.i208, align 4
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %1, align 4
  %call.i209 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %msg.i203, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i209)
  %cmp.not.i210 = icmp eq i32 %call.i209, 1
  br i1 %cmp.not.i210, label %cx24110_writereg.exit201.cx24110_writereg.exit216_crit_edge, label %do.body.i212

cx24110_writereg.exit201.cx24110_writereg.exit216_crit_edge: ; preds = %cx24110_writereg.exit201
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit216

do.body.i212:                                     ; preds = %cx24110_writereg.exit201
  %211 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool.not.i211 = icmp eq i32 %211, 0
  br i1 %tobool.not.i211, label %do.body.i212.cx24110_writereg.exit216_crit_edge, label %do.end.i214

do.body.i212.cx24110_writereg.exit216_crit_edge:  ; preds = %do.body.i212
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit216

do.end.i214:                                      ; preds = %do.body.i212
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i213 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i209, i32 noundef 109, i32 noundef 48) #10
  br label %cx24110_writereg.exit216

cx24110_writereg.exit216:                         ; preds = %do.end.i214, %do.body.i212.cx24110_writereg.exit216_crit_edge, %cx24110_writereg.exit201.cx24110_writereg.exit216_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i203) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i202) #6
  br label %cleanup

cleanup:                                          ; preds = %cx24110_writereg.exit216, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cx24110_writereg.exit216 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i149.i = alloca [2 x i8], align 1
  %msg.i150.i = alloca %struct.i2c_msg, align 4
  %buf.i133.i62 = alloca [2 x i8], align 1
  %msg.i134.i63 = alloca %struct.i2c_msg, align 4
  %buf.i117.i = alloca [2 x i8], align 1
  %msg.i118.i = alloca %struct.i2c_msg, align 4
  %buf.i102.i = alloca [2 x i8], align 1
  %msg.i103.i = alloca %struct.i2c_msg, align 4
  %buf.i86.i64 = alloca [2 x i8], align 1
  %msg.i87.i = alloca %struct.i2c_msg, align 4
  %buf.i71.i = alloca [2 x i8], align 1
  %msg.i72.i = alloca %struct.i2c_msg, align 4
  %buf.i55.i = alloca [2 x i8], align 1
  %msg.i56.i = alloca %struct.i2c_msg, align 4
  %buf.i40.i = alloca [2 x i8], align 1
  %msg.i41.i = alloca %struct.i2c_msg, align 4
  %buf.i24.i = alloca [2 x i8], align 1
  %msg.i25.i = alloca %struct.i2c_msg, align 4
  %buf.i9.i65 = alloca [2 x i8], align 1
  %msg.i10.i66 = alloca %struct.i2c_msg, align 4
  %buf.i1.i67 = alloca [2 x i8], align 1
  %msg.i2.i68 = alloca %struct.i2c_msg, align 4
  %b0.i.i69 = alloca [1 x i8], align 1
  %b1.i.i70 = alloca [1 x i8], align 1
  %msg.i.i71 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i245.i = alloca [2 x i8], align 1
  %msg.i246.i = alloca %struct.i2c_msg, align 4
  %buf.i229.i = alloca [2 x i8], align 1
  %msg.i230.i = alloca %struct.i2c_msg, align 4
  %buf.i213.i = alloca [2 x i8], align 1
  %msg.i214.i = alloca %struct.i2c_msg, align 4
  %b0.i194.i = alloca [1 x i8], align 1
  %b1.i195.i = alloca [1 x i8], align 1
  %msg.i196.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i178.i = alloca [2 x i8], align 1
  %msg.i179.i = alloca %struct.i2c_msg, align 4
  %b0.i159.i = alloca [1 x i8], align 1
  %b1.i160.i = alloca [1 x i8], align 1
  %msg.i161.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i143.i = alloca [2 x i8], align 1
  %msg.i144.i = alloca %struct.i2c_msg, align 4
  %b0.i124.i = alloca [1 x i8], align 1
  %b1.i125.i = alloca [1 x i8], align 1
  %msg.i126.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i109.i = alloca [2 x i8], align 1
  %msg.i110.i = alloca %struct.i2c_msg, align 4
  %buf.i94.i = alloca [2 x i8], align 1
  %msg.i95.i = alloca %struct.i2c_msg, align 4
  %buf.i78.i = alloca [2 x i8], align 1
  %msg.i79.i = alloca %struct.i2c_msg, align 4
  %b0.i59.i = alloca [1 x i8], align 1
  %b1.i60.i = alloca [1 x i8], align 1
  %msg.i61.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i43.i = alloca [2 x i8], align 1
  %msg.i44.i = alloca %struct.i2c_msg, align 4
  %b0.i24.i = alloca [1 x i8], align 1
  %b1.i25.i = alloca [1 x i8], align 1
  %msg.i26.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i9.i = alloca [2 x i8], align 1
  %msg.i10.i = alloca %struct.i2c_msg, align 4
  %buf.i1.i28 = alloca [2 x i8], align 1
  %msg.i2.i29 = alloca %struct.i2c_msg, align 4
  %b0.i.i30 = alloca [1 x i8], align 1
  %b1.i.i31 = alloca [1 x i8], align 1
  %msg.i.i32 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i203.i = alloca [2 x i8], align 1
  %msg.i204.i = alloca %struct.i2c_msg, align 4
  %b0.i184.i = alloca [1 x i8], align 1
  %b1.i185.i = alloca [1 x i8], align 1
  %msg.i186.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i168.i = alloca [2 x i8], align 1
  %msg.i169.i = alloca %struct.i2c_msg, align 4
  %b0.i149.i = alloca [1 x i8], align 1
  %b1.i150.i = alloca [1 x i8], align 1
  %msg.i151.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i133.i = alloca [2 x i8], align 1
  %msg.i134.i = alloca %struct.i2c_msg, align 4
  %b0.i114.i = alloca [1 x i8], align 1
  %b1.i115.i = alloca [1 x i8], align 1
  %msg.i116.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i98.i = alloca [2 x i8], align 1
  %msg.i99.i = alloca %struct.i2c_msg, align 4
  %b0.i79.i = alloca [1 x i8], align 1
  %b1.i80.i = alloca [1 x i8], align 1
  %msg.i81.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i63.i = alloca [2 x i8], align 1
  %msg.i64.i = alloca %struct.i2c_msg, align 4
  %b0.i44.i = alloca [1 x i8], align 1
  %b1.i45.i = alloca [1 x i8], align 1
  %msg.i46.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i28.i = alloca [2 x i8], align 1
  %msg.i29.i = alloca %struct.i2c_msg, align 4
  %b0.i9.i = alloca [1 x i8], align 1
  %b1.i10.i = alloca [1 x i8], align 1
  %msg.i11.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %2 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  %call = tail call i32 %3(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.then.if.end10_crit_edge, label %if.then6

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 %5(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inversion, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %7, label %if.end10.cx24110_set_inversion.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb7.i
    i32 2, label %sw.bb17.i
  ]

if.end10.cx24110_set_inversion.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_set_inversion.exit

sw.bb.i:                                          ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #6
  %9 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 55, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #6
  %10 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %config.i.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  %conv.i.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i, align 2
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %11, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %21 = load i8, ptr %14, align 1
  %conv5.i.i = zext i8 %21 to i16
  %22 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %23 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %24 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %25 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.i.cx24110_readreg.exit.i_crit_edge

sw.bb.i.cx24110_readreg.exit.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %b1.i.i, align 1
  %conv12.i.i = zext i8 %29 to i32
  br label %cx24110_readreg.exit.i

cx24110_readreg.exit.i:                           ; preds = %if.end.i.i, %sw.bb.i.cx24110_readreg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv12.i.i, %if.end.i.i ], [ %call.i.i, %sw.bb.i.cx24110_readreg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #6
  %or.i = or i32 %retval.0.i.i, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #6
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 55, ptr %buf.i1.i, align 1
  %conv1.i.i = trunc i32 %or.i to i8
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv1.i.i, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #6
  %33 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 196607, ptr %33, align 4
  %35 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %conv2.i.i = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv2.i.i, ptr %msg.i2.i, align 4
  %flags.i4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i4.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i4.i, align 2
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %41 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i1.i, ptr %buf3.i.i, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i6.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6.i)
  %cmp.not.i7.i = icmp eq i32 %call.i6.i, 1
  br i1 %cmp.not.i7.i, label %cx24110_readreg.exit.i.cx24110_writereg.exit.i_crit_edge, label %do.body.i.i

cx24110_readreg.exit.i.cx24110_writereg.exit.i_crit_edge: ; preds = %cx24110_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit.i

do.body.i.i:                                      ; preds = %cx24110_readreg.exit.i
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.cx24110_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.cx24110_writereg.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i6.i, i32 noundef 55, i32 noundef %or.i) #10
  br label %cx24110_writereg.exit.i

cx24110_writereg.exit.i:                          ; preds = %do.end.i.i, %do.body.i.i.cx24110_writereg.exit.i_crit_edge, %cx24110_readreg.exit.i.cx24110_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i9.i) #6
  %45 = ptrtoint ptr %b0.i9.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 5, ptr %b0.i9.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i10.i) #6
  %46 = ptrtoint ptr %b1.i10.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %b1.i10.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i11.i) #6
  %47 = getelementptr inbounds i8, ptr %msg.i11.i, i32 4
  %48 = call ptr @memset(ptr %47, i32 255, i32 16)
  %49 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %config.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %conv.i13.i = zext i8 %52 to i16
  %53 = ptrtoint ptr %msg.i11.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i13.i, ptr %msg.i11.i, align 4
  %flags.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11.i, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i14.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i14.i, align 2
  %55 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %47, align 4
  %buf.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11.i, i32 0, i32 3
  %56 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %b0.i9.i, ptr %buf.i16.i, align 4
  %arrayinit.element.i17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11.i, i32 1
  %57 = load i8, ptr %50, align 1
  %conv5.i18.i = zext i8 %57 to i16
  %58 = ptrtoint ptr %arrayinit.element.i17.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv5.i18.i, ptr %arrayinit.element.i17.i, align 4
  %flags6.i19.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11.i, i32 1, i32 1
  %59 = ptrtoint ptr %flags6.i19.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %flags6.i19.i, align 2
  %len7.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11.i, i32 1, i32 2
  %60 = ptrtoint ptr %len7.i20.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %len7.i20.i, align 4
  %buf8.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11.i, i32 1, i32 3
  %61 = ptrtoint ptr %buf8.i21.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %b1.i10.i, ptr %buf8.i21.i, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call.i22.i = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i11.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i22.i)
  %cmp.not.i23.i = icmp eq i32 %call.i22.i, 2
  br i1 %cmp.not.i23.i, label %if.end.i25.i, label %cx24110_writereg.exit.i.cx24110_readreg.exit27.i_crit_edge

cx24110_writereg.exit.i.cx24110_readreg.exit27.i_crit_edge: ; preds = %cx24110_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit27.i

if.end.i25.i:                                     ; preds = %cx24110_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %b1.i10.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %b1.i10.i, align 1
  %conv12.i24.i = zext i8 %65 to i32
  br label %cx24110_readreg.exit27.i

cx24110_readreg.exit27.i:                         ; preds = %if.end.i25.i, %cx24110_writereg.exit.i.cx24110_readreg.exit27.i_crit_edge
  %retval.0.i26.i = phi i32 [ %conv12.i24.i, %if.end.i25.i ], [ %call.i22.i, %cx24110_writereg.exit.i.cx24110_readreg.exit27.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i11.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i10.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i9.i) #6
  %and.i = and i32 %retval.0.i26.i, 247
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i28.i) #6
  %66 = getelementptr inbounds [2 x i8], ptr %buf.i28.i, i32 0, i32 1
  %67 = ptrtoint ptr %buf.i28.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 5, ptr %buf.i28.i, align 1
  %conv1.i30.i = trunc i32 %and.i to i8
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv1.i30.i, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i29.i) #6
  %69 = getelementptr inbounds i8, ptr %msg.i29.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %71 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  %conv2.i32.i = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i29.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv2.i32.i, ptr %msg.i29.i, align 4
  %flags.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29.i, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i33.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i33.i, align 2
  %buf3.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29.i, i32 0, i32 3
  %77 = ptrtoint ptr %buf3.i35.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i28.i, ptr %buf3.i35.i, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i36.i = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i29.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i36.i)
  %cmp.not.i37.i = icmp eq i32 %call.i36.i, 1
  br i1 %cmp.not.i37.i, label %cx24110_readreg.exit27.i.cx24110_writereg.exit43.i_crit_edge, label %do.body.i39.i

cx24110_readreg.exit27.i.cx24110_writereg.exit43.i_crit_edge: ; preds = %cx24110_readreg.exit27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit43.i

do.body.i39.i:                                    ; preds = %cx24110_readreg.exit27.i
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i38.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i38.i, label %do.body.i39.i.cx24110_writereg.exit43.i_crit_edge, label %do.end.i41.i

do.body.i39.i.cx24110_writereg.exit43.i_crit_edge: ; preds = %do.body.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit43.i

do.end.i41.i:                                     ; preds = %do.body.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i36.i, i32 noundef 5, i32 noundef %and.i) #10
  br label %cx24110_writereg.exit43.i

cx24110_writereg.exit43.i:                        ; preds = %do.end.i41.i, %do.body.i39.i.cx24110_writereg.exit43.i_crit_edge, %cx24110_readreg.exit27.i.cx24110_writereg.exit43.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i29.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i28.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i44.i) #6
  %81 = ptrtoint ptr %b0.i44.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 34, ptr %b0.i44.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i45.i) #6
  %82 = ptrtoint ptr %b1.i45.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %b1.i45.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i46.i) #6
  %83 = getelementptr inbounds i8, ptr %msg.i46.i, i32 4
  %84 = call ptr @memset(ptr %83, i32 255, i32 16)
  %85 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %config.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 1
  %conv.i48.i = zext i8 %88 to i16
  %89 = ptrtoint ptr %msg.i46.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i48.i, ptr %msg.i46.i, align 4
  %flags.i49.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46.i, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i49.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i49.i, align 2
  %91 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %83, align 4
  %buf.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46.i, i32 0, i32 3
  %92 = ptrtoint ptr %buf.i51.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %b0.i44.i, ptr %buf.i51.i, align 4
  %arrayinit.element.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46.i, i32 1
  %93 = load i8, ptr %86, align 1
  %conv5.i53.i = zext i8 %93 to i16
  %94 = ptrtoint ptr %arrayinit.element.i52.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv5.i53.i, ptr %arrayinit.element.i52.i, align 4
  %flags6.i54.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46.i, i32 1, i32 1
  %95 = ptrtoint ptr %flags6.i54.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %flags6.i54.i, align 2
  %len7.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46.i, i32 1, i32 2
  %96 = ptrtoint ptr %len7.i55.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 1, ptr %len7.i55.i, align 4
  %buf8.i56.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46.i, i32 1, i32 3
  %97 = ptrtoint ptr %buf8.i56.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %b1.i45.i, ptr %buf8.i56.i, align 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %call.i57.i = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i46.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i57.i)
  %cmp.not.i58.i = icmp eq i32 %call.i57.i, 2
  br i1 %cmp.not.i58.i, label %if.end.i60.i, label %cx24110_writereg.exit43.i.cx24110_readreg.exit62.i_crit_edge

cx24110_writereg.exit43.i.cx24110_readreg.exit62.i_crit_edge: ; preds = %cx24110_writereg.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit62.i

if.end.i60.i:                                     ; preds = %cx24110_writereg.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %b1.i45.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %b1.i45.i, align 1
  %conv12.i59.i = zext i8 %101 to i32
  br label %cx24110_readreg.exit62.i

cx24110_readreg.exit62.i:                         ; preds = %if.end.i60.i, %cx24110_writereg.exit43.i.cx24110_readreg.exit62.i_crit_edge
  %retval.0.i61.i = phi i32 [ %conv12.i59.i, %if.end.i60.i ], [ %call.i57.i, %cx24110_writereg.exit43.i.cx24110_readreg.exit62.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i46.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i45.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i44.i) #6
  %and5.i = and i32 %retval.0.i61.i, 239
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i63.i) #6
  %102 = getelementptr inbounds [2 x i8], ptr %buf.i63.i, i32 0, i32 1
  %103 = ptrtoint ptr %buf.i63.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 34, ptr %buf.i63.i, align 1
  %conv1.i65.i = trunc i32 %and5.i to i8
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv1.i65.i, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i64.i) #6
  %105 = getelementptr inbounds i8, ptr %msg.i64.i, i32 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 196607, ptr %105, align 4
  %107 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %config.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %108, align 1
  %conv2.i67.i = zext i8 %110 to i16
  %111 = ptrtoint ptr %msg.i64.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv2.i67.i, ptr %msg.i64.i, align 4
  %flags.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64.i, i32 0, i32 1
  %112 = ptrtoint ptr %flags.i68.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %flags.i68.i, align 2
  %buf3.i70.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64.i, i32 0, i32 3
  %113 = ptrtoint ptr %buf3.i70.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %buf.i63.i, ptr %buf3.i70.i, align 4
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %call.i71.i = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %msg.i64.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i71.i)
  %cmp.not.i72.i = icmp eq i32 %call.i71.i, 1
  br i1 %cmp.not.i72.i, label %cx24110_readreg.exit62.i.cx24110_writereg.exit78.i_crit_edge, label %do.body.i74.i

cx24110_readreg.exit62.i.cx24110_writereg.exit78.i_crit_edge: ; preds = %cx24110_readreg.exit62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit78.i

do.body.i74.i:                                    ; preds = %cx24110_readreg.exit62.i
  %116 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i73.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i73.i, label %do.body.i74.i.cx24110_writereg.exit78.i_crit_edge, label %do.end.i76.i

do.body.i74.i.cx24110_writereg.exit78.i_crit_edge: ; preds = %do.body.i74.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit78.i

do.end.i76.i:                                     ; preds = %do.body.i74.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i75.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i71.i, i32 noundef 34, i32 noundef %and5.i) #10
  br label %cx24110_writereg.exit78.i

cx24110_writereg.exit78.i:                        ; preds = %do.end.i76.i, %do.body.i74.i.cx24110_writereg.exit78.i_crit_edge, %cx24110_readreg.exit62.i.cx24110_writereg.exit78.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i63.i) #6
  br label %cx24110_set_inversion.exit

sw.bb7.i:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i79.i) #6
  %117 = ptrtoint ptr %b0.i79.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 55, ptr %b0.i79.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i80.i) #6
  %118 = ptrtoint ptr %b1.i80.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %b1.i80.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i81.i) #6
  %119 = getelementptr inbounds i8, ptr %msg.i81.i, i32 4
  %120 = call ptr @memset(ptr %119, i32 255, i32 16)
  %config.i82.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
  %121 = ptrtoint ptr %config.i82.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %config.i82.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 1
  %conv.i83.i = zext i8 %124 to i16
  %125 = ptrtoint ptr %msg.i81.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i83.i, ptr %msg.i81.i, align 4
  %flags.i84.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81.i, i32 0, i32 1
  %126 = ptrtoint ptr %flags.i84.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %flags.i84.i, align 2
  %127 = ptrtoint ptr %119 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 1, ptr %119, align 4
  %buf.i86.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81.i, i32 0, i32 3
  %128 = ptrtoint ptr %buf.i86.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %b0.i79.i, ptr %buf.i86.i, align 4
  %arrayinit.element.i87.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81.i, i32 1
  %129 = load i8, ptr %122, align 1
  %conv5.i88.i = zext i8 %129 to i16
  %130 = ptrtoint ptr %arrayinit.element.i87.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv5.i88.i, ptr %arrayinit.element.i87.i, align 4
  %flags6.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81.i, i32 1, i32 1
  %131 = ptrtoint ptr %flags6.i89.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 1, ptr %flags6.i89.i, align 2
  %len7.i90.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81.i, i32 1, i32 2
  %132 = ptrtoint ptr %len7.i90.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 1, ptr %len7.i90.i, align 4
  %buf8.i91.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81.i, i32 1, i32 3
  %133 = ptrtoint ptr %buf8.i91.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %b1.i80.i, ptr %buf8.i91.i, align 4
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %call.i92.i = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %msg.i81.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i92.i)
  %cmp.not.i93.i = icmp eq i32 %call.i92.i, 2
  br i1 %cmp.not.i93.i, label %if.end.i95.i, label %sw.bb7.i.cx24110_readreg.exit97.i_crit_edge

sw.bb7.i.cx24110_readreg.exit97.i_crit_edge:      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit97.i

if.end.i95.i:                                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  %136 = ptrtoint ptr %b1.i80.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %b1.i80.i, align 1
  %conv12.i94.i = zext i8 %137 to i32
  br label %cx24110_readreg.exit97.i

cx24110_readreg.exit97.i:                         ; preds = %if.end.i95.i, %sw.bb7.i.cx24110_readreg.exit97.i_crit_edge
  %retval.0.i96.i = phi i32 [ %conv12.i94.i, %if.end.i95.i ], [ %call.i92.i, %sw.bb7.i.cx24110_readreg.exit97.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i81.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i80.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i79.i) #6
  %or9.i = or i32 %retval.0.i96.i, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i98.i) #6
  %138 = getelementptr inbounds [2 x i8], ptr %buf.i98.i, i32 0, i32 1
  %139 = ptrtoint ptr %buf.i98.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 55, ptr %buf.i98.i, align 1
  %conv1.i100.i = trunc i32 %or9.i to i8
  %140 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv1.i100.i, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i99.i) #6
  %141 = getelementptr inbounds i8, ptr %msg.i99.i, i32 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 196607, ptr %141, align 4
  %143 = ptrtoint ptr %config.i82.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %config.i82.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 1
  %conv2.i102.i = zext i8 %146 to i16
  %147 = ptrtoint ptr %msg.i99.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv2.i102.i, ptr %msg.i99.i, align 4
  %flags.i103.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99.i, i32 0, i32 1
  %148 = ptrtoint ptr %flags.i103.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %flags.i103.i, align 2
  %buf3.i105.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99.i, i32 0, i32 3
  %149 = ptrtoint ptr %buf3.i105.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %buf.i98.i, ptr %buf3.i105.i, align 4
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 4
  %call.i106.i = call i32 @i2c_transfer(ptr noundef %151, ptr noundef nonnull %msg.i99.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i106.i)
  %cmp.not.i107.i = icmp eq i32 %call.i106.i, 1
  br i1 %cmp.not.i107.i, label %cx24110_readreg.exit97.i.cx24110_writereg.exit113.i_crit_edge, label %do.body.i109.i

cx24110_readreg.exit97.i.cx24110_writereg.exit113.i_crit_edge: ; preds = %cx24110_readreg.exit97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit113.i

do.body.i109.i:                                   ; preds = %cx24110_readreg.exit97.i
  %152 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.not.i108.i = icmp eq i32 %152, 0
  br i1 %tobool.not.i108.i, label %do.body.i109.i.cx24110_writereg.exit113.i_crit_edge, label %do.end.i111.i

do.body.i109.i.cx24110_writereg.exit113.i_crit_edge: ; preds = %do.body.i109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit113.i

do.end.i111.i:                                    ; preds = %do.body.i109.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i110.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i106.i, i32 noundef 55, i32 noundef %or9.i) #10
  br label %cx24110_writereg.exit113.i

cx24110_writereg.exit113.i:                       ; preds = %do.end.i111.i, %do.body.i109.i.cx24110_writereg.exit113.i_crit_edge, %cx24110_readreg.exit97.i.cx24110_writereg.exit113.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i99.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i98.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i114.i) #6
  %153 = ptrtoint ptr %b0.i114.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 5, ptr %b0.i114.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i115.i) #6
  %154 = ptrtoint ptr %b1.i115.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %b1.i115.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i116.i) #6
  %155 = getelementptr inbounds i8, ptr %msg.i116.i, i32 4
  %156 = call ptr @memset(ptr %155, i32 255, i32 16)
  %157 = ptrtoint ptr %config.i82.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %config.i82.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %158, align 1
  %conv.i118.i = zext i8 %160 to i16
  %161 = ptrtoint ptr %msg.i116.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv.i118.i, ptr %msg.i116.i, align 4
  %flags.i119.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i116.i, i32 0, i32 1
  %162 = ptrtoint ptr %flags.i119.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %flags.i119.i, align 2
  %163 = ptrtoint ptr %155 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 1, ptr %155, align 4
  %buf.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i116.i, i32 0, i32 3
  %164 = ptrtoint ptr %buf.i121.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %b0.i114.i, ptr %buf.i121.i, align 4
  %arrayinit.element.i122.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i116.i, i32 1
  %165 = load i8, ptr %158, align 1
  %conv5.i123.i = zext i8 %165 to i16
  %166 = ptrtoint ptr %arrayinit.element.i122.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv5.i123.i, ptr %arrayinit.element.i122.i, align 4
  %flags6.i124.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i116.i, i32 1, i32 1
  %167 = ptrtoint ptr %flags6.i124.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 1, ptr %flags6.i124.i, align 2
  %len7.i125.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i116.i, i32 1, i32 2
  %168 = ptrtoint ptr %len7.i125.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 1, ptr %len7.i125.i, align 4
  %buf8.i126.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i116.i, i32 1, i32 3
  %169 = ptrtoint ptr %buf8.i126.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %b1.i115.i, ptr %buf8.i126.i, align 4
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  %call.i127.i = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %msg.i116.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i127.i)
  %cmp.not.i128.i = icmp eq i32 %call.i127.i, 2
  br i1 %cmp.not.i128.i, label %if.end.i130.i, label %cx24110_writereg.exit113.i.cx24110_readreg.exit132.i_crit_edge

cx24110_writereg.exit113.i.cx24110_readreg.exit132.i_crit_edge: ; preds = %cx24110_writereg.exit113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit132.i

if.end.i130.i:                                    ; preds = %cx24110_writereg.exit113.i
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %b1.i115.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %b1.i115.i, align 1
  %conv12.i129.i = zext i8 %173 to i32
  br label %cx24110_readreg.exit132.i

cx24110_readreg.exit132.i:                        ; preds = %if.end.i130.i, %cx24110_writereg.exit113.i.cx24110_readreg.exit132.i_crit_edge
  %retval.0.i131.i = phi i32 [ %conv12.i129.i, %if.end.i130.i ], [ %call.i127.i, %cx24110_writereg.exit113.i.cx24110_readreg.exit132.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i116.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i115.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i114.i) #6
  %or12.i = or i32 %retval.0.i131.i, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i133.i) #6
  %174 = getelementptr inbounds [2 x i8], ptr %buf.i133.i, i32 0, i32 1
  %175 = ptrtoint ptr %buf.i133.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 5, ptr %buf.i133.i, align 1
  %conv1.i135.i = trunc i32 %or12.i to i8
  %176 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv1.i135.i, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i134.i) #6
  %177 = getelementptr inbounds i8, ptr %msg.i134.i, i32 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 196607, ptr %177, align 4
  %179 = ptrtoint ptr %config.i82.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %config.i82.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 1
  %conv2.i137.i = zext i8 %182 to i16
  %183 = ptrtoint ptr %msg.i134.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv2.i137.i, ptr %msg.i134.i, align 4
  %flags.i138.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i, i32 0, i32 1
  %184 = ptrtoint ptr %flags.i138.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %flags.i138.i, align 2
  %buf3.i140.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i, i32 0, i32 3
  %185 = ptrtoint ptr %buf3.i140.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %buf.i133.i, ptr %buf3.i140.i, align 4
  %186 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %1, align 4
  %call.i141.i = call i32 @i2c_transfer(ptr noundef %187, ptr noundef nonnull %msg.i134.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i141.i)
  %cmp.not.i142.i = icmp eq i32 %call.i141.i, 1
  br i1 %cmp.not.i142.i, label %cx24110_readreg.exit132.i.cx24110_writereg.exit148.i_crit_edge, label %do.body.i144.i

cx24110_readreg.exit132.i.cx24110_writereg.exit148.i_crit_edge: ; preds = %cx24110_readreg.exit132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit148.i

do.body.i144.i:                                   ; preds = %cx24110_readreg.exit132.i
  %188 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i143.i = icmp eq i32 %188, 0
  br i1 %tobool.not.i143.i, label %do.body.i144.i.cx24110_writereg.exit148.i_crit_edge, label %do.end.i146.i

do.body.i144.i.cx24110_writereg.exit148.i_crit_edge: ; preds = %do.body.i144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit148.i

do.end.i146.i:                                    ; preds = %do.body.i144.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i145.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i141.i, i32 noundef 5, i32 noundef %or12.i) #10
  br label %cx24110_writereg.exit148.i

cx24110_writereg.exit148.i:                       ; preds = %do.end.i146.i, %do.body.i144.i.cx24110_writereg.exit148.i_crit_edge, %cx24110_readreg.exit132.i.cx24110_writereg.exit148.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i134.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i133.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i149.i) #6
  %189 = ptrtoint ptr %b0.i149.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 34, ptr %b0.i149.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i150.i) #6
  %190 = ptrtoint ptr %b1.i150.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %b1.i150.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i151.i) #6
  %191 = getelementptr inbounds i8, ptr %msg.i151.i, i32 4
  %192 = call ptr @memset(ptr %191, i32 255, i32 16)
  %193 = ptrtoint ptr %config.i82.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %config.i82.i, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %194, align 1
  %conv.i153.i = zext i8 %196 to i16
  %197 = ptrtoint ptr %msg.i151.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv.i153.i, ptr %msg.i151.i, align 4
  %flags.i154.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i151.i, i32 0, i32 1
  %198 = ptrtoint ptr %flags.i154.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 0, ptr %flags.i154.i, align 2
  %199 = ptrtoint ptr %191 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 1, ptr %191, align 4
  %buf.i156.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i151.i, i32 0, i32 3
  %200 = ptrtoint ptr %buf.i156.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %b0.i149.i, ptr %buf.i156.i, align 4
  %arrayinit.element.i157.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i151.i, i32 1
  %201 = load i8, ptr %194, align 1
  %conv5.i158.i = zext i8 %201 to i16
  %202 = ptrtoint ptr %arrayinit.element.i157.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %conv5.i158.i, ptr %arrayinit.element.i157.i, align 4
  %flags6.i159.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i151.i, i32 1, i32 1
  %203 = ptrtoint ptr %flags6.i159.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 1, ptr %flags6.i159.i, align 2
  %len7.i160.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i151.i, i32 1, i32 2
  %204 = ptrtoint ptr %len7.i160.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 1, ptr %len7.i160.i, align 4
  %buf8.i161.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i151.i, i32 1, i32 3
  %205 = ptrtoint ptr %buf8.i161.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %b1.i150.i, ptr %buf8.i161.i, align 4
  %206 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %1, align 4
  %call.i162.i = call i32 @i2c_transfer(ptr noundef %207, ptr noundef nonnull %msg.i151.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i162.i)
  %cmp.not.i163.i = icmp eq i32 %call.i162.i, 2
  br i1 %cmp.not.i163.i, label %if.end.i165.i, label %cx24110_writereg.exit148.i.cx24110_readreg.exit167.i_crit_edge

cx24110_writereg.exit148.i.cx24110_readreg.exit167.i_crit_edge: ; preds = %cx24110_writereg.exit148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit167.i

if.end.i165.i:                                    ; preds = %cx24110_writereg.exit148.i
  call void @__sanitizer_cov_trace_pc() #8
  %208 = ptrtoint ptr %b1.i150.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %b1.i150.i, align 1
  %conv12.i164.i = zext i8 %209 to i32
  br label %cx24110_readreg.exit167.i

cx24110_readreg.exit167.i:                        ; preds = %if.end.i165.i, %cx24110_writereg.exit148.i.cx24110_readreg.exit167.i_crit_edge
  %retval.0.i166.i = phi i32 [ %conv12.i164.i, %if.end.i165.i ], [ %call.i162.i, %cx24110_writereg.exit148.i.cx24110_readreg.exit167.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i151.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i150.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i149.i) #6
  %or15.i = or i32 %retval.0.i166.i, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i168.i) #6
  %210 = getelementptr inbounds [2 x i8], ptr %buf.i168.i, i32 0, i32 1
  %211 = ptrtoint ptr %buf.i168.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 34, ptr %buf.i168.i, align 1
  %conv1.i170.i = trunc i32 %or15.i to i8
  %212 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv1.i170.i, ptr %210, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i169.i) #6
  %213 = getelementptr inbounds i8, ptr %msg.i169.i, i32 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 196607, ptr %213, align 4
  %215 = ptrtoint ptr %config.i82.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %config.i82.i, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %216, align 1
  %conv2.i172.i = zext i8 %218 to i16
  %219 = ptrtoint ptr %msg.i169.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv2.i172.i, ptr %msg.i169.i, align 4
  %flags.i173.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i169.i, i32 0, i32 1
  %220 = ptrtoint ptr %flags.i173.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 0, ptr %flags.i173.i, align 2
  %buf3.i175.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i169.i, i32 0, i32 3
  %221 = ptrtoint ptr %buf3.i175.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %buf.i168.i, ptr %buf3.i175.i, align 4
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 4
  %call.i176.i = call i32 @i2c_transfer(ptr noundef %223, ptr noundef nonnull %msg.i169.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i176.i)
  %cmp.not.i177.i = icmp eq i32 %call.i176.i, 1
  br i1 %cmp.not.i177.i, label %cx24110_readreg.exit167.i.cx24110_writereg.exit183.i_crit_edge, label %do.body.i179.i

cx24110_readreg.exit167.i.cx24110_writereg.exit183.i_crit_edge: ; preds = %cx24110_readreg.exit167.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit183.i

do.body.i179.i:                                   ; preds = %cx24110_readreg.exit167.i
  %224 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool.not.i178.i = icmp eq i32 %224, 0
  br i1 %tobool.not.i178.i, label %do.body.i179.i.cx24110_writereg.exit183.i_crit_edge, label %do.end.i181.i

do.body.i179.i.cx24110_writereg.exit183.i_crit_edge: ; preds = %do.body.i179.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit183.i

do.end.i181.i:                                    ; preds = %do.body.i179.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i180.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i176.i, i32 noundef 34, i32 noundef %or15.i) #10
  br label %cx24110_writereg.exit183.i

cx24110_writereg.exit183.i:                       ; preds = %do.end.i181.i, %do.body.i179.i.cx24110_writereg.exit183.i_crit_edge, %cx24110_readreg.exit167.i.cx24110_writereg.exit183.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i169.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i168.i) #6
  br label %cx24110_set_inversion.exit

sw.bb17.i:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i184.i) #6
  %225 = ptrtoint ptr %b0.i184.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 55, ptr %b0.i184.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i185.i) #6
  %226 = ptrtoint ptr %b1.i185.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %b1.i185.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i186.i) #6
  %227 = getelementptr inbounds i8, ptr %msg.i186.i, i32 4
  %228 = call ptr @memset(ptr %227, i32 255, i32 16)
  %config.i187.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
  %229 = ptrtoint ptr %config.i187.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %config.i187.i, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %230, align 1
  %conv.i188.i = zext i8 %232 to i16
  %233 = ptrtoint ptr %msg.i186.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %conv.i188.i, ptr %msg.i186.i, align 4
  %flags.i189.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i186.i, i32 0, i32 1
  %234 = ptrtoint ptr %flags.i189.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 0, ptr %flags.i189.i, align 2
  %235 = ptrtoint ptr %227 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 1, ptr %227, align 4
  %buf.i191.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i186.i, i32 0, i32 3
  %236 = ptrtoint ptr %buf.i191.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %b0.i184.i, ptr %buf.i191.i, align 4
  %arrayinit.element.i192.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i186.i, i32 1
  %237 = load i8, ptr %230, align 1
  %conv5.i193.i = zext i8 %237 to i16
  %238 = ptrtoint ptr %arrayinit.element.i192.i to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %conv5.i193.i, ptr %arrayinit.element.i192.i, align 4
  %flags6.i194.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i186.i, i32 1, i32 1
  %239 = ptrtoint ptr %flags6.i194.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 1, ptr %flags6.i194.i, align 2
  %len7.i195.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i186.i, i32 1, i32 2
  %240 = ptrtoint ptr %len7.i195.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 1, ptr %len7.i195.i, align 4
  %buf8.i196.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i186.i, i32 1, i32 3
  %241 = ptrtoint ptr %buf8.i196.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %b1.i185.i, ptr %buf8.i196.i, align 4
  %242 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %1, align 4
  %call.i197.i = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %msg.i186.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i197.i)
  %cmp.not.i198.i = icmp eq i32 %call.i197.i, 2
  br i1 %cmp.not.i198.i, label %if.end.i200.i, label %sw.bb17.i.cx24110_readreg.exit202.i_crit_edge

sw.bb17.i.cx24110_readreg.exit202.i_crit_edge:    ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit202.i

if.end.i200.i:                                    ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  %244 = ptrtoint ptr %b1.i185.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %b1.i185.i, align 1
  %conv12.i199.i = zext i8 %245 to i32
  br label %cx24110_readreg.exit202.i

cx24110_readreg.exit202.i:                        ; preds = %if.end.i200.i, %sw.bb17.i.cx24110_readreg.exit202.i_crit_edge
  %retval.0.i201.i = phi i32 [ %conv12.i199.i, %if.end.i200.i ], [ %call.i197.i, %sw.bb17.i.cx24110_readreg.exit202.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i186.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i185.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i184.i) #6
  %and19.i = and i32 %retval.0.i201.i, 254
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i203.i) #6
  %246 = getelementptr inbounds [2 x i8], ptr %buf.i203.i, i32 0, i32 1
  %247 = ptrtoint ptr %buf.i203.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 55, ptr %buf.i203.i, align 1
  %conv1.i205.i = trunc i32 %and19.i to i8
  %248 = ptrtoint ptr %246 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 %conv1.i205.i, ptr %246, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i204.i) #6
  %249 = getelementptr inbounds i8, ptr %msg.i204.i, i32 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 196607, ptr %249, align 4
  %251 = ptrtoint ptr %config.i187.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %config.i187.i, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %252, align 1
  %conv2.i207.i = zext i8 %254 to i16
  %255 = ptrtoint ptr %msg.i204.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv2.i207.i, ptr %msg.i204.i, align 4
  %flags.i208.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204.i, i32 0, i32 1
  %256 = ptrtoint ptr %flags.i208.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 0, ptr %flags.i208.i, align 2
  %buf3.i210.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204.i, i32 0, i32 3
  %257 = ptrtoint ptr %buf3.i210.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %buf.i203.i, ptr %buf3.i210.i, align 4
  %258 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %1, align 4
  %call.i211.i = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %msg.i204.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i211.i)
  %cmp.not.i212.i = icmp eq i32 %call.i211.i, 1
  br i1 %cmp.not.i212.i, label %cx24110_readreg.exit202.i.cx24110_writereg.exit218.i_crit_edge, label %do.body.i214.i

cx24110_readreg.exit202.i.cx24110_writereg.exit218.i_crit_edge: ; preds = %cx24110_readreg.exit202.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit218.i

do.body.i214.i:                                   ; preds = %cx24110_readreg.exit202.i
  %260 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.i213.i = icmp eq i32 %260, 0
  br i1 %tobool.not.i213.i, label %do.body.i214.i.cx24110_writereg.exit218.i_crit_edge, label %do.end.i216.i

do.body.i214.i.cx24110_writereg.exit218.i_crit_edge: ; preds = %do.body.i214.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit218.i

do.end.i216.i:                                    ; preds = %do.body.i214.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i215.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i211.i, i32 noundef 55, i32 noundef %and19.i) #10
  br label %cx24110_writereg.exit218.i

cx24110_writereg.exit218.i:                       ; preds = %do.end.i216.i, %do.body.i214.i.cx24110_writereg.exit218.i_crit_edge, %cx24110_readreg.exit202.i.cx24110_writereg.exit218.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i204.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i203.i) #6
  br label %cx24110_set_inversion.exit

cx24110_set_inversion.exit:                       ; preds = %cx24110_writereg.exit218.i, %cx24110_writereg.exit183.i, %cx24110_writereg.exit78.i, %if.end10.cx24110_set_inversion.exit_crit_edge
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %261 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %fec_inner, align 4
  %263 = call i32 @llvm.umin.i32(i32 %262, i32 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %262)
  %cmp1.i = icmp ugt i32 %262, 8
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %cx24110_set_inversion.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i30) #6
  %264 = ptrtoint ptr %b0.i.i30 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 55, ptr %b0.i.i30, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i31) #6
  %265 = ptrtoint ptr %b1.i.i31 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 0, ptr %b1.i.i31, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i32) #6
  %266 = getelementptr inbounds i8, ptr %msg.i.i32, i32 4
  %267 = call ptr @memset(ptr %266, i32 255, i32 16)
  %config.i.i33 = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
  %268 = ptrtoint ptr %config.i.i33 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %config.i.i33, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %269, align 1
  %conv.i.i34 = zext i8 %271 to i16
  %272 = ptrtoint ptr %msg.i.i32 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %conv.i.i34, ptr %msg.i.i32, align 4
  %flags.i.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i32, i32 0, i32 1
  %273 = ptrtoint ptr %flags.i.i35 to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 0, ptr %flags.i.i35, align 2
  %274 = ptrtoint ptr %266 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 1, ptr %266, align 4
  %buf.i.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i32, i32 0, i32 3
  %275 = ptrtoint ptr %buf.i.i36 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %b0.i.i30, ptr %buf.i.i36, align 4
  %arrayinit.element.i.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i32, i32 1
  %276 = load i8, ptr %269, align 1
  %conv5.i.i38 = zext i8 %276 to i16
  %277 = ptrtoint ptr %arrayinit.element.i.i37 to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %conv5.i.i38, ptr %arrayinit.element.i.i37, align 4
  %flags6.i.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i32, i32 1, i32 1
  %278 = ptrtoint ptr %flags6.i.i39 to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 1, ptr %flags6.i.i39, align 2
  %len7.i.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i32, i32 1, i32 2
  %279 = ptrtoint ptr %len7.i.i40 to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 1, ptr %len7.i.i40, align 4
  %buf8.i.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i32, i32 1, i32 3
  %280 = ptrtoint ptr %buf8.i.i41 to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %b1.i.i31, ptr %buf8.i.i41, align 4
  %281 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %1, align 4
  %call.i.i42 = call i32 @i2c_transfer(ptr noundef %282, ptr noundef nonnull %msg.i.i32, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i42)
  %cmp.not.i.i43 = icmp eq i32 %call.i.i42, 2
  br i1 %cmp.not.i.i43, label %if.end.i.i45, label %if.then2.i.cx24110_readreg.exit.i54_crit_edge

if.then2.i.cx24110_readreg.exit.i54_crit_edge:    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit.i54

if.end.i.i45:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #8
  %283 = ptrtoint ptr %b1.i.i31 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %b1.i.i31, align 1
  %conv12.i.i44 = zext i8 %284 to i32
  br label %cx24110_readreg.exit.i54

cx24110_readreg.exit.i54:                         ; preds = %if.end.i.i45, %if.then2.i.cx24110_readreg.exit.i54_crit_edge
  %retval.0.i.i46 = phi i32 [ %conv12.i.i44, %if.end.i.i45 ], [ %call.i.i42, %if.then2.i.cx24110_readreg.exit.i54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i32) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i31) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i30) #6
  %and.i47 = and i32 %retval.0.i.i46, 223
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i28) #6
  %285 = getelementptr inbounds [2 x i8], ptr %buf.i1.i28, i32 0, i32 1
  %286 = ptrtoint ptr %buf.i1.i28 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 55, ptr %buf.i1.i28, align 1
  %conv1.i.i48 = trunc i32 %and.i47 to i8
  %287 = ptrtoint ptr %285 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %conv1.i.i48, ptr %285, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i29) #6
  %288 = getelementptr inbounds i8, ptr %msg.i2.i29, i32 4
  %289 = ptrtoint ptr %288 to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 196607, ptr %288, align 4
  %290 = ptrtoint ptr %config.i.i33 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %config.i.i33, align 4
  %292 = ptrtoint ptr %291 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %291, align 1
  %conv2.i.i49 = zext i8 %293 to i16
  %294 = ptrtoint ptr %msg.i2.i29 to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 %conv2.i.i49, ptr %msg.i2.i29, align 4
  %flags.i4.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i29, i32 0, i32 1
  %295 = ptrtoint ptr %flags.i4.i50 to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 0, ptr %flags.i4.i50, align 2
  %buf3.i.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i29, i32 0, i32 3
  %296 = ptrtoint ptr %buf3.i.i51 to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr %buf.i1.i28, ptr %buf3.i.i51, align 4
  %297 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %1, align 4
  %call.i6.i52 = call i32 @i2c_transfer(ptr noundef %298, ptr noundef nonnull %msg.i2.i29, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6.i52)
  %cmp.not.i7.i53 = icmp eq i32 %call.i6.i52, 1
  br i1 %cmp.not.i7.i53, label %cx24110_readreg.exit.i54.cx24110_writereg.exit.i59_crit_edge, label %do.body.i.i56

cx24110_readreg.exit.i54.cx24110_writereg.exit.i59_crit_edge: ; preds = %cx24110_readreg.exit.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit.i59

do.body.i.i56:                                    ; preds = %cx24110_readreg.exit.i54
  %299 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool.not.i.i55 = icmp eq i32 %299, 0
  br i1 %tobool.not.i.i55, label %do.body.i.i56.cx24110_writereg.exit.i59_crit_edge, label %do.end.i.i58

do.body.i.i56.cx24110_writereg.exit.i59_crit_edge: ; preds = %do.body.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit.i59

do.end.i.i58:                                     ; preds = %do.body.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i6.i52, i32 noundef 55, i32 noundef %and.i47) #10
  br label %cx24110_writereg.exit.i59

cx24110_writereg.exit.i59:                        ; preds = %do.end.i.i58, %do.body.i.i56.cx24110_writereg.exit.i59_crit_edge, %cx24110_readreg.exit.i54.cx24110_writereg.exit.i59_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i29) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i28) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i9.i) #6
  %300 = getelementptr inbounds [2 x i8], ptr %buf.i9.i, i32 0, i32 1
  %301 = ptrtoint ptr %buf.i9.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 24, ptr %buf.i9.i, align 1
  %302 = ptrtoint ptr %300 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 -82, ptr %300, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10.i) #6
  %303 = getelementptr inbounds i8, ptr %msg.i10.i, i32 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 196607, ptr %303, align 4
  %305 = ptrtoint ptr %config.i.i33 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %config.i.i33, align 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %306, align 1
  %conv2.i12.i = zext i8 %308 to i16
  %309 = ptrtoint ptr %msg.i10.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 %conv2.i12.i, ptr %msg.i10.i, align 4
  %flags.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 1
  %310 = ptrtoint ptr %flags.i13.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 0, ptr %flags.i13.i, align 2
  %buf3.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i, i32 0, i32 3
  %311 = ptrtoint ptr %buf3.i15.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %buf.i9.i, ptr %buf3.i15.i, align 4
  %312 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %1, align 4
  %call.i16.i = call i32 @i2c_transfer(ptr noundef %313, ptr noundef nonnull %msg.i10.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i16.i)
  %cmp.not.i17.i = icmp eq i32 %call.i16.i, 1
  br i1 %cmp.not.i17.i, label %cx24110_writereg.exit.i59.cx24110_writereg.exit23.i_crit_edge, label %do.body.i19.i

cx24110_writereg.exit.i59.cx24110_writereg.exit23.i_crit_edge: ; preds = %cx24110_writereg.exit.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit23.i

do.body.i19.i:                                    ; preds = %cx24110_writereg.exit.i59
  %314 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i18.i = icmp eq i32 %314, 0
  br i1 %tobool.not.i18.i, label %do.body.i19.i.cx24110_writereg.exit23.i_crit_edge, label %do.end.i21.i

do.body.i19.i.cx24110_writereg.exit23.i_crit_edge: ; preds = %do.body.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit23.i

do.end.i21.i:                                     ; preds = %do.body.i19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i16.i, i32 noundef 24, i32 noundef 174) #10
  br label %cx24110_writereg.exit23.i

cx24110_writereg.exit23.i:                        ; preds = %do.end.i21.i, %do.body.i19.i.cx24110_writereg.exit23.i_crit_edge, %cx24110_writereg.exit.i59.cx24110_writereg.exit23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i9.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i24.i) #6
  %315 = ptrtoint ptr %b0.i24.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 5, ptr %b0.i24.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i25.i) #6
  %316 = ptrtoint ptr %b1.i25.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %b1.i25.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i26.i) #6
  %317 = getelementptr inbounds i8, ptr %msg.i26.i, i32 4
  %318 = call ptr @memset(ptr %317, i32 255, i32 16)
  %319 = ptrtoint ptr %config.i.i33 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %config.i.i33, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %320, align 1
  %conv.i28.i = zext i8 %322 to i16
  %323 = ptrtoint ptr %msg.i26.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 %conv.i28.i, ptr %msg.i26.i, align 4
  %flags.i29.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26.i, i32 0, i32 1
  %324 = ptrtoint ptr %flags.i29.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 0, ptr %flags.i29.i, align 2
  %325 = ptrtoint ptr %317 to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 1, ptr %317, align 4
  %buf.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26.i, i32 0, i32 3
  %326 = ptrtoint ptr %buf.i31.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %b0.i24.i, ptr %buf.i31.i, align 4
  %arrayinit.element.i32.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26.i, i32 1
  %327 = load i8, ptr %320, align 1
  %conv5.i33.i = zext i8 %327 to i16
  %328 = ptrtoint ptr %arrayinit.element.i32.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %conv5.i33.i, ptr %arrayinit.element.i32.i, align 4
  %flags6.i34.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26.i, i32 1, i32 1
  %329 = ptrtoint ptr %flags6.i34.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 1, ptr %flags6.i34.i, align 2
  %len7.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26.i, i32 1, i32 2
  %330 = ptrtoint ptr %len7.i35.i to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 1, ptr %len7.i35.i, align 4
  %buf8.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26.i, i32 1, i32 3
  %331 = ptrtoint ptr %buf8.i36.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %b1.i25.i, ptr %buf8.i36.i, align 4
  %332 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %1, align 4
  %call.i37.i = call i32 @i2c_transfer(ptr noundef %333, ptr noundef nonnull %msg.i26.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i37.i)
  %cmp.not.i38.i = icmp eq i32 %call.i37.i, 2
  br i1 %cmp.not.i38.i, label %if.end.i40.i, label %cx24110_writereg.exit23.i.cx24110_readreg.exit42.i_crit_edge

cx24110_writereg.exit23.i.cx24110_readreg.exit42.i_crit_edge: ; preds = %cx24110_writereg.exit23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit42.i

if.end.i40.i:                                     ; preds = %cx24110_writereg.exit23.i
  call void @__sanitizer_cov_trace_pc() #8
  %334 = ptrtoint ptr %b1.i25.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %b1.i25.i, align 1
  %conv12.i39.i = zext i8 %335 to i32
  br label %cx24110_readreg.exit42.i

cx24110_readreg.exit42.i:                         ; preds = %if.end.i40.i, %cx24110_writereg.exit23.i.cx24110_readreg.exit42.i_crit_edge
  %retval.0.i41.i = phi i32 [ %conv12.i39.i, %if.end.i40.i ], [ %call.i37.i, %cx24110_writereg.exit23.i.cx24110_readreg.exit42.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i26.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i24.i) #6
  %and6.i = and i32 %retval.0.i41.i, 240
  %or.i60 = or i32 %and6.i, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i43.i) #6
  %336 = getelementptr inbounds [2 x i8], ptr %buf.i43.i, i32 0, i32 1
  %337 = ptrtoint ptr %buf.i43.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 5, ptr %buf.i43.i, align 1
  %conv1.i45.i = trunc i32 %or.i60 to i8
  %338 = ptrtoint ptr %336 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %conv1.i45.i, ptr %336, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i44.i) #6
  %339 = getelementptr inbounds i8, ptr %msg.i44.i, i32 4
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 196607, ptr %339, align 4
  %341 = ptrtoint ptr %config.i.i33 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %config.i.i33, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %342, align 1
  %conv2.i47.i = zext i8 %344 to i16
  %345 = ptrtoint ptr %msg.i44.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 %conv2.i47.i, ptr %msg.i44.i, align 4
  %flags.i48.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i, i32 0, i32 1
  %346 = ptrtoint ptr %flags.i48.i to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 0, ptr %flags.i48.i, align 2
  %buf3.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i, i32 0, i32 3
  %347 = ptrtoint ptr %buf3.i50.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %buf.i43.i, ptr %buf3.i50.i, align 4
  %348 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %1, align 4
  %call.i51.i = call i32 @i2c_transfer(ptr noundef %349, ptr noundef nonnull %msg.i44.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i51.i)
  %cmp.not.i52.i = icmp eq i32 %call.i51.i, 1
  br i1 %cmp.not.i52.i, label %cx24110_readreg.exit42.i.cx24110_writereg.exit58.i_crit_edge, label %do.body.i54.i

cx24110_readreg.exit42.i.cx24110_writereg.exit58.i_crit_edge: ; preds = %cx24110_readreg.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit58.i

do.body.i54.i:                                    ; preds = %cx24110_readreg.exit42.i
  %350 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool.not.i53.i = icmp eq i32 %350, 0
  br i1 %tobool.not.i53.i, label %do.body.i54.i.cx24110_writereg.exit58.i_crit_edge, label %do.end.i56.i

do.body.i54.i.cx24110_writereg.exit58.i_crit_edge: ; preds = %do.body.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit58.i

do.end.i56.i:                                     ; preds = %do.body.i54.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i51.i, i32 noundef 5, i32 noundef %or.i60) #10
  br label %cx24110_writereg.exit58.i

cx24110_writereg.exit58.i:                        ; preds = %do.end.i56.i, %do.body.i54.i.cx24110_writereg.exit58.i_crit_edge, %cx24110_readreg.exit42.i.cx24110_writereg.exit58.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i44.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i43.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i59.i) #6
  %351 = ptrtoint ptr %b0.i59.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 34, ptr %b0.i59.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i60.i) #6
  %352 = ptrtoint ptr %b1.i60.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 0, ptr %b1.i60.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i61.i) #6
  %353 = getelementptr inbounds i8, ptr %msg.i61.i, i32 4
  %354 = call ptr @memset(ptr %353, i32 255, i32 16)
  %355 = ptrtoint ptr %config.i.i33 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %config.i.i33, align 4
  %357 = ptrtoint ptr %356 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %356, align 1
  %conv.i63.i = zext i8 %358 to i16
  %359 = ptrtoint ptr %msg.i61.i to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 %conv.i63.i, ptr %msg.i61.i, align 4
  %flags.i64.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61.i, i32 0, i32 1
  %360 = ptrtoint ptr %flags.i64.i to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 0, ptr %flags.i64.i, align 2
  %361 = ptrtoint ptr %353 to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 1, ptr %353, align 4
  %buf.i66.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61.i, i32 0, i32 3
  %362 = ptrtoint ptr %buf.i66.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %b0.i59.i, ptr %buf.i66.i, align 4
  %arrayinit.element.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61.i, i32 1
  %363 = load i8, ptr %356, align 1
  %conv5.i68.i = zext i8 %363 to i16
  %364 = ptrtoint ptr %arrayinit.element.i67.i to i32
  call void @__asan_store2_noabort(i32 %364)
  store i16 %conv5.i68.i, ptr %arrayinit.element.i67.i, align 4
  %flags6.i69.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61.i, i32 1, i32 1
  %365 = ptrtoint ptr %flags6.i69.i to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 1, ptr %flags6.i69.i, align 2
  %len7.i70.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61.i, i32 1, i32 2
  %366 = ptrtoint ptr %len7.i70.i to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 1, ptr %len7.i70.i, align 4
  %buf8.i71.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61.i, i32 1, i32 3
  %367 = ptrtoint ptr %buf8.i71.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %b1.i60.i, ptr %buf8.i71.i, align 4
  %368 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %1, align 4
  %call.i72.i = call i32 @i2c_transfer(ptr noundef %369, ptr noundef nonnull %msg.i61.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i72.i)
  %cmp.not.i73.i = icmp eq i32 %call.i72.i, 2
  br i1 %cmp.not.i73.i, label %if.end.i75.i, label %cx24110_writereg.exit58.i.cx24110_readreg.exit77.i_crit_edge

cx24110_writereg.exit58.i.cx24110_readreg.exit77.i_crit_edge: ; preds = %cx24110_writereg.exit58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit77.i

if.end.i75.i:                                     ; preds = %cx24110_writereg.exit58.i
  call void @__sanitizer_cov_trace_pc() #8
  %370 = ptrtoint ptr %b1.i60.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %b1.i60.i, align 1
  %conv12.i74.i = zext i8 %371 to i32
  br label %cx24110_readreg.exit77.i

cx24110_readreg.exit77.i:                         ; preds = %if.end.i75.i, %cx24110_writereg.exit58.i.cx24110_readreg.exit77.i_crit_edge
  %retval.0.i76.i = phi i32 [ %conv12.i74.i, %if.end.i75.i ], [ %call.i72.i, %cx24110_writereg.exit58.i.cx24110_readreg.exit77.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i61.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i60.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i59.i) #6
  %and9.i = and i32 %retval.0.i76.i, 240
  %or10.i = or i32 %and9.i, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i78.i) #6
  %372 = getelementptr inbounds [2 x i8], ptr %buf.i78.i, i32 0, i32 1
  %373 = ptrtoint ptr %buf.i78.i to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 34, ptr %buf.i78.i, align 1
  %conv1.i80.i = trunc i32 %or10.i to i8
  %374 = ptrtoint ptr %372 to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 %conv1.i80.i, ptr %372, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i79.i) #6
  %375 = getelementptr inbounds i8, ptr %msg.i79.i, i32 4
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 196607, ptr %375, align 4
  %377 = ptrtoint ptr %config.i.i33 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %config.i.i33, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %378, align 1
  %conv2.i82.i = zext i8 %380 to i16
  %381 = ptrtoint ptr %msg.i79.i to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 %conv2.i82.i, ptr %msg.i79.i, align 4
  %flags.i83.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i79.i, i32 0, i32 1
  %382 = ptrtoint ptr %flags.i83.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 0, ptr %flags.i83.i, align 2
  %buf3.i85.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i79.i, i32 0, i32 3
  %383 = ptrtoint ptr %buf3.i85.i to i32
  call void @__asan_store4_noabort(i32 %383)
  store ptr %buf.i78.i, ptr %buf3.i85.i, align 4
  %384 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %1, align 4
  %call.i86.i = call i32 @i2c_transfer(ptr noundef %385, ptr noundef nonnull %msg.i79.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i86.i)
  %cmp.not.i87.i = icmp eq i32 %call.i86.i, 1
  br i1 %cmp.not.i87.i, label %cx24110_readreg.exit77.i.cx24110_writereg.exit93.i_crit_edge, label %do.body.i89.i

cx24110_readreg.exit77.i.cx24110_writereg.exit93.i_crit_edge: ; preds = %cx24110_readreg.exit77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit93.i

do.body.i89.i:                                    ; preds = %cx24110_readreg.exit77.i
  %386 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool.not.i88.i = icmp eq i32 %386, 0
  br i1 %tobool.not.i88.i, label %do.body.i89.i.cx24110_writereg.exit93.i_crit_edge, label %do.end.i91.i

do.body.i89.i.cx24110_writereg.exit93.i_crit_edge: ; preds = %do.body.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit93.i

do.end.i91.i:                                     ; preds = %do.body.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i86.i, i32 noundef 34, i32 noundef %or10.i) #10
  br label %cx24110_writereg.exit93.i

cx24110_writereg.exit93.i:                        ; preds = %do.end.i91.i, %do.body.i89.i.cx24110_writereg.exit93.i_crit_edge, %cx24110_readreg.exit77.i.cx24110_writereg.exit93.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i79.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i78.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i94.i) #6
  %387 = getelementptr inbounds [2 x i8], ptr %buf.i94.i, i32 0, i32 1
  %388 = ptrtoint ptr %buf.i94.i to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 26, ptr %buf.i94.i, align 1
  %389 = ptrtoint ptr %387 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 5, ptr %387, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i95.i) #6
  %390 = getelementptr inbounds i8, ptr %msg.i95.i, i32 4
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 196607, ptr %390, align 4
  %392 = ptrtoint ptr %config.i.i33 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %config.i.i33, align 4
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %393, align 1
  %conv2.i97.i = zext i8 %395 to i16
  %396 = ptrtoint ptr %msg.i95.i to i32
  call void @__asan_store2_noabort(i32 %396)
  store i16 %conv2.i97.i, ptr %msg.i95.i, align 4
  %flags.i98.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i95.i, i32 0, i32 1
  %397 = ptrtoint ptr %flags.i98.i to i32
  call void @__asan_store2_noabort(i32 %397)
  store i16 0, ptr %flags.i98.i, align 2
  %buf3.i100.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i95.i, i32 0, i32 3
  %398 = ptrtoint ptr %buf3.i100.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %buf.i94.i, ptr %buf3.i100.i, align 4
  %399 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %1, align 4
  %call.i101.i = call i32 @i2c_transfer(ptr noundef %400, ptr noundef nonnull %msg.i95.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i101.i)
  %cmp.not.i102.i = icmp eq i32 %call.i101.i, 1
  br i1 %cmp.not.i102.i, label %cx24110_writereg.exit93.i.cx24110_writereg.exit108.i_crit_edge, label %do.body.i104.i

cx24110_writereg.exit93.i.cx24110_writereg.exit108.i_crit_edge: ; preds = %cx24110_writereg.exit93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit108.i

do.body.i104.i:                                   ; preds = %cx24110_writereg.exit93.i
  %401 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %401)
  %tobool.not.i103.i = icmp eq i32 %401, 0
  br i1 %tobool.not.i103.i, label %do.body.i104.i.cx24110_writereg.exit108.i_crit_edge, label %do.end.i106.i

do.body.i104.i.cx24110_writereg.exit108.i_crit_edge: ; preds = %do.body.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit108.i

do.end.i106.i:                                    ; preds = %do.body.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i105.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i101.i, i32 noundef 26, i32 noundef 5) #10
  br label %cx24110_writereg.exit108.i

cx24110_writereg.exit108.i:                       ; preds = %do.end.i106.i, %do.body.i104.i.cx24110_writereg.exit108.i_crit_edge, %cx24110_writereg.exit93.i.cx24110_writereg.exit108.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i95.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i94.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i109.i) #6
  %402 = getelementptr inbounds [2 x i8], ptr %buf.i109.i, i32 0, i32 1
  %403 = ptrtoint ptr %buf.i109.i to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 27, ptr %buf.i109.i, align 1
  %404 = ptrtoint ptr %402 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 6, ptr %402, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i110.i) #6
  %405 = getelementptr inbounds i8, ptr %msg.i110.i, i32 4
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 196607, ptr %405, align 4
  %407 = ptrtoint ptr %config.i.i33 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %config.i.i33, align 4
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %408, align 1
  %conv2.i112.i = zext i8 %410 to i16
  %411 = ptrtoint ptr %msg.i110.i to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 %conv2.i112.i, ptr %msg.i110.i, align 4
  %flags.i113.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110.i, i32 0, i32 1
  %412 = ptrtoint ptr %flags.i113.i to i32
  call void @__asan_store2_noabort(i32 %412)
  store i16 0, ptr %flags.i113.i, align 2
  %buf3.i115.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110.i, i32 0, i32 3
  %413 = ptrtoint ptr %buf3.i115.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %buf.i109.i, ptr %buf3.i115.i, align 4
  %414 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %1, align 4
  %call.i116.i = call i32 @i2c_transfer(ptr noundef %415, ptr noundef nonnull %msg.i110.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i116.i)
  %cmp.not.i117.i = icmp eq i32 %call.i116.i, 1
  br i1 %cmp.not.i117.i, label %cx24110_writereg.exit108.i.cx24110_writereg.exit123.i_crit_edge, label %do.body.i119.i

cx24110_writereg.exit108.i.cx24110_writereg.exit123.i_crit_edge: ; preds = %cx24110_writereg.exit108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit123.i

do.body.i119.i:                                   ; preds = %cx24110_writereg.exit108.i
  %416 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %416)
  %tobool.not.i118.i = icmp eq i32 %416, 0
  br i1 %tobool.not.i118.i, label %do.body.i119.i.cx24110_writereg.exit123.i_crit_edge, label %do.end.i121.i

do.body.i119.i.cx24110_writereg.exit123.i_crit_edge: ; preds = %do.body.i119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit123.i

do.end.i121.i:                                    ; preds = %do.body.i119.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i116.i, i32 noundef 27, i32 noundef 6) #10
  br label %cx24110_writereg.exit123.i

cx24110_writereg.exit123.i:                       ; preds = %do.end.i121.i, %do.body.i119.i.cx24110_writereg.exit123.i_crit_edge, %cx24110_writereg.exit108.i.cx24110_writereg.exit123.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i110.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i109.i) #6
  br label %cx24110_set_fec.exit

if.else.i:                                        ; preds = %cx24110_set_inversion.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i124.i) #6
  %417 = ptrtoint ptr %b0.i124.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 55, ptr %b0.i124.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i125.i) #6
  %418 = ptrtoint ptr %b1.i125.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 0, ptr %b1.i125.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i126.i) #6
  %419 = getelementptr inbounds i8, ptr %msg.i126.i, i32 4
  %420 = call ptr @memset(ptr %419, i32 255, i32 16)
  %config.i127.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
  %421 = ptrtoint ptr %config.i127.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %config.i127.i, align 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %422, align 1
  %conv.i128.i = zext i8 %424 to i16
  %425 = ptrtoint ptr %msg.i126.i to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 %conv.i128.i, ptr %msg.i126.i, align 4
  %flags.i129.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126.i, i32 0, i32 1
  %426 = ptrtoint ptr %flags.i129.i to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 0, ptr %flags.i129.i, align 2
  %427 = ptrtoint ptr %419 to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 1, ptr %419, align 4
  %buf.i131.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126.i, i32 0, i32 3
  %428 = ptrtoint ptr %buf.i131.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr %b0.i124.i, ptr %buf.i131.i, align 4
  %arrayinit.element.i132.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126.i, i32 1
  %429 = load i8, ptr %422, align 1
  %conv5.i133.i = zext i8 %429 to i16
  %430 = ptrtoint ptr %arrayinit.element.i132.i to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 %conv5.i133.i, ptr %arrayinit.element.i132.i, align 4
  %flags6.i134.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126.i, i32 1, i32 1
  %431 = ptrtoint ptr %flags6.i134.i to i32
  call void @__asan_store2_noabort(i32 %431)
  store i16 1, ptr %flags6.i134.i, align 2
  %len7.i135.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126.i, i32 1, i32 2
  %432 = ptrtoint ptr %len7.i135.i to i32
  call void @__asan_store2_noabort(i32 %432)
  store i16 1, ptr %len7.i135.i, align 4
  %buf8.i136.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i126.i, i32 1, i32 3
  %433 = ptrtoint ptr %buf8.i136.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %b1.i125.i, ptr %buf8.i136.i, align 4
  %434 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %1, align 4
  %call.i137.i = call i32 @i2c_transfer(ptr noundef %435, ptr noundef nonnull %msg.i126.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i137.i)
  %cmp.not.i138.i = icmp eq i32 %call.i137.i, 2
  br i1 %cmp.not.i138.i, label %if.end.i140.i, label %if.else.i.cx24110_readreg.exit142.i_crit_edge

if.else.i.cx24110_readreg.exit142.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit142.i

if.end.i140.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %436 = ptrtoint ptr %b1.i125.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %b1.i125.i, align 1
  %conv12.i139.i = zext i8 %437 to i32
  br label %cx24110_readreg.exit142.i

cx24110_readreg.exit142.i:                        ; preds = %if.end.i140.i, %if.else.i.cx24110_readreg.exit142.i_crit_edge
  %retval.0.i141.i = phi i32 [ %conv12.i139.i, %if.end.i140.i ], [ %call.i137.i, %if.else.i.cx24110_readreg.exit142.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i126.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i125.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i124.i) #6
  %or15.i61 = or i32 %retval.0.i141.i, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i143.i) #6
  %438 = getelementptr inbounds [2 x i8], ptr %buf.i143.i, i32 0, i32 1
  %439 = ptrtoint ptr %buf.i143.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 55, ptr %buf.i143.i, align 1
  %conv1.i145.i = trunc i32 %or15.i61 to i8
  %440 = ptrtoint ptr %438 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 %conv1.i145.i, ptr %438, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i144.i) #6
  %441 = getelementptr inbounds i8, ptr %msg.i144.i, i32 4
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 196607, ptr %441, align 4
  %443 = ptrtoint ptr %config.i127.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %config.i127.i, align 4
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %444, align 1
  %conv2.i147.i = zext i8 %446 to i16
  %447 = ptrtoint ptr %msg.i144.i to i32
  call void @__asan_store2_noabort(i32 %447)
  store i16 %conv2.i147.i, ptr %msg.i144.i, align 4
  %flags.i148.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i144.i, i32 0, i32 1
  %448 = ptrtoint ptr %flags.i148.i to i32
  call void @__asan_store2_noabort(i32 %448)
  store i16 0, ptr %flags.i148.i, align 2
  %buf3.i150.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i144.i, i32 0, i32 3
  %449 = ptrtoint ptr %buf3.i150.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %buf.i143.i, ptr %buf3.i150.i, align 4
  %450 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %1, align 4
  %call.i151.i = call i32 @i2c_transfer(ptr noundef %451, ptr noundef nonnull %msg.i144.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i151.i)
  %cmp.not.i152.i = icmp eq i32 %call.i151.i, 1
  br i1 %cmp.not.i152.i, label %cx24110_readreg.exit142.i.cx24110_writereg.exit158.i_crit_edge, label %do.body.i154.i

cx24110_readreg.exit142.i.cx24110_writereg.exit158.i_crit_edge: ; preds = %cx24110_readreg.exit142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit158.i

do.body.i154.i:                                   ; preds = %cx24110_readreg.exit142.i
  %452 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %452)
  %tobool.not.i153.i = icmp eq i32 %452, 0
  br i1 %tobool.not.i153.i, label %do.body.i154.i.cx24110_writereg.exit158.i_crit_edge, label %do.end.i156.i

do.body.i154.i.cx24110_writereg.exit158.i_crit_edge: ; preds = %do.body.i154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit158.i

do.end.i156.i:                                    ; preds = %do.body.i154.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i155.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i151.i, i32 noundef 55, i32 noundef %or15.i61) #10
  br label %cx24110_writereg.exit158.i

cx24110_writereg.exit158.i:                       ; preds = %do.end.i156.i, %do.body.i154.i.cx24110_writereg.exit158.i_crit_edge, %cx24110_readreg.exit142.i.cx24110_writereg.exit158.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i144.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i143.i) #6
  %453 = zext i32 %263 to i64
  call void @__sanitizer_cov_trace_switch(i64 %453, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %263, label %if.end19.i [
    i32 6, label %cx24110_writereg.exit158.i.cx24110_set_fec.exit_crit_edge
    i32 0, label %cx24110_writereg.exit158.i.cx24110_set_fec.exit_crit_edge130
  ]

cx24110_writereg.exit158.i.cx24110_set_fec.exit_crit_edge130: ; preds = %cx24110_writereg.exit158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_set_fec.exit

cx24110_writereg.exit158.i.cx24110_set_fec.exit_crit_edge: ; preds = %cx24110_writereg.exit158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_set_fec.exit

if.end19.i:                                       ; preds = %cx24110_writereg.exit158.i
  %arrayidx.i = getelementptr [9 x i32], ptr @cx24110_set_fec.rate, i32 0, i32 %263
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i159.i) #6
  %454 = ptrtoint ptr %b0.i159.i to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 5, ptr %b0.i159.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i160.i) #6
  %455 = ptrtoint ptr %b1.i160.i to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 0, ptr %b1.i160.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i161.i) #6
  %456 = getelementptr inbounds i8, ptr %msg.i161.i, i32 4
  %457 = call ptr @memset(ptr %456, i32 255, i32 16)
  %458 = ptrtoint ptr %config.i127.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %config.i127.i, align 4
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %459, align 1
  %conv.i163.i = zext i8 %461 to i16
  %462 = ptrtoint ptr %msg.i161.i to i32
  call void @__asan_store2_noabort(i32 %462)
  store i16 %conv.i163.i, ptr %msg.i161.i, align 4
  %flags.i164.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161.i, i32 0, i32 1
  %463 = ptrtoint ptr %flags.i164.i to i32
  call void @__asan_store2_noabort(i32 %463)
  store i16 0, ptr %flags.i164.i, align 2
  %464 = ptrtoint ptr %456 to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 1, ptr %456, align 4
  %buf.i166.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161.i, i32 0, i32 3
  %465 = ptrtoint ptr %buf.i166.i to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr %b0.i159.i, ptr %buf.i166.i, align 4
  %arrayinit.element.i167.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161.i, i32 1
  %466 = load i8, ptr %459, align 1
  %conv5.i168.i = zext i8 %466 to i16
  %467 = ptrtoint ptr %arrayinit.element.i167.i to i32
  call void @__asan_store2_noabort(i32 %467)
  store i16 %conv5.i168.i, ptr %arrayinit.element.i167.i, align 4
  %flags6.i169.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161.i, i32 1, i32 1
  %468 = ptrtoint ptr %flags6.i169.i to i32
  call void @__asan_store2_noabort(i32 %468)
  store i16 1, ptr %flags6.i169.i, align 2
  %len7.i170.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161.i, i32 1, i32 2
  %469 = ptrtoint ptr %len7.i170.i to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 1, ptr %len7.i170.i, align 4
  %buf8.i171.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161.i, i32 1, i32 3
  %470 = ptrtoint ptr %buf8.i171.i to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr %b1.i160.i, ptr %buf8.i171.i, align 4
  %471 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %1, align 4
  %call.i172.i = call i32 @i2c_transfer(ptr noundef %472, ptr noundef nonnull %msg.i161.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i172.i)
  %cmp.not.i173.i = icmp eq i32 %call.i172.i, 2
  br i1 %cmp.not.i173.i, label %if.end.i175.i, label %if.end19.i.cx24110_readreg.exit177.i_crit_edge

if.end19.i.cx24110_readreg.exit177.i_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit177.i

if.end.i175.i:                                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %473 = ptrtoint ptr %b1.i160.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %b1.i160.i, align 1
  %conv12.i174.i = zext i8 %474 to i32
  br label %cx24110_readreg.exit177.i

cx24110_readreg.exit177.i:                        ; preds = %if.end.i175.i, %if.end19.i.cx24110_readreg.exit177.i_crit_edge
  %retval.0.i176.i = phi i32 [ %conv12.i174.i, %if.end.i175.i ], [ %call.i172.i, %if.end19.i.cx24110_readreg.exit177.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i161.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i160.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i159.i) #6
  %and21.i = and i32 %retval.0.i176.i, 240
  %475 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %arrayidx.i, align 4
  %or23.i = or i32 %476, %and21.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i178.i) #6
  %477 = getelementptr inbounds [2 x i8], ptr %buf.i178.i, i32 0, i32 1
  %478 = ptrtoint ptr %buf.i178.i to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 5, ptr %buf.i178.i, align 1
  %conv1.i180.i = trunc i32 %or23.i to i8
  %479 = ptrtoint ptr %477 to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %conv1.i180.i, ptr %477, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i179.i) #6
  %480 = getelementptr inbounds i8, ptr %msg.i179.i, i32 4
  %481 = ptrtoint ptr %480 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 196607, ptr %480, align 4
  %482 = ptrtoint ptr %config.i127.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %config.i127.i, align 4
  %484 = ptrtoint ptr %483 to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %483, align 1
  %conv2.i182.i = zext i8 %485 to i16
  %486 = ptrtoint ptr %msg.i179.i to i32
  call void @__asan_store2_noabort(i32 %486)
  store i16 %conv2.i182.i, ptr %msg.i179.i, align 4
  %flags.i183.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i179.i, i32 0, i32 1
  %487 = ptrtoint ptr %flags.i183.i to i32
  call void @__asan_store2_noabort(i32 %487)
  store i16 0, ptr %flags.i183.i, align 2
  %buf3.i185.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i179.i, i32 0, i32 3
  %488 = ptrtoint ptr %buf3.i185.i to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr %buf.i178.i, ptr %buf3.i185.i, align 4
  %489 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %1, align 4
  %call.i186.i = call i32 @i2c_transfer(ptr noundef %490, ptr noundef nonnull %msg.i179.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i186.i)
  %cmp.not.i187.i = icmp eq i32 %call.i186.i, 1
  br i1 %cmp.not.i187.i, label %cx24110_readreg.exit177.i.cx24110_writereg.exit193.i_crit_edge, label %do.body.i189.i

cx24110_readreg.exit177.i.cx24110_writereg.exit193.i_crit_edge: ; preds = %cx24110_readreg.exit177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit193.i

do.body.i189.i:                                   ; preds = %cx24110_readreg.exit177.i
  %491 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %491)
  %tobool.not.i188.i = icmp eq i32 %491, 0
  br i1 %tobool.not.i188.i, label %do.body.i189.i.cx24110_writereg.exit193.i_crit_edge, label %do.end.i191.i

do.body.i189.i.cx24110_writereg.exit193.i_crit_edge: ; preds = %do.body.i189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit193.i

do.end.i191.i:                                    ; preds = %do.body.i189.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i190.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i186.i, i32 noundef 5, i32 noundef %or23.i) #10
  br label %cx24110_writereg.exit193.i

cx24110_writereg.exit193.i:                       ; preds = %do.end.i191.i, %do.body.i189.i.cx24110_writereg.exit193.i_crit_edge, %cx24110_readreg.exit177.i.cx24110_writereg.exit193.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i179.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i178.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i194.i) #6
  %492 = ptrtoint ptr %b0.i194.i to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 34, ptr %b0.i194.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i195.i) #6
  %493 = ptrtoint ptr %b1.i195.i to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 0, ptr %b1.i195.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i196.i) #6
  %494 = getelementptr inbounds i8, ptr %msg.i196.i, i32 4
  %495 = call ptr @memset(ptr %494, i32 255, i32 16)
  %496 = ptrtoint ptr %config.i127.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %config.i127.i, align 4
  %498 = ptrtoint ptr %497 to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %497, align 1
  %conv.i198.i = zext i8 %499 to i16
  %500 = ptrtoint ptr %msg.i196.i to i32
  call void @__asan_store2_noabort(i32 %500)
  store i16 %conv.i198.i, ptr %msg.i196.i, align 4
  %flags.i199.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i196.i, i32 0, i32 1
  %501 = ptrtoint ptr %flags.i199.i to i32
  call void @__asan_store2_noabort(i32 %501)
  store i16 0, ptr %flags.i199.i, align 2
  %502 = ptrtoint ptr %494 to i32
  call void @__asan_store2_noabort(i32 %502)
  store i16 1, ptr %494, align 4
  %buf.i201.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i196.i, i32 0, i32 3
  %503 = ptrtoint ptr %buf.i201.i to i32
  call void @__asan_store4_noabort(i32 %503)
  store ptr %b0.i194.i, ptr %buf.i201.i, align 4
  %arrayinit.element.i202.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i196.i, i32 1
  %504 = load i8, ptr %497, align 1
  %conv5.i203.i = zext i8 %504 to i16
  %505 = ptrtoint ptr %arrayinit.element.i202.i to i32
  call void @__asan_store2_noabort(i32 %505)
  store i16 %conv5.i203.i, ptr %arrayinit.element.i202.i, align 4
  %flags6.i204.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i196.i, i32 1, i32 1
  %506 = ptrtoint ptr %flags6.i204.i to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 1, ptr %flags6.i204.i, align 2
  %len7.i205.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i196.i, i32 1, i32 2
  %507 = ptrtoint ptr %len7.i205.i to i32
  call void @__asan_store2_noabort(i32 %507)
  store i16 1, ptr %len7.i205.i, align 4
  %buf8.i206.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i196.i, i32 1, i32 3
  %508 = ptrtoint ptr %buf8.i206.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %b1.i195.i, ptr %buf8.i206.i, align 4
  %509 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %1, align 4
  %call.i207.i = call i32 @i2c_transfer(ptr noundef %510, ptr noundef nonnull %msg.i196.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i207.i)
  %cmp.not.i208.i = icmp eq i32 %call.i207.i, 2
  br i1 %cmp.not.i208.i, label %if.end.i210.i, label %cx24110_writereg.exit193.i.cx24110_readreg.exit212.i_crit_edge

cx24110_writereg.exit193.i.cx24110_readreg.exit212.i_crit_edge: ; preds = %cx24110_writereg.exit193.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit212.i

if.end.i210.i:                                    ; preds = %cx24110_writereg.exit193.i
  call void @__sanitizer_cov_trace_pc() #8
  %511 = ptrtoint ptr %b1.i195.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %b1.i195.i, align 1
  %conv12.i209.i = zext i8 %512 to i32
  br label %cx24110_readreg.exit212.i

cx24110_readreg.exit212.i:                        ; preds = %if.end.i210.i, %cx24110_writereg.exit193.i.cx24110_readreg.exit212.i_crit_edge
  %retval.0.i211.i = phi i32 [ %conv12.i209.i, %if.end.i210.i ], [ %call.i207.i, %cx24110_writereg.exit193.i.cx24110_readreg.exit212.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i196.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i195.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i194.i) #6
  %and26.i = and i32 %retval.0.i211.i, 240
  %or28.i = or i32 %and26.i, %476
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i213.i) #6
  %513 = getelementptr inbounds [2 x i8], ptr %buf.i213.i, i32 0, i32 1
  %514 = ptrtoint ptr %buf.i213.i to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 34, ptr %buf.i213.i, align 1
  %conv1.i215.i = trunc i32 %or28.i to i8
  %515 = ptrtoint ptr %513 to i32
  call void @__asan_store1_noabort(i32 %515)
  store i8 %conv1.i215.i, ptr %513, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i214.i) #6
  %516 = getelementptr inbounds i8, ptr %msg.i214.i, i32 4
  %517 = ptrtoint ptr %516 to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 196607, ptr %516, align 4
  %518 = ptrtoint ptr %config.i127.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %config.i127.i, align 4
  %520 = ptrtoint ptr %519 to i32
  call void @__asan_load1_noabort(i32 %520)
  %521 = load i8, ptr %519, align 1
  %conv2.i217.i = zext i8 %521 to i16
  %522 = ptrtoint ptr %msg.i214.i to i32
  call void @__asan_store2_noabort(i32 %522)
  store i16 %conv2.i217.i, ptr %msg.i214.i, align 4
  %flags.i218.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i214.i, i32 0, i32 1
  %523 = ptrtoint ptr %flags.i218.i to i32
  call void @__asan_store2_noabort(i32 %523)
  store i16 0, ptr %flags.i218.i, align 2
  %buf3.i220.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i214.i, i32 0, i32 3
  %524 = ptrtoint ptr %buf3.i220.i to i32
  call void @__asan_store4_noabort(i32 %524)
  store ptr %buf.i213.i, ptr %buf3.i220.i, align 4
  %525 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %1, align 4
  %call.i221.i = call i32 @i2c_transfer(ptr noundef %526, ptr noundef nonnull %msg.i214.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i221.i)
  %cmp.not.i222.i = icmp eq i32 %call.i221.i, 1
  br i1 %cmp.not.i222.i, label %cx24110_readreg.exit212.i.cx24110_writereg.exit228.i_crit_edge, label %do.body.i224.i

cx24110_readreg.exit212.i.cx24110_writereg.exit228.i_crit_edge: ; preds = %cx24110_readreg.exit212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit228.i

do.body.i224.i:                                   ; preds = %cx24110_readreg.exit212.i
  %527 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %527)
  %tobool.not.i223.i = icmp eq i32 %527, 0
  br i1 %tobool.not.i223.i, label %do.body.i224.i.cx24110_writereg.exit228.i_crit_edge, label %do.end.i226.i

do.body.i224.i.cx24110_writereg.exit228.i_crit_edge: ; preds = %do.body.i224.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit228.i

do.end.i226.i:                                    ; preds = %do.body.i224.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i225.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i221.i, i32 noundef 34, i32 noundef %or28.i) #10
  br label %cx24110_writereg.exit228.i

cx24110_writereg.exit228.i:                       ; preds = %do.end.i226.i, %do.body.i224.i.cx24110_writereg.exit228.i_crit_edge, %cx24110_readreg.exit212.i.cx24110_writereg.exit228.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i214.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i213.i) #6
  %arrayidx30.i = getelementptr [9 x i32], ptr @cx24110_set_fec.g1, i32 0, i32 %263
  %528 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %arrayidx30.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i229.i) #6
  %530 = getelementptr inbounds [2 x i8], ptr %buf.i229.i, i32 0, i32 1
  %531 = ptrtoint ptr %buf.i229.i to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 26, ptr %buf.i229.i, align 1
  %conv1.i231.i = trunc i32 %529 to i8
  %532 = ptrtoint ptr %530 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %conv1.i231.i, ptr %530, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i230.i) #6
  %533 = getelementptr inbounds i8, ptr %msg.i230.i, i32 4
  %534 = ptrtoint ptr %533 to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 196607, ptr %533, align 4
  %535 = ptrtoint ptr %config.i127.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %config.i127.i, align 4
  %537 = ptrtoint ptr %536 to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %536, align 1
  %conv2.i233.i = zext i8 %538 to i16
  %539 = ptrtoint ptr %msg.i230.i to i32
  call void @__asan_store2_noabort(i32 %539)
  store i16 %conv2.i233.i, ptr %msg.i230.i, align 4
  %flags.i234.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i230.i, i32 0, i32 1
  %540 = ptrtoint ptr %flags.i234.i to i32
  call void @__asan_store2_noabort(i32 %540)
  store i16 0, ptr %flags.i234.i, align 2
  %buf3.i236.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i230.i, i32 0, i32 3
  %541 = ptrtoint ptr %buf3.i236.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store ptr %buf.i229.i, ptr %buf3.i236.i, align 4
  %542 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %1, align 4
  %call.i237.i = call i32 @i2c_transfer(ptr noundef %543, ptr noundef nonnull %msg.i230.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i237.i)
  %cmp.not.i238.i = icmp eq i32 %call.i237.i, 1
  br i1 %cmp.not.i238.i, label %cx24110_writereg.exit228.i.cx24110_writereg.exit244.i_crit_edge, label %do.body.i240.i

cx24110_writereg.exit228.i.cx24110_writereg.exit244.i_crit_edge: ; preds = %cx24110_writereg.exit228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit244.i

do.body.i240.i:                                   ; preds = %cx24110_writereg.exit228.i
  %544 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %544)
  %tobool.not.i239.i = icmp eq i32 %544, 0
  br i1 %tobool.not.i239.i, label %do.body.i240.i.cx24110_writereg.exit244.i_crit_edge, label %do.end.i242.i

do.body.i240.i.cx24110_writereg.exit244.i_crit_edge: ; preds = %do.body.i240.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit244.i

do.end.i242.i:                                    ; preds = %do.body.i240.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i241.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i237.i, i32 noundef 26, i32 noundef %529) #10
  br label %cx24110_writereg.exit244.i

cx24110_writereg.exit244.i:                       ; preds = %do.end.i242.i, %do.body.i240.i.cx24110_writereg.exit244.i_crit_edge, %cx24110_writereg.exit228.i.cx24110_writereg.exit244.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i230.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i229.i) #6
  %arrayidx32.i = getelementptr [9 x i32], ptr @cx24110_set_fec.g2, i32 0, i32 %263
  %545 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load i32, ptr %arrayidx32.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i245.i) #6
  %547 = getelementptr inbounds [2 x i8], ptr %buf.i245.i, i32 0, i32 1
  %548 = ptrtoint ptr %buf.i245.i to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 27, ptr %buf.i245.i, align 1
  %conv1.i247.i = trunc i32 %546 to i8
  %549 = ptrtoint ptr %547 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 %conv1.i247.i, ptr %547, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i246.i) #6
  %550 = getelementptr inbounds i8, ptr %msg.i246.i, i32 4
  %551 = ptrtoint ptr %550 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 196607, ptr %550, align 4
  %552 = ptrtoint ptr %config.i127.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %config.i127.i, align 4
  %554 = ptrtoint ptr %553 to i32
  call void @__asan_load1_noabort(i32 %554)
  %555 = load i8, ptr %553, align 1
  %conv2.i249.i = zext i8 %555 to i16
  %556 = ptrtoint ptr %msg.i246.i to i32
  call void @__asan_store2_noabort(i32 %556)
  store i16 %conv2.i249.i, ptr %msg.i246.i, align 4
  %flags.i250.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i246.i, i32 0, i32 1
  %557 = ptrtoint ptr %flags.i250.i to i32
  call void @__asan_store2_noabort(i32 %557)
  store i16 0, ptr %flags.i250.i, align 2
  %buf3.i252.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i246.i, i32 0, i32 3
  %558 = ptrtoint ptr %buf3.i252.i to i32
  call void @__asan_store4_noabort(i32 %558)
  store ptr %buf.i245.i, ptr %buf3.i252.i, align 4
  %559 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %1, align 4
  %call.i253.i = call i32 @i2c_transfer(ptr noundef %560, ptr noundef nonnull %msg.i246.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i253.i)
  %cmp.not.i254.i = icmp eq i32 %call.i253.i, 1
  br i1 %cmp.not.i254.i, label %cx24110_writereg.exit244.i.cx24110_writereg.exit260.i_crit_edge, label %do.body.i256.i

cx24110_writereg.exit244.i.cx24110_writereg.exit260.i_crit_edge: ; preds = %cx24110_writereg.exit244.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit260.i

do.body.i256.i:                                   ; preds = %cx24110_writereg.exit244.i
  %561 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %561)
  %tobool.not.i255.i = icmp eq i32 %561, 0
  br i1 %tobool.not.i255.i, label %do.body.i256.i.cx24110_writereg.exit260.i_crit_edge, label %do.end.i258.i

do.body.i256.i.cx24110_writereg.exit260.i_crit_edge: ; preds = %do.body.i256.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit260.i

do.end.i258.i:                                    ; preds = %do.body.i256.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i257.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i253.i, i32 noundef 27, i32 noundef %546) #10
  br label %cx24110_writereg.exit260.i

cx24110_writereg.exit260.i:                       ; preds = %do.end.i258.i, %do.body.i256.i.cx24110_writereg.exit260.i_crit_edge, %cx24110_writereg.exit244.i.cx24110_writereg.exit260.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i246.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i245.i) #6
  br label %cx24110_set_fec.exit

cx24110_set_fec.exit:                             ; preds = %cx24110_writereg.exit260.i, %cx24110_writereg.exit158.i.cx24110_set_fec.exit_crit_edge, %cx24110_writereg.exit158.i.cx24110_set_fec.exit_crit_edge130, %cx24110_writereg.exit123.i
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %562 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load i32, ptr %symbol_rate, align 4
  %564 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %564)
  %tobool.not.i = icmp eq i32 %564, 0
  br i1 %tobool.not.i, label %cx24110_set_fec.exit.do.end4.i_crit_edge, label %do.end.i

cx24110_set_fec.exit.do.end4.i_crit_edge:         ; preds = %cx24110_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i:                                         ; preds = %cx24110_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %563) #10
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %cx24110_set_fec.exit.do.end4.i_crit_edge
  %565 = call i32 @llvm.umin.i32(i32 %563, i32 45499500) #6
  %566 = call i32 @llvm.umax.i32(i32 %565, i32 500000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %566)
  %cmp11.i = icmp ugt i32 %566, 5000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000000, i32 %566)
  %cmp11.1.i = icmp ugt i32 %566, 15000000
  %spec.select.i = select i1 %cmp11.1.i, i32 2, i32 1
  %i.0.lcssa.i = select i1 %cmp11.i, i32 %spec.select.i, i32 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i69) #6
  %567 = ptrtoint ptr %b0.i.i69 to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 7, ptr %b0.i.i69, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i70) #6
  %568 = ptrtoint ptr %b1.i.i70 to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 0, ptr %b1.i.i70, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i71) #6
  %569 = getelementptr inbounds i8, ptr %msg.i.i71, i32 4
  %570 = call ptr @memset(ptr %569, i32 255, i32 16)
  %config.i.i72 = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
  %571 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %config.i.i72, align 4
  %573 = ptrtoint ptr %572 to i32
  call void @__asan_load1_noabort(i32 %573)
  %574 = load i8, ptr %572, align 1
  %conv.i.i73 = zext i8 %574 to i16
  %575 = ptrtoint ptr %msg.i.i71 to i32
  call void @__asan_store2_noabort(i32 %575)
  store i16 %conv.i.i73, ptr %msg.i.i71, align 4
  %flags.i.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71, i32 0, i32 1
  %576 = ptrtoint ptr %flags.i.i74 to i32
  call void @__asan_store2_noabort(i32 %576)
  store i16 0, ptr %flags.i.i74, align 2
  %577 = ptrtoint ptr %569 to i32
  call void @__asan_store2_noabort(i32 %577)
  store i16 1, ptr %569, align 4
  %buf.i.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71, i32 0, i32 3
  %578 = ptrtoint ptr %buf.i.i75 to i32
  call void @__asan_store4_noabort(i32 %578)
  store ptr %b0.i.i69, ptr %buf.i.i75, align 4
  %arrayinit.element.i.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71, i32 1
  %579 = load i8, ptr %572, align 1
  %conv5.i.i77 = zext i8 %579 to i16
  %580 = ptrtoint ptr %arrayinit.element.i.i76 to i32
  call void @__asan_store2_noabort(i32 %580)
  store i16 %conv5.i.i77, ptr %arrayinit.element.i.i76, align 4
  %flags6.i.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71, i32 1, i32 1
  %581 = ptrtoint ptr %flags6.i.i78 to i32
  call void @__asan_store2_noabort(i32 %581)
  store i16 1, ptr %flags6.i.i78, align 2
  %len7.i.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71, i32 1, i32 2
  %582 = ptrtoint ptr %len7.i.i79 to i32
  call void @__asan_store2_noabort(i32 %582)
  store i16 1, ptr %len7.i.i79, align 4
  %buf8.i.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71, i32 1, i32 3
  %583 = ptrtoint ptr %buf8.i.i80 to i32
  call void @__asan_store4_noabort(i32 %583)
  store ptr %b1.i.i70, ptr %buf8.i.i80, align 4
  %584 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %1, align 4
  %call.i.i81 = call i32 @i2c_transfer(ptr noundef %585, ptr noundef nonnull %msg.i.i71, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i81)
  %cmp.not.i.i82 = icmp eq i32 %call.i.i81, 2
  br i1 %cmp.not.i.i82, label %if.end.i.i84, label %do.end4.i.cx24110_readreg.exit.i87_crit_edge

do.end4.i.cx24110_readreg.exit.i87_crit_edge:     ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit.i87

if.end.i.i84:                                     ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %586 = ptrtoint ptr %b1.i.i70 to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %b1.i.i70, align 1
  %conv12.i.i83 = zext i8 %587 to i32
  br label %cx24110_readreg.exit.i87

cx24110_readreg.exit.i87:                         ; preds = %if.end.i.i84, %do.end4.i.cx24110_readreg.exit.i87_crit_edge
  %retval.0.i.i85 = phi i32 [ %conv12.i.i83, %if.end.i.i84 ], [ %call.i.i81, %do.end4.i.cx24110_readreg.exit.i87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i71) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i70) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i69) #6
  %and.i86 = and i32 %retval.0.i.i85, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 22749750, i32 %566)
  %cmp13.i = icmp ult i32 %566, 22749750
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i109

if.then14.i:                                      ; preds = %cx24110_readreg.exit.i87
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i67) #6
  %588 = getelementptr inbounds [2 x i8], ptr %buf.i1.i67, i32 0, i32 1
  %589 = ptrtoint ptr %buf.i1.i67 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 7, ptr %buf.i1.i67, align 1
  %conv1.i.i88 = trunc i32 %and.i86 to i8
  %590 = ptrtoint ptr %588 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 %conv1.i.i88, ptr %588, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i68) #6
  %591 = getelementptr inbounds i8, ptr %msg.i2.i68, i32 4
  %592 = ptrtoint ptr %591 to i32
  call void @__asan_store4_noabort(i32 %592)
  store i32 196607, ptr %591, align 4
  %593 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %config.i.i72, align 4
  %595 = ptrtoint ptr %594 to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %594, align 1
  %conv2.i.i89 = zext i8 %596 to i16
  %597 = ptrtoint ptr %msg.i2.i68 to i32
  call void @__asan_store2_noabort(i32 %597)
  store i16 %conv2.i.i89, ptr %msg.i2.i68, align 4
  %flags.i4.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i68, i32 0, i32 1
  %598 = ptrtoint ptr %flags.i4.i90 to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 0, ptr %flags.i4.i90, align 2
  %buf3.i.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i68, i32 0, i32 3
  %599 = ptrtoint ptr %buf3.i.i91 to i32
  call void @__asan_store4_noabort(i32 %599)
  store ptr %buf.i1.i67, ptr %buf3.i.i91, align 4
  %600 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %1, align 4
  %call.i6.i92 = call i32 @i2c_transfer(ptr noundef %601, ptr noundef nonnull %msg.i2.i68, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6.i92)
  %cmp.not.i7.i93 = icmp eq i32 %call.i6.i92, 1
  br i1 %cmp.not.i7.i93, label %if.then14.i.cx24110_writereg.exit.i103_crit_edge, label %do.body.i.i95

if.then14.i.cx24110_writereg.exit.i103_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit.i103

do.body.i.i95:                                    ; preds = %if.then14.i
  %602 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %602)
  %tobool.not.i.i94 = icmp eq i32 %602, 0
  br i1 %tobool.not.i.i94, label %do.body.i.i95.cx24110_writereg.exit.i103_crit_edge, label %do.end.i.i97

do.body.i.i95.cx24110_writereg.exit.i103_crit_edge: ; preds = %do.body.i.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit.i103

do.end.i.i97:                                     ; preds = %do.body.i.i95
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i6.i92, i32 noundef 7, i32 noundef %and.i86) #10
  br label %cx24110_writereg.exit.i103

cx24110_writereg.exit.i103:                       ; preds = %do.end.i.i97, %do.body.i.i95.cx24110_writereg.exit.i103_crit_edge, %if.then14.i.cx24110_writereg.exit.i103_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i68) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i67) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i9.i65) #6
  %603 = getelementptr inbounds [2 x i8], ptr %buf.i9.i65, i32 0, i32 1
  %604 = ptrtoint ptr %buf.i9.i65 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 6, ptr %buf.i9.i65, align 1
  %605 = ptrtoint ptr %603 to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 120, ptr %603, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10.i66) #6
  %606 = getelementptr inbounds i8, ptr %msg.i10.i66, i32 4
  %607 = ptrtoint ptr %606 to i32
  call void @__asan_store4_noabort(i32 %607)
  store i32 196607, ptr %606, align 4
  %608 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %config.i.i72, align 4
  %610 = ptrtoint ptr %609 to i32
  call void @__asan_load1_noabort(i32 %610)
  %611 = load i8, ptr %609, align 1
  %conv2.i12.i98 = zext i8 %611 to i16
  %612 = ptrtoint ptr %msg.i10.i66 to i32
  call void @__asan_store2_noabort(i32 %612)
  store i16 %conv2.i12.i98, ptr %msg.i10.i66, align 4
  %flags.i13.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i66, i32 0, i32 1
  %613 = ptrtoint ptr %flags.i13.i99 to i32
  call void @__asan_store2_noabort(i32 %613)
  store i16 0, ptr %flags.i13.i99, align 2
  %buf3.i15.i100 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10.i66, i32 0, i32 3
  %614 = ptrtoint ptr %buf3.i15.i100 to i32
  call void @__asan_store4_noabort(i32 %614)
  store ptr %buf.i9.i65, ptr %buf3.i15.i100, align 4
  %615 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %1, align 4
  %call.i16.i101 = call i32 @i2c_transfer(ptr noundef %616, ptr noundef nonnull %msg.i10.i66, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i16.i101)
  %cmp.not.i17.i102 = icmp eq i32 %call.i16.i101, 1
  br i1 %cmp.not.i17.i102, label %cx24110_writereg.exit.i103.cx24110_writereg.exit23.i108_crit_edge, label %do.body.i19.i105

cx24110_writereg.exit.i103.cx24110_writereg.exit23.i108_crit_edge: ; preds = %cx24110_writereg.exit.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit23.i108

do.body.i19.i105:                                 ; preds = %cx24110_writereg.exit.i103
  %617 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %617)
  %tobool.not.i18.i104 = icmp eq i32 %617, 0
  br i1 %tobool.not.i18.i104, label %do.body.i19.i105.cx24110_writereg.exit23.i108_crit_edge, label %do.end.i21.i107

do.body.i19.i105.cx24110_writereg.exit23.i108_crit_edge: ; preds = %do.body.i19.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit23.i108

do.end.i21.i107:                                  ; preds = %do.body.i19.i105
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i20.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i16.i101, i32 noundef 6, i32 noundef 120) #10
  br label %cx24110_writereg.exit23.i108

cx24110_writereg.exit23.i108:                     ; preds = %do.end.i21.i107, %do.body.i19.i105.cx24110_writereg.exit23.i108_crit_edge, %cx24110_writereg.exit.i103.cx24110_writereg.exit23.i108_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10.i66) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i9.i65) #6
  br label %do.body34.i

if.else.i109:                                     ; preds = %cx24110_readreg.exit.i87
  call void @__sanitizer_cov_trace_const_cmp4(i32 30333000, i32 %566)
  %cmp17.i = icmp ult i32 %566, 30333000
  br i1 %cmp17.i, label %if.then18.i, label %if.else21.i

if.then18.i:                                      ; preds = %if.else.i109
  %or.i110 = or i32 %and.i86, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i24.i) #6
  %618 = getelementptr inbounds [2 x i8], ptr %buf.i24.i, i32 0, i32 1
  %619 = ptrtoint ptr %buf.i24.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 7, ptr %buf.i24.i, align 1
  %conv1.i26.i = trunc i32 %or.i110 to i8
  %620 = ptrtoint ptr %618 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 %conv1.i26.i, ptr %618, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i25.i) #6
  %621 = getelementptr inbounds i8, ptr %msg.i25.i, i32 4
  %622 = ptrtoint ptr %621 to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 196607, ptr %621, align 4
  %623 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %config.i.i72, align 4
  %625 = ptrtoint ptr %624 to i32
  call void @__asan_load1_noabort(i32 %625)
  %626 = load i8, ptr %624, align 1
  %conv2.i28.i = zext i8 %626 to i16
  %627 = ptrtoint ptr %msg.i25.i to i32
  call void @__asan_store2_noabort(i32 %627)
  store i16 %conv2.i28.i, ptr %msg.i25.i, align 4
  %flags.i29.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25.i, i32 0, i32 1
  %628 = ptrtoint ptr %flags.i29.i111 to i32
  call void @__asan_store2_noabort(i32 %628)
  store i16 0, ptr %flags.i29.i111, align 2
  %buf3.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25.i, i32 0, i32 3
  %629 = ptrtoint ptr %buf3.i31.i to i32
  call void @__asan_store4_noabort(i32 %629)
  store ptr %buf.i24.i, ptr %buf3.i31.i, align 4
  %630 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %1, align 4
  %call.i32.i = call i32 @i2c_transfer(ptr noundef %631, ptr noundef nonnull %msg.i25.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i32.i)
  %cmp.not.i33.i = icmp eq i32 %call.i32.i, 1
  br i1 %cmp.not.i33.i, label %if.then18.i.cx24110_writereg.exit39.i_crit_edge, label %do.body.i35.i

if.then18.i.cx24110_writereg.exit39.i_crit_edge:  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit39.i

do.body.i35.i:                                    ; preds = %if.then18.i
  %632 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %632)
  %tobool.not.i34.i = icmp eq i32 %632, 0
  br i1 %tobool.not.i34.i, label %do.body.i35.i.cx24110_writereg.exit39.i_crit_edge, label %do.end.i37.i

do.body.i35.i.cx24110_writereg.exit39.i_crit_edge: ; preds = %do.body.i35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit39.i

do.end.i37.i:                                     ; preds = %do.body.i35.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i32.i, i32 noundef 7, i32 noundef %or.i110) #10
  br label %cx24110_writereg.exit39.i

cx24110_writereg.exit39.i:                        ; preds = %do.end.i37.i, %do.body.i35.i.cx24110_writereg.exit39.i_crit_edge, %if.then18.i.cx24110_writereg.exit39.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i24.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i40.i) #6
  %633 = getelementptr inbounds [2 x i8], ptr %buf.i40.i, i32 0, i32 1
  %634 = ptrtoint ptr %buf.i40.i to i32
  call void @__asan_store1_noabort(i32 %634)
  store i8 6, ptr %buf.i40.i, align 1
  %635 = ptrtoint ptr %633 to i32
  call void @__asan_store1_noabort(i32 %635)
  store i8 -91, ptr %633, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i41.i) #6
  %636 = getelementptr inbounds i8, ptr %msg.i41.i, i32 4
  %637 = ptrtoint ptr %636 to i32
  call void @__asan_store4_noabort(i32 %637)
  store i32 196607, ptr %636, align 4
  %638 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %config.i.i72, align 4
  %640 = ptrtoint ptr %639 to i32
  call void @__asan_load1_noabort(i32 %640)
  %641 = load i8, ptr %639, align 1
  %conv2.i43.i = zext i8 %641 to i16
  %642 = ptrtoint ptr %msg.i41.i to i32
  call void @__asan_store2_noabort(i32 %642)
  store i16 %conv2.i43.i, ptr %msg.i41.i, align 4
  %flags.i44.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41.i, i32 0, i32 1
  %643 = ptrtoint ptr %flags.i44.i to i32
  call void @__asan_store2_noabort(i32 %643)
  store i16 0, ptr %flags.i44.i, align 2
  %buf3.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41.i, i32 0, i32 3
  %644 = ptrtoint ptr %buf3.i46.i to i32
  call void @__asan_store4_noabort(i32 %644)
  store ptr %buf.i40.i, ptr %buf3.i46.i, align 4
  %645 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %1, align 4
  %call.i47.i = call i32 @i2c_transfer(ptr noundef %646, ptr noundef nonnull %msg.i41.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i47.i)
  %cmp.not.i48.i = icmp eq i32 %call.i47.i, 1
  br i1 %cmp.not.i48.i, label %cx24110_writereg.exit39.i.cx24110_writereg.exit54.i_crit_edge, label %do.body.i50.i

cx24110_writereg.exit39.i.cx24110_writereg.exit54.i_crit_edge: ; preds = %cx24110_writereg.exit39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit54.i

do.body.i50.i:                                    ; preds = %cx24110_writereg.exit39.i
  %647 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %647)
  %tobool.not.i49.i = icmp eq i32 %647, 0
  br i1 %tobool.not.i49.i, label %do.body.i50.i.cx24110_writereg.exit54.i_crit_edge, label %do.end.i52.i

do.body.i50.i.cx24110_writereg.exit54.i_crit_edge: ; preds = %do.body.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit54.i

do.end.i52.i:                                     ; preds = %do.body.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i47.i, i32 noundef 6, i32 noundef 165) #10
  br label %cx24110_writereg.exit54.i

cx24110_writereg.exit54.i:                        ; preds = %do.end.i52.i, %do.body.i50.i.cx24110_writereg.exit54.i_crit_edge, %cx24110_writereg.exit39.i.cx24110_writereg.exit54.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i41.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i40.i) #6
  br label %do.body34.i

if.else21.i:                                      ; preds = %if.else.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 40444000, i32 %566)
  %cmp22.i = icmp ult i32 %566, 40444000
  br i1 %cmp22.i, label %if.then23.i, label %if.else27.i

if.then23.i:                                      ; preds = %if.else21.i
  %or24.i = or i32 %and.i86, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i55.i) #6
  %648 = getelementptr inbounds [2 x i8], ptr %buf.i55.i, i32 0, i32 1
  %649 = ptrtoint ptr %buf.i55.i to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 7, ptr %buf.i55.i, align 1
  %conv1.i57.i = trunc i32 %or24.i to i8
  %650 = ptrtoint ptr %648 to i32
  call void @__asan_store1_noabort(i32 %650)
  store i8 %conv1.i57.i, ptr %648, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56.i) #6
  %651 = getelementptr inbounds i8, ptr %msg.i56.i, i32 4
  %652 = ptrtoint ptr %651 to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 196607, ptr %651, align 4
  %653 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %config.i.i72, align 4
  %655 = ptrtoint ptr %654 to i32
  call void @__asan_load1_noabort(i32 %655)
  %656 = load i8, ptr %654, align 1
  %conv2.i59.i = zext i8 %656 to i16
  %657 = ptrtoint ptr %msg.i56.i to i32
  call void @__asan_store2_noabort(i32 %657)
  store i16 %conv2.i59.i, ptr %msg.i56.i, align 4
  %flags.i60.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56.i, i32 0, i32 1
  %658 = ptrtoint ptr %flags.i60.i to i32
  call void @__asan_store2_noabort(i32 %658)
  store i16 0, ptr %flags.i60.i, align 2
  %buf3.i62.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56.i, i32 0, i32 3
  %659 = ptrtoint ptr %buf3.i62.i to i32
  call void @__asan_store4_noabort(i32 %659)
  store ptr %buf.i55.i, ptr %buf3.i62.i, align 4
  %660 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %1, align 4
  %call.i63.i = call i32 @i2c_transfer(ptr noundef %661, ptr noundef nonnull %msg.i56.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i63.i)
  %cmp.not.i64.i = icmp eq i32 %call.i63.i, 1
  br i1 %cmp.not.i64.i, label %if.then23.i.cx24110_writereg.exit70.i_crit_edge, label %do.body.i66.i

if.then23.i.cx24110_writereg.exit70.i_crit_edge:  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit70.i

do.body.i66.i:                                    ; preds = %if.then23.i
  %662 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %662)
  %tobool.not.i65.i = icmp eq i32 %662, 0
  br i1 %tobool.not.i65.i, label %do.body.i66.i.cx24110_writereg.exit70.i_crit_edge, label %do.end.i68.i

do.body.i66.i.cx24110_writereg.exit70.i_crit_edge: ; preds = %do.body.i66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit70.i

do.end.i68.i:                                     ; preds = %do.body.i66.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i63.i, i32 noundef 7, i32 noundef %or24.i) #10
  br label %cx24110_writereg.exit70.i

cx24110_writereg.exit70.i:                        ; preds = %do.end.i68.i, %do.body.i66.i.cx24110_writereg.exit70.i_crit_edge, %if.then23.i.cx24110_writereg.exit70.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i55.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i71.i) #6
  %663 = getelementptr inbounds [2 x i8], ptr %buf.i71.i, i32 0, i32 1
  %664 = ptrtoint ptr %buf.i71.i to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 6, ptr %buf.i71.i, align 1
  %665 = ptrtoint ptr %663 to i32
  call void @__asan_store1_noabort(i32 %665)
  store i8 -121, ptr %663, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i72.i) #6
  %666 = getelementptr inbounds i8, ptr %msg.i72.i, i32 4
  %667 = ptrtoint ptr %666 to i32
  call void @__asan_store4_noabort(i32 %667)
  store i32 196607, ptr %666, align 4
  %668 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %config.i.i72, align 4
  %670 = ptrtoint ptr %669 to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %669, align 1
  %conv2.i74.i = zext i8 %671 to i16
  %672 = ptrtoint ptr %msg.i72.i to i32
  call void @__asan_store2_noabort(i32 %672)
  store i16 %conv2.i74.i, ptr %msg.i72.i, align 4
  %flags.i75.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72.i, i32 0, i32 1
  %673 = ptrtoint ptr %flags.i75.i to i32
  call void @__asan_store2_noabort(i32 %673)
  store i16 0, ptr %flags.i75.i, align 2
  %buf3.i77.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i72.i, i32 0, i32 3
  %674 = ptrtoint ptr %buf3.i77.i to i32
  call void @__asan_store4_noabort(i32 %674)
  store ptr %buf.i71.i, ptr %buf3.i77.i, align 4
  %675 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %1, align 4
  %call.i78.i = call i32 @i2c_transfer(ptr noundef %676, ptr noundef nonnull %msg.i72.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i78.i)
  %cmp.not.i79.i = icmp eq i32 %call.i78.i, 1
  br i1 %cmp.not.i79.i, label %cx24110_writereg.exit70.i.cx24110_writereg.exit85.i_crit_edge, label %do.body.i81.i

cx24110_writereg.exit70.i.cx24110_writereg.exit85.i_crit_edge: ; preds = %cx24110_writereg.exit70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit85.i

do.body.i81.i:                                    ; preds = %cx24110_writereg.exit70.i
  %677 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %677)
  %tobool.not.i80.i = icmp eq i32 %677, 0
  br i1 %tobool.not.i80.i, label %do.body.i81.i.cx24110_writereg.exit85.i_crit_edge, label %do.end.i83.i

do.body.i81.i.cx24110_writereg.exit85.i_crit_edge: ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit85.i

do.end.i83.i:                                     ; preds = %do.body.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i82.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i78.i, i32 noundef 6, i32 noundef 135) #10
  br label %cx24110_writereg.exit85.i

cx24110_writereg.exit85.i:                        ; preds = %do.end.i83.i, %do.body.i81.i.cx24110_writereg.exit85.i_crit_edge, %cx24110_writereg.exit70.i.cx24110_writereg.exit85.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i72.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i71.i) #6
  br label %do.body34.i

if.else27.i:                                      ; preds = %if.else21.i
  %or28.i112 = or i32 %and.i86, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i86.i64) #6
  %678 = getelementptr inbounds [2 x i8], ptr %buf.i86.i64, i32 0, i32 1
  %679 = ptrtoint ptr %buf.i86.i64 to i32
  call void @__asan_store1_noabort(i32 %679)
  store i8 7, ptr %buf.i86.i64, align 1
  %conv1.i88.i = trunc i32 %or28.i112 to i8
  %680 = ptrtoint ptr %678 to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 %conv1.i88.i, ptr %678, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i87.i) #6
  %681 = getelementptr inbounds i8, ptr %msg.i87.i, i32 4
  %682 = ptrtoint ptr %681 to i32
  call void @__asan_store4_noabort(i32 %682)
  store i32 196607, ptr %681, align 4
  %683 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %config.i.i72, align 4
  %685 = ptrtoint ptr %684 to i32
  call void @__asan_load1_noabort(i32 %685)
  %686 = load i8, ptr %684, align 1
  %conv2.i90.i = zext i8 %686 to i16
  %687 = ptrtoint ptr %msg.i87.i to i32
  call void @__asan_store2_noabort(i32 %687)
  store i16 %conv2.i90.i, ptr %msg.i87.i, align 4
  %flags.i91.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 1
  %688 = ptrtoint ptr %flags.i91.i to i32
  call void @__asan_store2_noabort(i32 %688)
  store i16 0, ptr %flags.i91.i, align 2
  %buf3.i93.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87.i, i32 0, i32 3
  %689 = ptrtoint ptr %buf3.i93.i to i32
  call void @__asan_store4_noabort(i32 %689)
  store ptr %buf.i86.i64, ptr %buf3.i93.i, align 4
  %690 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %1, align 4
  %call.i94.i = call i32 @i2c_transfer(ptr noundef %691, ptr noundef nonnull %msg.i87.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i94.i)
  %cmp.not.i95.i = icmp eq i32 %call.i94.i, 1
  br i1 %cmp.not.i95.i, label %if.else27.i.cx24110_writereg.exit101.i_crit_edge, label %do.body.i97.i

if.else27.i.cx24110_writereg.exit101.i_crit_edge: ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit101.i

do.body.i97.i:                                    ; preds = %if.else27.i
  %692 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %692)
  %tobool.not.i96.i = icmp eq i32 %692, 0
  br i1 %tobool.not.i96.i, label %do.body.i97.i.cx24110_writereg.exit101.i_crit_edge, label %do.end.i99.i

do.body.i97.i.cx24110_writereg.exit101.i_crit_edge: ; preds = %do.body.i97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit101.i

do.end.i99.i:                                     ; preds = %do.body.i97.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i94.i, i32 noundef 7, i32 noundef %or28.i112) #10
  br label %cx24110_writereg.exit101.i

cx24110_writereg.exit101.i:                       ; preds = %do.end.i99.i, %do.body.i97.i.cx24110_writereg.exit101.i_crit_edge, %if.else27.i.cx24110_writereg.exit101.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i87.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i86.i64) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i102.i) #6
  %693 = getelementptr inbounds [2 x i8], ptr %buf.i102.i, i32 0, i32 1
  %694 = ptrtoint ptr %buf.i102.i to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 6, ptr %buf.i102.i, align 1
  %695 = ptrtoint ptr %693 to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 120, ptr %693, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i103.i) #6
  %696 = getelementptr inbounds i8, ptr %msg.i103.i, i32 4
  %697 = ptrtoint ptr %696 to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 196607, ptr %696, align 4
  %698 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %config.i.i72, align 4
  %700 = ptrtoint ptr %699 to i32
  call void @__asan_load1_noabort(i32 %700)
  %701 = load i8, ptr %699, align 1
  %conv2.i105.i = zext i8 %701 to i16
  %702 = ptrtoint ptr %msg.i103.i to i32
  call void @__asan_store2_noabort(i32 %702)
  store i16 %conv2.i105.i, ptr %msg.i103.i, align 4
  %flags.i106.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103.i, i32 0, i32 1
  %703 = ptrtoint ptr %flags.i106.i to i32
  call void @__asan_store2_noabort(i32 %703)
  store i16 0, ptr %flags.i106.i, align 2
  %buf3.i108.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103.i, i32 0, i32 3
  %704 = ptrtoint ptr %buf3.i108.i to i32
  call void @__asan_store4_noabort(i32 %704)
  store ptr %buf.i102.i, ptr %buf3.i108.i, align 4
  %705 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %1, align 4
  %call.i109.i = call i32 @i2c_transfer(ptr noundef %706, ptr noundef nonnull %msg.i103.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i109.i)
  %cmp.not.i110.i = icmp eq i32 %call.i109.i, 1
  br i1 %cmp.not.i110.i, label %cx24110_writereg.exit101.i.cx24110_writereg.exit116.i_crit_edge, label %do.body.i112.i

cx24110_writereg.exit101.i.cx24110_writereg.exit116.i_crit_edge: ; preds = %cx24110_writereg.exit101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit116.i

do.body.i112.i:                                   ; preds = %cx24110_writereg.exit101.i
  %707 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %707)
  %tobool.not.i111.i = icmp eq i32 %707, 0
  br i1 %tobool.not.i111.i, label %do.body.i112.i.cx24110_writereg.exit116.i_crit_edge, label %do.end.i114.i

do.body.i112.i.cx24110_writereg.exit116.i_crit_edge: ; preds = %do.body.i112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit116.i

do.end.i114.i:                                    ; preds = %do.body.i112.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i109.i, i32 noundef 6, i32 noundef 120) #10
  br label %cx24110_writereg.exit116.i

cx24110_writereg.exit116.i:                       ; preds = %do.end.i114.i, %do.body.i112.i.cx24110_writereg.exit116.i_crit_edge, %cx24110_writereg.exit101.i.cx24110_writereg.exit116.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i103.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i102.i) #6
  br label %do.body34.i

do.body34.i:                                      ; preds = %cx24110_writereg.exit116.i, %cx24110_writereg.exit85.i, %cx24110_writereg.exit54.i, %cx24110_writereg.exit23.i108
  %fclk.0.i = phi i32 [ 45499500, %cx24110_writereg.exit23.i108 ], [ 60666000, %cx24110_writereg.exit54.i ], [ 80888000, %cx24110_writereg.exit85.i ], [ 90999000, %cx24110_writereg.exit116.i ]
  %708 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %708)
  %tobool35.not.i = icmp eq i32 %708, 0
  br i1 %tobool35.not.i, label %do.body34.i.do.end44.i_crit_edge, label %do.end39.i

do.body34.i.do.end44.i_crit_edge:                 ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

do.end39.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %fclk.0.i) #10
  br label %do.end44.i

do.end44.i:                                       ; preds = %do.end39.i, %do.body34.i.do.end44.i_crit_edge
  %shl.i = shl nuw i32 %566, 6
  %shr.i = lshr exact i32 %fclk.0.i, 2
  %shl.i.frozen = freeze i32 %shl.i
  %shr.i.frozen = freeze i32 %shr.i
  %div.i = udiv i32 %shl.i.frozen, %shr.i.frozen
  %709 = mul i32 %div.i, %shr.i.frozen
  %rem.i.decomposed = sub i32 %shl.i.frozen, %709
  %shl45.i = shl i32 %rem.i.decomposed, 8
  %shl46.i = shl nuw nsw i32 %div.i, 8
  %shr.i.frozen128 = freeze i32 %shr.i
  %div47.i = udiv i32 %shl45.i, %shr.i.frozen128
  %add.i = add nuw nsw i32 %div47.i, %shl46.i
  %710 = mul i32 %div47.i, %shr.i.frozen128
  %rem48.i.decomposed = sub i32 %shl45.i, %710
  %shl49.i = shl i32 %rem48.i.decomposed, 8
  %shl50.i = shl nuw nsw i32 %add.i, 8
  %shl49.i.frozen = freeze i32 %shl49.i
  %shr.i.frozen129 = freeze i32 %shr.i
  %div51.i = udiv i32 %shl49.i.frozen, %shr.i.frozen129
  %add52.i = add nuw nsw i32 %shl50.i, %div51.i
  %711 = mul i32 %div51.i, %shr.i.frozen129
  %rem53.i.decomposed = sub i32 %shl49.i.frozen, %711
  %shl54.i = shl nuw nsw i32 %rem53.i.decomposed, 1
  %shl55.i = shl nuw nsw i32 %add52.i, 1
  %div56.i = udiv i32 %shl54.i, %shr.i
  %add57.i = add nuw nsw i32 %shl55.i, %div56.i
  %712 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %712)
  %tobool59.not.i = icmp eq i32 %712, 0
  br i1 %tobool59.not.i, label %do.end44.i.do.end91.i_crit_edge, label %do.body70.i

do.end44.i.do.end91.i_crit_edge:                  ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end91.i

do.body70.i:                                      ; preds = %do.end44.i
  %arrayidx65.i = getelementptr [3 x i32], ptr @cx24110_set_symbolrate.bands, i32 0, i32 %i.0.lcssa.i
  %713 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %arrayidx65.i, align 4
  %call66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %566, i32 noundef %i.0.lcssa.i, i32 noundef %714) #10
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool71.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool71.not.i, label %do.body70.i.do.end91.i_crit_edge, label %do.body81.i

do.body70.i.do.end91.i_crit_edge:                 ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end91.i

do.body81.i:                                      ; preds = %do.body70.i
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %fclk.0.i) #10
  %.pr166.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr166.i)
  %tobool82.not.i = icmp eq i32 %.pr166.i, 0
  br i1 %tobool82.not.i, label %do.body81.i.do.end91.i_crit_edge, label %do.end86.i

do.body81.i.do.end91.i_crit_edge:                 ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end91.i

do.end86.i:                                       ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #8
  %call88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %add57.i) #10
  br label %do.end91.i

do.end91.i:                                       ; preds = %do.end86.i, %do.body81.i.do.end91.i_crit_edge, %do.body70.i.do.end91.i_crit_edge, %do.end44.i.do.end91.i_crit_edge
  %shr92.i = lshr i32 %add57.i, 16
  %and93.i = and i32 %shr92.i, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i117.i) #6
  %715 = getelementptr inbounds [2 x i8], ptr %buf.i117.i, i32 0, i32 1
  %716 = ptrtoint ptr %buf.i117.i to i32
  call void @__asan_store1_noabort(i32 %716)
  store i8 1, ptr %buf.i117.i, align 1
  %conv1.i119.i = trunc i32 %shr92.i to i8
  %717 = ptrtoint ptr %715 to i32
  call void @__asan_store1_noabort(i32 %717)
  store i8 %conv1.i119.i, ptr %715, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i118.i) #6
  %718 = getelementptr inbounds i8, ptr %msg.i118.i, i32 4
  %719 = ptrtoint ptr %718 to i32
  call void @__asan_store4_noabort(i32 %719)
  store i32 196607, ptr %718, align 4
  %720 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %config.i.i72, align 4
  %722 = ptrtoint ptr %721 to i32
  call void @__asan_load1_noabort(i32 %722)
  %723 = load i8, ptr %721, align 1
  %conv2.i121.i = zext i8 %723 to i16
  %724 = ptrtoint ptr %msg.i118.i to i32
  call void @__asan_store2_noabort(i32 %724)
  store i16 %conv2.i121.i, ptr %msg.i118.i, align 4
  %flags.i122.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118.i, i32 0, i32 1
  %725 = ptrtoint ptr %flags.i122.i to i32
  call void @__asan_store2_noabort(i32 %725)
  store i16 0, ptr %flags.i122.i, align 2
  %buf3.i124.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i118.i, i32 0, i32 3
  %726 = ptrtoint ptr %buf3.i124.i to i32
  call void @__asan_store4_noabort(i32 %726)
  store ptr %buf.i117.i, ptr %buf3.i124.i, align 4
  %727 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %1, align 4
  %call.i125.i = call i32 @i2c_transfer(ptr noundef %728, ptr noundef nonnull %msg.i118.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i125.i)
  %cmp.not.i126.i = icmp eq i32 %call.i125.i, 1
  br i1 %cmp.not.i126.i, label %do.end91.i.cx24110_writereg.exit132.i_crit_edge, label %do.body.i128.i

do.end91.i.cx24110_writereg.exit132.i_crit_edge:  ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit132.i

do.body.i128.i:                                   ; preds = %do.end91.i
  %729 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %729)
  %tobool.not.i127.i = icmp eq i32 %729, 0
  br i1 %tobool.not.i127.i, label %do.body.i128.i.cx24110_writereg.exit132.i_crit_edge, label %do.end.i130.i

do.body.i128.i.cx24110_writereg.exit132.i_crit_edge: ; preds = %do.body.i128.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit132.i

do.end.i130.i:                                    ; preds = %do.body.i128.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i125.i, i32 noundef 1, i32 noundef %and93.i) #10
  br label %cx24110_writereg.exit132.i

cx24110_writereg.exit132.i:                       ; preds = %do.end.i130.i, %do.body.i128.i.cx24110_writereg.exit132.i_crit_edge, %do.end91.i.cx24110_writereg.exit132.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i118.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i117.i) #6
  %shr95.i = lshr i32 %add57.i, 8
  %and96.i = and i32 %shr95.i, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i133.i62) #6
  %730 = getelementptr inbounds [2 x i8], ptr %buf.i133.i62, i32 0, i32 1
  %731 = ptrtoint ptr %buf.i133.i62 to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 2, ptr %buf.i133.i62, align 1
  %conv1.i135.i113 = trunc i32 %shr95.i to i8
  %732 = ptrtoint ptr %730 to i32
  call void @__asan_store1_noabort(i32 %732)
  store i8 %conv1.i135.i113, ptr %730, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i134.i63) #6
  %733 = getelementptr inbounds i8, ptr %msg.i134.i63, i32 4
  %734 = ptrtoint ptr %733 to i32
  call void @__asan_store4_noabort(i32 %734)
  store i32 196607, ptr %733, align 4
  %735 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %config.i.i72, align 4
  %737 = ptrtoint ptr %736 to i32
  call void @__asan_load1_noabort(i32 %737)
  %738 = load i8, ptr %736, align 1
  %conv2.i137.i114 = zext i8 %738 to i16
  %739 = ptrtoint ptr %msg.i134.i63 to i32
  call void @__asan_store2_noabort(i32 %739)
  store i16 %conv2.i137.i114, ptr %msg.i134.i63, align 4
  %flags.i138.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i63, i32 0, i32 1
  %740 = ptrtoint ptr %flags.i138.i115 to i32
  call void @__asan_store2_noabort(i32 %740)
  store i16 0, ptr %flags.i138.i115, align 2
  %buf3.i140.i116 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i63, i32 0, i32 3
  %741 = ptrtoint ptr %buf3.i140.i116 to i32
  call void @__asan_store4_noabort(i32 %741)
  store ptr %buf.i133.i62, ptr %buf3.i140.i116, align 4
  %742 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %1, align 4
  %call.i141.i117 = call i32 @i2c_transfer(ptr noundef %743, ptr noundef nonnull %msg.i134.i63, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i141.i117)
  %cmp.not.i142.i118 = icmp eq i32 %call.i141.i117, 1
  br i1 %cmp.not.i142.i118, label %cx24110_writereg.exit132.i.cx24110_writereg.exit148.i124_crit_edge, label %do.body.i144.i120

cx24110_writereg.exit132.i.cx24110_writereg.exit148.i124_crit_edge: ; preds = %cx24110_writereg.exit132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit148.i124

do.body.i144.i120:                                ; preds = %cx24110_writereg.exit132.i
  %744 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %744)
  %tobool.not.i143.i119 = icmp eq i32 %744, 0
  br i1 %tobool.not.i143.i119, label %do.body.i144.i120.cx24110_writereg.exit148.i124_crit_edge, label %do.end.i146.i122

do.body.i144.i120.cx24110_writereg.exit148.i124_crit_edge: ; preds = %do.body.i144.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit148.i124

do.end.i146.i122:                                 ; preds = %do.body.i144.i120
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i145.i121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i141.i117, i32 noundef 2, i32 noundef %and96.i) #10
  br label %cx24110_writereg.exit148.i124

cx24110_writereg.exit148.i124:                    ; preds = %do.end.i146.i122, %do.body.i144.i120.cx24110_writereg.exit148.i124_crit_edge, %cx24110_writereg.exit132.i.cx24110_writereg.exit148.i124_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i134.i63) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i133.i62) #6
  %and98.i = and i32 %add57.i, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i149.i) #6
  %745 = getelementptr inbounds [2 x i8], ptr %buf.i149.i, i32 0, i32 1
  %746 = ptrtoint ptr %buf.i149.i to i32
  call void @__asan_store1_noabort(i32 %746)
  store i8 3, ptr %buf.i149.i, align 1
  %conv1.i151.i = trunc i32 %add57.i to i8
  %747 = ptrtoint ptr %745 to i32
  call void @__asan_store1_noabort(i32 %747)
  store i8 %conv1.i151.i, ptr %745, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i150.i) #6
  %748 = getelementptr inbounds i8, ptr %msg.i150.i, i32 4
  %749 = ptrtoint ptr %748 to i32
  call void @__asan_store4_noabort(i32 %749)
  store i32 196607, ptr %748, align 4
  %750 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %config.i.i72, align 4
  %752 = ptrtoint ptr %751 to i32
  call void @__asan_load1_noabort(i32 %752)
  %753 = load i8, ptr %751, align 1
  %conv2.i153.i = zext i8 %753 to i16
  %754 = ptrtoint ptr %msg.i150.i to i32
  call void @__asan_store2_noabort(i32 %754)
  store i16 %conv2.i153.i, ptr %msg.i150.i, align 4
  %flags.i154.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150.i, i32 0, i32 1
  %755 = ptrtoint ptr %flags.i154.i123 to i32
  call void @__asan_store2_noabort(i32 %755)
  store i16 0, ptr %flags.i154.i123, align 2
  %buf3.i156.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150.i, i32 0, i32 3
  %756 = ptrtoint ptr %buf3.i156.i to i32
  call void @__asan_store4_noabort(i32 %756)
  store ptr %buf.i149.i, ptr %buf3.i156.i, align 4
  %757 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %1, align 4
  %call.i157.i = call i32 @i2c_transfer(ptr noundef %758, ptr noundef nonnull %msg.i150.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i157.i)
  %cmp.not.i158.i = icmp eq i32 %call.i157.i, 1
  br i1 %cmp.not.i158.i, label %cx24110_writereg.exit148.i124.cx24110_set_symbolrate.exit_crit_edge, label %do.body.i160.i

cx24110_writereg.exit148.i124.cx24110_set_symbolrate.exit_crit_edge: ; preds = %cx24110_writereg.exit148.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_set_symbolrate.exit

do.body.i160.i:                                   ; preds = %cx24110_writereg.exit148.i124
  %759 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %759)
  %tobool.not.i159.i = icmp eq i32 %759, 0
  br i1 %tobool.not.i159.i, label %do.body.i160.i.cx24110_set_symbolrate.exit_crit_edge, label %do.end.i162.i

do.body.i160.i.cx24110_set_symbolrate.exit_crit_edge: ; preds = %do.body.i160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_set_symbolrate.exit

do.end.i162.i:                                    ; preds = %do.body.i160.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i161.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i157.i, i32 noundef 3, i32 noundef %and98.i) #10
  br label %cx24110_set_symbolrate.exit

cx24110_set_symbolrate.exit:                      ; preds = %do.end.i162.i, %do.body.i160.i.cx24110_set_symbolrate.exit_crit_edge, %cx24110_writereg.exit148.i124.cx24110_set_symbolrate.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i150.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i149.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %760 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %761 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %761)
  store i8 4, ptr %buf.i, align 1
  %762 = ptrtoint ptr %760 to i32
  call void @__asan_store1_noabort(i32 %762)
  store i8 5, ptr %760, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %763 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %764 = ptrtoint ptr %763 to i32
  call void @__asan_store4_noabort(i32 %764)
  store i32 196607, ptr %763, align 4
  %765 = ptrtoint ptr %config.i.i72 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %config.i.i72, align 4
  %767 = ptrtoint ptr %766 to i32
  call void @__asan_load1_noabort(i32 %767)
  %768 = load i8, ptr %766, align 1
  %conv2.i = zext i8 %768 to i16
  %769 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %769)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %770 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %770)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %771 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %771)
  store ptr %buf.i, ptr %buf3.i, align 4
  %772 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %1, align 4
  %call.i125 = call i32 @i2c_transfer(ptr noundef %773, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i125)
  %cmp.not.i = icmp eq i32 %call.i125, 1
  br i1 %cmp.not.i, label %cx24110_set_symbolrate.exit.cx24110_writereg.exit_crit_edge, label %do.body.i

cx24110_set_symbolrate.exit.cx24110_writereg.exit_crit_edge: ; preds = %cx24110_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.body.i:                                        ; preds = %cx24110_set_symbolrate.exit
  %774 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %774)
  %tobool.not.i126 = icmp eq i32 %774, 0
  br i1 %tobool.not.i126, label %do.body.i.cx24110_writereg.exit_crit_edge, label %do.end.i127

do.body.i.cx24110_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.end.i127:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i125, i32 noundef 4, i32 noundef 5) #10
  br label %cx24110_writereg.exit

cx24110_writereg.exit:                            ; preds = %do.end.i127, %do.body.i.cx24110_writereg.exit_crit_edge, %cx24110_set_symbolrate.exit.cx24110_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef %p) #0 align 64 {
entry:
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i92 = alloca [1 x i8], align 1
  %b1.i93 = alloca [1 x i8], align 1
  %msg.i94 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i73 = alloca [1 x i8], align 1
  %b1.i74 = alloca [1 x i8], align 1
  %msg.i75 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i54 = alloca [1 x i8], align 1
  %b1.i55 = alloca [1 x i8], align 1
  %msg.i56 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i35 = alloca [1 x i8], align 1
  %b1.i36 = alloca [1 x i8], align 1
  %msg.i37 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 7, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.cx24110_readreg.exit_crit_edge

entry.cx24110_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %entry.cx24110_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %.not = icmp eq i32 %and, 3
  br i1 %.not, label %cx24110_readreg.exit.if.end8_crit_edge, label %switch.lookup

cx24110_readreg.exit.if.end8_crit_edge:           ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

switch.lookup:                                    ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cx24110_get_frontend, i32 0, i32 %and
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end8

if.end8:                                          ; preds = %switch.lookup, %cx24110_readreg.exit.if.end8_crit_edge
  %sclk.0 = phi i32 [ %switch.load, %switch.lookup ], [ 355464, %cx24110_readreg.exit.if.end8_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i35) #6
  %24 = ptrtoint ptr %b0.i35 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 68, ptr %b0.i35, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i36) #6
  %25 = ptrtoint ptr %b1.i36 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i36, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i37) #6
  %26 = getelementptr inbounds i8, ptr %msg.i37, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i39 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i37 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i39, ptr %msg.i37, align 4
  %flags.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i40, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i42 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i35, ptr %buf.i42, align 4
  %arrayinit.element.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 1
  %36 = load i8, ptr %29, align 1
  %conv5.i44 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i43 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i44, ptr %arrayinit.element.i43, align 4
  %flags6.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i45 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i45, align 2
  %len7.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i46 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i46, align 4
  %buf8.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i36, ptr %buf8.i47, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i48 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i37, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i48)
  %cmp.not.i49 = icmp eq i32 %call.i48, 2
  br i1 %cmp.not.i49, label %if.end.i51, label %if.end8.cx24110_readreg.exit53_crit_edge

if.end8.cx24110_readreg.exit53_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit53

if.end.i51:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %b1.i36 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %b1.i36, align 1
  %conv12.i50 = zext i8 %44 to i32
  br label %cx24110_readreg.exit53

cx24110_readreg.exit53:                           ; preds = %if.end.i51, %if.end8.cx24110_readreg.exit53_crit_edge
  %retval.0.i52 = phi i32 [ %conv12.i50, %if.end.i51 ], [ %call.i48, %if.end8.cx24110_readreg.exit53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i37) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i36) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i35) #6
  %and10 = and i32 %retval.0.i52, 31
  %mul = mul nuw nsw i32 %and10, %sclk.0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i54) #6
  %45 = ptrtoint ptr %b0.i54 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 69, ptr %b0.i54, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i55) #6
  %46 = ptrtoint ptr %b1.i55 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %b1.i55, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i56) #6
  %47 = getelementptr inbounds i8, ptr %msg.i56, i32 4
  %48 = call ptr @memset(ptr %47, i32 255, i32 16)
  %49 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %config.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 1
  %conv.i58 = zext i8 %52 to i16
  %53 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i58, ptr %msg.i56, align 4
  %flags.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i59 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i59, align 2
  %55 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %47, align 4
  %buf.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 3
  %56 = ptrtoint ptr %buf.i61 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %b0.i54, ptr %buf.i61, align 4
  %arrayinit.element.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 1
  %57 = load i8, ptr %50, align 1
  %conv5.i63 = zext i8 %57 to i16
  %58 = ptrtoint ptr %arrayinit.element.i62 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv5.i63, ptr %arrayinit.element.i62, align 4
  %flags6.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 1, i32 1
  %59 = ptrtoint ptr %flags6.i64 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %flags6.i64, align 2
  %len7.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 1, i32 2
  %60 = ptrtoint ptr %len7.i65 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %len7.i65, align 4
  %buf8.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 1, i32 3
  %61 = ptrtoint ptr %buf8.i66 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %b1.i55, ptr %buf8.i66, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call.i67 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i56, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i67)
  %cmp.not.i68 = icmp eq i32 %call.i67, 2
  br i1 %cmp.not.i68, label %if.end.i70, label %cx24110_readreg.exit53.cx24110_readreg.exit72_crit_edge

cx24110_readreg.exit53.cx24110_readreg.exit72_crit_edge: ; preds = %cx24110_readreg.exit53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit72

if.end.i70:                                       ; preds = %cx24110_readreg.exit53
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %b1.i55 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %b1.i55, align 1
  %conv12.i69 = zext i8 %65 to i32
  br label %cx24110_readreg.exit72

cx24110_readreg.exit72:                           ; preds = %if.end.i70, %cx24110_readreg.exit53.cx24110_readreg.exit72_crit_edge
  %retval.0.i71 = phi i32 [ %conv12.i69, %if.end.i70 ], [ %call.i67, %cx24110_readreg.exit53.cx24110_readreg.exit72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i56) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i55) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i54) #6
  %mul12 = mul i32 %retval.0.i71, %sclk.0
  %shr13 = lshr i32 %mul12, 8
  %add = add nuw nsw i32 %shr13, %mul
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i73) #6
  %66 = ptrtoint ptr %b0.i73 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 70, ptr %b0.i73, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i74) #6
  %67 = ptrtoint ptr %b1.i74 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %b1.i74, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i75) #6
  %68 = getelementptr inbounds i8, ptr %msg.i75, i32 4
  %69 = call ptr @memset(ptr %68, i32 255, i32 16)
  %70 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %config.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  %conv.i77 = zext i8 %73 to i16
  %74 = ptrtoint ptr %msg.i75 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i77, ptr %msg.i75, align 4
  %flags.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 0, i32 1
  %75 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i78, align 2
  %76 = ptrtoint ptr %68 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %68, align 4
  %buf.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 0, i32 3
  %77 = ptrtoint ptr %buf.i80 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %b0.i73, ptr %buf.i80, align 4
  %arrayinit.element.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1
  %78 = load i8, ptr %71, align 1
  %conv5.i82 = zext i8 %78 to i16
  %79 = ptrtoint ptr %arrayinit.element.i81 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv5.i82, ptr %arrayinit.element.i81, align 4
  %flags6.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1, i32 1
  %80 = ptrtoint ptr %flags6.i83 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %flags6.i83, align 2
  %len7.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1, i32 2
  %81 = ptrtoint ptr %len7.i84 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 1, ptr %len7.i84, align 4
  %buf8.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1, i32 3
  %82 = ptrtoint ptr %buf8.i85 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %b1.i74, ptr %buf8.i85, align 4
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %call.i86 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msg.i75, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i86)
  %cmp.not.i87 = icmp eq i32 %call.i86, 2
  br i1 %cmp.not.i87, label %if.end.i89, label %cx24110_readreg.exit72.cx24110_readreg.exit91_crit_edge

cx24110_readreg.exit72.cx24110_readreg.exit91_crit_edge: ; preds = %cx24110_readreg.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit91

if.end.i89:                                       ; preds = %cx24110_readreg.exit72
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %b1.i74 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %b1.i74, align 1
  %conv12.i88 = zext i8 %86 to i32
  br label %cx24110_readreg.exit91

cx24110_readreg.exit91:                           ; preds = %if.end.i89, %cx24110_readreg.exit72.cx24110_readreg.exit91_crit_edge
  %retval.0.i90 = phi i32 [ %conv12.i88, %if.end.i89 ], [ %call.i86, %cx24110_readreg.exit72.cx24110_readreg.exit91_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i75) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i74) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i73) #6
  %mul15 = mul i32 %retval.0.i90, %sclk.0
  %shr16 = lshr i32 %mul15, 16
  %add17 = add nuw nsw i32 %add, %shr16
  %87 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %p, align 4
  %add18 = add i32 %add17, %88
  store i32 %add18, ptr %p, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i92) #6
  %89 = ptrtoint ptr %b0.i92 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 34, ptr %b0.i92, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i93) #6
  %90 = ptrtoint ptr %b1.i93 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %b1.i93, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i94) #6
  %91 = getelementptr inbounds i8, ptr %msg.i94, i32 4
  %92 = call ptr @memset(ptr %91, i32 255, i32 16)
  %93 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %config.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 1
  %conv.i96 = zext i8 %96 to i16
  %97 = ptrtoint ptr %msg.i94 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i96, ptr %msg.i94, align 4
  %flags.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i97 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i97, align 2
  %99 = ptrtoint ptr %91 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 1, ptr %91, align 4
  %buf.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 3
  %100 = ptrtoint ptr %buf.i99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %b0.i92, ptr %buf.i99, align 4
  %arrayinit.element.i100 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 1
  %101 = load i8, ptr %94, align 1
  %conv5.i101 = zext i8 %101 to i16
  %102 = ptrtoint ptr %arrayinit.element.i100 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv5.i101, ptr %arrayinit.element.i100, align 4
  %flags6.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 1, i32 1
  %103 = ptrtoint ptr %flags6.i102 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 1, ptr %flags6.i102, align 2
  %len7.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 1, i32 2
  %104 = ptrtoint ptr %len7.i103 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 1, ptr %len7.i103, align 4
  %buf8.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 1, i32 3
  %105 = ptrtoint ptr %buf8.i104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %b1.i93, ptr %buf8.i104, align 4
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %call.i105 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i94, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i105)
  %cmp.not.i106 = icmp eq i32 %call.i105, 2
  br i1 %cmp.not.i106, label %if.end.i108, label %cx24110_readreg.exit91.cx24110_readreg.exit110_crit_edge

cx24110_readreg.exit91.cx24110_readreg.exit110_crit_edge: ; preds = %cx24110_readreg.exit91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit110

if.end.i108:                                      ; preds = %cx24110_readreg.exit91
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %b1.i93 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %b1.i93, align 1
  %conv12.i107 = zext i8 %109 to i32
  br label %cx24110_readreg.exit110

cx24110_readreg.exit110:                          ; preds = %if.end.i108, %cx24110_readreg.exit91.cx24110_readreg.exit110_crit_edge
  %retval.0.i109 = phi i32 [ %conv12.i107, %if.end.i108 ], [ %call.i105, %cx24110_readreg.exit91.cx24110_readreg.exit110_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i94) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i93) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i92) #6
  %and20 = lshr i32 %retval.0.i109, 4
  %and20.lobit = and i32 %and20, 1
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %110 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %and20.lobit, ptr %inversion, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #6
  %111 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 34, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #6
  %112 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %113 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %114 = call ptr @memset(ptr %113, i32 255, i32 16)
  %115 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %config.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %116, align 1
  %conv.i.i = zext i8 %118 to i16
  %119 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %120 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %flags.i.i, align 2
  %121 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 1, ptr %113, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %122 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %123 = load i8, ptr %116, align 1
  %conv5.i.i = zext i8 %123 to i16
  %124 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %125 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %126 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %127 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %cx24110_readreg.exit110.cx24110_get_fec.exit_crit_edge

cx24110_readreg.exit110.cx24110_get_fec.exit_crit_edge: ; preds = %cx24110_readreg.exit110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_get_fec.exit

if.end.i.i:                                       ; preds = %cx24110_readreg.exit110
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %b1.i.i, align 1
  %conv12.i.i = zext i8 %131 to i32
  br label %cx24110_get_fec.exit

cx24110_get_fec.exit:                             ; preds = %if.end.i.i, %cx24110_readreg.exit110.cx24110_get_fec.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv12.i.i, %if.end.i.i ], [ %call.i.i, %cx24110_readreg.exit110.cx24110_get_fec.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #6
  %and1.i = and i32 %retval.0.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %and.i = and i32 %retval.0.i.i, 15
  %retval.0.i111 = select i1 %tobool.not.i, i32 %and.i, i32 0
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %132 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %retval.0.i111, ptr %fec_inner, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i31 = alloca [1 x i8], align 1
  %b1.i32 = alloca [1 x i8], align 1
  %msg.i33 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 85, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.cx24110_readreg.exit_crit_edge

entry.cx24110_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %entry.cx24110_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = lshr i32 %retval.0.i, 4
  %and.lobit = and i32 %and, 1
  %and1 = lshr i32 %retval.0.i, 2
  %23 = and i32 %and1, 2
  %24 = or i32 %23, %and.lobit
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i31) #6
  %26 = ptrtoint ptr %b0.i31 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %b0.i31, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i32) #6
  %27 = ptrtoint ptr %b1.i32 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %b1.i32, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i33) #6
  %28 = getelementptr inbounds i8, ptr %msg.i33, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i35 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i33 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i35, ptr %msg.i33, align 4
  %flags.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i36, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %b0.i31, ptr %buf.i38, align 4
  %arrayinit.element.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1
  %38 = load i8, ptr %31, align 1
  %conv5.i40 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i39 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv5.i40, ptr %arrayinit.element.i39, align 4
  %flags6.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 1
  %40 = ptrtoint ptr %flags6.i41 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags6.i41, align 2
  %len7.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 2
  %41 = ptrtoint ptr %len7.i42 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len7.i42, align 4
  %buf8.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33, i32 1, i32 3
  %42 = ptrtoint ptr %buf8.i43 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %b1.i32, ptr %buf8.i43, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i44 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i33, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i44)
  %cmp.not.i45 = icmp eq i32 %call.i44, 2
  br i1 %cmp.not.i45, label %if.end.i47, label %cx24110_readreg.exit.cx24110_readreg.exit49_crit_edge

cx24110_readreg.exit.cx24110_readreg.exit49_crit_edge: ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit49

if.end.i47:                                       ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %b1.i32 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %b1.i32, align 1
  %conv12.i46 = zext i8 %46 to i32
  br label %cx24110_readreg.exit49

cx24110_readreg.exit49:                           ; preds = %if.end.i47, %cx24110_readreg.exit.cx24110_readreg.exit49_crit_edge
  %retval.0.i48 = phi i32 [ %conv12.i46, %if.end.i47 ], [ %call.i44, %cx24110_readreg.exit.cx24110_readreg.exit49_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i33) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i32) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i31) #6
  %and7 = and i32 %retval.0.i48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %cx24110_readreg.exit49.if.end11_crit_edge, label %if.then9

cx24110_readreg.exit49.if.end11_crit_edge:        ; preds = %cx24110_readreg.exit49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %cx24110_readreg.exit49
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status, align 4
  %or10 = or i32 %48, 4
  store i32 %or10, ptr %status, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %cx24110_readreg.exit49.if.end11_crit_edge
  %and12 = and i32 %retval.0.i48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or15 = or i32 %50, 8
  store i32 %or15, ptr %status, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %and17 = and i32 %retval.0.i48, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and17)
  %cmp = icmp eq i32 %and17, 96
  br i1 %cmp, label %if.then18, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status, align 4
  %or19 = or i32 %52, 16
  store i32 %or19, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %buf.i75 = alloca [2 x i8], align 1
  %msg.i76 = alloca %struct.i2c_msg, align 4
  %buf.i60 = alloca [2 x i8], align 1
  %msg.i61 = alloca %struct.i2c_msg, align 4
  %b0.i41 = alloca [1 x i8], align 1
  %b1.i42 = alloca [1 x i8], align 1
  %msg.i43 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i22 = alloca [1 x i8], align 1
  %b1.i23 = alloca [1 x i8], align 1
  %msg.i24 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i14 = alloca [2 x i8], align 1
  %msg.i15 = alloca %struct.i2c_msg, align 4
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
  store i8 36, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.cx24110_readreg.exit_crit_edge

entry.cx24110_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %entry.cx24110_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cx24110_readreg.exit.if.end_crit_edge, label %if.then

cx24110_readreg.exit.if.end_crit_edge:            ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cx24110_readreg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i14) #6
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i14, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 36, ptr %buf.i14, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i15) #6
  %26 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv2.i = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv2.i, ptr %msg.i15, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i17, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  %34 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i14, ptr %buf3.i, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i19 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i15, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i19)
  %cmp.not.i20 = icmp eq i32 %call.i19, 1
  br i1 %cmp.not.i20, label %if.then.cx24110_writereg.exit_crit_edge, label %do.body.i

if.then.cx24110_writereg.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.body.i:                                        ; preds = %if.then
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %do.body.i.cx24110_writereg.exit_crit_edge, label %do.end.i

do.body.i.cx24110_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i19, i32 noundef 36, i32 noundef 4) #10
  br label %cx24110_writereg.exit

cx24110_writereg.exit:                            ; preds = %do.end.i, %do.body.i.cx24110_writereg.exit_crit_edge, %if.then.cx24110_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i15) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i14) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i22) #6
  %38 = ptrtoint ptr %b0.i22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 37, ptr %b0.i22, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i23) #6
  %39 = ptrtoint ptr %b1.i23 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %b1.i23, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i24) #6
  %40 = getelementptr inbounds i8, ptr %msg.i24, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv.i26 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i26, ptr %msg.i24, align 4
  %flags.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i27, align 2
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %40, align 4
  %buf.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %b0.i22, ptr %buf.i29, align 4
  %arrayinit.element.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1
  %50 = load i8, ptr %43, align 1
  %conv5.i31 = zext i8 %50 to i16
  %51 = ptrtoint ptr %arrayinit.element.i30 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv5.i31, ptr %arrayinit.element.i30, align 4
  %flags6.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 1
  %52 = ptrtoint ptr %flags6.i32 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %flags6.i32, align 2
  %len7.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 2
  %53 = ptrtoint ptr %len7.i33 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %len7.i33, align 4
  %buf8.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 3
  %54 = ptrtoint ptr %buf8.i34 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %b1.i23, ptr %buf8.i34, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call.i35 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i24, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i35)
  %cmp.not.i36 = icmp eq i32 %call.i35, 2
  br i1 %cmp.not.i36, label %if.end.i38, label %cx24110_writereg.exit.cx24110_readreg.exit40_crit_edge

cx24110_writereg.exit.cx24110_readreg.exit40_crit_edge: ; preds = %cx24110_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit40

if.end.i38:                                       ; preds = %cx24110_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %b1.i23 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %b1.i23, align 1
  %conv12.i37 = zext i8 %58 to i32
  br label %cx24110_readreg.exit40

cx24110_readreg.exit40:                           ; preds = %if.end.i38, %cx24110_writereg.exit.cx24110_readreg.exit40_crit_edge
  %retval.0.i39 = phi i32 [ %conv12.i37, %if.end.i38 ], [ %call.i35, %cx24110_writereg.exit.cx24110_readreg.exit40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i24) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i23) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i22) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i41) #6
  %59 = ptrtoint ptr %b0.i41 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 38, ptr %b0.i41, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i42) #6
  %60 = ptrtoint ptr %b1.i42 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %b1.i42, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i43) #6
  %61 = getelementptr inbounds i8, ptr %msg.i43, i32 4
  %62 = call ptr @memset(ptr %61, i32 255, i32 16)
  %63 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  %conv.i45 = zext i8 %66 to i16
  %67 = ptrtoint ptr %msg.i43 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i45, ptr %msg.i43, align 4
  %flags.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i46 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i46, align 2
  %69 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %61, align 4
  %buf.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 0, i32 3
  %70 = ptrtoint ptr %buf.i48 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %b0.i41, ptr %buf.i48, align 4
  %arrayinit.element.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 1
  %71 = load i8, ptr %64, align 1
  %conv5.i50 = zext i8 %71 to i16
  %72 = ptrtoint ptr %arrayinit.element.i49 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv5.i50, ptr %arrayinit.element.i49, align 4
  %flags6.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 1, i32 1
  %73 = ptrtoint ptr %flags6.i51 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %flags6.i51, align 2
  %len7.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 1, i32 2
  %74 = ptrtoint ptr %len7.i52 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 1, ptr %len7.i52, align 4
  %buf8.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 1, i32 3
  %75 = ptrtoint ptr %buf8.i53 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %b1.i42, ptr %buf8.i53, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %call.i54 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %msg.i43, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i54)
  %cmp.not.i55 = icmp eq i32 %call.i54, 2
  br i1 %cmp.not.i55, label %if.end.i57, label %cx24110_readreg.exit40.cx24110_readreg.exit59_crit_edge

cx24110_readreg.exit40.cx24110_readreg.exit59_crit_edge: ; preds = %cx24110_readreg.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit59

if.end.i57:                                       ; preds = %cx24110_readreg.exit40
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %b1.i42 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %b1.i42, align 1
  %conv12.i56 = zext i8 %79 to i32
  br label %cx24110_readreg.exit59

cx24110_readreg.exit59:                           ; preds = %if.end.i57, %cx24110_readreg.exit40.cx24110_readreg.exit59_crit_edge
  %retval.0.i58 = phi i32 [ %conv12.i56, %if.end.i57 ], [ %call.i54, %cx24110_readreg.exit40.cx24110_readreg.exit59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i43) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i42) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i41) #6
  %shl = shl i32 %retval.0.i58, 8
  %or = or i32 %shl, %retval.0.i39
  %lastber = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 3
  %80 = ptrtoint ptr %lastber to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or, ptr %lastber, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i60) #6
  %81 = getelementptr inbounds [2 x i8], ptr %buf.i60, i32 0, i32 1
  %82 = ptrtoint ptr %buf.i60 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 36, ptr %buf.i60, align 1
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 4, ptr %81, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i61) #6
  %84 = getelementptr inbounds i8, ptr %msg.i61, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 196607, ptr %84, align 4
  %86 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %config.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 1
  %conv2.i63 = zext i8 %89 to i16
  %90 = ptrtoint ptr %msg.i61 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv2.i63, ptr %msg.i61, align 4
  %flags.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61, i32 0, i32 1
  %91 = ptrtoint ptr %flags.i64 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %flags.i64, align 2
  %buf3.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61, i32 0, i32 3
  %92 = ptrtoint ptr %buf3.i66 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %buf.i60, ptr %buf3.i66, align 4
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call.i67 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msg.i61, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i67)
  %cmp.not.i68 = icmp eq i32 %call.i67, 1
  br i1 %cmp.not.i68, label %cx24110_readreg.exit59.cx24110_writereg.exit74_crit_edge, label %do.body.i70

cx24110_readreg.exit59.cx24110_writereg.exit74_crit_edge: ; preds = %cx24110_readreg.exit59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit74

do.body.i70:                                      ; preds = %cx24110_readreg.exit59
  %95 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i69 = icmp eq i32 %95, 0
  br i1 %tobool.not.i69, label %do.body.i70.cx24110_writereg.exit74_crit_edge, label %do.end.i72

do.body.i70.cx24110_writereg.exit74_crit_edge:    ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit74

do.end.i72:                                       ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i67, i32 noundef 36, i32 noundef 4) #10
  br label %cx24110_writereg.exit74

cx24110_writereg.exit74:                          ; preds = %do.end.i72, %do.body.i70.cx24110_writereg.exit74_crit_edge, %cx24110_readreg.exit59.cx24110_writereg.exit74_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i61) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i60) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i75) #6
  %96 = getelementptr inbounds [2 x i8], ptr %buf.i75, i32 0, i32 1
  %97 = ptrtoint ptr %buf.i75 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 36, ptr %buf.i75, align 1
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 20, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i76) #6
  %99 = getelementptr inbounds i8, ptr %msg.i76, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196607, ptr %99, align 4
  %101 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %config.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 1
  %conv2.i78 = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i76 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv2.i78, ptr %msg.i76, align 4
  %flags.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i79, align 2
  %buf3.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 3
  %107 = ptrtoint ptr %buf3.i81 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i75, ptr %buf3.i81, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %call.i82 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i76, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i82)
  %cmp.not.i83 = icmp eq i32 %call.i82, 1
  br i1 %cmp.not.i83, label %cx24110_writereg.exit74.cx24110_writereg.exit89_crit_edge, label %do.body.i85

cx24110_writereg.exit74.cx24110_writereg.exit89_crit_edge: ; preds = %cx24110_writereg.exit74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit89

do.body.i85:                                      ; preds = %cx24110_writereg.exit74
  %110 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i84 = icmp eq i32 %110, 0
  br i1 %tobool.not.i84, label %do.body.i85.cx24110_writereg.exit89_crit_edge, label %do.end.i87

do.body.i85.cx24110_writereg.exit89_crit_edge:    ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit89

do.end.i87:                                       ; preds = %do.body.i85
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i82, i32 noundef 36, i32 noundef 20) #10
  br label %cx24110_writereg.exit89

cx24110_writereg.exit89:                          ; preds = %do.end.i87, %do.body.i85.cx24110_writereg.exit89_crit_edge, %cx24110_writereg.exit74.cx24110_writereg.exit89_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i76) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i75) #6
  br label %if.end

if.end:                                           ; preds = %cx24110_writereg.exit89, %cx24110_readreg.exit.if.end_crit_edge
  %lastber6 = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 3
  %111 = ptrtoint ptr %lastber6 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %lastber6, align 4
  %113 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
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
  store i8 39, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.cx24110_readreg.exit_crit_edge

entry.cx24110_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %entry.cx24110_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %23 = trunc i32 %retval.0.i to i16
  %24 = and i16 %23, 255
  %25 = xor i16 %24, 128
  %conv3 = mul nuw i16 %25, 257
  %26 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv3, ptr %signal_strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %buf.i48 = alloca [2 x i8], align 1
  %msg.i49 = alloca %struct.i2c_msg, align 4
  %b0.i29 = alloca [1 x i8], align 1
  %b1.i30 = alloca [1 x i8], align 1
  %msg.i31 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 106, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.cx24110_readreg.exit_crit_edge

entry.cx24110_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %entry.cx24110_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cx24110_readreg.exit.if.end_crit_edge, label %if.then

cx24110_readreg.exit.if.end_crit_edge:            ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cx24110_readreg.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i10) #6
  %23 = ptrtoint ptr %b0.i10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 105, ptr %b0.i10, align 1
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
  br i1 %cmp.not.i24, label %if.end.i26, label %if.then.cx24110_readreg.exit28_crit_edge

if.then.cx24110_readreg.exit28_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit28

if.end.i26:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %b1.i11 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b1.i11, align 1
  %conv12.i25 = zext i8 %43 to i32
  br label %cx24110_readreg.exit28

cx24110_readreg.exit28:                           ; preds = %if.end.i26, %if.then.cx24110_readreg.exit28_crit_edge
  %retval.0.i27 = phi i32 [ %conv12.i25, %if.end.i26 ], [ %call.i23, %if.then.cx24110_readreg.exit28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i12) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i11) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i10) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i29) #6
  %44 = ptrtoint ptr %b0.i29 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 104, ptr %b0.i29, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i30) #6
  %45 = ptrtoint ptr %b1.i30 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %b1.i30, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i31) #6
  %46 = getelementptr inbounds i8, ptr %msg.i31, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv.i33 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i31 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i33, ptr %msg.i31, align 4
  %flags.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i34, align 2
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %46, align 4
  %buf.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 3
  %55 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b0.i29, ptr %buf.i36, align 4
  %arrayinit.element.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1
  %56 = load i8, ptr %49, align 1
  %conv5.i38 = zext i8 %56 to i16
  %57 = ptrtoint ptr %arrayinit.element.i37 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv5.i38, ptr %arrayinit.element.i37, align 4
  %flags6.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1, i32 1
  %58 = ptrtoint ptr %flags6.i39 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %flags6.i39, align 2
  %len7.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1, i32 2
  %59 = ptrtoint ptr %len7.i40 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %len7.i40, align 4
  %buf8.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1, i32 3
  %60 = ptrtoint ptr %buf8.i41 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %b1.i30, ptr %buf8.i41, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i42 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i31, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i42)
  %cmp.not.i43 = icmp eq i32 %call.i42, 2
  br i1 %cmp.not.i43, label %if.end.i45, label %cx24110_readreg.exit28.cx24110_readreg.exit47_crit_edge

cx24110_readreg.exit28.cx24110_readreg.exit47_crit_edge: ; preds = %cx24110_readreg.exit28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit47

if.end.i45:                                       ; preds = %cx24110_readreg.exit28
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %b1.i30 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %b1.i30, align 1
  %conv12.i44 = zext i8 %64 to i32
  br label %cx24110_readreg.exit47

cx24110_readreg.exit47:                           ; preds = %if.end.i45, %cx24110_readreg.exit28.cx24110_readreg.exit47_crit_edge
  %retval.0.i46 = phi i32 [ %conv12.i44, %if.end.i45 ], [ %call.i42, %cx24110_readreg.exit28.cx24110_readreg.exit47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i31) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i30) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i29) #6
  %shl = shl i32 %retval.0.i46, 8
  %or = or i32 %shl, %retval.0.i27
  %lastesn0 = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 5
  %65 = ptrtoint ptr %lastesn0 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or, ptr %lastesn0, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i48) #6
  %66 = getelementptr inbounds [2 x i8], ptr %buf.i48, i32 0, i32 1
  %67 = ptrtoint ptr %buf.i48 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 106, ptr %buf.i48, align 1
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -124, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i49) #6
  %69 = getelementptr inbounds i8, ptr %msg.i49, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %71 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  %conv2.i = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i49 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv2.i, ptr %msg.i49, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i51, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 0, i32 3
  %77 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i48, ptr %buf3.i, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i53 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i49, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i53)
  %cmp.not.i54 = icmp eq i32 %call.i53, 1
  br i1 %cmp.not.i54, label %cx24110_readreg.exit47.cx24110_writereg.exit_crit_edge, label %do.body.i

cx24110_readreg.exit47.cx24110_writereg.exit_crit_edge: ; preds = %cx24110_readreg.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.body.i:                                        ; preds = %cx24110_readreg.exit47
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i, label %do.body.i.cx24110_writereg.exit_crit_edge, label %do.end.i

do.body.i.cx24110_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i53, i32 noundef 106, i32 noundef 132) #10
  br label %cx24110_writereg.exit

cx24110_writereg.exit:                            ; preds = %do.end.i, %do.body.i.cx24110_writereg.exit_crit_edge, %cx24110_readreg.exit47.cx24110_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i49) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i48) #6
  br label %if.end

if.end:                                           ; preds = %cx24110_writereg.exit, %cx24110_readreg.exit.if.end_crit_edge
  %lastesn04 = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 5
  %81 = ptrtoint ptr %lastesn04 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %lastesn04, align 4
  %conv = trunc i32 %82 to i16
  %83 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %buf.i165 = alloca [2 x i8], align 1
  %msg.i166 = alloca %struct.i2c_msg, align 4
  %b0.i146 = alloca [1 x i8], align 1
  %b1.i147 = alloca [1 x i8], align 1
  %msg.i148 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i127 = alloca [1 x i8], align 1
  %b1.i128 = alloca [1 x i8], align 1
  %msg.i129 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i108 = alloca [1 x i8], align 1
  %b1.i109 = alloca [1 x i8], align 1
  %msg.i110 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i93 = alloca [2 x i8], align 1
  %msg.i94 = alloca %struct.i2c_msg, align 4
  %b0.i74 = alloca [1 x i8], align 1
  %b1.i75 = alloca [1 x i8], align 1
  %msg.i76 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i55 = alloca [1 x i8], align 1
  %b1.i56 = alloca [1 x i8], align 1
  %msg.i57 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i36 = alloca [1 x i8], align 1
  %b1.i37 = alloca [1 x i8], align 1
  %msg.i38 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i28 = alloca [2 x i8], align 1
  %msg.i29 = alloca %struct.i2c_msg, align 4
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
  store i8 16, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.cx24110_readreg.exit_crit_edge

entry.cx24110_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %entry.cx24110_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cx24110_readreg.exit.if.end_crit_edge, label %if.then

cx24110_readreg.exit.if.end_crit_edge:            ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cx24110_readreg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i28) #6
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i28, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 16, ptr %buf.i28, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 96, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i29) #6
  %26 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv2.i = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv2.i, ptr %msg.i29, align 4
  %flags.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i31, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %34 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i28, ptr %buf3.i, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i33 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i29, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i33)
  %cmp.not.i34 = icmp eq i32 %call.i33, 1
  br i1 %cmp.not.i34, label %if.then.cx24110_writereg.exit_crit_edge, label %do.body.i

if.then.cx24110_writereg.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.body.i:                                        ; preds = %if.then
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %do.body.i.cx24110_writereg.exit_crit_edge, label %do.end.i

do.body.i.cx24110_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i33, i32 noundef 16, i32 noundef 96) #10
  br label %cx24110_writereg.exit

cx24110_writereg.exit:                            ; preds = %do.end.i, %do.body.i.cx24110_writereg.exit_crit_edge, %if.then.cx24110_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i29) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i28) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i36) #6
  %38 = ptrtoint ptr %b0.i36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 18, ptr %b0.i36, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i37) #6
  %39 = ptrtoint ptr %b1.i37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %b1.i37, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i38) #6
  %40 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv.i40 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i40, ptr %msg.i38, align 4
  %flags.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i41, align 2
  %48 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %40, align 4
  %buf.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %b0.i36, ptr %buf.i43, align 4
  %arrayinit.element.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1
  %50 = load i8, ptr %43, align 1
  %conv5.i45 = zext i8 %50 to i16
  %51 = ptrtoint ptr %arrayinit.element.i44 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv5.i45, ptr %arrayinit.element.i44, align 4
  %flags6.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 1
  %52 = ptrtoint ptr %flags6.i46 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %flags6.i46, align 2
  %len7.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 2
  %53 = ptrtoint ptr %len7.i47 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %len7.i47, align 4
  %buf8.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 3
  %54 = ptrtoint ptr %buf8.i48 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %b1.i37, ptr %buf8.i48, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call.i49 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i38, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i38) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i37) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i36) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i55) #6
  %57 = ptrtoint ptr %b0.i55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 19, ptr %b0.i55, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i56) #6
  %58 = ptrtoint ptr %b1.i56 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %b1.i56, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i57) #6
  %59 = getelementptr inbounds i8, ptr %msg.i57, i32 4
  %60 = call ptr @memset(ptr %59, i32 255, i32 16)
  %61 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %config.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %62, align 1
  %conv.i59 = zext i8 %64 to i16
  %65 = ptrtoint ptr %msg.i57 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i59, ptr %msg.i57, align 4
  %flags.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i60 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i60, align 2
  %67 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %59, align 4
  %buf.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 0, i32 3
  %68 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %b0.i55, ptr %buf.i62, align 4
  %arrayinit.element.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1
  %69 = load i8, ptr %62, align 1
  %conv5.i64 = zext i8 %69 to i16
  %70 = ptrtoint ptr %arrayinit.element.i63 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv5.i64, ptr %arrayinit.element.i63, align 4
  %flags6.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 1
  %71 = ptrtoint ptr %flags6.i65 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %flags6.i65, align 2
  %len7.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 2
  %72 = ptrtoint ptr %len7.i66 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 1, ptr %len7.i66, align 4
  %buf8.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i57, i32 1, i32 3
  %73 = ptrtoint ptr %buf8.i67 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %b1.i56, ptr %buf8.i67, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %call.i68 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msg.i57, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i57) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i56) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i55) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i74) #6
  %76 = ptrtoint ptr %b0.i74 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 20, ptr %b0.i74, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i75) #6
  %77 = ptrtoint ptr %b1.i75 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %b1.i75, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i76) #6
  %78 = getelementptr inbounds i8, ptr %msg.i76, i32 4
  %79 = call ptr @memset(ptr %78, i32 255, i32 16)
  %80 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %config.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 1
  %conv.i78 = zext i8 %83 to i16
  %84 = ptrtoint ptr %msg.i76 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i78, ptr %msg.i76, align 4
  %flags.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i79, align 2
  %86 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 1, ptr %78, align 4
  %buf.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 3
  %87 = ptrtoint ptr %buf.i81 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %b0.i74, ptr %buf.i81, align 4
  %arrayinit.element.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1
  %88 = load i8, ptr %81, align 1
  %conv5.i83 = zext i8 %88 to i16
  %89 = ptrtoint ptr %arrayinit.element.i82 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv5.i83, ptr %arrayinit.element.i82, align 4
  %flags6.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1, i32 1
  %90 = ptrtoint ptr %flags6.i84 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 1, ptr %flags6.i84, align 2
  %len7.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1, i32 2
  %91 = ptrtoint ptr %len7.i85 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %len7.i85, align 4
  %buf8.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1, i32 3
  %92 = ptrtoint ptr %buf8.i86 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %b1.i75, ptr %buf8.i86, align 4
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call.i87 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msg.i76, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i76) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i75) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i74) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i93) #6
  %95 = getelementptr inbounds [2 x i8], ptr %buf.i93, i32 0, i32 1
  %96 = ptrtoint ptr %buf.i93 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 16, ptr %buf.i93, align 1
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 112, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i94) #6
  %98 = getelementptr inbounds i8, ptr %msg.i94, i32 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 196607, ptr %98, align 4
  %100 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %config.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 1
  %conv2.i96 = zext i8 %103 to i16
  %104 = ptrtoint ptr %msg.i94 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv2.i96, ptr %msg.i94, align 4
  %flags.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i97 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i97, align 2
  %buf3.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 3
  %106 = ptrtoint ptr %buf3.i99 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %buf.i93, ptr %buf3.i99, align 4
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %call.i100 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %msg.i94, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i100)
  %cmp.not.i101 = icmp eq i32 %call.i100, 1
  br i1 %cmp.not.i101, label %cx24110_writereg.exit.cx24110_writereg.exit107_crit_edge, label %do.body.i103

cx24110_writereg.exit.cx24110_writereg.exit107_crit_edge: ; preds = %cx24110_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit107

do.body.i103:                                     ; preds = %cx24110_writereg.exit
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i102 = icmp eq i32 %109, 0
  br i1 %tobool.not.i102, label %do.body.i103.cx24110_writereg.exit107_crit_edge, label %do.end.i105

do.body.i103.cx24110_writereg.exit107_crit_edge:  ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit107

do.end.i105:                                      ; preds = %do.body.i103
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i100, i32 noundef 16, i32 noundef 112) #10
  br label %cx24110_writereg.exit107

cx24110_writereg.exit107:                         ; preds = %do.end.i105, %do.body.i103.cx24110_writereg.exit107_crit_edge, %cx24110_writereg.exit.cx24110_writereg.exit107_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i94) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i93) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i108) #6
  %110 = ptrtoint ptr %b0.i108 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 18, ptr %b0.i108, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i109) #6
  %111 = ptrtoint ptr %b1.i109 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %b1.i109, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i110) #6
  %112 = getelementptr inbounds i8, ptr %msg.i110, i32 4
  %113 = call ptr @memset(ptr %112, i32 255, i32 16)
  %114 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %config.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %115, align 1
  %conv.i112 = zext i8 %117 to i16
  %118 = ptrtoint ptr %msg.i110 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i112, ptr %msg.i110, align 4
  %flags.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110, i32 0, i32 1
  %119 = ptrtoint ptr %flags.i113 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %flags.i113, align 2
  %120 = ptrtoint ptr %112 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %112, align 4
  %buf.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110, i32 0, i32 3
  %121 = ptrtoint ptr %buf.i115 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %b0.i108, ptr %buf.i115, align 4
  %arrayinit.element.i116 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110, i32 1
  %122 = load i8, ptr %115, align 1
  %conv5.i117 = zext i8 %122 to i16
  %123 = ptrtoint ptr %arrayinit.element.i116 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv5.i117, ptr %arrayinit.element.i116, align 4
  %flags6.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110, i32 1, i32 1
  %124 = ptrtoint ptr %flags6.i118 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 1, ptr %flags6.i118, align 2
  %len7.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110, i32 1, i32 2
  %125 = ptrtoint ptr %len7.i119 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 1, ptr %len7.i119, align 4
  %buf8.i120 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110, i32 1, i32 3
  %126 = ptrtoint ptr %buf8.i120 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %b1.i109, ptr %buf8.i120, align 4
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %call.i121 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i110, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i121)
  %cmp.not.i122 = icmp eq i32 %call.i121, 2
  br i1 %cmp.not.i122, label %if.end.i124, label %cx24110_writereg.exit107.cx24110_readreg.exit126_crit_edge

cx24110_writereg.exit107.cx24110_readreg.exit126_crit_edge: ; preds = %cx24110_writereg.exit107
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit126

if.end.i124:                                      ; preds = %cx24110_writereg.exit107
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %b1.i109 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %b1.i109, align 1
  %conv12.i123 = zext i8 %130 to i32
  br label %cx24110_readreg.exit126

cx24110_readreg.exit126:                          ; preds = %if.end.i124, %cx24110_writereg.exit107.cx24110_readreg.exit126_crit_edge
  %retval.0.i125 = phi i32 [ %conv12.i123, %if.end.i124 ], [ %call.i121, %cx24110_writereg.exit107.cx24110_readreg.exit126_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i110) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i109) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i108) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i127) #6
  %131 = ptrtoint ptr %b0.i127 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 19, ptr %b0.i127, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i128) #6
  %132 = ptrtoint ptr %b1.i128 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %b1.i128, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i129) #6
  %133 = getelementptr inbounds i8, ptr %msg.i129, i32 4
  %134 = call ptr @memset(ptr %133, i32 255, i32 16)
  %135 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %config.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %136, align 1
  %conv.i131 = zext i8 %138 to i16
  %139 = ptrtoint ptr %msg.i129 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv.i131, ptr %msg.i129, align 4
  %flags.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 1
  %140 = ptrtoint ptr %flags.i132 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %flags.i132, align 2
  %141 = ptrtoint ptr %133 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %133, align 4
  %buf.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 0, i32 3
  %142 = ptrtoint ptr %buf.i134 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %b0.i127, ptr %buf.i134, align 4
  %arrayinit.element.i135 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 1
  %143 = load i8, ptr %136, align 1
  %conv5.i136 = zext i8 %143 to i16
  %144 = ptrtoint ptr %arrayinit.element.i135 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %conv5.i136, ptr %arrayinit.element.i135, align 4
  %flags6.i137 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 1, i32 1
  %145 = ptrtoint ptr %flags6.i137 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 1, ptr %flags6.i137, align 2
  %len7.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 1, i32 2
  %146 = ptrtoint ptr %len7.i138 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 1, ptr %len7.i138, align 4
  %buf8.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129, i32 1, i32 3
  %147 = ptrtoint ptr %buf8.i139 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %b1.i128, ptr %buf8.i139, align 4
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %call.i140 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msg.i129, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i140)
  %cmp.not.i141 = icmp eq i32 %call.i140, 2
  br i1 %cmp.not.i141, label %if.end.i143, label %cx24110_readreg.exit126.cx24110_readreg.exit145_crit_edge

cx24110_readreg.exit126.cx24110_readreg.exit145_crit_edge: ; preds = %cx24110_readreg.exit126
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit145

if.end.i143:                                      ; preds = %cx24110_readreg.exit126
  call void @__sanitizer_cov_trace_pc() #8
  %150 = ptrtoint ptr %b1.i128 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %b1.i128, align 1
  %conv12.i142 = zext i8 %151 to i32
  br label %cx24110_readreg.exit145

cx24110_readreg.exit145:                          ; preds = %if.end.i143, %cx24110_readreg.exit126.cx24110_readreg.exit145_crit_edge
  %retval.0.i144 = phi i32 [ %conv12.i142, %if.end.i143 ], [ %call.i140, %cx24110_readreg.exit126.cx24110_readreg.exit145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i129) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i128) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i127) #6
  %shl10 = shl i32 %retval.0.i144, 8
  %or11 = or i32 %shl10, %retval.0.i125
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i146) #6
  %152 = ptrtoint ptr %b0.i146 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 20, ptr %b0.i146, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i147) #6
  %153 = ptrtoint ptr %b1.i147 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %b1.i147, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i148) #6
  %154 = getelementptr inbounds i8, ptr %msg.i148, i32 4
  %155 = call ptr @memset(ptr %154, i32 255, i32 16)
  %156 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %config.i, align 4
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %157, align 1
  %conv.i150 = zext i8 %159 to i16
  %160 = ptrtoint ptr %msg.i148 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv.i150, ptr %msg.i148, align 4
  %flags.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148, i32 0, i32 1
  %161 = ptrtoint ptr %flags.i151 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %flags.i151, align 2
  %162 = ptrtoint ptr %154 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 1, ptr %154, align 4
  %buf.i153 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148, i32 0, i32 3
  %163 = ptrtoint ptr %buf.i153 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %b0.i146, ptr %buf.i153, align 4
  %arrayinit.element.i154 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148, i32 1
  %164 = load i8, ptr %157, align 1
  %conv5.i155 = zext i8 %164 to i16
  %165 = ptrtoint ptr %arrayinit.element.i154 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv5.i155, ptr %arrayinit.element.i154, align 4
  %flags6.i156 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148, i32 1, i32 1
  %166 = ptrtoint ptr %flags6.i156 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 1, ptr %flags6.i156, align 2
  %len7.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148, i32 1, i32 2
  %167 = ptrtoint ptr %len7.i157 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 1, ptr %len7.i157, align 4
  %buf8.i158 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i148, i32 1, i32 3
  %168 = ptrtoint ptr %buf8.i158 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %b1.i147, ptr %buf8.i158, align 4
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 4
  %call.i159 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %msg.i148, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i159)
  %cmp.not.i160 = icmp eq i32 %call.i159, 2
  br i1 %cmp.not.i160, label %if.end.i162, label %cx24110_readreg.exit145.cx24110_readreg.exit164_crit_edge

cx24110_readreg.exit145.cx24110_readreg.exit164_crit_edge: ; preds = %cx24110_readreg.exit145
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit164

if.end.i162:                                      ; preds = %cx24110_readreg.exit145
  call void @__sanitizer_cov_trace_pc() #8
  %171 = ptrtoint ptr %b1.i147 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %b1.i147, align 1
  %conv12.i161 = zext i8 %172 to i32
  br label %cx24110_readreg.exit164

cx24110_readreg.exit164:                          ; preds = %if.end.i162, %cx24110_readreg.exit145.cx24110_readreg.exit164_crit_edge
  %retval.0.i163 = phi i32 [ %conv12.i161, %if.end.i162 ], [ %call.i159, %cx24110_readreg.exit145.cx24110_readreg.exit164_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i148) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i147) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i146) #6
  %shl13 = shl i32 %retval.0.i163, 16
  %or14 = or i32 %or11, %shl13
  %lastbler = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 4
  %173 = ptrtoint ptr %lastbler to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %or14, ptr %lastbler, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i165) #6
  %174 = getelementptr inbounds [2 x i8], ptr %buf.i165, i32 0, i32 1
  %175 = ptrtoint ptr %buf.i165 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 16, ptr %buf.i165, align 1
  %176 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 32, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i166) #6
  %177 = getelementptr inbounds i8, ptr %msg.i166, i32 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 196607, ptr %177, align 4
  %179 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %config.i, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 1
  %conv2.i168 = zext i8 %182 to i16
  %183 = ptrtoint ptr %msg.i166 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv2.i168, ptr %msg.i166, align 4
  %flags.i169 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166, i32 0, i32 1
  %184 = ptrtoint ptr %flags.i169 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %flags.i169, align 2
  %buf3.i171 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166, i32 0, i32 3
  %185 = ptrtoint ptr %buf3.i171 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %buf.i165, ptr %buf3.i171, align 4
  %186 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %1, align 4
  %call.i172 = call i32 @i2c_transfer(ptr noundef %187, ptr noundef nonnull %msg.i166, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i172)
  %cmp.not.i173 = icmp eq i32 %call.i172, 1
  br i1 %cmp.not.i173, label %cx24110_readreg.exit164.cx24110_writereg.exit179_crit_edge, label %do.body.i175

cx24110_readreg.exit164.cx24110_writereg.exit179_crit_edge: ; preds = %cx24110_readreg.exit164
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit179

do.body.i175:                                     ; preds = %cx24110_readreg.exit164
  %188 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i174 = icmp eq i32 %188, 0
  br i1 %tobool.not.i174, label %do.body.i175.cx24110_writereg.exit179_crit_edge, label %do.end.i177

do.body.i175.cx24110_writereg.exit179_crit_edge:  ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit179

do.end.i177:                                      ; preds = %do.body.i175
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i172, i32 noundef 16, i32 noundef 32) #10
  br label %cx24110_writereg.exit179

cx24110_writereg.exit179:                         ; preds = %do.end.i177, %do.body.i175.cx24110_writereg.exit179_crit_edge, %cx24110_readreg.exit164.cx24110_writereg.exit179_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i166) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i165) #6
  br label %if.end

if.end:                                           ; preds = %cx24110_writereg.exit179, %cx24110_readreg.exit.if.end_crit_edge
  %lastbler16 = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 4
  %189 = ptrtoint ptr %lastbler16 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %lastbler16, align 4
  %191 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %190, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %b0.i107 = alloca [1 x i8], align 1
  %b1.i108 = alloca [1 x i8], align 1
  %msg.i109 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i91 = alloca [2 x i8], align 1
  %msg.i92 = alloca %struct.i2c_msg, align 4
  %b0.i72 = alloca [1 x i8], align 1
  %b1.i73 = alloca [1 x i8], align 1
  %msg.i74 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i57 = alloca [2 x i8], align 1
  %msg.i58 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i48 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msg_len, align 1
  %4 = add i8 %3, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %4)
  %5 = icmp ult i8 %4, -4
  br i1 %5, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp8127.not = icmp eq i8 %7, 0
  br i1 %cmp8127.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cx24110_writereg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cx24110_writereg.exit.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0128, 121
  %arrayidx = getelementptr [6 x i8], ptr %cmd, i32 0, i32 %i.0128
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %11 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %conv.i = trunc i32 %add to i8
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %buf.i, align 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %9, align 4
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  %conv2.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv2.i, ptr %msg.i, align 4
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %9, align 4
  %21 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i, ptr %buf3.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.body.cx24110_writereg.exit_crit_edge, label %do.body.i

for.body.cx24110_writereg.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.body.i:                                        ; preds = %for.body
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body.i.cx24110_writereg.exit_crit_edge, label %do.end.i

do.body.i.cx24110_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i, i32 noundef %add, i32 noundef %conv10) #10
  br label %cx24110_writereg.exit

cx24110_writereg.exit:                            ; preds = %do.end.i, %do.body.i.cx24110_writereg.exit_crit_edge, %for.body.cx24110_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %inc = add nuw nsw i32 %i.0128, 1
  %25 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %msg_len, align 1
  %conv7 = zext i8 %26 to i32
  %cmp8 = icmp ult i32 %inc, %conv7
  br i1 %cmp8, label %cx24110_writereg.exit.for.body_crit_edge, label %cx24110_writereg.exit.for.end_crit_edge

cx24110_writereg.exit.for.end_crit_edge:          ; preds = %cx24110_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cx24110_writereg.exit.for.body_crit_edge:         ; preds = %cx24110_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cx24110_writereg.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %27 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 119, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %28 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i48) #6
  %29 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %config.i49 = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %config.i49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i49, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv.i50 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i50, ptr %msg.i48, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i51, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %29, align 4
  %buf.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i, ptr %buf.i53, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1
  %39 = load i8, ptr %32, align 1
  %conv5.i = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 1
  %41 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 2
  %42 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 3
  %43 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i, ptr %buf8.i, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i54 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i48, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i54)
  %cmp.not.i55 = icmp eq i32 %call.i54, 2
  br i1 %cmp.not.i55, label %if.end.i, label %for.end.cx24110_readreg.exit_crit_edge

for.end.cx24110_readreg.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %47 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %for.end.cx24110_readreg.exit_crit_edge
  %retval.0.i56 = phi i32 [ %conv12.i, %if.end.i ], [ %call.i54, %for.end.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i48) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cx24110_readreg.exit.if.end15_crit_edge, label %if.then12

cx24110_readreg.exit.if.end15_crit_edge:          ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %cx24110_readreg.exit
  %and13 = and i32 %retval.0.i56, -5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i57) #6
  %48 = getelementptr inbounds [2 x i8], ptr %buf.i57, i32 0, i32 1
  %49 = ptrtoint ptr %buf.i57 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 119, ptr %buf.i57, align 1
  %conv1.i = trunc i32 %and13 to i8
  %50 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv1.i, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i58) #6
  %51 = getelementptr inbounds i8, ptr %msg.i58, i32 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 196607, ptr %51, align 4
  %53 = ptrtoint ptr %config.i49 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config.i49, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv2.i60 = zext i8 %56 to i16
  %57 = ptrtoint ptr %msg.i58 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv2.i60, ptr %msg.i58, align 4
  %flags.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i61 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i61, align 2
  %buf3.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i58, i32 0, i32 3
  %59 = ptrtoint ptr %buf3.i63 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %buf.i57, ptr %buf3.i63, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call.i64 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i58, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i64)
  %cmp.not.i65 = icmp eq i32 %call.i64, 1
  br i1 %cmp.not.i65, label %if.then12.cx24110_writereg.exit71_crit_edge, label %do.body.i67

if.then12.cx24110_writereg.exit71_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit71

do.body.i67:                                      ; preds = %if.then12
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i66 = icmp eq i32 %62, 0
  br i1 %tobool.not.i66, label %do.body.i67.cx24110_writereg.exit71_crit_edge, label %do.end.i69

do.body.i67.cx24110_writereg.exit71_crit_edge:    ; preds = %do.body.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit71

do.end.i69:                                       ; preds = %do.body.i67
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i64, i32 noundef 119, i32 noundef %and13) #10
  br label %cx24110_writereg.exit71

cx24110_writereg.exit71:                          ; preds = %do.end.i69, %do.body.i67.cx24110_writereg.exit71_crit_edge, %if.then12.cx24110_writereg.exit71_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i58) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i57) #6
  call void @msleep(i32 noundef 30) #6
  br label %if.end15

if.end15:                                         ; preds = %cx24110_writereg.exit71, %cx24110_readreg.exit.if.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i72) #6
  %63 = ptrtoint ptr %b0.i72 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 118, ptr %b0.i72, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i73) #6
  %64 = ptrtoint ptr %b1.i73 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %b1.i73, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i74) #6
  %65 = getelementptr inbounds i8, ptr %msg.i74, i32 4
  %66 = call ptr @memset(ptr %65, i32 255, i32 16)
  %67 = ptrtoint ptr %config.i49 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config.i49, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 1
  %conv.i76 = zext i8 %70 to i16
  %71 = ptrtoint ptr %msg.i74 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i76, ptr %msg.i74, align 4
  %flags.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i77, align 2
  %73 = ptrtoint ptr %65 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %65, align 4
  %buf.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 3
  %74 = ptrtoint ptr %buf.i79 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %b0.i72, ptr %buf.i79, align 4
  %arrayinit.element.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 1
  %75 = load i8, ptr %68, align 1
  %conv5.i81 = zext i8 %75 to i16
  %76 = ptrtoint ptr %arrayinit.element.i80 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv5.i81, ptr %arrayinit.element.i80, align 4
  %flags6.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 1, i32 1
  %77 = ptrtoint ptr %flags6.i82 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %flags6.i82, align 2
  %len7.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 1, i32 2
  %78 = ptrtoint ptr %len7.i83 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %len7.i83, align 4
  %buf8.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 1, i32 3
  %79 = ptrtoint ptr %buf8.i84 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %b1.i73, ptr %buf8.i84, align 4
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %call.i85 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i74, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i85)
  %cmp.not.i86 = icmp eq i32 %call.i85, 2
  br i1 %cmp.not.i86, label %if.end.i88, label %if.end15.cx24110_readreg.exit90_crit_edge

if.end15.cx24110_readreg.exit90_crit_edge:        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit90

if.end.i88:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %b1.i73 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %b1.i73, align 1
  %conv12.i87 = zext i8 %83 to i32
  br label %cx24110_readreg.exit90

cx24110_readreg.exit90:                           ; preds = %if.end.i88, %if.end15.cx24110_readreg.exit90_crit_edge
  %retval.0.i89 = phi i32 [ %conv12.i87, %if.end.i88 ], [ %call.i85, %if.end15.cx24110_readreg.exit90_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i74) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i73) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i72) #6
  %and17 = and i32 %retval.0.i89, 144
  %84 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %msg_len, align 1
  %86 = add i8 %85, 1
  %87 = and i8 %86, 3
  %and20 = zext i8 %87 to i32
  %or = or i32 %and17, %and20
  %or21 = or i32 %or, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i91) #6
  %88 = getelementptr inbounds [2 x i8], ptr %buf.i91, i32 0, i32 1
  %89 = ptrtoint ptr %buf.i91 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 118, ptr %buf.i91, align 1
  %conv1.i93 = trunc i32 %or21 to i8
  %90 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv1.i93, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i92) #6
  %91 = getelementptr inbounds i8, ptr %msg.i92, i32 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 196607, ptr %91, align 4
  %93 = ptrtoint ptr %config.i49 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %config.i49, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 1
  %conv2.i95 = zext i8 %96 to i16
  %97 = ptrtoint ptr %msg.i92 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv2.i95, ptr %msg.i92, align 4
  %flags.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i96 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i96, align 2
  %buf3.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i92, i32 0, i32 3
  %99 = ptrtoint ptr %buf3.i98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %buf.i91, ptr %buf3.i98, align 4
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %call.i99 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %msg.i92, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i99)
  %cmp.not.i100 = icmp eq i32 %call.i99, 1
  br i1 %cmp.not.i100, label %cx24110_readreg.exit90.cx24110_writereg.exit106_crit_edge, label %do.body.i102

cx24110_readreg.exit90.cx24110_writereg.exit106_crit_edge: ; preds = %cx24110_readreg.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit106

do.body.i102:                                     ; preds = %cx24110_readreg.exit90
  %102 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i101 = icmp eq i32 %102, 0
  br i1 %tobool.not.i101, label %do.body.i102.cx24110_writereg.exit106_crit_edge, label %do.end.i104

do.body.i102.cx24110_writereg.exit106_crit_edge:  ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit106

do.end.i104:                                      ; preds = %do.body.i102
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i99, i32 noundef 118, i32 noundef %or21) #10
  br label %cx24110_writereg.exit106

cx24110_writereg.exit106:                         ; preds = %do.end.i104, %do.body.i102.cx24110_writereg.exit106_crit_edge, %cx24110_readreg.exit90.cx24110_writereg.exit106_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i92) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i91) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %add24 = add i32 %103, 10
  %104 = getelementptr inbounds i8, ptr %msg.i109, i32 4
  %flags.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 1
  %buf.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 3
  %arrayinit.element.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 1
  %flags6.i117 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 1, i32 1
  %len7.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 1, i32 2
  %buf8.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 1, i32 3
  br label %while.cond

while.cond:                                       ; preds = %cx24110_readreg.exit125.while.cond_crit_edge, %cx24110_writereg.exit106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %105 = load volatile i32, ptr @jiffies, align 128
  %sub25 = sub i32 %add24, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub25)
  %cmp26 = icmp slt i32 %sub25, 0
  br i1 %cmp26, label %while.cond.cleanup_crit_edge, label %land.rhs

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i107) #6
  %106 = ptrtoint ptr %b0.i107 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 118, ptr %b0.i107, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i108) #6
  %107 = ptrtoint ptr %b1.i108 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %b1.i108, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i109) #6
  %108 = call ptr @memset(ptr %104, i32 255, i32 16)
  %109 = ptrtoint ptr %config.i49 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %config.i49, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %110, align 1
  %conv.i111 = zext i8 %112 to i16
  %113 = ptrtoint ptr %msg.i109 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv.i111, ptr %msg.i109, align 4
  %114 = ptrtoint ptr %flags.i112 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %flags.i112, align 2
  %115 = ptrtoint ptr %104 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %104, align 4
  %116 = ptrtoint ptr %buf.i114 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %b0.i107, ptr %buf.i114, align 4
  %117 = load i8, ptr %110, align 1
  %conv5.i116 = zext i8 %117 to i16
  %118 = ptrtoint ptr %arrayinit.element.i115 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv5.i116, ptr %arrayinit.element.i115, align 4
  %119 = ptrtoint ptr %flags6.i117 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 1, ptr %flags6.i117, align 2
  %120 = ptrtoint ptr %len7.i118 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %len7.i118, align 4
  %121 = ptrtoint ptr %buf8.i119 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %b1.i108, ptr %buf8.i119, align 4
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 4
  %call.i120 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msg.i109, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i120)
  %cmp.not.i121 = icmp eq i32 %call.i120, 2
  br i1 %cmp.not.i121, label %if.end.i123, label %land.rhs.cx24110_readreg.exit125_crit_edge

land.rhs.cx24110_readreg.exit125_crit_edge:       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit125

if.end.i123:                                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %b1.i108 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %b1.i108, align 1
  %conv12.i122 = zext i8 %125 to i32
  br label %cx24110_readreg.exit125

cx24110_readreg.exit125:                          ; preds = %if.end.i123, %land.rhs.cx24110_readreg.exit125_crit_edge
  %retval.0.i124 = phi i32 [ %conv12.i122, %if.end.i123 ], [ %call.i120, %land.rhs.cx24110_readreg.exit125_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i109) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i108) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i107) #6
  %and29 = and i32 %retval.0.i124, 64
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %cx24110_readreg.exit125.while.cond_crit_edge, label %cx24110_readreg.exit125.cleanup_crit_edge

cx24110_readreg.exit125.cleanup_crit_edge:        ; preds = %cx24110_readreg.exit125
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cx24110_readreg.exit125.while.cond_crit_edge:     ; preds = %cx24110_readreg.exit125
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

cleanup:                                          ; preds = %cx24110_readreg.exit125.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ 0, %cx24110_readreg.exit125.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %b0.i71 = alloca [1 x i8], align 1
  %b1.i72 = alloca [1 x i8], align 1
  %msg.i73 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i55 = alloca [2 x i8], align 1
  %msg.i56 = alloca %struct.i2c_msg, align 4
  %b0.i36 = alloca [1 x i8], align 1
  %b1.i37 = alloca [1 x i8], align 1
  %msg.i38 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i28 = alloca [2 x i8], align 1
  %msg.i29 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = zext i32 %burst to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %burst, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end4_crit_edge
    i32 1, label %if.then2
  ]

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  %bit.0 = phi i32 [ 72, %if.then2 ], [ 64, %entry.if.end4_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 119, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %if.end4.cx24110_readreg.exit_crit_edge

if.end4.cx24110_readreg.exit_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %23 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %if.end4.cx24110_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %if.end4.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then5, label %cx24110_readreg.exit.if.end7_crit_edge

cx24110_readreg.exit.if.end7_crit_edge:           ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %cx24110_readreg.exit
  %or = or i32 %retval.0.i, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i28) #6
  %24 = getelementptr inbounds [2 x i8], ptr %buf.i28, i32 0, i32 1
  %25 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 119, ptr %buf.i28, align 1
  %conv1.i = trunc i32 %or to i8
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv1.i, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i29) #6
  %27 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 196607, ptr %27, align 4
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv2.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv2.i, ptr %msg.i29, align 4
  %flags.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i31, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %35 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i28, ptr %buf3.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i33 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i29, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i33)
  %cmp.not.i34 = icmp eq i32 %call.i33, 1
  br i1 %cmp.not.i34, label %if.then5.cx24110_writereg.exit_crit_edge, label %do.body.i

if.then5.cx24110_writereg.exit_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.body.i:                                        ; preds = %if.then5
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %do.body.i.cx24110_writereg.exit_crit_edge, label %do.end.i

do.body.i.cx24110_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i33, i32 noundef 119, i32 noundef %or) #10
  br label %cx24110_writereg.exit

cx24110_writereg.exit:                            ; preds = %do.end.i, %do.body.i.cx24110_writereg.exit_crit_edge, %if.then5.cx24110_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i29) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i28) #6
  br label %if.end7

if.end7:                                          ; preds = %cx24110_writereg.exit, %cx24110_readreg.exit.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i36) #6
  %39 = ptrtoint ptr %b0.i36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 118, ptr %b0.i36, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i37) #6
  %40 = ptrtoint ptr %b1.i37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %b1.i37, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i38) #6
  %41 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %conv.i40 = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i40, ptr %msg.i38, align 4
  %flags.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i41, align 2
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %41, align 4
  %buf.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i43 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %b0.i36, ptr %buf.i43, align 4
  %arrayinit.element.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1
  %51 = load i8, ptr %44, align 1
  %conv5.i45 = zext i8 %51 to i16
  %52 = ptrtoint ptr %arrayinit.element.i44 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv5.i45, ptr %arrayinit.element.i44, align 4
  %flags6.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 1
  %53 = ptrtoint ptr %flags6.i46 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags6.i46, align 2
  %len7.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 2
  %54 = ptrtoint ptr %len7.i47 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len7.i47, align 4
  %buf8.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 1, i32 3
  %55 = ptrtoint ptr %buf8.i48 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b1.i37, ptr %buf8.i48, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i49 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i38, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i49)
  %cmp.not.i50 = icmp eq i32 %call.i49, 2
  br i1 %cmp.not.i50, label %if.end.i52, label %if.end7.cx24110_readreg.exit54_crit_edge

if.end7.cx24110_readreg.exit54_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit54

if.end.i52:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %b1.i37 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %b1.i37, align 1
  %conv12.i51 = zext i8 %59 to i32
  br label %cx24110_readreg.exit54

cx24110_readreg.exit54:                           ; preds = %if.end.i52, %if.end7.cx24110_readreg.exit54_crit_edge
  %retval.0.i53 = phi i32 [ %conv12.i51, %if.end.i52 ], [ %call.i49, %if.end7.cx24110_readreg.exit54_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i38) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i37) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i36) #6
  %and9 = and i32 %retval.0.i53, 144
  %or11 = or i32 %bit.0, %and9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i55) #6
  %60 = getelementptr inbounds [2 x i8], ptr %buf.i55, i32 0, i32 1
  %61 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 118, ptr %buf.i55, align 1
  %conv1.i57 = trunc i32 %or11 to i8
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv1.i57, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56) #6
  %63 = getelementptr inbounds i8, ptr %msg.i56, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 196607, ptr %63, align 4
  %65 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  %conv2.i59 = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv2.i59, ptr %msg.i56, align 4
  %flags.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i60 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i60, align 2
  %buf3.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 3
  %71 = ptrtoint ptr %buf3.i62 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i55, ptr %buf3.i62, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call.i63 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i56, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i63)
  %cmp.not.i64 = icmp eq i32 %call.i63, 1
  br i1 %cmp.not.i64, label %cx24110_readreg.exit54.cx24110_writereg.exit70_crit_edge, label %do.body.i66

cx24110_readreg.exit54.cx24110_writereg.exit70_crit_edge: ; preds = %cx24110_readreg.exit54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit70

do.body.i66:                                      ; preds = %cx24110_readreg.exit54
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i65 = icmp eq i32 %74, 0
  br i1 %tobool.not.i65, label %do.body.i66.cx24110_writereg.exit70_crit_edge, label %do.end.i68

do.body.i66.cx24110_writereg.exit70_crit_edge:    ; preds = %do.body.i66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit70

do.end.i68:                                       ; preds = %do.body.i66
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i63, i32 noundef 118, i32 noundef %or11) #10
  br label %cx24110_writereg.exit70

cx24110_writereg.exit70:                          ; preds = %do.end.i68, %do.body.i66.cx24110_writereg.exit70_crit_edge, %cx24110_readreg.exit54.cx24110_writereg.exit70_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i55) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %75, 10
  %76 = getelementptr inbounds i8, ptr %msg.i73, i32 4
  %flags.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 0, i32 1
  %buf.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 0, i32 3
  %arrayinit.element.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 1
  %flags6.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 1, i32 1
  %len7.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 1, i32 2
  %buf8.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i73, i32 1, i32 3
  br label %while.cond

while.cond:                                       ; preds = %cx24110_readreg.exit89.while.cond_crit_edge, %cx24110_writereg.exit70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %while.cond.cleanup_crit_edge, label %land.rhs

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs:                                         ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i71) #6
  %78 = ptrtoint ptr %b0.i71 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 118, ptr %b0.i71, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i72) #6
  %79 = ptrtoint ptr %b1.i72 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %b1.i72, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i73) #6
  %80 = call ptr @memset(ptr %76, i32 255, i32 16)
  %81 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  %conv.i75 = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i73 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i75, ptr %msg.i73, align 4
  %86 = ptrtoint ptr %flags.i76 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i76, align 2
  %87 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %76, align 4
  %88 = ptrtoint ptr %buf.i78 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %b0.i71, ptr %buf.i78, align 4
  %89 = load i8, ptr %82, align 1
  %conv5.i80 = zext i8 %89 to i16
  %90 = ptrtoint ptr %arrayinit.element.i79 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv5.i80, ptr %arrayinit.element.i79, align 4
  %91 = ptrtoint ptr %flags6.i81 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %flags6.i81, align 2
  %92 = ptrtoint ptr %len7.i82 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %len7.i82, align 4
  %93 = ptrtoint ptr %buf8.i83 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %b1.i72, ptr %buf8.i83, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %call.i84 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i73, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i84)
  %cmp.not.i85 = icmp eq i32 %call.i84, 2
  br i1 %cmp.not.i85, label %if.end.i87, label %land.rhs.cx24110_readreg.exit89_crit_edge

land.rhs.cx24110_readreg.exit89_crit_edge:        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit89

if.end.i87:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %b1.i72 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %b1.i72, align 1
  %conv12.i86 = zext i8 %97 to i32
  br label %cx24110_readreg.exit89

cx24110_readreg.exit89:                           ; preds = %if.end.i87, %land.rhs.cx24110_readreg.exit89_crit_edge
  %retval.0.i88 = phi i32 [ %conv12.i86, %if.end.i87 ], [ %call.i84, %land.rhs.cx24110_readreg.exit89_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i73) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i72) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i71) #6
  %and16 = and i32 %retval.0.i88, 64
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %cx24110_readreg.exit89.while.cond_crit_edge, label %cx24110_readreg.exit89.cleanup_crit_edge

cx24110_readreg.exit89.cleanup_crit_edge:         ; preds = %cx24110_readreg.exit89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cx24110_readreg.exit89.while.cond_crit_edge:      ; preds = %cx24110_readreg.exit89
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

cleanup:                                          ; preds = %cx24110_readreg.exit89.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ], [ 0, %cx24110_readreg.exit89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
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
  store i8 118, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.cx24110_readreg.exit_crit_edge

entry.cx24110_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %entry.cx24110_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %entry.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tone)
  %cmp = icmp eq i32 %tone, 0
  %cond = select i1 %cmp, i32 16, i32 0
  %or = or i32 %and, %cond
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 118, ptr %buf.i3, align 1
  %conv1.i = trunc i32 %or to i8
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.i, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %26 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv2.i = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv2.i, ptr %msg.i4, align 4
  %flags.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i6, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %34 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i3, ptr %buf3.i, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i8 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8)
  %cmp.not.i9 = icmp eq i32 %call.i8, 1
  br i1 %cmp.not.i9, label %cx24110_readreg.exit.cx24110_writereg.exit_crit_edge, label %do.body.i

cx24110_readreg.exit.cx24110_writereg.exit_crit_edge: ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.body.i:                                        ; preds = %cx24110_readreg.exit
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %do.body.i.cx24110_writereg.exit_crit_edge, label %do.end.i

do.body.i.cx24110_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i8, i32 noundef 118, i32 noundef %or) #10
  br label %cx24110_writereg.exit

cx24110_writereg.exit:                            ; preds = %do.end.i, %do.body.i.cx24110_writereg.exit_crit_edge, %cx24110_readreg.exit.cx24110_writereg.exit_crit_edge
  %retval.0.i10 = phi i32 [ -121, %do.end.i ], [ -121, %do.body.i.cx24110_writereg.exit_crit_edge ], [ 0, %cx24110_readreg.exit.cx24110_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  ret i32 %retval.0.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24110_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %buf.i37 = alloca [2 x i8], align 1
  %msg.i38 = alloca %struct.i2c_msg, align 4
  %b0.i18 = alloca [1 x i8], align 1
  %b1.i19 = alloca [1 x i8], align 1
  %msg.i20 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i10 = alloca [2 x i8], align 1
  %msg.i11 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %voltage, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 118, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.cx24110_readreg.exit_crit_edge

sw.bb.cx24110_readreg.exit_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %23 to i32
  br label %cx24110_readreg.exit

cx24110_readreg.exit:                             ; preds = %if.end.i, %sw.bb.cx24110_readreg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ %call.i, %sw.bb.cx24110_readreg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %and = and i32 %retval.0.i, 59
  %or = or i32 %and, 192
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i10) #6
  %24 = getelementptr inbounds [2 x i8], ptr %buf.i10, i32 0, i32 1
  %25 = ptrtoint ptr %buf.i10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 118, ptr %buf.i10, align 1
  %conv1.i = trunc i32 %or to i8
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv1.i, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i11) #6
  %27 = getelementptr inbounds i8, ptr %msg.i11, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 196607, ptr %27, align 4
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv2.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i11 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv2.i, ptr %msg.i11, align 4
  %flags.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i13, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i11, i32 0, i32 3
  %35 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i10, ptr %buf3.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i15 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i11, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i15)
  %cmp.not.i16 = icmp eq i32 %call.i15, 1
  br i1 %cmp.not.i16, label %cx24110_readreg.exit.cx24110_writereg.exit_crit_edge, label %do.body.i

cx24110_readreg.exit.cx24110_writereg.exit_crit_edge: ; preds = %cx24110_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.body.i:                                        ; preds = %cx24110_readreg.exit
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %do.body.i.cx24110_writereg.exit_crit_edge, label %do.end.i

do.body.i.cx24110_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i15, i32 noundef 118, i32 noundef %or) #10
  br label %cx24110_writereg.exit

cx24110_writereg.exit:                            ; preds = %do.end.i, %do.body.i.cx24110_writereg.exit_crit_edge, %cx24110_readreg.exit.cx24110_writereg.exit_crit_edge
  %retval.0.i17 = phi i32 [ -121, %do.end.i ], [ -121, %do.body.i.cx24110_writereg.exit_crit_edge ], [ 0, %cx24110_readreg.exit.cx24110_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i11) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i10) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i18) #6
  %39 = ptrtoint ptr %b0.i18 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 118, ptr %b0.i18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i19) #6
  %40 = ptrtoint ptr %b1.i19 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %b1.i19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i20) #6
  %41 = getelementptr inbounds i8, ptr %msg.i20, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %config.i21 = getelementptr inbounds %struct.cx24110_state, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %config.i21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config.i21, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %conv.i22 = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i22, ptr %msg.i20, align 4
  %flags.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i23, align 2
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %41, align 4
  %buf.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %b0.i18, ptr %buf.i25, align 4
  %arrayinit.element.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 1
  %51 = load i8, ptr %44, align 1
  %conv5.i27 = zext i8 %51 to i16
  %52 = ptrtoint ptr %arrayinit.element.i26 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv5.i27, ptr %arrayinit.element.i26, align 4
  %flags6.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 1, i32 1
  %53 = ptrtoint ptr %flags6.i28 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags6.i28, align 2
  %len7.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 1, i32 2
  %54 = ptrtoint ptr %len7.i29 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len7.i29, align 4
  %buf8.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 1, i32 3
  %55 = ptrtoint ptr %buf8.i30 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b1.i19, ptr %buf8.i30, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i31 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i20, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i31)
  %cmp.not.i32 = icmp eq i32 %call.i31, 2
  br i1 %cmp.not.i32, label %if.end.i34, label %sw.bb2.cx24110_readreg.exit36_crit_edge

sw.bb2.cx24110_readreg.exit36_crit_edge:          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_readreg.exit36

if.end.i34:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %b1.i19 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %b1.i19, align 1
  %conv12.i33 = zext i8 %59 to i32
  br label %cx24110_readreg.exit36

cx24110_readreg.exit36:                           ; preds = %if.end.i34, %sw.bb2.cx24110_readreg.exit36_crit_edge
  %retval.0.i35 = phi i32 [ %conv12.i33, %if.end.i34 ], [ %call.i31, %sw.bb2.cx24110_readreg.exit36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i20) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i19) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i18) #6
  %and4 = and i32 %retval.0.i35, 59
  %or5 = or i32 %and4, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i37) #6
  %60 = getelementptr inbounds [2 x i8], ptr %buf.i37, i32 0, i32 1
  %61 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 118, ptr %buf.i37, align 1
  %conv1.i39 = trunc i32 %or5 to i8
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv1.i39, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38) #6
  %63 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 196607, ptr %63, align 4
  %65 = ptrtoint ptr %config.i21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config.i21, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  %conv2.i41 = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv2.i41, ptr %msg.i38, align 4
  %flags.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i42, align 2
  %buf3.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %71 = ptrtoint ptr %buf3.i44 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i37, ptr %buf3.i44, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call.i45 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i38, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i45)
  %cmp.not.i46 = icmp eq i32 %call.i45, 1
  br i1 %cmp.not.i46, label %cx24110_readreg.exit36.cx24110_writereg.exit52_crit_edge, label %do.body.i48

cx24110_readreg.exit36.cx24110_writereg.exit52_crit_edge: ; preds = %cx24110_readreg.exit36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit52

do.body.i48:                                      ; preds = %cx24110_readreg.exit36
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i47 = icmp eq i32 %74, 0
  br i1 %tobool.not.i47, label %do.body.i48.cx24110_writereg.exit52_crit_edge, label %do.end.i50

do.body.i48.cx24110_writereg.exit52_crit_edge:    ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx24110_writereg.exit52

do.end.i50:                                       ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %call.i45, i32 noundef 118, i32 noundef %or5) #10
  br label %cx24110_writereg.exit52

cx24110_writereg.exit52:                          ; preds = %do.end.i50, %do.body.i48.cx24110_writereg.exit52_crit_edge, %cx24110_readreg.exit36.cx24110_writereg.exit52_crit_edge
  %retval.0.i51 = phi i32 [ -121, %do.end.i50 ], [ -121, %do.body.i48.cx24110_writereg.exit52_crit_edge ], [ 0, %cx24110_readreg.exit36.cx24110_writereg.exit52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i37) #6
  br label %cleanup

cleanup:                                          ; preds = %cx24110_writereg.exit52, %cx24110_writereg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i51, %cx24110_writereg.exit52 ], [ %retval.0.i17, %cx24110_writereg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 649, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 650, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 652, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 653, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 654, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @__ksymtab_cx24110_attach, !13, !"__ksymtab_cx24110_attach", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 656, i32 1}
!14 = !{ptr @debug, !15, !"debug", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 34, i32 12}
!16 = !{ptr @cx24110_ops, !17, !"cx24110_ops", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 615, i32 38}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 347, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cx24110_initfe._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @cx24110_initfe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 110, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cx24110_writereg._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @cx24110_writereg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @cx24110_regdata, !30, !"cx24110_regdata", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 40, i32 34}
!31 = !{ptr @cx24110_set_fec.rate, !32, !"rate", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 170, i32 19}
!33 = !{ptr @cx24110_set_fec.g1, !34, !"g1", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 171, i32 19}
!35 = !{ptr @cx24110_set_fec.g2, !36, !"g2", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 172, i32 19}
!37 = !{ptr @cx24110_set_symbolrate.bands, !38, !"bands", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 233, i32 19}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 236, i32 2}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cx24110_set_symbolrate._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @cx24110_set_symbolrate._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 265, i32 2}
!46 = !{ptr @cx24110_set_symbolrate._entry.7, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cx24110_set_symbolrate._entry_ptr.9, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 287, i32 2}
!50 = !{ptr @cx24110_set_symbolrate._entry.10, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cx24110_set_symbolrate._entry_ptr.12, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 288, i32 2}
!54 = !{ptr @cx24110_set_symbolrate._entry.13, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cx24110_set_symbolrate._entry_ptr.15, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/cx24110.c", i32 289, i32 2}
!58 = !{ptr @cx24110_set_symbolrate._entry.16, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cx24110_set_symbolrate._entry_ptr.18, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
