; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/ves1x93.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ves1x93.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ves1x93_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_ves1x93_attach\09\09\09\09"
module asm "\09.long\09__crc_ves1x93_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ves1x93_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ves1x93_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ves1x93_attach:\09\09\09\09\09"
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
%struct.ves1x93_state = type { ptr, ptr, %struct.dvb_frontend, i32, ptr, ptr, i8, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.ves1x93_config = type { i8, i32, i8 }

@ves1x93_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ves1x93: Detected ves1893a rev1\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ves1x93_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/ves1x93.c\00", [58 x i8] zeroinitializer }, align 32
@ves1x93_attach._entry_ptr = internal global ptr @ves1x93_attach._entry, section ".printk_index", align 4
@init_1893_tab = internal global { [54 x i8], [42 x i8] } { [54 x i8] c"\01\A45\80*\0BU\C4\09i\00\86L(\7F\00\00\81\00\00\00\00\00\00\80\00!\B0\14\00\DC\00\81\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00U\00\00\7F\00", [42 x i8] zeroinitializer }, align 32
@init_1893_wtab = internal global { [54 x i8], [42 x i8] } { [54 x i8] c"\01\01\01\01\01\01\01\01\01\01\00\00\01\01\00\00\00\01\00\00\00\00\00\00\01\00\01\01\00\00\00\01\01\01\01\00\00\00\00\00\00\00\01\01\00\00\00\00\01\01\01\00\01\01", [42 x i8] zeroinitializer }, align 32
@ves1x93_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ves1x93: Detected ves1893a rev2\0A\00", [63 x i8] zeroinitializer }, align 32
@ves1x93_attach._entry_ptr.5 = internal global ptr @ves1x93_attach._entry.3, section ".printk_index", align 4
@ves1x93_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ves1x93: Detected ves1993\0A\00", [37 x i8] zeroinitializer }, align 32
@ves1x93_attach._entry_ptr.8 = internal global ptr @ves1x93_attach._entry.6, section ".printk_index", align 4
@init_1993_tab = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\00\9C5\80j\09r\8C\09k\00\00L\08\00\00\00\81\00\00\00\00\00\00\80@!\B0\00\00\00\10\81\80\00\00\00\00\00\00\00\00\80\80\00\00\00\00\00U\03\00\00\00\00\03\00\00\0E\80\00", [35 x i8] zeroinitializer }, align 32
@init_1993_wtab = internal global { [61 x i8], [35 x i8] } { [61 x i8] c"\01\01\01\01\01\01\01\01\01\01\00\00\01\01\00\00\00\01\00\00\00\00\00\00\01\01\01\01\00\00\00\01\01\01\01\00\00\00\00\00\00\00\01\01\00\00\00\00\01\01\01\00\01\01\01\01\01\01\01\01\01", [35 x i8] zeroinitializer }, align 32
@ves1x93_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"VLSI VES1x93 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 29500000, i32 1000000, i32 45000000, i32 0, i32 1711 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @ves1x93_release, ptr null, ptr @ves1x93_init, ptr @ves1x93_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ves1x93_set_frontend, ptr null, ptr @ves1x93_get_frontend, ptr @ves1x93_read_status, ptr @ves1x93_read_ber, ptr @ves1x93_read_signal_strength, ptr @ves1x93_read_snr, ptr @ves1x93_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ves1x93_set_voltage, ptr null, ptr null, ptr @ves1x93_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [14 x i8] c"ves1x93.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"ves1x93.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [58 x i8] c"ves1x93.description=VLSI VES1x93 DVB-S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [29 x i8] c"ves1x93.author=Ralph Metzler\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [49 x i8] c"ves1x93.file=drivers/media/dvb-frontends/ves1x93\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [20 x i8] c"ves1x93.license=GPL\00", section ".modinfo", align 1
@__kstrtab_ves1x93_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ves1x93_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ves1x93_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ves1x93_attach to i32), ptr @__kstrtab_ves1x93_attach, ptr @__kstrtabns_ves1x93_attach }, section "___ksymtab+ves1x93_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ves1x93_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: init chip\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ves1x93_init\00", [19 x i8] zeroinitializer }, align 32
@ves1x93_init._entry_ptr = internal global ptr @ves1x93_init._entry, section ".printk_index", align 4
@ves1x93_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: writereg error (err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ves1x93_writereg\00", [47 x i8] zeroinitializer }, align 32
@ves1x93_writereg._entry_ptr = internal global ptr @ves1x93_writereg._entry, section ".printk_index", align 4
@ves1x93_set_symbolrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: srate == %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ves1x93_set_symbolrate\00", [41 x i8] zeroinitializer }, align 32
@ves1x93_set_symbolrate._entry_ptr = internal global ptr @ves1x93_set_symbolrate._entry, section ".printk_index", align 4
@ves1x93_set_symbolrate._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FNR= %d\0A\00", [23 x i8] zeroinitializer }, align 32
@ves1x93_set_symbolrate._entry_ptr.17 = internal global ptr @ves1x93_set_symbolrate._entry.15, section ".printk_index", align 4
@ves1x93_set_symbolrate._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ratio= %08x\0A\00", [19 x i8] zeroinitializer }, align 32
@ves1x93_set_symbolrate._entry_ptr.20 = internal global ptr @ves1x93_set_symbolrate._entry.18, section ".printk_index", align 4
@ves1x93_set_symbolrate._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BDR= %08x\0A\00", [21 x i8] zeroinitializer }, align 32
@ves1x93_set_symbolrate._entry_ptr.23 = internal global ptr @ves1x93_set_symbolrate._entry.21, section ".printk_index", align 4
@ves1x93_set_symbolrate._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BDRI= %02x\0A\00", [20 x i8] zeroinitializer }, align 32
@ves1x93_set_symbolrate._entry_ptr.26 = internal global ptr @ves1x93_set_symbolrate._entry.24, section ".printk_index", align 4
@switch.table.ves1x93_attach = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.4, ptr @.str.7], [20 x i8] zeroinitializer }, align 32
@switch.table.ves1x93_attach.27 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @init_1893_tab, ptr @init_1893_tab, ptr @init_1993_tab], [20 x i8] zeroinitializer }, align 32
@switch.table.ves1x93_attach.28 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @init_1893_wtab, ptr @init_1893_wtab, ptr @init_1993_wtab], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 465, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"init_1893_tab\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 45, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"init_1893_wtab\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 66, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 473, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 481, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"init_1993_tab\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 55, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"init_1993_wtab\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 74, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"ves1x93_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 502, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 39, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 258, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 89, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 171, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 218, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 219, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 220, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [41 x i8] c"../drivers/media/dvb-frontends/ves1x93.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 221, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [28 x i8] c"switch.table.ves1x93_attach\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [31 x i8] c"switch.table.ves1x93_attach.27\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [31 x i8] c"switch.table.ves1x93_attach.28\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__ksymtab_ves1x93_attach, ptr @__param_debug, ptr @ves1x93_attach._entry, ptr @ves1x93_attach._entry.3, ptr @ves1x93_attach._entry.6, ptr @ves1x93_attach._entry_ptr, ptr @ves1x93_attach._entry_ptr.5, ptr @ves1x93_attach._entry_ptr.8, ptr @ves1x93_init._entry, ptr @ves1x93_init._entry_ptr, ptr @ves1x93_set_symbolrate._entry, ptr @ves1x93_set_symbolrate._entry.15, ptr @ves1x93_set_symbolrate._entry.18, ptr @ves1x93_set_symbolrate._entry.21, ptr @ves1x93_set_symbolrate._entry.24, ptr @ves1x93_set_symbolrate._entry_ptr, ptr @ves1x93_set_symbolrate._entry_ptr.17, ptr @ves1x93_set_symbolrate._entry_ptr.20, ptr @ves1x93_set_symbolrate._entry_ptr.23, ptr @ves1x93_set_symbolrate._entry_ptr.26, ptr @ves1x93_writereg._entry, ptr @ves1x93_writereg._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @init_1893_tab, ptr @init_1893_wtab, ptr @.str.4, ptr @.str.7, ptr @init_1993_tab, ptr @init_1993_wtab, ptr @ves1x93_ops, ptr @debug, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @switch.table.ves1x93_attach, ptr @switch.table.ves1x93_attach.27, ptr @switch.table.ves1x93_attach.28], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_1893_tab to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_1893_wtab to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_1993_tab to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_1993_wtab to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_set_symbolrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_set_symbolrate._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_set_symbolrate._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_set_symbolrate._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ves1x93_set_symbolrate._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ves1x93_attach to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ves1x93_attach.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ves1x93_attach.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ves1x93_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1068) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.ves1x93_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %inversion = getelementptr inbounds %struct.ves1x93_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %inversion, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %4 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b0.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 30, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %7 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
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
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b1.i, ptr %buf9.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = trunc i32 %call.i to i8
  br label %ves1x93_readreg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1.i, align 1
  br label %ves1x93_readreg.exit

ves1x93_readreg.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i8 [ %conv13.i, %if.then.i ], [ %21, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  %switch.tableidx = add i8 %retval.0.i, 36
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %22 = icmp ult i8 %switch.tableidx, 3
  br i1 %22, label %switch.lookup, label %ves1x93_readreg.exit.error_crit_edge

ves1x93_readreg.exit.error_crit_edge:             ; preds = %ves1x93_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

switch.lookup:                                    ; preds = %ves1x93_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ves1x93_attach, i32 0, i32 %23
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.cast = zext i8 %switch.tableidx to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 65536, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %25 = sext i8 %switch.tableidx to i32
  %switch.gep50 = getelementptr inbounds [3 x ptr], ptr @switch.table.ves1x93_attach.27, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load51 = load ptr, ptr %switch.gep50, align 4
  %27 = sext i8 %switch.tableidx to i32
  %switch.gep52 = getelementptr inbounds [3 x ptr], ptr @switch.table.ves1x93_attach.28, i32 0, i32 %27
  %28 = ptrtoint ptr %switch.gep52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load53 = load ptr, ptr %switch.gep52, align 4
  %switch.cast54 = zext i8 %switch.tableidx to i24
  %switch.shiftamt55 = shl nuw nsw i24 %switch.cast54, 3
  %switch.downshift56 = lshr i24 4011574, %switch.shiftamt55
  %switch.masked57 = trunc i24 %switch.downshift56 to i8
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %switch.load) #10
  %demod_type21 = getelementptr inbounds %struct.ves1x93_state, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %demod_type21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %switch.masked, ptr %demod_type21, align 1
  %init_1x93_tab22 = getelementptr inbounds %struct.ves1x93_state, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %init_1x93_tab22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %switch.load51, ptr %init_1x93_tab22, align 4
  %init_1x93_wtab23 = getelementptr inbounds %struct.ves1x93_state, ptr %call7.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %init_1x93_wtab23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %switch.load53, ptr %init_1x93_wtab23, align 8
  %tab_size24 = getelementptr inbounds %struct.ves1x93_state, ptr %call7.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %tab_size24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %switch.masked57, ptr %tab_size24, align 4
  %frontend = getelementptr inbounds %struct.ves1x93_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.ves1x93_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %33 = call ptr @memcpy(ptr %ops, ptr @ves1x93_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.ves1x93_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %ves1x93_readreg.exit.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %switch.lookup
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %switch.lookup ]
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
define internal void @ves1x93_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @ves1x93_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tab_size = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %tab_size to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tab_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp27.not = icmp eq i8 %4, 0
  br i1 %cmp27.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %init_1x93_wtab = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 5
  %init_1x93_tab = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 4
  %config = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %init_1x93_wtab to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_1x93_wtab, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %i.028
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %12 = ptrtoint ptr %init_1x93_tab to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_1x93_tab, align 4
  %arrayidx4 = getelementptr i8, ptr %13, i32 %i.028
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4, align 1
  %16 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config, align 4
  %invert_pwm = getelementptr inbounds %struct.ves1x93_config, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %invert_pwm to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %invert_pwm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool7.not = icmp slt i8 %bf.load, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.028)
  %cmp8 = icmp eq i32 %i.028, 5
  %or.cond = select i1 %tobool7.not, i1 %cmp8, i1 false
  %or = or i8 %15, 32
  %val.0 = select i1 %or.cond, i8 %or, i8 %15
  %conv12 = trunc i32 %i.028 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %buf.i, align 1
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv12, ptr %5, align 1
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %val.0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %7, align 4
  %23 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %conv.i = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i, ptr %msg.i, align 4
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i, align 2
  store i16 3, ptr %7, align 4
  %29 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i, ptr %buf2.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then3.ves1x93_writereg.exit_crit_edge, label %if.then.i

if.then3.ves1x93_writereg.exit_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit

if.then.i:                                        ; preds = %if.then3
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.then.i.ves1x93_writereg.exit_crit_edge, label %do.end.i

if.then.i.ves1x93_writereg.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %val.0 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i, i32 noundef %i.028, i32 noundef %conv6.i) #10
  br label %ves1x93_writereg.exit

ves1x93_writereg.exit:                            ; preds = %do.end.i, %if.then.i.ves1x93_writereg.exit_crit_edge, %if.then3.ves1x93_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  br label %for.inc

for.inc:                                          ; preds = %ves1x93_writereg.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %33 = ptrtoint ptr %tab_size to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tab_size, align 4
  %conv = zext i8 %34 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1x93_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 262143, ptr %7, align 4
  %config.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf2.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.ves1x93_writereg.exit_crit_edge, label %if.then.i

entry.ves1x93_writereg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit

if.then.i:                                        ; preds = %entry
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then.i.ves1x93_writereg.exit_crit_edge, label %do.end.i

if.then.i.ves1x93_writereg.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i, i32 noundef 0, i32 noundef 8) #10
  br label %ves1x93_writereg.exit

ves1x93_writereg.exit:                            ; preds = %do.end.i, %if.then.i.ves1x93_writereg.exit_crit_edge, %entry.ves1x93_writereg.exit_crit_edge
  %retval.0.i = phi i32 [ -121, %do.end.i ], [ -121, %if.then.i.ves1x93_writereg.exit_crit_edge ], [ 0, %entry.ves1x93_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1x93_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i1.i.i = alloca [3 x i8], align 1
  %msg.i2.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [3 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i83.i = alloca [3 x i8], align 1
  %msg.i84.i = alloca %struct.i2c_msg, align 4
  %buf.i67.i = alloca [3 x i8], align 1
  %msg.i68.i = alloca %struct.i2c_msg, align 4
  %buf.i51.i = alloca [3 x i8], align 1
  %msg.i52.i = alloca %struct.i2c_msg, align 4
  %buf.i35.i = alloca [3 x i8], align 1
  %msg.i36.i = alloca %struct.i2c_msg, align 4
  %buf.i19.i = alloca [3 x i8], align 1
  %msg.i20.i = alloca %struct.i2c_msg, align 4
  %buf.i3.i = alloca [3 x i8], align 1
  %msg.i4.i = alloca %struct.i2c_msg, align 4
  %buf.i.i47 = alloca [3 x i8], align 1
  %msg.i.i48 = alloca %struct.i2c_msg, align 4
  %buf.i1.i = alloca [3 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %buf.i.i33 = alloca [3 x i8], align 1
  %msg.i.i34 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %switch.lookup, label %if.end10.ves1x93_set_inversion.exit_crit_edge

if.end10.ves1x93_set_inversion.exit_crit_edge:    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_set_inversion.exit

switch.lookup:                                    ; preds = %if.end10
  %switch.cast = trunc i32 %7 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 32960, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %init_1x93_tab.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %init_1x93_tab.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_1x93_tab.i, align 4
  %arrayidx.i = getelementptr i8, ptr %10, i32 12
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = and i8 %12, 63
  %or.i = or i8 %13, %switch.masked
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i) #6
  %14 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 1
  %15 = getelementptr inbounds [3 x i8], ptr %buf.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %buf.i.i, align 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 12, ptr %14, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or.i, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %19 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 262143, ptr %19, align 4
  %config.i.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv.i.i = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %switch.lookup.ves1x93_writereg.exit.i_crit_edge, label %if.then.i.i

switch.lookup.ves1x93_writereg.exit.i_crit_edge:  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit.i

if.then.i.i:                                      ; preds = %switch.lookup
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.ves1x93_writereg.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.ves1x93_writereg.exit.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i.i = zext i8 %or.i to i32
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i.i, i32 noundef 12, i32 noundef %conv6.i.i) #10
  br label %ves1x93_writereg.exit.i

ves1x93_writereg.exit.i:                          ; preds = %do.end.i.i, %if.then.i.i.ves1x93_writereg.exit.i_crit_edge, %switch.lookup.ves1x93_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i) #6
  br label %ves1x93_set_inversion.exit

ves1x93_set_inversion.exit:                       ; preds = %ves1x93_writereg.exit.i, %if.end10.ves1x93_set_inversion.exit_crit_edge
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %31 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fec_inner, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %lor.lhs.false.i [
    i32 9, label %if.then.i
    i32 0, label %ves1x93_set_inversion.exit.ves1x93_set_fec.exit_crit_edge
  ]

ves1x93_set_inversion.exit.ves1x93_set_fec.exit_crit_edge: ; preds = %ves1x93_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_set_fec.exit

if.then.i:                                        ; preds = %ves1x93_set_inversion.exit
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i33) #6
  %34 = getelementptr inbounds [3 x i8], ptr %buf.i.i33, i32 0, i32 1
  %35 = getelementptr inbounds [3 x i8], ptr %buf.i.i33, i32 0, i32 2
  %36 = ptrtoint ptr %buf.i.i33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %buf.i.i33, align 1
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 13, ptr %34, align 1
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i34) #6
  %39 = getelementptr inbounds i8, ptr %msg.i.i34, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 262143, ptr %39, align 4
  %config.i.i35 = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %config.i.i35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i.i35, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  %conv.i.i36 = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i.i34 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i.i36, ptr %msg.i.i34, align 4
  %flags.i.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i34, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i.i37 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i.i37, align 2
  %buf2.i.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i34, i32 0, i32 3
  %47 = ptrtoint ptr %buf2.i.i38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i.i33, ptr %buf2.i.i38, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.i39 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i.i34, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i39)
  %cmp.not.i.i40 = icmp eq i32 %call.i.i39, 1
  br i1 %cmp.not.i.i40, label %if.then.i.ves1x93_writereg.exit.i45_crit_edge, label %if.then.i.i42

if.then.i.ves1x93_writereg.exit.i45_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit.i45

if.then.i.i42:                                    ; preds = %if.then.i
  %50 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i.i41 = icmp eq i32 %50, 0
  br i1 %tobool.not.i.i41, label %if.then.i.i42.ves1x93_writereg.exit.i45_crit_edge, label %do.end.i.i44

if.then.i.i42.ves1x93_writereg.exit.i45_crit_edge: ; preds = %if.then.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit.i45

do.end.i.i44:                                     ; preds = %if.then.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i.i39, i32 noundef 13, i32 noundef 8) #10
  br label %ves1x93_writereg.exit.i45

ves1x93_writereg.exit.i45:                        ; preds = %do.end.i.i44, %if.then.i.i42.ves1x93_writereg.exit.i45_crit_edge, %if.then.i.ves1x93_writereg.exit.i45_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i34) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i33) #6
  br label %ves1x93_set_fec.exit

lor.lhs.false.i:                                  ; preds = %ves1x93_set_inversion.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %32)
  %cmp2.i = icmp ugt i32 %32, 8
  br i1 %cmp2.i, label %lor.lhs.false.i.ves1x93_set_fec.exit_crit_edge, label %if.else4.i

lor.lhs.false.i.ves1x93_set_fec.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_set_fec.exit

if.else4.i:                                       ; preds = %lor.lhs.false.i
  %51 = trunc i32 %32 to i8
  %conv.i = add nsw i8 %51, -1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i) #6
  %52 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 1
  %53 = getelementptr inbounds [3 x i8], ptr %buf.i1.i, i32 0, i32 2
  %54 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %buf.i1.i, align 1
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 13, ptr %52, align 1
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #6
  %57 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 262143, ptr %57, align 4
  %config.i3.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %config.i3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %config.i3.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 4
  %conv.i4.i = zext i8 %62 to i16
  %63 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i5.i, align 2
  %buf2.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %65 = ptrtoint ptr %buf2.i7.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %buf.i1.i, ptr %buf2.i7.i, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call.i8.i = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i)
  %cmp.not.i9.i = icmp eq i32 %call.i8.i, 1
  br i1 %cmp.not.i9.i, label %if.else4.i.ves1x93_writereg.exit15.i_crit_edge, label %if.then.i11.i

if.else4.i.ves1x93_writereg.exit15.i_crit_edge:   ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit15.i

if.then.i11.i:                                    ; preds = %if.else4.i
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i10.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i10.i, label %if.then.i11.i.ves1x93_writereg.exit15.i_crit_edge, label %do.end.i13.i

if.then.i11.i.ves1x93_writereg.exit15.i_crit_edge: ; preds = %if.then.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit15.i

do.end.i13.i:                                     ; preds = %if.then.i11.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i.i46 = zext i8 %conv.i to i32
  %call7.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i8.i, i32 noundef 13, i32 noundef %conv6.i.i46) #10
  br label %ves1x93_writereg.exit15.i

ves1x93_writereg.exit15.i:                        ; preds = %do.end.i13.i, %if.then.i11.i.ves1x93_writereg.exit15.i_crit_edge, %if.else4.i.ves1x93_writereg.exit15.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i) #6
  br label %ves1x93_set_fec.exit

ves1x93_set_fec.exit:                             ; preds = %ves1x93_writereg.exit15.i, %lor.lhs.false.i.ves1x93_set_fec.exit_crit_edge, %ves1x93_writereg.exit.i45, %ves1x93_set_inversion.exit.ves1x93_set_fec.exit_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %69 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %symbol_rate, align 4
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i, label %ves1x93_set_fec.exit.if.end.i_crit_edge, label %do.end.i

ves1x93_set_fec.exit.if.end.i_crit_edge:          ; preds = %ves1x93_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %ves1x93_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %70) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %ves1x93_set_fec.exit.if.end.i_crit_edge
  %config.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %config.i, align 4
  %xin.i = getelementptr inbounds %struct.ves1x93_config, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %xin.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %xin.i, align 4
  %div1.i = lshr i32 %75, 1
  %76 = call i32 @llvm.umin.i32(i32 %div1.i, i32 %70) #6
  %77 = call i32 @llvm.umax.i32(i32 %76, i32 500000) #6
  %add.i = add i32 %75, 6000
  %shr.i = lshr i32 %add.i, 4
  %shl.i = shl i32 %77, 6
  %shl.i.frozen = freeze i32 %shl.i
  %shr.i.frozen = freeze i32 %shr.i
  %div12.i = udiv i32 %shl.i.frozen, %shr.i.frozen
  %78 = mul i32 %div12.i, %shr.i.frozen
  %rem.i.decomposed = sub i32 %shl.i.frozen, %78
  %shl13.i = shl i32 %rem.i.decomposed, 8
  %shl14.i = shl i32 %div12.i, 8
  %shr.i.frozen63 = freeze i32 %shr.i
  %div15.i = udiv i32 %shl13.i, %shr.i.frozen63
  %add16.i = add i32 %div15.i, %shl14.i
  %79 = mul i32 %div15.i, %shr.i.frozen63
  %rem17.i.decomposed = sub i32 %shl13.i, %79
  %shl18.i = shl i32 %rem17.i.decomposed, 8
  %shl19.i = shl i32 %add16.i, 8
  %div20.i = udiv i32 %shl18.i, %shr.i
  %add21.i = add i32 %shl19.i, %div20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22369620, i32 %add21.i)
  %cmp22.i = icmp ugt i32 %add21.i, 22369620
  %spec.store.select154.i = sext i1 %cmp22.i to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14763950, i32 %add21.i)
  %cmp25.i = icmp ult i32 %add21.i, 14763950
  %spec.store.select155.i = select i1 %cmp25.i, i8 1, i8 %spec.store.select154.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 11184810, i32 %add21.i)
  %cmp28.i = icmp ult i32 %add21.i, 11184810
  %spec.store.select156.i = select i1 %cmp28.i, i8 2, i8 %spec.store.select155.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7456540, i32 %add21.i)
  %cmp31.i = icmp ult i32 %add21.i, 7456540
  %spec.store.select157.i = select i1 %cmp31.i, i8 3, i8 %spec.store.select156.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5592405, i32 %add21.i)
  %cmp34.i = icmp ult i32 %add21.i, 5592405
  %spec.store.select158.i = select i1 %cmp34.i, i8 4, i8 %spec.store.select157.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3690987, i32 %add21.i)
  %cmp37.i = icmp ult i32 %add21.i, 3690987
  %spec.store.select159.i = select i1 %cmp37.i, i8 5, i8 %spec.store.select158.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2796202, i32 %add21.i)
  %cmp40.i = icmp ult i32 %add21.i, 2796202
  %spec.store.select160.i = select i1 %cmp40.i, i8 6, i8 %spec.store.select159.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1811939, i32 %add21.i)
  %cmp43.i = icmp ult i32 %add21.i, 1811939
  %spec.store.select161.i = select i1 %cmp43.i, i8 7, i8 %spec.store.select160.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1398101, i32 %add21.i)
  %cmp46.i = icmp ult i32 %add21.i, 1398101
  %spec.store.select162.i = select i1 %cmp46.i, i8 8, i8 %spec.store.select161.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60397, i32 %add21.i)
  %cmp49.i = icmp ult i32 %add21.i, 60397
  %spec.store.select163.i = select i1 %cmp49.i, i8 9, i8 %spec.store.select162.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %spec.store.select163.i)
  %cmp52.i = icmp eq i8 %spec.store.select163.i, -1
  %80 = lshr i8 %spec.store.select163.i, 1
  %and.i = shl i8 %spec.store.select163.i, 5
  %shl58.i = and i8 %and.i, 32
  %or.i49 = or i8 %80, %shl58.i
  %or59.i = or i8 %or.i49, -120
  %narrow.i = select i1 %cmp52.i, i8 0, i8 %spec.store.select163.i
  %FNR.0.i = zext i8 %narrow.i to i32
  %FCONF.0.i = select i1 %cmp52.i, i8 -128, i8 %or59.i
  %ADCONF.0.i = select i1 %cmp52.i, i8 -119, i8 -127
  %81 = lshr i32 %FNR.0.i, 1
  %shl64.i = shl i32 %add21.i, %81
  %shr65.i = lshr i32 %shl64.i, 4
  %add66.i = add nuw nsw i32 %shr65.i, 1
  %shr67.i = lshr i32 %add66.i, 1
  %shl68.i = shl i32 %shr.i, 8
  %shl71.i = shl i32 %77, %81
  %shr72.i = lshr i32 %shl71.i, 2
  %div73.i = udiv i32 %shl68.i, %shr72.i
  %add74.i = add nuw i32 %div73.i, 1
  %shr75.i = lshr i32 %add74.i, 1
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool76.not.i = icmp eq i32 %82, 0
  br i1 %tobool76.not.i, label %if.end.i.if.end108.i_crit_edge, label %if.end84.i

if.end.i.if.end108.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

if.end84.i:                                       ; preds = %if.end.i
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %FNR.0.i) #10
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool85.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool85.not.i, label %if.end84.i.if.end108.i_crit_edge, label %if.end92.i

if.end84.i.if.end108.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

if.end92.i:                                       ; preds = %if.end84.i
  %call91.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %add21.i) #10
  %.pr100.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr100.i)
  %tobool93.not.i = icmp eq i32 %.pr100.i, 0
  br i1 %tobool93.not.i, label %if.end92.i.if.end108.i_crit_edge, label %if.end100.i

if.end92.i.if.end108.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

if.end100.i:                                      ; preds = %if.end92.i
  %call99.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %shr67.i) #10
  %.pr102.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr102.pr.i)
  %tobool101.not.i = icmp eq i32 %.pr102.pr.i, 0
  br i1 %tobool101.not.i, label %if.end100.i.if.end108.i_crit_edge, label %do.end105.i

if.end100.i.if.end108.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

do.end105.i:                                      ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #8
  %call107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %shr75.i) #10
  br label %if.end108.i

if.end108.i:                                      ; preds = %do.end105.i, %if.end100.i.if.end108.i_crit_edge, %if.end92.i.if.end108.i_crit_edge, %if.end84.i.if.end108.i_crit_edge, %if.end.i.if.end108.i_crit_edge
  %83 = call i32 @llvm.umin.i32(i32 %shr75.i, i32 255) #6
  %conv114.i = trunc i32 %shr67.i to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i47) #6
  %84 = getelementptr inbounds [3 x i8], ptr %buf.i.i47, i32 0, i32 1
  %85 = getelementptr inbounds [3 x i8], ptr %buf.i.i47, i32 0, i32 2
  %86 = ptrtoint ptr %buf.i.i47 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %buf.i.i47, align 1
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 6, ptr %84, align 1
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv114.i, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i48) #6
  %89 = getelementptr inbounds i8, ptr %msg.i.i48, i32 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 262143, ptr %89, align 4
  %91 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %config.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 4
  %conv.i.i50 = zext i8 %94 to i16
  %95 = ptrtoint ptr %msg.i.i48 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i.i50, ptr %msg.i.i48, align 4
  %flags.i.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i48, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i.i51 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i.i51, align 2
  %buf2.i.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i48, i32 0, i32 3
  %97 = ptrtoint ptr %buf2.i.i52 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf.i.i47, ptr %buf2.i.i52, align 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %call.i.i53 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i.i48, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i53)
  %cmp.not.i.i54 = icmp eq i32 %call.i.i53, 1
  br i1 %cmp.not.i.i54, label %if.end108.i.ves1x93_writereg.exit.i60_crit_edge, label %if.then.i.i56

if.end108.i.ves1x93_writereg.exit.i60_crit_edge:  ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit.i60

if.then.i.i56:                                    ; preds = %if.end108.i
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i55 = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i55, label %if.then.i.i56.ves1x93_writereg.exit.i60_crit_edge, label %do.end.i.i59

if.then.i.i56.ves1x93_writereg.exit.i60_crit_edge: ; preds = %if.then.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit.i60

do.end.i.i59:                                     ; preds = %if.then.i.i56
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i.i57 = and i32 %shr67.i, 255
  %call7.i.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i.i53, i32 noundef 6, i32 noundef %conv6.i.i57) #10
  br label %ves1x93_writereg.exit.i60

ves1x93_writereg.exit.i60:                        ; preds = %do.end.i.i59, %if.then.i.i56.ves1x93_writereg.exit.i60_crit_edge, %if.end108.i.ves1x93_writereg.exit.i60_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i48) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i47) #6
  %shr116.i = lshr i32 %add66.i, 9
  %conv118.i = trunc i32 %shr116.i to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i3.i) #6
  %101 = getelementptr inbounds [3 x i8], ptr %buf.i3.i, i32 0, i32 1
  %102 = getelementptr inbounds [3 x i8], ptr %buf.i3.i, i32 0, i32 2
  %103 = ptrtoint ptr %buf.i3.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %buf.i3.i, align 1
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 7, ptr %101, align 1
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv118.i, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i) #6
  %106 = getelementptr inbounds i8, ptr %msg.i4.i, i32 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 262143, ptr %106, align 4
  %108 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %config.i, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %109, align 4
  %conv.i6.i = zext i8 %111 to i16
  %112 = ptrtoint ptr %msg.i4.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv.i6.i, ptr %msg.i4.i, align 4
  %flags.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 1
  %113 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags.i7.i, align 2
  %buf2.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 3
  %114 = ptrtoint ptr %buf2.i9.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %buf.i3.i, ptr %buf2.i9.i, align 4
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 4
  %call.i10.i = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %msg.i4.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10.i)
  %cmp.not.i11.i = icmp eq i32 %call.i10.i, 1
  br i1 %cmp.not.i11.i, label %ves1x93_writereg.exit.i60.ves1x93_writereg.exit18.i_crit_edge, label %if.then.i13.i

ves1x93_writereg.exit.i60.ves1x93_writereg.exit18.i_crit_edge: ; preds = %ves1x93_writereg.exit.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit18.i

if.then.i13.i:                                    ; preds = %ves1x93_writereg.exit.i60
  %117 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not.i12.i = icmp eq i32 %117, 0
  br i1 %tobool.not.i12.i, label %if.then.i13.i.ves1x93_writereg.exit18.i_crit_edge, label %do.end.i16.i

if.then.i13.i.ves1x93_writereg.exit18.i_crit_edge: ; preds = %if.then.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit18.i

do.end.i16.i:                                     ; preds = %if.then.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i14.i = and i32 %shr116.i, 255
  %call7.i15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i10.i, i32 noundef 7, i32 noundef %conv6.i14.i) #10
  br label %ves1x93_writereg.exit18.i

ves1x93_writereg.exit18.i:                        ; preds = %do.end.i16.i, %if.then.i13.i.ves1x93_writereg.exit18.i_crit_edge, %ves1x93_writereg.exit.i60.ves1x93_writereg.exit18.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i3.i) #6
  %shr120.i = lshr i32 %add66.i, 17
  %118 = trunc i32 %shr120.i to i8
  %conv122.i = and i8 %118, 15
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i19.i) #6
  %119 = getelementptr inbounds [3 x i8], ptr %buf.i19.i, i32 0, i32 1
  %120 = getelementptr inbounds [3 x i8], ptr %buf.i19.i, i32 0, i32 2
  %121 = ptrtoint ptr %buf.i19.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %buf.i19.i, align 1
  %122 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 8, ptr %119, align 1
  %123 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv122.i, ptr %120, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i20.i) #6
  %124 = getelementptr inbounds i8, ptr %msg.i20.i, i32 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 262143, ptr %124, align 4
  %126 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %config.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %127, align 4
  %conv.i22.i = zext i8 %129 to i16
  %130 = ptrtoint ptr %msg.i20.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i22.i, ptr %msg.i20.i, align 4
  %flags.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20.i, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i23.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i23.i, align 2
  %buf2.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20.i, i32 0, i32 3
  %132 = ptrtoint ptr %buf2.i25.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %buf.i19.i, ptr %buf2.i25.i, align 4
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 4
  %call.i26.i = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %msg.i20.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i26.i)
  %cmp.not.i27.i = icmp eq i32 %call.i26.i, 1
  br i1 %cmp.not.i27.i, label %ves1x93_writereg.exit18.i.ves1x93_writereg.exit34.i_crit_edge, label %if.then.i29.i

ves1x93_writereg.exit18.i.ves1x93_writereg.exit34.i_crit_edge: ; preds = %ves1x93_writereg.exit18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit34.i

if.then.i29.i:                                    ; preds = %ves1x93_writereg.exit18.i
  %135 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i28.i = icmp eq i32 %135, 0
  br i1 %tobool.not.i28.i, label %if.then.i29.i.ves1x93_writereg.exit34.i_crit_edge, label %do.end.i32.i

if.then.i29.i.ves1x93_writereg.exit34.i_crit_edge: ; preds = %if.then.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit34.i

do.end.i32.i:                                     ; preds = %if.then.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i30.i = zext i8 %conv122.i to i32
  %call7.i31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i26.i, i32 noundef 8, i32 noundef %conv6.i30.i) #10
  br label %ves1x93_writereg.exit34.i

ves1x93_writereg.exit34.i:                        ; preds = %do.end.i32.i, %if.then.i29.i.ves1x93_writereg.exit34.i_crit_edge, %ves1x93_writereg.exit18.i.ves1x93_writereg.exit34.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i20.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i19.i) #6
  %conv124.i = trunc i32 %83 to i8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i35.i) #6
  %136 = getelementptr inbounds [3 x i8], ptr %buf.i35.i, i32 0, i32 1
  %137 = getelementptr inbounds [3 x i8], ptr %buf.i35.i, i32 0, i32 2
  %138 = ptrtoint ptr %buf.i35.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %buf.i35.i, align 1
  %139 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 9, ptr %136, align 1
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv124.i, ptr %137, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i36.i) #6
  %141 = getelementptr inbounds i8, ptr %msg.i36.i, i32 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 262143, ptr %141, align 4
  %143 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %config.i, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %144, align 4
  %conv.i38.i = zext i8 %146 to i16
  %147 = ptrtoint ptr %msg.i36.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv.i38.i, ptr %msg.i36.i, align 4
  %flags.i39.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36.i, i32 0, i32 1
  %148 = ptrtoint ptr %flags.i39.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %flags.i39.i, align 2
  %buf2.i41.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36.i, i32 0, i32 3
  %149 = ptrtoint ptr %buf2.i41.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %buf.i35.i, ptr %buf2.i41.i, align 4
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 4
  %call.i42.i = call i32 @i2c_transfer(ptr noundef %151, ptr noundef nonnull %msg.i36.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i42.i)
  %cmp.not.i43.i = icmp eq i32 %call.i42.i, 1
  br i1 %cmp.not.i43.i, label %ves1x93_writereg.exit34.i.ves1x93_writereg.exit50.i_crit_edge, label %if.then.i45.i

ves1x93_writereg.exit34.i.ves1x93_writereg.exit50.i_crit_edge: ; preds = %ves1x93_writereg.exit34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit50.i

if.then.i45.i:                                    ; preds = %ves1x93_writereg.exit34.i
  %152 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool.not.i44.i = icmp eq i32 %152, 0
  br i1 %tobool.not.i44.i, label %if.then.i45.i.ves1x93_writereg.exit50.i_crit_edge, label %do.end.i48.i

if.then.i45.i.ves1x93_writereg.exit50.i_crit_edge: ; preds = %if.then.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit50.i

do.end.i48.i:                                     ; preds = %if.then.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i42.i, i32 noundef 9, i32 noundef %83) #10
  br label %ves1x93_writereg.exit50.i

ves1x93_writereg.exit50.i:                        ; preds = %do.end.i48.i, %if.then.i45.i.ves1x93_writereg.exit50.i_crit_edge, %ves1x93_writereg.exit34.i.ves1x93_writereg.exit50.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i35.i) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i51.i) #6
  %153 = getelementptr inbounds [3 x i8], ptr %buf.i51.i, i32 0, i32 1
  %154 = getelementptr inbounds [3 x i8], ptr %buf.i51.i, i32 0, i32 2
  %155 = ptrtoint ptr %buf.i51.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %buf.i51.i, align 1
  %156 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 32, ptr %153, align 1
  %157 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %ADCONF.0.i, ptr %154, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i52.i) #6
  %158 = getelementptr inbounds i8, ptr %msg.i52.i, i32 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 262143, ptr %158, align 4
  %160 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %config.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %161, align 4
  %conv.i54.i = zext i8 %163 to i16
  %164 = ptrtoint ptr %msg.i52.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv.i54.i, ptr %msg.i52.i, align 4
  %flags.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52.i, i32 0, i32 1
  %165 = ptrtoint ptr %flags.i55.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %flags.i55.i, align 2
  %buf2.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52.i, i32 0, i32 3
  %166 = ptrtoint ptr %buf2.i57.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %buf.i51.i, ptr %buf2.i57.i, align 4
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 4
  %call.i58.i = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %msg.i52.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58.i)
  %cmp.not.i59.i = icmp eq i32 %call.i58.i, 1
  br i1 %cmp.not.i59.i, label %ves1x93_writereg.exit50.i.ves1x93_writereg.exit66.i_crit_edge, label %if.then.i61.i

ves1x93_writereg.exit50.i.ves1x93_writereg.exit66.i_crit_edge: ; preds = %ves1x93_writereg.exit50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit66.i

if.then.i61.i:                                    ; preds = %ves1x93_writereg.exit50.i
  %169 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool.not.i60.i = icmp eq i32 %169, 0
  br i1 %tobool.not.i60.i, label %if.then.i61.i.ves1x93_writereg.exit66.i_crit_edge, label %do.end.i64.i

if.then.i61.i.ves1x93_writereg.exit66.i_crit_edge: ; preds = %if.then.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit66.i

do.end.i64.i:                                     ; preds = %if.then.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i62.i = zext i8 %ADCONF.0.i to i32
  %call7.i63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i58.i, i32 noundef 32, i32 noundef %conv6.i62.i) #10
  br label %ves1x93_writereg.exit66.i

ves1x93_writereg.exit66.i:                        ; preds = %do.end.i64.i, %if.then.i61.i.ves1x93_writereg.exit66.i_crit_edge, %ves1x93_writereg.exit50.i.ves1x93_writereg.exit66.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i52.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i51.i) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i67.i) #6
  %170 = getelementptr inbounds [3 x i8], ptr %buf.i67.i, i32 0, i32 1
  %171 = getelementptr inbounds [3 x i8], ptr %buf.i67.i, i32 0, i32 2
  %172 = ptrtoint ptr %buf.i67.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %buf.i67.i, align 1
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 33, ptr %170, align 1
  %174 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %FCONF.0.i, ptr %171, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i68.i) #6
  %175 = getelementptr inbounds i8, ptr %msg.i68.i, i32 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 262143, ptr %175, align 4
  %177 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %config.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %178, align 4
  %conv.i70.i = zext i8 %180 to i16
  %181 = ptrtoint ptr %msg.i68.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv.i70.i, ptr %msg.i68.i, align 4
  %flags.i71.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68.i, i32 0, i32 1
  %182 = ptrtoint ptr %flags.i71.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 0, ptr %flags.i71.i, align 2
  %buf2.i73.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i68.i, i32 0, i32 3
  %183 = ptrtoint ptr %buf2.i73.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %buf.i67.i, ptr %buf2.i73.i, align 4
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 4
  %call.i74.i = call i32 @i2c_transfer(ptr noundef %185, ptr noundef nonnull %msg.i68.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i74.i)
  %cmp.not.i75.i = icmp eq i32 %call.i74.i, 1
  br i1 %cmp.not.i75.i, label %ves1x93_writereg.exit66.i.ves1x93_writereg.exit82.i_crit_edge, label %if.then.i77.i

ves1x93_writereg.exit66.i.ves1x93_writereg.exit82.i_crit_edge: ; preds = %ves1x93_writereg.exit66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit82.i

if.then.i77.i:                                    ; preds = %ves1x93_writereg.exit66.i
  %186 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i76.i = icmp eq i32 %186, 0
  br i1 %tobool.not.i76.i, label %if.then.i77.i.ves1x93_writereg.exit82.i_crit_edge, label %do.end.i80.i

if.then.i77.i.ves1x93_writereg.exit82.i_crit_edge: ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit82.i

do.end.i80.i:                                     ; preds = %if.then.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i78.i = zext i8 %FCONF.0.i to i32
  %call7.i79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i74.i, i32 noundef 33, i32 noundef %conv6.i78.i) #10
  br label %ves1x93_writereg.exit82.i

ves1x93_writereg.exit82.i:                        ; preds = %do.end.i80.i, %if.then.i77.i.ves1x93_writereg.exit82.i_crit_edge, %ves1x93_writereg.exit66.i.ves1x93_writereg.exit82.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i68.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i67.i) #6
  %init_1x93_tab.i61 = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 4
  %187 = ptrtoint ptr %init_1x93_tab.i61 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %init_1x93_tab.i61, align 4
  %arrayidx.i62 = getelementptr i8, ptr %188, i32 5
  %189 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.i62, align 1
  %191 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %config.i, align 4
  %invert_pwm.i = getelementptr inbounds %struct.ves1x93_config, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %invert_pwm.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load.i = load i8, ptr %invert_pwm.i, align 4
  %194 = or i8 %190, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool129.not107.i = icmp slt i8 %bf.load.i, 0
  %spec.select2.i = select i1 %tobool129.not107.i, i8 %194, i8 %190
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %77)
  %cmp135.i = icmp ult i32 %77, 6000000
  %195 = and i8 %spec.select2.i, 127
  %masksel.i = select i1 %cmp135.i, i8 -128, i8 0
  %AGCR.1.i = or i8 %195, %masksel.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i83.i) #6
  %196 = getelementptr inbounds [3 x i8], ptr %buf.i83.i, i32 0, i32 1
  %197 = getelementptr inbounds [3 x i8], ptr %buf.i83.i, i32 0, i32 2
  %198 = ptrtoint ptr %buf.i83.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %buf.i83.i, align 1
  %199 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 5, ptr %196, align 1
  %200 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %AGCR.1.i, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84.i) #6
  %201 = getelementptr inbounds i8, ptr %msg.i84.i, i32 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 262143, ptr %201, align 4
  %203 = ptrtoint ptr %192 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %192, align 4
  %conv.i86.i = zext i8 %204 to i16
  %205 = ptrtoint ptr %msg.i84.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv.i86.i, ptr %msg.i84.i, align 4
  %flags.i87.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 1
  %206 = ptrtoint ptr %flags.i87.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 0, ptr %flags.i87.i, align 2
  %buf2.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 3
  %207 = ptrtoint ptr %buf2.i89.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %buf.i83.i, ptr %buf2.i89.i, align 4
  %208 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %1, align 4
  %call.i90.i = call i32 @i2c_transfer(ptr noundef %209, ptr noundef nonnull %msg.i84.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i90.i)
  %cmp.not.i91.i = icmp eq i32 %call.i90.i, 1
  br i1 %cmp.not.i91.i, label %ves1x93_writereg.exit82.i.ves1x93_writereg.exit98.i_crit_edge, label %if.then.i93.i

ves1x93_writereg.exit82.i.ves1x93_writereg.exit98.i_crit_edge: ; preds = %ves1x93_writereg.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit98.i

if.then.i93.i:                                    ; preds = %ves1x93_writereg.exit82.i
  %210 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.not.i92.i = icmp eq i32 %210, 0
  br i1 %tobool.not.i92.i, label %if.then.i93.i.ves1x93_writereg.exit98.i_crit_edge, label %do.end.i96.i

if.then.i93.i.ves1x93_writereg.exit98.i_crit_edge: ; preds = %if.then.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit98.i

do.end.i96.i:                                     ; preds = %if.then.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i94.i = zext i8 %AGCR.1.i to i32
  %call7.i95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i90.i, i32 noundef 5, i32 noundef %conv6.i94.i) #10
  br label %ves1x93_writereg.exit98.i

ves1x93_writereg.exit98.i:                        ; preds = %do.end.i96.i, %if.then.i93.i.ves1x93_writereg.exit98.i_crit_edge, %ves1x93_writereg.exit82.i.ves1x93_writereg.exit98.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i83.i) #6
  %demod_type.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 7
  %211 = ptrtoint ptr %demod_type.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %demod_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %212)
  %cmp148.not.i = icmp eq i8 %212, 1
  br i1 %cmp148.not.i, label %ves1x93_writereg.exit98.i.ves1x93_set_symbolrate.exit_crit_edge, label %if.then150.i

ves1x93_writereg.exit98.i.ves1x93_set_symbolrate.exit_crit_edge: ; preds = %ves1x93_writereg.exit98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_set_symbolrate.exit

if.then150.i:                                     ; preds = %ves1x93_writereg.exit98.i
  call void @msleep(i32 noundef 10) #6
  %213 = ptrtoint ptr %init_1x93_tab.i61 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %init_1x93_tab.i61, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %214, align 1
  %217 = and i8 %216, -2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i.i.i) #6
  %218 = getelementptr inbounds [3 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %219 = getelementptr inbounds [3 x i8], ptr %buf.i.i.i, i32 0, i32 2
  %220 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %buf.i.i.i, align 1
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %218, align 1
  %222 = ptrtoint ptr %219 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %217, ptr %219, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %223 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 262143, ptr %223, align 4
  %225 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %config.i, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %226, align 4
  %conv.i.i.i = zext i8 %228 to i16
  %229 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %230 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf2.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %231 = ptrtoint ptr %buf2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %buf.i.i.i, ptr %buf2.i.i.i, align 4
  %232 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %233, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.then150.i.ves1x93_writereg.exit.i.i_crit_edge, label %if.then.i.i.i

if.then150.i.ves1x93_writereg.exit.i.i_crit_edge: ; preds = %if.then150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then150.i
  %234 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %tobool.not.i.i.i = icmp eq i32 %234, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.ves1x93_writereg.exit.i.i_crit_edge, label %do.end.i.i.i

if.then.i.i.i.ves1x93_writereg.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i.i.i = zext i8 %217 to i32
  %call7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i.i.i, i32 noundef 0, i32 noundef %conv6.i.i.i) #10
  br label %ves1x93_writereg.exit.i.i

ves1x93_writereg.exit.i.i:                        ; preds = %do.end.i.i.i, %if.then.i.i.i.ves1x93_writereg.exit.i.i_crit_edge, %if.then150.i.ves1x93_writereg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i.i.i) #6
  %235 = ptrtoint ptr %init_1x93_tab.i61 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %init_1x93_tab.i61, align 4
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %236, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i1.i.i) #6
  %239 = getelementptr inbounds [3 x i8], ptr %buf.i1.i.i, i32 0, i32 1
  %240 = getelementptr inbounds [3 x i8], ptr %buf.i1.i.i, i32 0, i32 2
  %241 = ptrtoint ptr %buf.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 0, ptr %buf.i1.i.i, align 1
  %242 = ptrtoint ptr %239 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 0, ptr %239, align 1
  %243 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %238, ptr %240, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i.i) #6
  %244 = getelementptr inbounds i8, ptr %msg.i2.i.i, i32 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 262143, ptr %244, align 4
  %246 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %config.i, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %247, align 4
  %conv.i4.i.i = zext i8 %249 to i16
  %250 = ptrtoint ptr %msg.i2.i.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %conv.i4.i.i, ptr %msg.i2.i.i, align 4
  %flags.i5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i.i, i32 0, i32 1
  %251 = ptrtoint ptr %flags.i5.i.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 0, ptr %flags.i5.i.i, align 2
  %buf2.i7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i.i, i32 0, i32 3
  %252 = ptrtoint ptr %buf2.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %buf.i1.i.i, ptr %buf2.i7.i.i, align 4
  %253 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %1, align 4
  %call.i8.i.i = call i32 @i2c_transfer(ptr noundef %254, ptr noundef nonnull %msg.i2.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8.i.i)
  %cmp.not.i9.i.i = icmp eq i32 %call.i8.i.i, 1
  br i1 %cmp.not.i9.i.i, label %ves1x93_writereg.exit.i.i.ves1x93_clr_bit.exit.i_crit_edge, label %if.then.i11.i.i

ves1x93_writereg.exit.i.i.ves1x93_clr_bit.exit.i_crit_edge: ; preds = %ves1x93_writereg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_clr_bit.exit.i

if.then.i11.i.i:                                  ; preds = %ves1x93_writereg.exit.i.i
  %255 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool.not.i10.i.i = icmp eq i32 %255, 0
  br i1 %tobool.not.i10.i.i, label %if.then.i11.i.i.ves1x93_clr_bit.exit.i_crit_edge, label %do.end.i14.i.i

if.then.i11.i.i.ves1x93_clr_bit.exit.i_crit_edge: ; preds = %if.then.i11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_clr_bit.exit.i

do.end.i14.i.i:                                   ; preds = %if.then.i11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i12.i.i = zext i8 %238 to i32
  %call7.i13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i8.i.i, i32 noundef 0, i32 noundef %conv6.i12.i.i) #10
  br label %ves1x93_clr_bit.exit.i

ves1x93_clr_bit.exit.i:                           ; preds = %do.end.i14.i.i, %if.then.i11.i.i.ves1x93_clr_bit.exit.i_crit_edge, %ves1x93_writereg.exit.i.i.ves1x93_clr_bit.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i1.i.i) #6
  call void @msleep(i32 noundef 50) #6
  br label %ves1x93_set_symbolrate.exit

ves1x93_set_symbolrate.exit:                      ; preds = %ves1x93_clr_bit.exit.i, %ves1x93_writereg.exit98.i.ves1x93_set_symbolrate.exit_crit_edge
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %256 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %inversion, align 4
  %inversion15 = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 3
  %258 = ptrtoint ptr %inversion15 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %257, ptr %inversion15, align 4
  %259 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %dtv_property_cache, align 4
  %frequency16 = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 8
  %261 = ptrtoint ptr %frequency16 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %260, ptr %frequency16, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1x93_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef %p) #0 align 64 {
entry:
  %b0.i.i = alloca [2 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i21 = alloca [2 x i8], align 1
  %b1.i22 = alloca [1 x i8], align 1
  %msg.i23 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
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
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = trunc i32 %call.i to i8
  br label %ves1x93_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  br label %ves1x93_readreg.exit

ves1x93_readreg.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i8 [ %conv13.i, %if.then.i ], [ %24, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  %shl = and i8 %retval.0.i, 127
  %div = zext i8 %shl to i32
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %25 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %symbol_rate, align 4
  %div4 = udiv i32 %26, 8000
  %mul = mul nuw nsw i32 %div4, %div
  %div520 = lshr i32 %mul, 4
  %frequency = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %frequency, align 4
  %sub = sub i32 %28, %div520
  %29 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %p, align 4
  %inversion = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp = icmp eq i32 %31, 2
  br i1 %cmp, label %if.then, label %ves1x93_readreg.exit.if.end_crit_edge

ves1x93_readreg.exit.if.end_crit_edge:            ; preds = %ves1x93_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ves1x93_readreg.exit
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i21) #6
  %32 = getelementptr inbounds [2 x i8], ptr %b0.i21, i32 0, i32 1
  %33 = ptrtoint ptr %b0.i21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %b0.i21, align 1
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 15, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i22) #6
  %35 = ptrtoint ptr %b1.i22 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %b1.i22, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i23) #6
  %36 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %37 = call ptr @memset(ptr %36, i32 255, i32 16)
  %38 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 4
  %conv.i25 = zext i8 %41 to i16
  %42 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i25, ptr %msg.i23, align 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i26, align 2
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2, ptr %36, align 4
  %buf.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %45 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %b0.i21, ptr %buf.i28, align 4
  %arrayinit.element2.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1
  %46 = load i8, ptr %39, align 4
  %conv6.i30 = zext i8 %46 to i16
  %47 = ptrtoint ptr %arrayinit.element2.i29 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv6.i30, ptr %arrayinit.element2.i29, align 4
  %flags7.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1, i32 1
  %48 = ptrtoint ptr %flags7.i31 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %flags7.i31, align 2
  %len8.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1, i32 2
  %49 = ptrtoint ptr %len8.i32 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %len8.i32, align 4
  %buf9.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1, i32 3
  %50 = ptrtoint ptr %buf9.i33 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %b1.i22, ptr %buf9.i33, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call.i34 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i23, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i34)
  %cmp.not.i35 = icmp eq i32 %call.i34, 2
  br i1 %cmp.not.i35, label %if.end.i38, label %if.then.i37

if.then.i37:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i36 = trunc i32 %call.i34 to i8
  br label %ves1x93_readreg.exit40

if.end.i38:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %b1.i22 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %b1.i22, align 1
  br label %ves1x93_readreg.exit40

ves1x93_readreg.exit40:                           ; preds = %if.end.i38, %if.then.i37
  %retval.0.i39 = phi i8 [ %conv13.i36, %if.then.i37 ], [ %54, %if.end.i38 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i22) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i21) #6
  %55 = lshr i8 %retval.0.i39, 1
  %.lobit = and i8 %55, 1
  %56 = xor i8 %.lobit, 1
  %57 = zext i8 %56 to i32
  %inversion10 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %58 = ptrtoint ptr %inversion10 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %inversion10, align 4
  br label %if.end

if.end:                                           ; preds = %ves1x93_readreg.exit40, %ves1x93_readreg.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i.i) #6
  %59 = getelementptr inbounds [2 x i8], ptr %b0.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %b0.i.i, align 1
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 13, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #6
  %62 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %63 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %64 = call ptr @memset(ptr %63, i32 255, i32 16)
  %65 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config.i, align 4
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
  %71 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 2, ptr %63, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %73 = load i8, ptr %66, align 4
  %conv6.i.i = zext i8 %73 to i16
  %74 = ptrtoint ptr %arrayinit.element2.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv6.i.i, ptr %arrayinit.element2.i.i, align 4
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %75 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %flags7.i.i, align 2
  %len8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %76 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %len8.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %77 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %b1.i.i, ptr %buf9.i.i, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i.i = trunc i32 %call.i.i to i8
  br label %ves1x93_get_fec.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %b1.i.i, align 1
  br label %ves1x93_get_fec.exit

ves1x93_get_fec.exit:                             ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i8 [ %conv13.i.i, %if.then.i.i ], [ %81, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i.i) #6
  %82 = lshr i8 %retval.0.i.i, 4
  %83 = and i8 %82, 7
  %narrow.i = add nuw nsw i8 %83, 1
  %add.i = zext i8 %narrow.i to i32
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %84 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add.i, ptr %fec_inner, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1x93_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i48 = alloca [2 x i8], align 1
  %b1.i49 = alloca [1 x i8], align 1
  %msg.i50 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 14, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
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
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = trunc i32 %call.i to i8
  br label %ves1x93_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  br label %ves1x93_readreg.exit

ves1x93_readreg.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i8 [ %conv13.i, %if.then.i ], [ %24, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  %conv68 = zext i8 %retval.0.i to i32
  %and69 = and i32 %conv68, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and69)
  %cmp.not70 = icmp eq i32 %and69, 3
  %and371 = and i32 %conv68, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and371)
  %tobool.not72 = icmp eq i32 %and371, 0
  %or.cond73 = or i1 %cmp.not70, %tobool.not72
  br i1 %or.cond73, label %ves1x93_readreg.exit.while.end_crit_edge, label %while.body.lr.ph

ves1x93_readreg.exit.while.end_crit_edge:         ; preds = %ves1x93_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %ves1x93_readreg.exit
  %25 = getelementptr inbounds [2 x i8], ptr %b0.i48, i32 0, i32 1
  %26 = getelementptr inbounds i8, ptr %msg.i50, i32 4
  %flags.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 1
  %buf.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 3
  %arrayinit.element2.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1
  %flags7.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 1
  %len8.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 2
  %buf9.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 3
  br label %while.body

while.body:                                       ; preds = %ves1x93_readreg.exit67.while.body_crit_edge, %while.body.lr.ph
  %maxtry.074 = phi i32 [ 10, %while.body.lr.ph ], [ %dec, %ves1x93_readreg.exit67.while.body_crit_edge ]
  %dec = add nsw i32 %maxtry.074, -1
  call void @msleep(i32 noundef 10) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i48) #6
  %27 = ptrtoint ptr %b0.i48 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %b0.i48, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 14, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i49) #6
  %29 = ptrtoint ptr %b1.i49 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %b1.i49, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i50) #6
  %30 = call ptr @memset(ptr %26, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i52 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i50 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i52, ptr %msg.i50, align 4
  %36 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i53, align 2
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %26, align 4
  %38 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i48, ptr %buf.i55, align 4
  %39 = load i8, ptr %32, align 4
  %conv6.i57 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element2.i56 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv6.i57, ptr %arrayinit.element2.i56, align 4
  %41 = ptrtoint ptr %flags7.i58 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags7.i58, align 2
  %42 = ptrtoint ptr %len8.i59 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len8.i59, align 4
  %43 = ptrtoint ptr %buf9.i60 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i49, ptr %buf9.i60, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i61 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i50, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i61)
  %cmp.not.i62 = icmp eq i32 %call.i61, 2
  br i1 %cmp.not.i62, label %if.end.i65, label %if.then.i64

if.then.i64:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i63 = trunc i32 %call.i61 to i8
  br label %ves1x93_readreg.exit67

if.end.i65:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %b1.i49 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b1.i49, align 1
  br label %ves1x93_readreg.exit67

ves1x93_readreg.exit67:                           ; preds = %if.end.i65, %if.then.i64
  %retval.0.i66 = phi i8 [ %conv13.i63, %if.then.i64 ], [ %47, %if.end.i65 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i50) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i49) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i48) #6
  %conv = zext i8 %retval.0.i66 to i32
  %and = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp.not = icmp eq i32 %and, 3
  %and3 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %cmp.not, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool4.not = icmp eq i32 %dec, 0
  %or.cond47 = select i1 %or.cond, i1 true, i1 %tobool4.not
  br i1 %or.cond47, label %ves1x93_readreg.exit67.while.end_crit_edge, label %ves1x93_readreg.exit67.while.body_crit_edge

ves1x93_readreg.exit67.while.body_crit_edge:      ; preds = %ves1x93_readreg.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

ves1x93_readreg.exit67.while.end_crit_edge:       ; preds = %ves1x93_readreg.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %ves1x93_readreg.exit67.while.end_crit_edge, %ves1x93_readreg.exit.while.end_crit_edge
  %.pre-phi = phi i32 [ %and69, %ves1x93_readreg.exit.while.end_crit_edge ], [ %and, %ves1x93_readreg.exit67.while.end_crit_edge ]
  %conv.lcssa = phi i32 [ %conv68, %ves1x93_readreg.exit.while.end_crit_edge ], [ %conv, %ves1x93_readreg.exit67.while.end_crit_edge ]
  %48 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.pre-phi, ptr %status, align 4
  %and16 = and i32 %conv.lcssa, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %while.end.if.end20_crit_edge, label %if.then18

while.end.if.end20_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or19 = or i32 %50, 4
  store i32 %or19, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.end.if.end20_crit_edge
  %and22 = and i32 %conv.lcssa, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end26_crit_edge, label %if.then24

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status, align 4
  %or25 = or i32 %52, 8
  store i32 %or25, ptr %status, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20.if.end26_crit_edge
  %and28 = and i32 %conv.lcssa, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 31
  br i1 %cmp29, label %if.then31, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %status, align 4
  %or32 = or i32 %54, 16
  store i32 %or32, ptr %status, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end26.if.end33_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1x93_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef %ber) #0 align 64 {
entry:
  %b0.i32 = alloca [2 x i8], align 1
  %b1.i33 = alloca [1 x i8], align 1
  %msg.i34 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i12 = alloca [2 x i8], align 1
  %b1.i13 = alloca [1 x i8], align 1
  %msg.i14 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 21, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
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
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = trunc i32 %call.i to i8
  br label %ves1x93_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  br label %ves1x93_readreg.exit

ves1x93_readreg.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i8 [ %conv13.i, %if.then.i ], [ %24, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  %conv = zext i8 %retval.0.i to i32
  %25 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i12) #6
  %26 = getelementptr inbounds [2 x i8], ptr %b0.i12, i32 0, i32 1
  %27 = ptrtoint ptr %b0.i12 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %b0.i12, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 22, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i13) #6
  %29 = ptrtoint ptr %b1.i13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %b1.i13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i14) #6
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
  store i16 2, ptr %30, align 4
  %buf.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i19 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b0.i12, ptr %buf.i19, align 4
  %arrayinit.element2.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1
  %40 = load i8, ptr %33, align 4
  %conv6.i21 = zext i8 %40 to i16
  %41 = ptrtoint ptr %arrayinit.element2.i20 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv6.i21, ptr %arrayinit.element2.i20, align 4
  %flags7.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 1
  %42 = ptrtoint ptr %flags7.i22 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags7.i22, align 2
  %len8.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 2
  %43 = ptrtoint ptr %len8.i23 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %len8.i23, align 4
  %buf9.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 3
  %44 = ptrtoint ptr %buf9.i24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %b1.i13, ptr %buf9.i24, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i25 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i14, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i25)
  %cmp.not.i26 = icmp eq i32 %call.i25, 2
  br i1 %cmp.not.i26, label %if.end.i29, label %if.then.i28

if.then.i28:                                      ; preds = %ves1x93_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i27 = trunc i32 %call.i25 to i8
  br label %ves1x93_readreg.exit31

if.end.i29:                                       ; preds = %ves1x93_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %b1.i13 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b1.i13, align 1
  br label %ves1x93_readreg.exit31

ves1x93_readreg.exit31:                           ; preds = %if.end.i29, %if.then.i28
  %retval.0.i30 = phi i8 [ %conv13.i27, %if.then.i28 ], [ %48, %if.end.i29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i14) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i13) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i12) #6
  %conv2 = zext i8 %retval.0.i30 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %49 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ber, align 4
  %or = or i32 %50, %shl
  store i32 %or, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i32) #6
  %51 = getelementptr inbounds [2 x i8], ptr %b0.i32, i32 0, i32 1
  %52 = ptrtoint ptr %b0.i32 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %b0.i32, align 1
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 23, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i33) #6
  %54 = ptrtoint ptr %b1.i33 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %b1.i33, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i34) #6
  %55 = getelementptr inbounds i8, ptr %msg.i34, i32 4
  %56 = call ptr @memset(ptr %55, i32 255, i32 16)
  %57 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %config.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 4
  %conv.i36 = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i36, ptr %msg.i34, align 4
  %flags.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i37, align 2
  %63 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 2, ptr %55, align 4
  %buf.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 3
  %64 = ptrtoint ptr %buf.i39 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %b0.i32, ptr %buf.i39, align 4
  %arrayinit.element2.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1
  %65 = load i8, ptr %58, align 4
  %conv6.i41 = zext i8 %65 to i16
  %66 = ptrtoint ptr %arrayinit.element2.i40 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv6.i41, ptr %arrayinit.element2.i40, align 4
  %flags7.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1, i32 1
  %67 = ptrtoint ptr %flags7.i42 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %flags7.i42, align 2
  %len8.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1, i32 2
  %68 = ptrtoint ptr %len8.i43 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %len8.i43, align 4
  %buf9.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 1, i32 3
  %69 = ptrtoint ptr %buf9.i44 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %b1.i33, ptr %buf9.i44, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %call.i45 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %msg.i34, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i45)
  %cmp.not.i46 = icmp eq i32 %call.i45, 2
  br i1 %cmp.not.i46, label %if.end.i49, label %if.then.i48

if.then.i48:                                      ; preds = %ves1x93_readreg.exit31
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i47 = trunc i32 %call.i45 to i8
  br label %ves1x93_readreg.exit51

if.end.i49:                                       ; preds = %ves1x93_readreg.exit31
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %b1.i33 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %b1.i33, align 1
  br label %ves1x93_readreg.exit51

ves1x93_readreg.exit51:                           ; preds = %if.end.i49, %if.then.i48
  %retval.0.i50 = phi i8 [ %conv13.i47, %if.then.i48 ], [ %73, %if.end.i49 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i34) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i33) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i32) #6
  %74 = and i8 %retval.0.i50, 15
  %and = zext i8 %74 to i32
  %shl5 = shl nuw nsw i32 %and, 16
  %75 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ber, align 4
  %or6 = or i32 %76, %shl5
  %mul = mul i32 %or6, 10
  store i32 %mul, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1x93_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 11, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
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
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = trunc i32 %call.i to i8
  br label %ves1x93_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  br label %ves1x93_readreg.exit

ves1x93_readreg.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i8 [ %conv13.i, %if.then.i ], [ %24, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  %neg = xor i8 %retval.0.i, -1
  %conv2 = zext i8 %neg to i16
  %or = mul nuw i16 %conv2, 257
  %25 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1x93_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 28, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
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
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = trunc i32 %call.i to i8
  br label %ves1x93_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  br label %ves1x93_readreg.exit

ves1x93_readreg.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i8 [ %conv13.i, %if.then.i ], [ %24, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  %neg = xor i8 %retval.0.i, -1
  %conv2 = zext i8 %neg to i16
  %or = mul nuw i16 %conv2, 257
  %25 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1x93_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %buf.i18 = alloca [3 x i8], align 1
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %buf.i8 = alloca [3 x i8], align 1
  %msg.i9 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [2 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b0.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %b0.i, i32 0, i32 1
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b0.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 24, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
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
  store i16 2, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = load i8, ptr %9, align 4
  %conv6.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6.i, ptr %arrayinit.element2.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %19 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len8.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %b1.i, ptr %buf9.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv13.i = trunc i32 %call.i to i8
  br label %ves1x93_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  br label %ves1x93_readreg.exit

ves1x93_readreg.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i8 [ %conv13.i, %if.then.i ], [ %24, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b0.i) #6
  %25 = and i8 %retval.0.i, 127
  %and = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %25)
  %cmp = icmp eq i8 %25, 127
  %spec.select = select i1 %cmp, i32 -1, i32 %and
  %26 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select, ptr %ucblocks, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i8) #6
  %27 = getelementptr inbounds [3 x i8], ptr %buf.i8, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i8], ptr %buf.i8, i32 0, i32 2
  %29 = ptrtoint ptr %buf.i8 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %buf.i8, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 24, ptr %27, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i9) #6
  %32 = getelementptr inbounds i8, ptr %msg.i9, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 262143, ptr %32, align 4
  %34 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4
  %conv.i11 = zext i8 %37 to i16
  %38 = ptrtoint ptr %msg.i9 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i11, ptr %msg.i9, align 4
  %flags.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i12 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i12, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9, i32 0, i32 3
  %40 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i8, ptr %buf2.i, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i14 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i9, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14)
  %cmp.not.i15 = icmp eq i32 %call.i14, 1
  br i1 %cmp.not.i15, label %ves1x93_readreg.exit.ves1x93_writereg.exit_crit_edge, label %if.then.i16

ves1x93_readreg.exit.ves1x93_writereg.exit_crit_edge: ; preds = %ves1x93_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit

if.then.i16:                                      ; preds = %ves1x93_readreg.exit
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i, label %if.then.i16.ves1x93_writereg.exit_crit_edge, label %do.end.i

if.then.i16.ves1x93_writereg.exit_crit_edge:      ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit

do.end.i:                                         ; preds = %if.then.i16
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i14, i32 noundef 24, i32 noundef 0) #10
  br label %ves1x93_writereg.exit

ves1x93_writereg.exit:                            ; preds = %do.end.i, %if.then.i16.ves1x93_writereg.exit_crit_edge, %ves1x93_readreg.exit.ves1x93_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i9) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i8) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i18) #6
  %44 = getelementptr inbounds [3 x i8], ptr %buf.i18, i32 0, i32 1
  %45 = getelementptr inbounds [3 x i8], ptr %buf.i18, i32 0, i32 2
  %46 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %buf.i18, align 1
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 24, ptr %44, align 1
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -128, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #6
  %49 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 262143, ptr %49, align 4
  %51 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4
  %conv.i21 = zext i8 %54 to i16
  %55 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i21, ptr %msg.i19, align 4
  %flags.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i22 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i22, align 2
  %buf2.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %57 = ptrtoint ptr %buf2.i24 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i18, ptr %buf2.i24, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i25 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i19, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i25)
  %cmp.not.i26 = icmp eq i32 %call.i25, 1
  br i1 %cmp.not.i26, label %ves1x93_writereg.exit.ves1x93_writereg.exit32_crit_edge, label %if.then.i28

ves1x93_writereg.exit.ves1x93_writereg.exit32_crit_edge: ; preds = %ves1x93_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit32

if.then.i28:                                      ; preds = %ves1x93_writereg.exit
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i27 = icmp eq i32 %60, 0
  br i1 %tobool.not.i27, label %if.then.i28.ves1x93_writereg.exit32_crit_edge, label %do.end.i30

if.then.i28.ves1x93_writereg.exit32_crit_edge:    ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit32

do.end.i30:                                       ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i25, i32 noundef 24, i32 noundef 128) #10
  br label %ves1x93_writereg.exit32

ves1x93_writereg.exit32:                          ; preds = %do.end.i30, %if.then.i28.ves1x93_writereg.exit32_crit_edge, %ves1x93_writereg.exit.ves1x93_writereg.exit32_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i18) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1x93_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %buf.i22 = alloca [3 x i8], align 1
  %msg.i23 = alloca %struct.i2c_msg, align 4
  %buf.i7 = alloca [3 x i8], align 1
  %msg.i8 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %voltage, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %4 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %buf.i, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 31, ptr %3, align 1
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 32, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 262143, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
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
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf2.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.bb.ves1x93_writereg.exit_crit_edge, label %if.then.i

sw.bb.ves1x93_writereg.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit

if.then.i:                                        ; preds = %sw.bb
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then.i.ves1x93_writereg.exit_crit_edge, label %do.end.i

if.then.i.ves1x93_writereg.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i, i32 noundef 31, i32 noundef 32) #10
  br label %ves1x93_writereg.exit

ves1x93_writereg.exit:                            ; preds = %do.end.i, %if.then.i.ves1x93_writereg.exit_crit_edge, %sw.bb.ves1x93_writereg.exit_crit_edge
  %retval.0.i = phi i32 [ -121, %do.end.i ], [ -121, %if.then.i.ves1x93_writereg.exit_crit_edge ], [ 0, %sw.bb.ves1x93_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i7) #6
  %20 = getelementptr inbounds [3 x i8], ptr %buf.i7, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %buf.i7, i32 0, i32 2
  %22 = ptrtoint ptr %buf.i7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %buf.i7, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 31, ptr %20, align 1
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 48, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i8) #6
  %25 = getelementptr inbounds i8, ptr %msg.i8, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 262143, ptr %25, align 4
  %config.i9 = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %config.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i9, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv.i10 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i8 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i10, ptr %msg.i8, align 4
  %flags.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i11, align 2
  %buf2.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 3
  %33 = ptrtoint ptr %buf2.i13 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i7, ptr %buf2.i13, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i14 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i8, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14)
  %cmp.not.i15 = icmp eq i32 %call.i14, 1
  br i1 %cmp.not.i15, label %sw.bb1.ves1x93_writereg.exit21_crit_edge, label %if.then.i17

sw.bb1.ves1x93_writereg.exit21_crit_edge:         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit21

if.then.i17:                                      ; preds = %sw.bb1
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i16 = icmp eq i32 %36, 0
  br i1 %tobool.not.i16, label %if.then.i17.ves1x93_writereg.exit21_crit_edge, label %do.end.i19

if.then.i17.ves1x93_writereg.exit21_crit_edge:    ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit21

do.end.i19:                                       ; preds = %if.then.i17
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i14, i32 noundef 31, i32 noundef 48) #10
  br label %ves1x93_writereg.exit21

ves1x93_writereg.exit21:                          ; preds = %do.end.i19, %if.then.i17.ves1x93_writereg.exit21_crit_edge, %sw.bb1.ves1x93_writereg.exit21_crit_edge
  %retval.0.i20 = phi i32 [ -121, %do.end.i19 ], [ -121, %if.then.i17.ves1x93_writereg.exit21_crit_edge ], [ 0, %sw.bb1.ves1x93_writereg.exit21_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i8) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i7) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i22) #6
  %37 = getelementptr inbounds [3 x i8], ptr %buf.i22, i32 0, i32 1
  %38 = getelementptr inbounds [3 x i8], ptr %buf.i22, i32 0, i32 2
  %39 = ptrtoint ptr %buf.i22 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %buf.i22, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 31, ptr %37, align 1
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23) #6
  %42 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 262143, ptr %42, align 4
  %config.i24 = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %config.i24 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config.i24, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 4
  %conv.i25 = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i25, ptr %msg.i23, align 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i26, align 2
  %buf2.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %50 = ptrtoint ptr %buf2.i28 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf.i22, ptr %buf2.i28, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call.i29 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i23, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i29)
  %cmp.not.i30 = icmp eq i32 %call.i29, 1
  br i1 %cmp.not.i30, label %sw.bb3.ves1x93_writereg.exit36_crit_edge, label %if.then.i32

sw.bb3.ves1x93_writereg.exit36_crit_edge:         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit36

if.then.i32:                                      ; preds = %sw.bb3
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i31 = icmp eq i32 %53, 0
  br i1 %tobool.not.i31, label %if.then.i32.ves1x93_writereg.exit36_crit_edge, label %do.end.i34

if.then.i32.ves1x93_writereg.exit36_crit_edge:    ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit36

do.end.i34:                                       ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i29, i32 noundef 31, i32 noundef 0) #10
  br label %ves1x93_writereg.exit36

ves1x93_writereg.exit36:                          ; preds = %do.end.i34, %if.then.i32.ves1x93_writereg.exit36_crit_edge, %sw.bb3.ves1x93_writereg.exit36_crit_edge
  %retval.0.i35 = phi i32 [ -121, %do.end.i34 ], [ -121, %if.then.i32.ves1x93_writereg.exit36_crit_edge ], [ 0, %sw.bb3.ves1x93_writereg.exit36_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i22) #6
  br label %cleanup

cleanup:                                          ; preds = %ves1x93_writereg.exit36, %ves1x93_writereg.exit21, %ves1x93_writereg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i35, %ves1x93_writereg.exit36 ], [ %retval.0.i20, %ves1x93_writereg.exit21 ], [ %retval.0.i, %ves1x93_writereg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ves1x93_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [3 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [3 x i8], align 1
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
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %2, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 17, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 262143, ptr %7, align 4
  %config.i = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf2.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.ves1x93_writereg.exit_crit_edge, label %if.then.i

if.then.ves1x93_writereg.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit

if.then.i:                                        ; preds = %if.then
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.then.i.ves1x93_writereg.exit_crit_edge, label %do.end.i

if.then.i.ves1x93_writereg.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i, i32 noundef 0, i32 noundef 17) #10
  br label %ves1x93_writereg.exit

ves1x93_writereg.exit:                            ; preds = %do.end.i, %if.then.i.ves1x93_writereg.exit_crit_edge, %if.then.ves1x93_writereg.exit_crit_edge
  %retval.0.i = phi i32 [ -121, %do.end.i ], [ -121, %if.then.i.ves1x93_writereg.exit_crit_edge ], [ 0, %if.then.ves1x93_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i3) #6
  %19 = getelementptr inbounds [3 x i8], ptr %buf.i3, i32 0, i32 1
  %20 = getelementptr inbounds [3 x i8], ptr %buf.i3, i32 0, i32 2
  %21 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %buf.i3, align 1
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %19, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %24 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 262143, ptr %24, align 4
  %config.i5 = getelementptr inbounds %struct.ves1x93_state, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %config.i5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i5, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv.i6 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i6, ptr %msg.i4, align 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i7, align 2
  %buf2.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %32 = ptrtoint ptr %buf2.i9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i3, ptr %buf2.i9, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %if.else.ves1x93_writereg.exit17_crit_edge, label %if.then.i13

if.else.ves1x93_writereg.exit17_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit17

if.then.i13:                                      ; preds = %if.else
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i12 = icmp eq i32 %35, 0
  br i1 %tobool.not.i12, label %if.then.i13.ves1x93_writereg.exit17_crit_edge, label %do.end.i15

if.then.i13.ves1x93_writereg.exit17_crit_edge:    ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %ves1x93_writereg.exit17

do.end.i15:                                       ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call.i10, i32 noundef 0, i32 noundef 1) #10
  br label %ves1x93_writereg.exit17

ves1x93_writereg.exit17:                          ; preds = %do.end.i15, %if.then.i13.ves1x93_writereg.exit17_crit_edge, %if.else.ves1x93_writereg.exit17_crit_edge
  %retval.0.i16 = phi i32 [ -121, %do.end.i15 ], [ -121, %if.then.i13.ves1x93_writereg.exit17_crit_edge ], [ 0, %if.else.ves1x93_writereg.exit17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i3) #6
  br label %cleanup

cleanup:                                          ; preds = %ves1x93_writereg.exit17, %ves1x93_writereg.exit
  %retval.0 = phi i32 [ %retval.0.i, %ves1x93_writereg.exit ], [ %retval.0.i16, %ves1x93_writereg.exit17 ]
  ret i32 %retval.0
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 465, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ves1x93_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ves1x93_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 473, i32 3}
!8 = !{ptr @ves1x93_attach._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ves1x93_attach._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 481, i32 3}
!12 = !{ptr @ves1x93_attach._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ves1x93_attach._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__param_debug, !15, !"__param_debug", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 537, i32 1}
!16 = !{ptr @__UNIQUE_ID_debugtype290, !15, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_description291, !18, !"__UNIQUE_ID_description291", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 539, i32 1}
!19 = !{ptr @__UNIQUE_ID_author292, !20, !"__UNIQUE_ID_author292", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 540, i32 1}
!21 = !{ptr @__UNIQUE_ID_file293, !22, !"__UNIQUE_ID_file293", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 541, i32 1}
!23 = !{ptr @__UNIQUE_ID_license294, !22, !"__UNIQUE_ID_license294", i1 false, i1 false}
!24 = !{ptr @__ksymtab_ves1x93_attach, !25, !"__ksymtab_ves1x93_attach", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 543, i32 1}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 39, i32 12}
!28 = !{ptr @init_1893_tab, !29, !"init_1893_tab", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 45, i32 11}
!30 = !{ptr @init_1893_wtab, !31, !"init_1893_wtab", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 66, i32 11}
!32 = !{ptr @init_1993_tab, !33, !"init_1993_tab", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 55, i32 11}
!34 = !{ptr @init_1993_wtab, !35, !"init_1993_wtab", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 74, i32 11}
!36 = !{ptr @ves1x93_ops, !37, !"ves1x93_ops", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 502, i32 38}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 258, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ves1x93_init._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ves1x93_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 89, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ves1x93_writereg._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ves1x93_writereg._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 171, i32 2}
!50 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ves1x93_set_symbolrate._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ves1x93_set_symbolrate._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 218, i32 2}
!55 = !{ptr @ves1x93_set_symbolrate._entry.15, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ves1x93_set_symbolrate._entry_ptr.17, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 219, i32 2}
!59 = !{ptr @ves1x93_set_symbolrate._entry.18, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ves1x93_set_symbolrate._entry_ptr.20, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 220, i32 2}
!63 = !{ptr @ves1x93_set_symbolrate._entry.21, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ves1x93_set_symbolrate._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/ves1x93.c", i32 221, i32 2}
!67 = !{ptr @ves1x93_set_symbolrate._entry.24, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ves1x93_set_symbolrate._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__param_str_debug, !15, !"__param_str_debug", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
