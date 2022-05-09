; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cx22702.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx22702.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx22702_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cx22702_attach\09\09\09\09"
module asm "\09.long\09__crc_cx22702_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx22702_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx22702_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx22702_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx22702_state = type { ptr, ptr, %struct.dvb_frontend, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.cx22702_config = type { i8, i8 }

@__param_str_debug = internal constant [14 x i8] c"cx22702.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"cx22702.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [49 x i8] c"cx22702.parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@cx22702_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX22702 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 177000000, i32 858000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 1075523246 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @cx22702_release, ptr null, ptr @cx22702_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx22702_set_tps, ptr @cx22702_get_tune_settings, ptr @cx22702_get_frontend, ptr @cx22702_read_status, ptr @cx22702_read_ber, ptr @cx22702_read_signal_strength, ptr @cx22702_read_snr, ptr @cx22702_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx22702_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_cx22702_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx22702_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx22702_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx22702_attach to i32), ptr @__kstrtab_cx22702_attach, ptr @__kstrtabns_cx22702_attach }, section "___ksymtab+cx22702_attach", align 4
@__UNIQUE_ID_description292 = internal constant [62 x i8] c"cx22702.description=Conexant CX22702 DVB-T Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [27 x i8] c"cx22702.author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"cx22702.file=drivers/media/dvb-frontends/cx22702\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"cx22702.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx22702_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: error (reg == 0x%02x, ret == %i)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx22702_readreg\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/cx22702.c\00", [58 x i8] zeroinitializer }, align 32
@cx22702_readreg._entry_ptr = internal global ptr @cx22702_readreg._entry, section ".printk_index", align 4
@init_tab = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\00\00\0B\06\09\01\0DA\162 \0A!\17$>&\FF'\10(\00)\00*\10+\00,\10-\00H\D4IVk\1E\C8\02\F9\00\FA\00\FB\00\FC\00\FD\00", [46 x i8] zeroinitializer }, align 32
@cx22702_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: error (reg == 0x%02x, val == 0x%02x, ret == %i)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx22702_writereg\00", [47 x i8] zeroinitializer }, align 32
@cx22702_writereg._entry_ptr = internal global ptr @cx22702_writereg._entry, section ".printk_index", align 4
@cx22702_set_tps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid bandwidth\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx22702_set_tps\00", [16 x i8] zeroinitializer }, align 32
@cx22702_set_tps._entry_ptr = internal global ptr @cx22702_set_tps._entry, section ".printk_index", align 4
@cx22702_set_tps._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Autodetecting\0A\00", [45 x i8] zeroinitializer }, align 32
@cx22702_set_tps._entry_ptr.9 = internal global ptr @cx22702_set_tps._entry.7, section ".printk_index", align 4
@cx22702_set_tps._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: invalid modulation\0A\00", [40 x i8] zeroinitializer }, align 32
@cx22702_set_tps._entry_ptr.12 = internal global ptr @cx22702_set_tps._entry.10, section ".printk_index", align 4
@cx22702_set_tps._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: invalid hierarchy\0A\00", [41 x i8] zeroinitializer }, align 32
@cx22702_set_tps._entry_ptr.15 = internal global ptr @cx22702_set_tps._entry.13, section ".printk_index", align 4
@cx22702_set_tps._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid code_rate_HP\0A\00", [38 x i8] zeroinitializer }, align 32
@cx22702_set_tps._entry_ptr.18 = internal global ptr @cx22702_set_tps._entry.16, section ".printk_index", align 4
@cx22702_set_tps._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid code_rate_LP\0A\00", [38 x i8] zeroinitializer }, align 32
@cx22702_set_tps._entry_ptr.21 = internal global ptr @cx22702_set_tps._entry.19, section ".printk_index", align 4
@cx22702_set_tps._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid guard_interval\0A\00", [36 x i8] zeroinitializer }, align 32
@cx22702_set_tps._entry_ptr.24 = internal global ptr @cx22702_set_tps._entry.22, section ".printk_index", align 4
@cx22702_set_tps._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: invalid transmission_mode\0A\00", [33 x i8] zeroinitializer }, align 32
@cx22702_set_tps._entry_ptr.27 = internal global ptr @cx22702_set_tps._entry.25, section ".printk_index", align 4
@cx22702_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: status demod=0x%02x agc=0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx22702_read_status\00", [44 x i8] zeroinitializer }, align 32
@cx22702_read_status._entry_ptr = internal global ptr @cx22702_read_status._entry, section ".printk_index", align 4
@cx22702_i2c_gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx22702_i2c_gate_ctrl\00", [42 x i8] zeroinitializer }, align 32
@cx22702_i2c_gate_ctrl._entry_ptr = internal global ptr @cx22702_i2c_gate_ctrl._entry, section ".printk_index", align 4
@switch.table.cx22702_get_frontend = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 38, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"cx22702_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 609, i32 38 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 107, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"init_tab\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 45, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 84, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 278, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 302, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 318, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 334, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 357, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 377, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 396, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 406, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 454, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [41 x i8] c"../drivers/media/dvb-frontends/cx22702.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 241, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [34 x i8] c"switch.table.cx22702_get_frontend\00", align 1
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_cx22702_attach, ptr @__param_debug, ptr @cx22702_i2c_gate_ctrl._entry, ptr @cx22702_i2c_gate_ctrl._entry_ptr, ptr @cx22702_read_status._entry, ptr @cx22702_read_status._entry_ptr, ptr @cx22702_readreg._entry, ptr @cx22702_readreg._entry_ptr, ptr @cx22702_set_tps._entry, ptr @cx22702_set_tps._entry.10, ptr @cx22702_set_tps._entry.13, ptr @cx22702_set_tps._entry.16, ptr @cx22702_set_tps._entry.19, ptr @cx22702_set_tps._entry.22, ptr @cx22702_set_tps._entry.25, ptr @cx22702_set_tps._entry.7, ptr @cx22702_set_tps._entry_ptr, ptr @cx22702_set_tps._entry_ptr.12, ptr @cx22702_set_tps._entry_ptr.15, ptr @cx22702_set_tps._entry_ptr.18, ptr @cx22702_set_tps._entry_ptr.21, ptr @cx22702_set_tps._entry_ptr.24, ptr @cx22702_set_tps._entry_ptr.27, ptr @cx22702_set_tps._entry_ptr.9, ptr @cx22702_writereg._entry, ptr @cx22702_writereg._entry_ptr, ptr @debug, ptr @cx22702_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @init_tab, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @switch.table.cx22702_get_frontend], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tab to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_set_tps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_set_tps._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_set_tps._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_set_tps._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_set_tps._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_set_tps._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_set_tps._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_set_tps._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx22702_i2c_gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx22702_get_frontend to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx22702_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1052) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.cx22702_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 31, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config, align 1
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %data.i, ptr %buf7.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %cx22702_readreg.exit, label %cx22702_readreg.exit.thread, !prof !85

cx22702_readreg.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %18 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %error

cx22702_readreg.exit:                             ; preds = %if.end
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %20)
  %cmp4.not = icmp eq i8 %20, 3
  br i1 %cmp4.not, label %if.end7, label %cx22702_readreg.exit.error_crit_edge

cx22702_readreg.exit.error_crit_edge:             ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end7:                                          ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %frontend = getelementptr inbounds %struct.cx22702_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.cx22702_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %21 = call ptr @memcpy(ptr %ops, ptr @cx22702_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.cx22702_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %cx22702_readreg.exit.error_crit_edge, %cx22702_readreg.exit.thread, %entry.error_crit_edge
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx22702_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @cx22702_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i27 = alloca [2 x i8], align 1
  %msg.i28 = alloca %struct.i2c_msg, align 4
  %buf.i14 = alloca [2 x i8], align 1
  %msg.i15 = alloca %struct.i2c_msg, align 4
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
  store i8 0, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.cx22702_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %entry.cx22702_writereg.exit_crit_edge, label %do.end.i, !prof !85

entry.cx22702_writereg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 2, i32 noundef %call.i) #10
  br label %cx22702_writereg.exit

cx22702_writereg.exit:                            ; preds = %do.end.i, %entry.cx22702_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @msleep(i32 noundef 10) #6
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i14, i32 0, i32 1
  %17 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %buf1.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cx22702_writereg.exit26.for.body_crit_edge, %cx22702_writereg.exit
  %i.041 = phi i32 [ 0, %cx22702_writereg.exit ], [ %add3, %cx22702_writereg.exit26.for.body_crit_edge ]
  %arrayidx = getelementptr [50 x i8], ptr @init_tab, i32 0, i32 %i.041
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %add = or i32 %i.041, 1
  %arrayidx1 = getelementptr [50 x i8], ptr @init_tab, i32 0, i32 %add
  %20 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i14) #6
  %22 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %19, ptr %buf.i14, align 1
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %21, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i15) #6
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %17, align 4
  %25 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv.i17 = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i17, ptr %msg.i15, align 4
  %30 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i18, align 2
  store i16 2, ptr %17, align 4
  %31 = ptrtoint ptr %buf1.i20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf.i14, ptr %buf1.i20, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i21 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %msg.i15, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i21)
  %cmp.not.i22 = icmp eq i32 %call.i21, 1
  br i1 %cmp.not.i22, label %for.body.cx22702_writereg.exit26_crit_edge, label %do.end.i24, !prof !85

for.body.cx22702_writereg.exit26_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit26

do.end.i24:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv4.i = zext i8 %19 to i32
  %conv5.i = zext i8 %21 to i32
  %call6.i23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv4.i, i32 noundef %conv5.i, i32 noundef %call.i21) #10
  br label %cx22702_writereg.exit26

cx22702_writereg.exit26:                          ; preds = %do.end.i24, %for.body.cx22702_writereg.exit26_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i15) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i14) #6
  %add3 = add nuw nsw i32 %i.041, 2
  %cmp = icmp ult i32 %i.041, 48
  br i1 %cmp, label %cx22702_writereg.exit26.for.body_crit_edge, label %for.end

cx22702_writereg.exit26.for.body_crit_edge:       ; preds = %cx22702_writereg.exit26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cx22702_writereg.exit26
  %34 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config.i, align 4
  %output_mode = getelementptr inbounds %struct.cx22702_config, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %output_mode to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %output_mode, align 1
  %shl = shl i8 %37, 1
  %and = and i8 %shl, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i27) #6
  %38 = getelementptr inbounds [2 x i8], ptr %buf.i27, i32 0, i32 1
  %39 = ptrtoint ptr %buf.i27 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -8, ptr %buf.i27, align 1
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %and, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i28) #6
  %41 = getelementptr inbounds i8, ptr %msg.i28, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %conv.i30 = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i28 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i30, ptr %msg.i28, align 4
  %flags.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i31, align 2
  %buf1.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i28, i32 0, i32 3
  %49 = ptrtoint ptr %buf1.i33 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf.i27, ptr %buf1.i33, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i34 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i28, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i34)
  %cmp.not.i35 = icmp eq i32 %call.i34, 1
  br i1 %cmp.not.i35, label %for.end.cx22702_writereg.exit40_crit_edge, label %do.end.i38, !prof !85

for.end.cx22702_writereg.exit40_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit40

do.end.i38:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i36 = zext i8 %and to i32
  %call6.i37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 248, i32 noundef %conv5.i36, i32 noundef %call.i34) #10
  br label %cx22702_writereg.exit40

cx22702_writereg.exit40:                          ; preds = %do.end.i38, %for.end.cx22702_writereg.exit40_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i28) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i27) #6
  %call6 = call i32 @cx22702_i2c_gate_ctrl(ptr noundef %fe, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22702_set_tps(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i368 = alloca [2 x i8], align 1
  %msg.i369 = alloca %struct.i2c_msg, align 4
  %buf.i354 = alloca [2 x i8], align 1
  %msg.i355 = alloca %struct.i2c_msg, align 4
  %reg.addr.i333 = alloca i8, align 1
  %data.i334 = alloca i8, align 1
  %msg.i335 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i319 = alloca [2 x i8], align 1
  %msg.i320 = alloca %struct.i2c_msg, align 4
  %reg.addr.i298 = alloca i8, align 1
  %data.i299 = alloca i8, align 1
  %msg.i300 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i285 = alloca [2 x i8], align 1
  %msg.i286 = alloca %struct.i2c_msg, align 4
  %buf.i272 = alloca [2 x i8], align 1
  %msg.i273 = alloca %struct.i2c_msg, align 4
  %buf.i259 = alloca [2 x i8], align 1
  %msg.i260 = alloca %struct.i2c_msg, align 4
  %buf.i249 = alloca [2 x i8], align 1
  %msg.i250 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %8 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #6
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %data.i.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %10 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %config.i.i = getelementptr inbounds %struct.cx22702_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv.i.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i.i, align 2
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %10, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %20 = load i8, ptr %13, align 1
  %conv4.i.i = zext i8 %20 to i16
  %21 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv4.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %22 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %23 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %len6.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %24 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data.i.i, ptr %buf7.i.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i, !prof !85

do.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg.addr.i.i, align 1
  %conv10.i.i = zext i8 %28 to i32
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i.i, i32 noundef %call.i.i) #10
  br label %cx22702_readreg.exit.i

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data.i.i, align 1
  br label %cx22702_readreg.exit.i

cx22702_readreg.exit.i:                           ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %30, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %31 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %cx22702_readreg.exit.i.cx22702_set_inversion.exit_crit_edge [
    i32 0, label %sw.bb3.i
    i32 1, label %sw.bb1.i
  ]

cx22702_readreg.exit.i.cx22702_set_inversion.exit_crit_edge: ; preds = %cx22702_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_set_inversion.exit

sw.bb1.i:                                         ; preds = %cx22702_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = or i8 %retval.0.i.i, 1
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %cx22702_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = and i8 %retval.0.i.i, -2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb1.i
  %val.0.i = phi i8 [ %33, %sw.bb3.i ], [ %32, %sw.bb1.i ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #6
  %34 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %35 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 12, ptr %buf.i1.i, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %val.0.i, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #6
  %37 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 196607, ptr %37, align 4
  %39 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %conv.i4.i = zext i8 %42 to i16
  %43 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i4.i, ptr %msg.i2.i, align 4
  %flags.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i5.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i5.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %45 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i1.i, ptr %buf1.i.i, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call.i7.i = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i7.i)
  %cmp.not.i8.i = icmp eq i32 %call.i7.i, 1
  br i1 %cmp.not.i8.i, label %sw.epilog.i.cx22702_writereg.exit.i_crit_edge, label %do.end.i9.i, !prof !85

sw.epilog.i.cx22702_writereg.exit.i_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit.i

do.end.i9.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i.i = zext i8 %val.0.i to i32
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef %conv5.i.i, i32 noundef %call.i7.i) #10
  br label %cx22702_writereg.exit.i

cx22702_writereg.exit.i:                          ; preds = %do.end.i9.i, %sw.epilog.i.cx22702_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #6
  br label %cx22702_set_inversion.exit

cx22702_set_inversion.exit:                       ; preds = %cx22702_writereg.exit.i, %cx22702_readreg.exit.i.cx22702_set_inversion.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %48 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 12, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %data.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %50 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %51 = call ptr @memset(ptr %50, i32 255, i32 16)
  %52 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 1
  %conv.i = zext i8 %55 to i16
  %56 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i, align 2
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %50, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %59 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %60 = load i8, ptr %53, align 1
  %conv4.i = zext i8 %60 to i16
  %61 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %62 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %63 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %64 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %data.i, ptr %buf7.i, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i, !prof !85

do.end.i:                                         ; preds = %cx22702_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %68 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i, i32 noundef %call.i) #10
  br label %cx22702_readreg.exit

if.end.i:                                         ; preds = %cx22702_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %data.i, align 1
  %phi.bo = and i8 %70, -49
  br label %cx22702_readreg.exit

cx22702_readreg.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i8 [ 0, %do.end.i ], [ %phi.bo, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %71 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bandwidth_hz, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %72, label %sw.default [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb16
    i32 8000000, label %cx22702_readreg.exit.sw.epilog_crit_edge
  ]

cx22702_readreg.exit.sw.epilog_crit_edge:         ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %74 = or i8 %retval.0.i, 32
  br label %sw.epilog

sw.bb16:                                          ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %75 = or i8 %retval.0.i, 16
  br label %sw.epilog

sw.default:                                       ; preds = %cx22702_readreg.exit
  %76 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool20.not = icmp eq i32 %76, 0
  br i1 %tobool20.not, label %sw.default.cleanup_crit_edge, label %sw.default.cleanup.sink.split_crit_edge

sw.default.cleanup.sink.split_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb, %cx22702_readreg.exit.sw.epilog_crit_edge
  %val.0 = phi i8 [ %retval.0.i, %cx22702_readreg.exit.sw.epilog_crit_edge ], [ %75, %sw.bb16 ], [ %74, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i249) #6
  %77 = getelementptr inbounds [2 x i8], ptr %buf.i249, i32 0, i32 1
  %78 = ptrtoint ptr %buf.i249 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 12, ptr %buf.i249, align 1
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %val.0, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i250) #6
  %80 = getelementptr inbounds i8, ptr %msg.i250, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 196607, ptr %80, align 4
  %82 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 1
  %conv.i252 = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i250 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i252, ptr %msg.i250, align 4
  %flags.i253 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i250, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i253 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i253, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i250, i32 0, i32 3
  %88 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %buf.i249, ptr %buf1.i, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %call.i255 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %msg.i250, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i255)
  %cmp.not.i256 = icmp eq i32 %call.i255, 1
  br i1 %cmp.not.i256, label %sw.epilog.cx22702_writereg.exit_crit_edge, label %do.end.i257, !prof !85

sw.epilog.cx22702_writereg.exit_crit_edge:        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit

do.end.i257:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = zext i8 %val.0 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef %conv5.i, i32 noundef %call.i255) #10
  br label %cx22702_writereg.exit

cx22702_writereg.exit:                            ; preds = %do.end.i257, %sw.epilog.cx22702_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i250) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i249) #6
  %code_rate_LP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %91 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 9, ptr %code_rate_LP, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i259) #6
  %92 = getelementptr inbounds [2 x i8], ptr %buf.i259, i32 0, i32 1
  %93 = ptrtoint ptr %buf.i259 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 6, ptr %buf.i259, align 1
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 16, ptr %92, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i260) #6
  %95 = getelementptr inbounds i8, ptr %msg.i260, i32 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 196607, ptr %95, align 4
  %97 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %config.i.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 1
  %conv.i262 = zext i8 %100 to i16
  %101 = ptrtoint ptr %msg.i260 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i262, ptr %msg.i260, align 4
  %flags.i263 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i260, i32 0, i32 1
  %102 = ptrtoint ptr %flags.i263 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i263, align 2
  %buf1.i265 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i260, i32 0, i32 3
  %103 = ptrtoint ptr %buf1.i265 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %buf.i259, ptr %buf1.i265, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  %call.i266 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %msg.i260, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i266)
  %cmp.not.i267 = icmp eq i32 %call.i266, 1
  br i1 %cmp.not.i267, label %cx22702_writereg.exit.cx22702_writereg.exit271_crit_edge, label %do.end.i269, !prof !85

cx22702_writereg.exit.cx22702_writereg.exit271_crit_edge: ; preds = %cx22702_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit271

do.end.i269:                                      ; preds = %cx22702_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 6, i32 noundef 16, i32 noundef %call.i266) #10
  br label %cx22702_writereg.exit271

cx22702_writereg.exit271:                         ; preds = %do.end.i269, %cx22702_writereg.exit.cx22702_writereg.exit271_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i260) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i259) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i272) #6
  %106 = getelementptr inbounds [2 x i8], ptr %buf.i272, i32 0, i32 1
  %107 = ptrtoint ptr %buf.i272 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 7, ptr %buf.i272, align 1
  %108 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 9, ptr %106, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i273) #6
  %109 = getelementptr inbounds i8, ptr %msg.i273, i32 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 196607, ptr %109, align 4
  %111 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %config.i.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 1
  %conv.i275 = zext i8 %114 to i16
  %115 = ptrtoint ptr %msg.i273 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i275, ptr %msg.i273, align 4
  %flags.i276 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i273, i32 0, i32 1
  %116 = ptrtoint ptr %flags.i276 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %flags.i276, align 2
  %buf1.i278 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i273, i32 0, i32 3
  %117 = ptrtoint ptr %buf1.i278 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %buf.i272, ptr %buf1.i278, align 4
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %call.i279 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i273, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i279)
  %cmp.not.i280 = icmp eq i32 %call.i279, 1
  br i1 %cmp.not.i280, label %cx22702_writereg.exit271.cx22702_writereg.exit284_crit_edge, label %do.end.i282, !prof !85

cx22702_writereg.exit271.cx22702_writereg.exit284_crit_edge: ; preds = %cx22702_writereg.exit271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit284

do.end.i282:                                      ; preds = %cx22702_writereg.exit271
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 7, i32 noundef 9, i32 noundef %call.i279) #10
  br label %cx22702_writereg.exit284

cx22702_writereg.exit284:                         ; preds = %do.end.i282, %cx22702_writereg.exit271.cx22702_writereg.exit284_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i273) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i272) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i285) #6
  %120 = getelementptr inbounds [2 x i8], ptr %buf.i285, i32 0, i32 1
  %121 = ptrtoint ptr %buf.i285 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 8, ptr %buf.i285, align 1
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -63, ptr %120, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i286) #6
  %123 = getelementptr inbounds i8, ptr %msg.i286, i32 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 196607, ptr %123, align 4
  %125 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %config.i.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %126, align 1
  %conv.i288 = zext i8 %128 to i16
  %129 = ptrtoint ptr %msg.i286 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i288, ptr %msg.i286, align 4
  %flags.i289 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i286, i32 0, i32 1
  %130 = ptrtoint ptr %flags.i289 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i289, align 2
  %buf1.i291 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i286, i32 0, i32 3
  %131 = ptrtoint ptr %buf1.i291 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %buf.i285, ptr %buf1.i291, align 4
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %call.i292 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %msg.i286, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i292)
  %cmp.not.i293 = icmp eq i32 %call.i292, 1
  br i1 %cmp.not.i293, label %cx22702_writereg.exit284.cx22702_writereg.exit297_crit_edge, label %do.end.i295, !prof !85

cx22702_writereg.exit284.cx22702_writereg.exit297_crit_edge: ; preds = %cx22702_writereg.exit284
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit297

do.end.i295:                                      ; preds = %cx22702_writereg.exit284
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i294 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 8, i32 noundef 193, i32 noundef %call.i292) #10
  br label %cx22702_writereg.exit297

cx22702_writereg.exit297:                         ; preds = %do.end.i295, %cx22702_writereg.exit284.cx22702_writereg.exit297_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i286) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i285) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i298)
  %134 = ptrtoint ptr %reg.addr.i298 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 11, ptr %reg.addr.i298, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i299) #6
  %135 = ptrtoint ptr %data.i299 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %data.i299, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i300) #6
  %136 = getelementptr inbounds i8, ptr %msg.i300, i32 4
  %137 = call ptr @memset(ptr %136, i32 255, i32 16)
  %138 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %config.i.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %139, align 1
  %conv.i302 = zext i8 %141 to i16
  %142 = ptrtoint ptr %msg.i300 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i302, ptr %msg.i300, align 4
  %flags.i303 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i300, i32 0, i32 1
  %143 = ptrtoint ptr %flags.i303 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 0, ptr %flags.i303, align 2
  %144 = ptrtoint ptr %136 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 1, ptr %136, align 4
  %buf.i305 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i300, i32 0, i32 3
  %145 = ptrtoint ptr %buf.i305 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %reg.addr.i298, ptr %buf.i305, align 4
  %arrayinit.element.i306 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i300, i32 1
  %146 = load i8, ptr %139, align 1
  %conv4.i307 = zext i8 %146 to i16
  %147 = ptrtoint ptr %arrayinit.element.i306 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv4.i307, ptr %arrayinit.element.i306, align 4
  %flags5.i308 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i300, i32 1, i32 1
  %148 = ptrtoint ptr %flags5.i308 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %flags5.i308, align 2
  %len6.i309 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i300, i32 1, i32 2
  %149 = ptrtoint ptr %len6.i309 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 1, ptr %len6.i309, align 4
  %buf7.i310 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i300, i32 1, i32 3
  %150 = ptrtoint ptr %buf7.i310 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %data.i299, ptr %buf7.i310, align 4
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 4
  %call.i311 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %msg.i300, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i311)
  %cmp.not.i312 = icmp eq i32 %call.i311, 2
  br i1 %cmp.not.i312, label %if.end.i316, label %do.end.i315, !prof !85

do.end.i315:                                      ; preds = %cx22702_writereg.exit297
  call void @__sanitizer_cov_trace_pc() #8
  %153 = ptrtoint ptr %reg.addr.i298 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %reg.addr.i298, align 1
  %conv10.i313 = zext i8 %154 to i32
  %call11.i314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i313, i32 noundef %call.i311) #10
  br label %cx22702_readreg.exit318

if.end.i316:                                      ; preds = %cx22702_writereg.exit297
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %data.i299 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %data.i299, align 1
  %phi.bo381 = and i8 %156, -4
  br label %cx22702_readreg.exit318

cx22702_readreg.exit318:                          ; preds = %if.end.i316, %do.end.i315
  %retval.0.i317 = phi i8 [ 0, %do.end.i315 ], [ %phi.bo381, %if.end.i316 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i300) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i299) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i298)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i319) #6
  %157 = getelementptr inbounds [2 x i8], ptr %buf.i319, i32 0, i32 1
  %158 = ptrtoint ptr %buf.i319 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 11, ptr %buf.i319, align 1
  %159 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %retval.0.i317, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i320) #6
  %160 = getelementptr inbounds i8, ptr %msg.i320, i32 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 196607, ptr %160, align 4
  %162 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %config.i.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %163, align 1
  %conv.i322 = zext i8 %165 to i16
  %166 = ptrtoint ptr %msg.i320 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv.i322, ptr %msg.i320, align 4
  %flags.i323 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i320, i32 0, i32 1
  %167 = ptrtoint ptr %flags.i323 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 0, ptr %flags.i323, align 2
  %buf1.i325 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i320, i32 0, i32 3
  %168 = ptrtoint ptr %buf1.i325 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %buf.i319, ptr %buf1.i325, align 4
  %169 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %1, align 4
  %call.i326 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %msg.i320, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i326)
  %cmp.not.i327 = icmp eq i32 %call.i326, 1
  br i1 %cmp.not.i327, label %cx22702_readreg.exit318.cx22702_writereg.exit332_crit_edge, label %do.end.i330, !prof !85

cx22702_readreg.exit318.cx22702_writereg.exit332_crit_edge: ; preds = %cx22702_readreg.exit318
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit332

do.end.i330:                                      ; preds = %cx22702_readreg.exit318
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i328 = zext i8 %retval.0.i317 to i32
  %call6.i329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 11, i32 noundef %conv5.i328, i32 noundef %call.i326) #10
  br label %cx22702_writereg.exit332

cx22702_writereg.exit332:                         ; preds = %do.end.i330, %cx22702_readreg.exit318.cx22702_writereg.exit332_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i320) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i319) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i333)
  %171 = ptrtoint ptr %reg.addr.i333 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 12, ptr %reg.addr.i333, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i334) #6
  %172 = ptrtoint ptr %data.i334 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -1, ptr %data.i334, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i335) #6
  %173 = getelementptr inbounds i8, ptr %msg.i335, i32 4
  %174 = call ptr @memset(ptr %173, i32 255, i32 16)
  %175 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %config.i.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %176, align 1
  %conv.i337 = zext i8 %178 to i16
  %179 = ptrtoint ptr %msg.i335 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv.i337, ptr %msg.i335, align 4
  %flags.i338 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i335, i32 0, i32 1
  %180 = ptrtoint ptr %flags.i338 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %flags.i338, align 2
  %181 = ptrtoint ptr %173 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 1, ptr %173, align 4
  %buf.i340 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i335, i32 0, i32 3
  %182 = ptrtoint ptr %buf.i340 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %reg.addr.i333, ptr %buf.i340, align 4
  %arrayinit.element.i341 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i335, i32 1
  %183 = load i8, ptr %176, align 1
  %conv4.i342 = zext i8 %183 to i16
  %184 = ptrtoint ptr %arrayinit.element.i341 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv4.i342, ptr %arrayinit.element.i341, align 4
  %flags5.i343 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i335, i32 1, i32 1
  %185 = ptrtoint ptr %flags5.i343 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 1, ptr %flags5.i343, align 2
  %len6.i344 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i335, i32 1, i32 2
  %186 = ptrtoint ptr %len6.i344 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 1, ptr %len6.i344, align 4
  %buf7.i345 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i335, i32 1, i32 3
  %187 = ptrtoint ptr %buf7.i345 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %data.i334, ptr %buf7.i345, align 4
  %188 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %1, align 4
  %call.i346 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %msg.i335, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i346)
  %cmp.not.i347 = icmp eq i32 %call.i346, 2
  br i1 %cmp.not.i347, label %if.end.i351, label %do.end.i350, !prof !85

do.end.i350:                                      ; preds = %cx22702_writereg.exit332
  call void @__sanitizer_cov_trace_pc() #8
  %190 = ptrtoint ptr %reg.addr.i333 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %reg.addr.i333, align 1
  %conv10.i348 = zext i8 %191 to i32
  %call11.i349 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i348, i32 noundef %call.i346) #10
  br label %cx22702_readreg.exit353

if.end.i351:                                      ; preds = %cx22702_writereg.exit332
  call void @__sanitizer_cov_trace_pc() #8
  %192 = ptrtoint ptr %data.i334 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %data.i334, align 1
  %phi.bo382 = or i8 %193, 64
  br label %cx22702_readreg.exit353

cx22702_readreg.exit353:                          ; preds = %if.end.i351, %do.end.i350
  %retval.0.i352 = phi i8 [ 64, %do.end.i350 ], [ %phi.bo382, %if.end.i351 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i335) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i334) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i333)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i354) #6
  %194 = getelementptr inbounds [2 x i8], ptr %buf.i354, i32 0, i32 1
  %195 = ptrtoint ptr %buf.i354 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 12, ptr %buf.i354, align 1
  %196 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %retval.0.i352, ptr %194, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i355) #6
  %197 = getelementptr inbounds i8, ptr %msg.i355, i32 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 196607, ptr %197, align 4
  %199 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %config.i.i, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %200, align 1
  %conv.i357 = zext i8 %202 to i16
  %203 = ptrtoint ptr %msg.i355 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv.i357, ptr %msg.i355, align 4
  %flags.i358 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i355, i32 0, i32 1
  %204 = ptrtoint ptr %flags.i358 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 0, ptr %flags.i358, align 2
  %buf1.i360 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i355, i32 0, i32 3
  %205 = ptrtoint ptr %buf1.i360 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %buf.i354, ptr %buf1.i360, align 4
  %206 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %1, align 4
  %call.i361 = call i32 @i2c_transfer(ptr noundef %207, ptr noundef nonnull %msg.i355, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i361)
  %cmp.not.i362 = icmp eq i32 %call.i361, 1
  br i1 %cmp.not.i362, label %cx22702_readreg.exit353.cx22702_writereg.exit367_crit_edge, label %do.end.i365, !prof !85

cx22702_readreg.exit353.cx22702_writereg.exit367_crit_edge: ; preds = %cx22702_readreg.exit353
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit367

do.end.i365:                                      ; preds = %cx22702_readreg.exit353
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i363 = zext i8 %retval.0.i352 to i32
  %call6.i364 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 12, i32 noundef %conv5.i363, i32 noundef %call.i361) #10
  br label %cx22702_writereg.exit367

cx22702_writereg.exit367:                         ; preds = %do.end.i365, %cx22702_readreg.exit353.cx22702_writereg.exit367_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i355) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i354) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i368) #6
  %208 = getelementptr inbounds [2 x i8], ptr %buf.i368, i32 0, i32 1
  %209 = ptrtoint ptr %buf.i368 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %buf.i368, align 1
  %210 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %208, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i369) #6
  %211 = getelementptr inbounds i8, ptr %msg.i369, i32 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 196607, ptr %211, align 4
  %213 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %config.i.i, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %214, align 1
  %conv.i371 = zext i8 %216 to i16
  %217 = ptrtoint ptr %msg.i369 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %conv.i371, ptr %msg.i369, align 4
  %flags.i372 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i369, i32 0, i32 1
  %218 = ptrtoint ptr %flags.i372 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 0, ptr %flags.i372, align 2
  %buf1.i374 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i369, i32 0, i32 3
  %219 = ptrtoint ptr %buf1.i374 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %buf.i368, ptr %buf1.i374, align 4
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 4
  %call.i375 = call i32 @i2c_transfer(ptr noundef %221, ptr noundef nonnull %msg.i369, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i375)
  %cmp.not.i376 = icmp eq i32 %call.i375, 1
  br i1 %cmp.not.i376, label %cx22702_writereg.exit367.cx22702_writereg.exit380_crit_edge, label %do.end.i378, !prof !85

cx22702_writereg.exit367.cx22702_writereg.exit380_crit_edge: ; preds = %cx22702_writereg.exit367
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit380

do.end.i378:                                      ; preds = %cx22702_writereg.exit367
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 1, i32 noundef %call.i375) #10
  br label %cx22702_writereg.exit380

cx22702_writereg.exit380:                         ; preds = %do.end.i378, %cx22702_writereg.exit367.cx22702_writereg.exit380_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i369) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i368) #6
  %222 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool57.not = icmp eq i32 %222, 0
  br i1 %tobool57.not, label %cx22702_writereg.exit380.cleanup_crit_edge, label %cx22702_writereg.exit380.cleanup.sink.split_crit_edge

cx22702_writereg.exit380.cleanup.sink.split_crit_edge: ; preds = %cx22702_writereg.exit380
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cx22702_writereg.exit380.cleanup_crit_edge:       ; preds = %cx22702_writereg.exit380
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %cx22702_writereg.exit380.cleanup.sink.split_crit_edge, %sw.default.cleanup.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.5, %sw.default.cleanup.sink.split_crit_edge ], [ @.str.8, %cx22702_writereg.exit380.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %sw.default.cleanup.sink.split_crit_edge ], [ 0, %cx22702_writereg.exit380.cleanup.sink.split_crit_edge ]
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink, ptr noundef nonnull @.str.6) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cx22702_writereg.exit380.cleanup_crit_edge, %sw.default.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default.cleanup_crit_edge ], [ 0, %cx22702_writereg.exit380.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cx22702_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22702_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %c) #0 align 64 {
entry:
  %reg.addr.i134.i = alloca i8, align 1
  %data.i135.i = alloca i8, align 1
  %msg.i136.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i113.i = alloca i8, align 1
  %data.i114.i = alloca i8, align 1
  %msg.i115.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i92.i = alloca i8, align 1
  %data.i93.i = alloca i8, align 1
  %msg.i94.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %2 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 12, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22702_state, ptr %1, i32 0, i32 1
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv4.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data.i, ptr %buf7.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i, !prof !85

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %22 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i, i32 noundef %call.i) #10
  br label %cx22702_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.i, align 1
  %phi.bo = and i8 %24, 1
  %phi.cast = zext i8 %phi.bo to i32
  br label %cx22702_readreg.exit

cx22702_readreg.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %25 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i, ptr %inversion, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %26 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #6
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %data.i.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %28 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i.i = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i.i, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %38 = load i8, ptr %31, align 1
  %conv4.i.i = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv4.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %40 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %41 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len6.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %42 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %data.i.i, ptr %buf7.i.i, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %cx22702_readreg.exit.i, label %cx22702_readreg.exit.thread.i, !prof !85

cx22702_readreg.exit.thread.i:                    ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reg.addr.i.i, align 1
  %conv10.i.i = zext i8 %46 to i32
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i.i, i32 noundef %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  br label %cx22702_get_tps.exit

cx22702_readreg.exit.i:                           ; preds = %cx22702_readreg.exit
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #6
  %49 = and i8 %48, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i = icmp eq i8 %49, 0
  br i1 %tobool.not.i, label %cx22702_readreg.exit.i.cx22702_get_tps.exit_crit_edge, label %if.end.i4

cx22702_readreg.exit.i.cx22702_get_tps.exit_crit_edge: ; preds = %cx22702_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_get_tps.exit

if.end.i4:                                        ; preds = %cx22702_readreg.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i92.i) #6
  %50 = ptrtoint ptr %reg.addr.i92.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %reg.addr.i92.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i93.i) #6
  %51 = ptrtoint ptr %data.i93.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %data.i93.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i94.i) #6
  %52 = getelementptr inbounds i8, ptr %msg.i94.i, i32 4
  %53 = call ptr @memset(ptr %52, i32 255, i32 16)
  %54 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  %conv.i96.i = zext i8 %57 to i16
  %58 = ptrtoint ptr %msg.i94.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i96.i, ptr %msg.i94.i, align 4
  %flags.i97.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i97.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i97.i, align 2
  %60 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %52, align 4
  %buf.i99.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 0, i32 3
  %61 = ptrtoint ptr %buf.i99.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %reg.addr.i92.i, ptr %buf.i99.i, align 4
  %arrayinit.element.i100.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 1
  %62 = load i8, ptr %55, align 1
  %conv4.i101.i = zext i8 %62 to i16
  %63 = ptrtoint ptr %arrayinit.element.i100.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv4.i101.i, ptr %arrayinit.element.i100.i, align 4
  %flags5.i102.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 1, i32 1
  %64 = ptrtoint ptr %flags5.i102.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %flags5.i102.i, align 2
  %len6.i103.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 1, i32 2
  %65 = ptrtoint ptr %len6.i103.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %len6.i103.i, align 4
  %buf7.i104.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94.i, i32 1, i32 3
  %66 = ptrtoint ptr %buf7.i104.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %data.i93.i, ptr %buf7.i104.i, align 4
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %call.i105.i = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i94.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i105.i)
  %cmp.not.i106.i = icmp eq i32 %call.i105.i, 2
  br i1 %cmp.not.i106.i, label %cx22702_readreg.exit112.i, label %cx22702_readreg.exit112.thread.i, !prof !85

cx22702_readreg.exit112.thread.i:                 ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %reg.addr.i92.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %reg.addr.i92.i, align 1
  %conv10.i107.i = zext i8 %70 to i32
  %call11.i108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i107.i, i32 noundef %call.i105.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i94.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i93.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i92.i) #6
  br label %sw.epilog.sink.split.i

cx22702_readreg.exit112.i:                        ; preds = %if.end.i4
  %71 = ptrtoint ptr %data.i93.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %data.i93.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i94.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i93.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i92.i) #6
  %conv2.i = zext i8 %72 to i32
  %and3.i = lshr i32 %conv2.i, 3
  %73 = and i32 %and3.i, 3
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %73, label %cx22702_readreg.exit112.i.sw.epilog.i_crit_edge [
    i32 0, label %cx22702_readreg.exit112.i.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb4.i
    i32 2, label %sw.bb6.i
  ]

cx22702_readreg.exit112.i.sw.epilog.sink.split.i_crit_edge: ; preds = %cx22702_readreg.exit112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

cx22702_readreg.exit112.i.sw.epilog.i_crit_edge:  ; preds = %cx22702_readreg.exit112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %cx22702_readreg.exit112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb6.i:                                         ; preds = %cx22702_readreg.exit112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb6.i, %sw.bb4.i, %cx22702_readreg.exit112.i.sw.epilog.sink.split.i_crit_edge, %cx22702_readreg.exit112.thread.i
  %.sink.i = phi i32 [ 3, %sw.bb6.i ], [ 1, %sw.bb4.i ], [ 0, %cx22702_readreg.exit112.thread.i ], [ %73, %cx22702_readreg.exit112.i.sw.epilog.sink.split.i_crit_edge ]
  %conv2161.ph.i = phi i32 [ %conv2.i, %sw.bb6.i ], [ %conv2.i, %sw.bb4.i ], [ 0, %cx22702_readreg.exit112.thread.i ], [ %conv2.i, %cx22702_readreg.exit112.i.sw.epilog.sink.split.i_crit_edge ]
  %modulation7.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %75 = ptrtoint ptr %modulation7.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %.sink.i, ptr %modulation7.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %cx22702_readreg.exit112.i.sw.epilog.i_crit_edge
  %conv2161.i = phi i32 [ %conv2.i, %cx22702_readreg.exit112.i.sw.epilog.i_crit_edge ], [ %conv2161.ph.i, %sw.epilog.sink.split.i ]
  %and9.i = and i32 %conv2161.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and9.i)
  %switch = icmp ult i32 %and9.i, 4
  br i1 %switch, label %sw.epilog17.sink.split.i, label %sw.epilog.i.sw.epilog17.i_crit_edge

sw.epilog.i.sw.epilog17.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog17.i

sw.epilog17.sink.split.i:                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %hierarchy16.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %76 = ptrtoint ptr %hierarchy16.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and9.i, ptr %hierarchy16.i, align 4
  br label %sw.epilog17.i

sw.epilog17.i:                                    ; preds = %sw.epilog17.sink.split.i, %sw.epilog.i.sw.epilog17.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i113.i) #6
  %77 = ptrtoint ptr %reg.addr.i113.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 2, ptr %reg.addr.i113.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i114.i) #6
  %78 = ptrtoint ptr %data.i114.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -1, ptr %data.i114.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i115.i) #6
  %79 = getelementptr inbounds i8, ptr %msg.i115.i, i32 4
  %80 = call ptr @memset(ptr %79, i32 255, i32 16)
  %81 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  %conv.i117.i = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i115.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i117.i, ptr %msg.i115.i, align 4
  %flags.i118.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i118.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i118.i, align 2
  %87 = ptrtoint ptr %79 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %79, align 4
  %buf.i120.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 0, i32 3
  %88 = ptrtoint ptr %buf.i120.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %reg.addr.i113.i, ptr %buf.i120.i, align 4
  %arrayinit.element.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 1
  %89 = load i8, ptr %82, align 1
  %conv4.i122.i = zext i8 %89 to i16
  %90 = ptrtoint ptr %arrayinit.element.i121.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv4.i122.i, ptr %arrayinit.element.i121.i, align 4
  %flags5.i123.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 1, i32 1
  %91 = ptrtoint ptr %flags5.i123.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %flags5.i123.i, align 2
  %len6.i124.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 1, i32 2
  %92 = ptrtoint ptr %len6.i124.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 1, ptr %len6.i124.i, align 4
  %buf7.i125.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i115.i, i32 1, i32 3
  %93 = ptrtoint ptr %buf7.i125.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %data.i114.i, ptr %buf7.i125.i, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %call.i126.i = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i115.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i126.i)
  %cmp.not.i127.i = icmp eq i32 %call.i126.i, 2
  br i1 %cmp.not.i127.i, label %cx22702_readreg.exit133.i, label %cx22702_readreg.exit133.thread.i, !prof !85

cx22702_readreg.exit133.thread.i:                 ; preds = %sw.epilog17.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %reg.addr.i113.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %reg.addr.i113.i, align 1
  %conv10.i128.i = zext i8 %97 to i32
  %call11.i129.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i128.i, i32 noundef %call.i126.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i115.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i114.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i113.i) #6
  br label %sw.epilog31.sink.split.i

cx22702_readreg.exit133.i:                        ; preds = %sw.epilog17.i
  %98 = ptrtoint ptr %data.i114.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %data.i114.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i115.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i114.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i113.i) #6
  %conv19.i = zext i8 %99 to i32
  %and20.i = lshr i32 %conv19.i, 3
  %100 = and i32 %and20.i, 7
  %101 = zext i32 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %100, label %cx22702_readreg.exit133.i.sw.epilog31.i_crit_edge [
    i32 0, label %cx22702_readreg.exit133.i.sw.epilog31.sink.split.i_crit_edge
    i32 1, label %sw.bb23.i
    i32 2, label %sw.bb25.i
    i32 3, label %sw.bb27.i
    i32 4, label %sw.bb29.i
  ]

cx22702_readreg.exit133.i.sw.epilog31.sink.split.i_crit_edge: ; preds = %cx22702_readreg.exit133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog31.sink.split.i

cx22702_readreg.exit133.i.sw.epilog31.i_crit_edge: ; preds = %cx22702_readreg.exit133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog31.i

sw.bb23.i:                                        ; preds = %cx22702_readreg.exit133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog31.sink.split.i

sw.bb25.i:                                        ; preds = %cx22702_readreg.exit133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog31.sink.split.i

sw.bb27.i:                                        ; preds = %cx22702_readreg.exit133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog31.sink.split.i

sw.bb29.i:                                        ; preds = %cx22702_readreg.exit133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog31.sink.split.i

sw.epilog31.sink.split.i:                         ; preds = %sw.bb29.i, %sw.bb27.i, %sw.bb25.i, %sw.bb23.i, %cx22702_readreg.exit133.i.sw.epilog31.sink.split.i_crit_edge, %cx22702_readreg.exit133.thread.i
  %.sink173.i = phi i32 [ 7, %sw.bb29.i ], [ 5, %sw.bb27.i ], [ 3, %sw.bb25.i ], [ 2, %sw.bb23.i ], [ 1, %cx22702_readreg.exit133.thread.i ], [ 1, %cx22702_readreg.exit133.i.sw.epilog31.sink.split.i_crit_edge ]
  %conv19166.ph.i = phi i32 [ %conv19.i, %sw.bb29.i ], [ %conv19.i, %sw.bb27.i ], [ %conv19.i, %sw.bb25.i ], [ %conv19.i, %sw.bb23.i ], [ 0, %cx22702_readreg.exit133.thread.i ], [ %conv19.i, %cx22702_readreg.exit133.i.sw.epilog31.sink.split.i_crit_edge ]
  %code_rate_HP30.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %102 = ptrtoint ptr %code_rate_HP30.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %.sink173.i, ptr %code_rate_HP30.i, align 4
  br label %sw.epilog31.i

sw.epilog31.i:                                    ; preds = %sw.epilog31.sink.split.i, %cx22702_readreg.exit133.i.sw.epilog31.i_crit_edge
  %conv19166.i = phi i32 [ %conv19.i, %cx22702_readreg.exit133.i.sw.epilog31.i_crit_edge ], [ %conv19166.ph.i, %sw.epilog31.sink.split.i ]
  %and33.i = and i32 %conv19166.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and33.i)
  %103 = icmp ult i32 %and33.i, 5
  br i1 %103, label %switch.lookup, label %sw.epilog31.i.sw.epilog43.i_crit_edge

sw.epilog31.i.sw.epilog43.i_crit_edge:            ; preds = %sw.epilog31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog43.i

switch.lookup:                                    ; preds = %sw.epilog31.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.cx22702_get_frontend, i32 0, i32 %and33.i
  %104 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %104)
  %switch.load = load i32, ptr %switch.gep, align 4
  %code_rate_LP42.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %105 = ptrtoint ptr %code_rate_LP42.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %switch.load, ptr %code_rate_LP42.i, align 4
  br label %sw.epilog43.i

sw.epilog43.i:                                    ; preds = %switch.lookup, %sw.epilog31.i.sw.epilog43.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i134.i) #6
  %106 = ptrtoint ptr %reg.addr.i134.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %reg.addr.i134.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i135.i) #6
  %107 = ptrtoint ptr %data.i135.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -1, ptr %data.i135.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i136.i) #6
  %108 = getelementptr inbounds i8, ptr %msg.i136.i, i32 4
  %109 = call ptr @memset(ptr %108, i32 255, i32 16)
  %110 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %config.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 1
  %conv.i138.i = zext i8 %113 to i16
  %114 = ptrtoint ptr %msg.i136.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i138.i, ptr %msg.i136.i, align 4
  %flags.i139.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 0, i32 1
  %115 = ptrtoint ptr %flags.i139.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags.i139.i, align 2
  %116 = ptrtoint ptr %108 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %108, align 4
  %buf.i141.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 0, i32 3
  %117 = ptrtoint ptr %buf.i141.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %reg.addr.i134.i, ptr %buf.i141.i, align 4
  %arrayinit.element.i142.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 1
  %118 = load i8, ptr %111, align 1
  %conv4.i143.i = zext i8 %118 to i16
  %119 = ptrtoint ptr %arrayinit.element.i142.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv4.i143.i, ptr %arrayinit.element.i142.i, align 4
  %flags5.i144.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 1, i32 1
  %120 = ptrtoint ptr %flags5.i144.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %flags5.i144.i, align 2
  %len6.i145.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 1, i32 2
  %121 = ptrtoint ptr %len6.i145.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 1, ptr %len6.i145.i, align 4
  %buf7.i146.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 1, i32 3
  %122 = ptrtoint ptr %buf7.i146.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %data.i135.i, ptr %buf7.i146.i, align 4
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %call.i147.i = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %msg.i136.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i147.i)
  %cmp.not.i148.i = icmp eq i32 %call.i147.i, 2
  br i1 %cmp.not.i148.i, label %cx22702_readreg.exit154.i, label %sw.epilog55.i.thread, !prof !85

sw.epilog55.i.thread:                             ; preds = %sw.epilog43.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %reg.addr.i134.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %reg.addr.i134.i, align 1
  %conv10.i149.i = zext i8 %126 to i32
  %call11.i150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i149.i, i32 noundef %call.i147.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i136.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i135.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i134.i) #6
  %guard_interval54.i8 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %127 = ptrtoint ptr %guard_interval54.i8 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %guard_interval54.i8, align 4
  br label %sw.bb58.i

cx22702_readreg.exit154.i:                        ; preds = %sw.epilog43.i
  %128 = ptrtoint ptr %data.i135.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %data.i135.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i136.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i135.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i134.i) #6
  %conv45.i = zext i8 %129 to i32
  %and46.i = lshr i32 %conv45.i, 2
  %130 = and i32 %and46.i, 3
  %guard_interval54.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %131 = ptrtoint ptr %guard_interval54.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %guard_interval54.i, align 4
  %and57.i = and i32 %conv45.i, 3
  %132 = zext i32 %and57.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %and57.i, label %cx22702_readreg.exit154.i.cx22702_get_tps.exit_crit_edge [
    i32 0, label %cx22702_readreg.exit154.i.sw.bb58.i_crit_edge
    i32 1, label %sw.bb59.i
  ]

cx22702_readreg.exit154.i.sw.bb58.i_crit_edge:    ; preds = %cx22702_readreg.exit154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb58.i

cx22702_readreg.exit154.i.cx22702_get_tps.exit_crit_edge: ; preds = %cx22702_readreg.exit154.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_get_tps.exit

sw.bb58.i:                                        ; preds = %cx22702_readreg.exit154.i.sw.bb58.i_crit_edge, %sw.epilog55.i.thread
  %transmission_mode.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %133 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %transmission_mode.i, align 4
  br label %cx22702_get_tps.exit

sw.bb59.i:                                        ; preds = %cx22702_readreg.exit154.i
  call void @__sanitizer_cov_trace_pc() #8
  %transmission_mode60.i = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %134 = ptrtoint ptr %transmission_mode60.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %transmission_mode60.i, align 4
  br label %cx22702_get_tps.exit

cx22702_get_tps.exit:                             ; preds = %sw.bb59.i, %sw.bb58.i, %cx22702_readreg.exit154.i.cx22702_get_tps.exit_crit_edge, %cx22702_readreg.exit.i.cx22702_get_tps.exit_crit_edge, %cx22702_readreg.exit.thread.i
  %retval.0.i5 = phi i32 [ -11, %cx22702_readreg.exit.i.cx22702_get_tps.exit_crit_edge ], [ 0, %cx22702_readreg.exit154.i.cx22702_get_tps.exit_crit_edge ], [ 0, %sw.bb59.i ], [ 0, %sw.bb58.i ], [ -11, %cx22702_readreg.exit.thread.i ]
  ret i32 %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22702_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %reg.addr.i30 = alloca i8, align 1
  %data.i31 = alloca i8, align 1
  %msg.i32 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22702_state, ptr %1, i32 0, i32 1
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = load i8, ptr %8, align 1
  %conv4.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data.i, ptr %buf7.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i, !prof !85

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %23 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i, i32 noundef %call.i) #10
  br label %cx22702_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i, align 1
  %phi.cast = zext i8 %25 to i32
  br label %cx22702_readreg.exit

cx22702_readreg.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i30)
  %26 = ptrtoint ptr %reg.addr.i30 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 35, ptr %reg.addr.i30, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i31) #6
  %27 = ptrtoint ptr %data.i31 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %data.i31, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i32) #6
  %28 = getelementptr inbounds i8, ptr %msg.i32, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i34 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i32 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i34, ptr %msg.i32, align 4
  %flags.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i35 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i35, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %reg.addr.i30, ptr %buf.i37, align 4
  %arrayinit.element.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1
  %38 = load i8, ptr %31, align 1
  %conv4.i39 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv4.i39, ptr %arrayinit.element.i38, align 4
  %flags5.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1, i32 1
  %40 = ptrtoint ptr %flags5.i40 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags5.i40, align 2
  %len6.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1, i32 2
  %41 = ptrtoint ptr %len6.i41 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len6.i41, align 4
  %buf7.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1, i32 3
  %42 = ptrtoint ptr %buf7.i42 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %data.i31, ptr %buf7.i42, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i43 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i32, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i43)
  %cmp.not.i44 = icmp eq i32 %call.i43, 2
  br i1 %cmp.not.i44, label %if.end.i48, label %do.end.i47, !prof !85

do.end.i47:                                       ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %reg.addr.i30 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reg.addr.i30, align 1
  %conv10.i45 = zext i8 %46 to i32
  %call11.i46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i45, i32 noundef %call.i43) #10
  br label %cx22702_readreg.exit50

if.end.i48:                                       ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %data.i31 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data.i31, align 1
  br label %cx22702_readreg.exit50

cx22702_readreg.exit50:                           ; preds = %if.end.i48, %do.end.i47
  %retval.0.i49 = phi i8 [ 0, %do.end.i47 ], [ %48, %if.end.i48 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i32) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i31) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i30)
  %49 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not = icmp eq i32 %49, 0
  br i1 %tobool.not, label %cx22702_readreg.exit50.if.end_crit_edge, label %do.end

cx22702_readreg.exit50.if.end_crit_edge:          ; preds = %cx22702_readreg.exit50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %cx22702_readreg.exit50
  call void @__sanitizer_cov_trace_pc() #8
  %conv2 = zext i8 %retval.0.i49 to i32
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %retval.0.i, i32 noundef %conv2) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %cx22702_readreg.exit50.if.end_crit_edge
  %and = and i32 %retval.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status, align 4
  %or8 = or i32 %51, 28
  store i32 %or8, ptr %status, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %and11 = and i32 %retval.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end15_crit_edge, label %if.then13

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %status, align 4
  %or14 = or i32 %53, 2
  store i32 %or14, ptr %status, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %retval.0.i49)
  %cmp = icmp ult i8 %retval.0.i49, -16
  br i1 %cmp, label %if.then18, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status, align 4
  %or19 = or i32 %55, 1
  store i32 %or19, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22702_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %reg.addr.i82 = alloca i8, align 1
  %data.i83 = alloca i8, align 1
  %msg.i84 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i61 = alloca i8, align 1
  %data.i62 = alloca i8, align 1
  %msg.i63 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i40 = alloca i8, align 1
  %data.i41 = alloca i8, align 1
  %msg.i42 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i19 = alloca i8, align 1
  %data.i20 = alloca i8, align 1
  %msg.i21 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %2 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -28, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22702_state, ptr %1, i32 0, i32 1
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv4.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data.i, ptr %buf7.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %cx22702_readreg.exit, label %cx22702_readreg.exit.thread, !prof !85

cx22702_readreg.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %22 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.else

cx22702_readreg.exit:                             ; preds = %entry
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %cx22702_readreg.exit.if.else_crit_edge, label %if.then

cx22702_readreg.exit.if.else_crit_edge:           ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %cx22702_readreg.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i19)
  %26 = ptrtoint ptr %reg.addr.i19 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -34, ptr %reg.addr.i19, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i20) #6
  %27 = ptrtoint ptr %data.i20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %data.i20, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i21) #6
  %28 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i23 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i23, ptr %msg.i21, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i24, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %reg.addr.i19, ptr %buf.i26, align 4
  %arrayinit.element.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 1
  %38 = load i8, ptr %31, align 1
  %conv4.i28 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i27 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv4.i28, ptr %arrayinit.element.i27, align 4
  %flags5.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 1, i32 1
  %40 = ptrtoint ptr %flags5.i29 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags5.i29, align 2
  %len6.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 1, i32 2
  %41 = ptrtoint ptr %len6.i30 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len6.i30, align 4
  %buf7.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 1, i32 3
  %42 = ptrtoint ptr %buf7.i31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %data.i20, ptr %buf7.i31, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i32 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i21, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i32)
  %cmp.not.i33 = icmp eq i32 %call.i32, 2
  br i1 %cmp.not.i33, label %if.end.i37, label %do.end.i36, !prof !85

do.end.i36:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %reg.addr.i19 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reg.addr.i19, align 1
  %conv10.i34 = zext i8 %46 to i32
  %call11.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i34, i32 noundef %call.i32) #10
  br label %cx22702_readreg.exit39

if.end.i37:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %data.i20 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data.i20, align 1
  %phi.bo107 = and i8 %48, 127
  %phi.cast108 = zext i8 %phi.bo107 to i32
  %phi.bo109 = shl nuw nsw i32 %phi.cast108, 7
  br label %cx22702_readreg.exit39

cx22702_readreg.exit39:                           ; preds = %if.end.i37, %do.end.i36
  %retval.0.i38 = phi i32 [ 0, %do.end.i36 ], [ %phi.bo109, %if.end.i37 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i21) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i20) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i19)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i40)
  %49 = ptrtoint ptr %reg.addr.i40 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -33, ptr %reg.addr.i40, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i41) #6
  %50 = ptrtoint ptr %data.i41 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %data.i41, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i42) #6
  %51 = getelementptr inbounds i8, ptr %msg.i42, i32 4
  %52 = call ptr @memset(ptr %51, i32 255, i32 16)
  %53 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv.i44 = zext i8 %56 to i16
  %57 = ptrtoint ptr %msg.i42 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i44, ptr %msg.i42, align 4
  %flags.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i45 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i45, align 2
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %51, align 4
  %buf.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 3
  %60 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %reg.addr.i40, ptr %buf.i47, align 4
  %arrayinit.element.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1
  %61 = load i8, ptr %54, align 1
  %conv4.i49 = zext i8 %61 to i16
  %62 = ptrtoint ptr %arrayinit.element.i48 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv4.i49, ptr %arrayinit.element.i48, align 4
  %flags5.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1, i32 1
  %63 = ptrtoint ptr %flags5.i50 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %flags5.i50, align 2
  %len6.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1, i32 2
  %64 = ptrtoint ptr %len6.i51 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %len6.i51, align 4
  %buf7.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1, i32 3
  %65 = ptrtoint ptr %buf7.i52 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %data.i41, ptr %buf7.i52, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call.i53 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i42, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i53)
  %cmp.not.i54 = icmp eq i32 %call.i53, 2
  br i1 %cmp.not.i54, label %if.end.i58, label %do.end.i57, !prof !85

do.end.i57:                                       ; preds = %cx22702_readreg.exit39
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %reg.addr.i40 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %reg.addr.i40, align 1
  %conv10.i55 = zext i8 %69 to i32
  %call11.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i55, i32 noundef %call.i53) #10
  br label %cx22702_readreg.exit60

if.end.i58:                                       ; preds = %cx22702_readreg.exit39
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %data.i41 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data.i41, align 1
  %phi.bo110 = and i8 %71, 127
  %phi.cast111 = zext i8 %phi.bo110 to i32
  br label %cx22702_readreg.exit60

cx22702_readreg.exit60:                           ; preds = %if.end.i58, %do.end.i57
  %retval.0.i59 = phi i32 [ 0, %do.end.i57 ], [ %phi.cast111, %if.end.i58 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i42) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i41) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i40)
  %or = or i32 %retval.0.i59, %retval.0.i38
  br label %if.end

if.else:                                          ; preds = %cx22702_readreg.exit.if.else_crit_edge, %cx22702_readreg.exit.thread
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i61)
  %72 = ptrtoint ptr %reg.addr.i61 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -34, ptr %reg.addr.i61, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i62) #6
  %73 = ptrtoint ptr %data.i62 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -1, ptr %data.i62, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i63) #6
  %74 = getelementptr inbounds i8, ptr %msg.i63, i32 4
  %75 = call ptr @memset(ptr %74, i32 255, i32 16)
  %76 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %config.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1
  %conv.i65 = zext i8 %79 to i16
  %80 = ptrtoint ptr %msg.i63 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i65, ptr %msg.i63, align 4
  %flags.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i66 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i66, align 2
  %82 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %74, align 4
  %buf.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 3
  %83 = ptrtoint ptr %buf.i68 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %reg.addr.i61, ptr %buf.i68, align 4
  %arrayinit.element.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1
  %84 = load i8, ptr %77, align 1
  %conv4.i70 = zext i8 %84 to i16
  %85 = ptrtoint ptr %arrayinit.element.i69 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv4.i70, ptr %arrayinit.element.i69, align 4
  %flags5.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1, i32 1
  %86 = ptrtoint ptr %flags5.i71 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 1, ptr %flags5.i71, align 2
  %len6.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1, i32 2
  %87 = ptrtoint ptr %len6.i72 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %len6.i72, align 4
  %buf7.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1, i32 3
  %88 = ptrtoint ptr %buf7.i73 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %data.i62, ptr %buf7.i73, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %call.i74 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %msg.i63, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i74)
  %cmp.not.i75 = icmp eq i32 %call.i74, 2
  br i1 %cmp.not.i75, label %if.end.i79, label %do.end.i78, !prof !85

do.end.i78:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %reg.addr.i61 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %reg.addr.i61, align 1
  %conv10.i76 = zext i8 %92 to i32
  %call11.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i76, i32 noundef %call.i74) #10
  br label %cx22702_readreg.exit81

if.end.i79:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %data.i62 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %data.i62, align 1
  %phi.bo = and i8 %94, 127
  %phi.cast = zext i8 %phi.bo to i32
  %phi.bo105 = shl nuw nsw i32 %phi.cast, 7
  br label %cx22702_readreg.exit81

cx22702_readreg.exit81:                           ; preds = %if.end.i79, %do.end.i78
  %retval.0.i80 = phi i32 [ 0, %do.end.i78 ], [ %phi.bo105, %if.end.i79 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i63) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i62) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i61)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i82)
  %95 = ptrtoint ptr %reg.addr.i82 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -33, ptr %reg.addr.i82, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i83) #6
  %96 = ptrtoint ptr %data.i83 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -1, ptr %data.i83, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i84) #6
  %97 = getelementptr inbounds i8, ptr %msg.i84, i32 4
  %98 = call ptr @memset(ptr %97, i32 255, i32 16)
  %99 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %config.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 1
  %conv.i86 = zext i8 %102 to i16
  %103 = ptrtoint ptr %msg.i84 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv.i86, ptr %msg.i84, align 4
  %flags.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 1
  %104 = ptrtoint ptr %flags.i87 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i87, align 2
  %105 = ptrtoint ptr %97 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 1, ptr %97, align 4
  %buf.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 3
  %106 = ptrtoint ptr %buf.i89 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %reg.addr.i82, ptr %buf.i89, align 4
  %arrayinit.element.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1
  %107 = load i8, ptr %100, align 1
  %conv4.i91 = zext i8 %107 to i16
  %108 = ptrtoint ptr %arrayinit.element.i90 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv4.i91, ptr %arrayinit.element.i90, align 4
  %flags5.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1, i32 1
  %109 = ptrtoint ptr %flags5.i92 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 1, ptr %flags5.i92, align 2
  %len6.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1, i32 2
  %110 = ptrtoint ptr %len6.i93 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 1, ptr %len6.i93, align 4
  %buf7.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1, i32 3
  %111 = ptrtoint ptr %buf7.i94 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %data.i83, ptr %buf7.i94, align 4
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %call.i95 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i84, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i95)
  %cmp.not.i96 = icmp eq i32 %call.i95, 2
  br i1 %cmp.not.i96, label %if.end.i100, label %do.end.i99, !prof !85

do.end.i99:                                       ; preds = %cx22702_readreg.exit81
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %reg.addr.i82 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %reg.addr.i82, align 1
  %conv10.i97 = zext i8 %115 to i32
  %call11.i98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i97, i32 noundef %call.i95) #10
  br label %cx22702_readreg.exit102

if.end.i100:                                      ; preds = %cx22702_readreg.exit81
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %data.i83 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %data.i83, align 1
  %phi.cast106 = zext i8 %117 to i32
  br label %cx22702_readreg.exit102

cx22702_readreg.exit102:                          ; preds = %if.end.i100, %do.end.i99
  %retval.0.i101 = phi i32 [ 0, %do.end.i99 ], [ %phi.cast106, %if.end.i100 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i84) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i83) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i82)
  %or13 = or i32 %retval.0.i101, %retval.0.i80
  br label %if.end

if.end:                                           ; preds = %cx22702_readreg.exit102, %cx22702_readreg.exit60
  %storemerge = phi i32 [ %or13, %cx22702_readreg.exit102 ], [ %or, %cx22702_readreg.exit60 ]
  %118 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %storemerge, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22702_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %2 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 35, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22702_state, ptr %1, i32 0, i32 1
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv4.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data.i, ptr %buf7.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %cx22702_readreg.exit, label %cx22702_readreg.exit.thread, !prof !85

cx22702_readreg.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %22 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.else

cx22702_readreg.exit:                             ; preds = %entry
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool.not = icmp sgt i8 %24, -1
  br i1 %tobool.not, label %cx22702_readreg.exit.if.else_crit_edge, label %cx22702_readreg.exit.if.end_crit_edge

cx22702_readreg.exit.if.end_crit_edge:            ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cx22702_readreg.exit.if.else_crit_edge:           ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %cx22702_readreg.exit.if.else_crit_edge, %cx22702_readreg.exit.thread
  %retval.0.i17 = phi i8 [ 0, %cx22702_readreg.exit.thread ], [ %24, %cx22702_readreg.exit.if.else_crit_edge ]
  %and2 = xor i8 %retval.0.i17, 127
  %conv4 = zext i8 %and2 to i32
  %shl = shl nuw nsw i32 %conv4, 9
  %shl6 = shl nuw nsw i32 %conv4, 2
  %or = or i32 %shl, %shl6
  %25 = lshr i32 %conv4, 5
  %or8 = or i32 %or, %25
  %conv9 = trunc i32 %or8 to i16
  br label %if.end

if.end:                                           ; preds = %if.else, %cx22702_readreg.exit.if.end_crit_edge
  %storemerge = phi i16 [ %conv9, %if.else ], [ 0, %cx22702_readreg.exit.if.end_crit_edge ]
  %26 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge, ptr %signal_strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22702_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %reg.addr.i85 = alloca i8, align 1
  %data.i86 = alloca i8, align 1
  %msg.i87 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i64 = alloca i8, align 1
  %data.i65 = alloca i8, align 1
  %msg.i66 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i43 = alloca i8, align 1
  %data.i44 = alloca i8, align 1
  %msg.i45 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i22 = alloca i8, align 1
  %data.i23 = alloca i8, align 1
  %msg.i24 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %2 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -28, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22702_state, ptr %1, i32 0, i32 1
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv4.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data.i, ptr %buf7.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %cx22702_readreg.exit, label %cx22702_readreg.exit.thread, !prof !85

cx22702_readreg.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %22 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.else

cx22702_readreg.exit:                             ; preds = %entry
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %25 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not = icmp eq i8 %25, 0
  br i1 %tobool.not, label %cx22702_readreg.exit.if.else_crit_edge, label %if.then

cx22702_readreg.exit.if.else_crit_edge:           ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %cx22702_readreg.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i22)
  %26 = ptrtoint ptr %reg.addr.i22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -34, ptr %reg.addr.i22, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i23) #6
  %27 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %data.i23, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i24) #6
  %28 = getelementptr inbounds i8, ptr %msg.i24, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i26 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i26, ptr %msg.i24, align 4
  %flags.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i27 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i27, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %reg.addr.i22, ptr %buf.i29, align 4
  %arrayinit.element.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1
  %38 = load i8, ptr %31, align 1
  %conv4.i31 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i30 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv4.i31, ptr %arrayinit.element.i30, align 4
  %flags5.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 1
  %40 = ptrtoint ptr %flags5.i32 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags5.i32, align 2
  %len6.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 2
  %41 = ptrtoint ptr %len6.i33 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %len6.i33, align 4
  %buf7.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 1, i32 3
  %42 = ptrtoint ptr %buf7.i34 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %data.i23, ptr %buf7.i34, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i35 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i24, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i35)
  %cmp.not.i36 = icmp eq i32 %call.i35, 2
  br i1 %cmp.not.i36, label %if.end.i40, label %do.end.i39, !prof !85

do.end.i39:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %reg.addr.i22 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reg.addr.i22, align 1
  %conv10.i37 = zext i8 %46 to i32
  %call11.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i37, i32 noundef %call.i35) #10
  br label %cx22702_readreg.exit42

if.end.i40:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %data.i23 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %data.i23, align 1
  %phi.bo108 = and i8 %48, 127
  br label %cx22702_readreg.exit42

cx22702_readreg.exit42:                           ; preds = %if.end.i40, %do.end.i39
  %retval.0.i41 = phi i8 [ 0, %do.end.i39 ], [ %phi.bo108, %if.end.i40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i24) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i23) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i22)
  %and3 = zext i8 %retval.0.i41 to i16
  %shl = shl nuw nsw i16 %and3, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i43)
  %49 = ptrtoint ptr %reg.addr.i43 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -33, ptr %reg.addr.i43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i44) #6
  %50 = ptrtoint ptr %data.i44 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %data.i44, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i45) #6
  %51 = getelementptr inbounds i8, ptr %msg.i45, i32 4
  %52 = call ptr @memset(ptr %51, i32 255, i32 16)
  %53 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv.i47 = zext i8 %56 to i16
  %57 = ptrtoint ptr %msg.i45 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i47, ptr %msg.i45, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 1
  %58 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i48, align 2
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %51, align 4
  %buf.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 0, i32 3
  %60 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %reg.addr.i43, ptr %buf.i50, align 4
  %arrayinit.element.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1
  %61 = load i8, ptr %54, align 1
  %conv4.i52 = zext i8 %61 to i16
  %62 = ptrtoint ptr %arrayinit.element.i51 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv4.i52, ptr %arrayinit.element.i51, align 4
  %flags5.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 1
  %63 = ptrtoint ptr %flags5.i53 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %flags5.i53, align 2
  %len6.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 2
  %64 = ptrtoint ptr %len6.i54 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 1, ptr %len6.i54, align 4
  %buf7.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45, i32 1, i32 3
  %65 = ptrtoint ptr %buf7.i55 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %data.i44, ptr %buf7.i55, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call.i56 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i45, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i56)
  %cmp.not.i57 = icmp eq i32 %call.i56, 2
  br i1 %cmp.not.i57, label %if.end.i61, label %do.end.i60, !prof !85

do.end.i60:                                       ; preds = %cx22702_readreg.exit42
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %reg.addr.i43 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %reg.addr.i43, align 1
  %conv10.i58 = zext i8 %69 to i32
  %call11.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i58, i32 noundef %call.i56) #10
  br label %cx22702_readreg.exit63

if.end.i61:                                       ; preds = %cx22702_readreg.exit42
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %data.i44 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data.i44, align 1
  %phi.bo109 = and i8 %71, 127
  br label %cx22702_readreg.exit63

cx22702_readreg.exit63:                           ; preds = %if.end.i61, %do.end.i60
  %retval.0.i62 = phi i8 [ 0, %do.end.i60 ], [ %phi.bo109, %if.end.i61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i45) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i44) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i43)
  br label %if.end

if.else:                                          ; preds = %cx22702_readreg.exit.if.else_crit_edge, %cx22702_readreg.exit.thread
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i64)
  %72 = ptrtoint ptr %reg.addr.i64 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -34, ptr %reg.addr.i64, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i65) #6
  %73 = ptrtoint ptr %data.i65 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -1, ptr %data.i65, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i66) #6
  %74 = getelementptr inbounds i8, ptr %msg.i66, i32 4
  %75 = call ptr @memset(ptr %74, i32 255, i32 16)
  %76 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %config.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1
  %conv.i68 = zext i8 %79 to i16
  %80 = ptrtoint ptr %msg.i66 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i68, ptr %msg.i66, align 4
  %flags.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i69, align 2
  %82 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %74, align 4
  %buf.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 3
  %83 = ptrtoint ptr %buf.i71 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %reg.addr.i64, ptr %buf.i71, align 4
  %arrayinit.element.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 1
  %84 = load i8, ptr %77, align 1
  %conv4.i73 = zext i8 %84 to i16
  %85 = ptrtoint ptr %arrayinit.element.i72 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv4.i73, ptr %arrayinit.element.i72, align 4
  %flags5.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 1, i32 1
  %86 = ptrtoint ptr %flags5.i74 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 1, ptr %flags5.i74, align 2
  %len6.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 1, i32 2
  %87 = ptrtoint ptr %len6.i75 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %len6.i75, align 4
  %buf7.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 1, i32 3
  %88 = ptrtoint ptr %buf7.i76 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %data.i65, ptr %buf7.i76, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %call.i77 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %msg.i66, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i77)
  %cmp.not.i78 = icmp eq i32 %call.i77, 2
  br i1 %cmp.not.i78, label %if.end.i82, label %do.end.i81, !prof !85

do.end.i81:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %reg.addr.i64 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %reg.addr.i64, align 1
  %conv10.i79 = zext i8 %92 to i32
  %call11.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i79, i32 noundef %call.i77) #10
  br label %cx22702_readreg.exit84

if.end.i82:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %data.i65 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %data.i65, align 1
  %phi.bo = and i8 %94, 127
  br label %cx22702_readreg.exit84

cx22702_readreg.exit84:                           ; preds = %if.end.i82, %do.end.i81
  %retval.0.i83 = phi i8 [ 0, %do.end.i81 ], [ %phi.bo, %if.end.i82 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i66) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i65) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i64)
  %and10 = zext i8 %retval.0.i83 to i16
  %shl11 = shl nuw nsw i16 %and10, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i85)
  %95 = ptrtoint ptr %reg.addr.i85 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -33, ptr %reg.addr.i85, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i86) #6
  %96 = ptrtoint ptr %data.i86 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 -1, ptr %data.i86, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i87) #6
  %97 = getelementptr inbounds i8, ptr %msg.i87, i32 4
  %98 = call ptr @memset(ptr %97, i32 255, i32 16)
  %99 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %config.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 1
  %conv.i89 = zext i8 %102 to i16
  %103 = ptrtoint ptr %msg.i87 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv.i89, ptr %msg.i87, align 4
  %flags.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87, i32 0, i32 1
  %104 = ptrtoint ptr %flags.i90 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i90, align 2
  %105 = ptrtoint ptr %97 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 1, ptr %97, align 4
  %buf.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87, i32 0, i32 3
  %106 = ptrtoint ptr %buf.i92 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %reg.addr.i85, ptr %buf.i92, align 4
  %arrayinit.element.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87, i32 1
  %107 = load i8, ptr %100, align 1
  %conv4.i94 = zext i8 %107 to i16
  %108 = ptrtoint ptr %arrayinit.element.i93 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv4.i94, ptr %arrayinit.element.i93, align 4
  %flags5.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87, i32 1, i32 1
  %109 = ptrtoint ptr %flags5.i95 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 1, ptr %flags5.i95, align 2
  %len6.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87, i32 1, i32 2
  %110 = ptrtoint ptr %len6.i96 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 1, ptr %len6.i96, align 4
  %buf7.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i87, i32 1, i32 3
  %111 = ptrtoint ptr %buf7.i97 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %data.i86, ptr %buf7.i97, align 4
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %call.i98 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i87, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i98)
  %cmp.not.i99 = icmp eq i32 %call.i98, 2
  br i1 %cmp.not.i99, label %if.end.i103, label %do.end.i102, !prof !85

do.end.i102:                                      ; preds = %cx22702_readreg.exit84
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %reg.addr.i85 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %reg.addr.i85, align 1
  %conv10.i100 = zext i8 %115 to i32
  %call11.i101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i100, i32 noundef %call.i98) #10
  br label %cx22702_readreg.exit105

if.end.i103:                                      ; preds = %cx22702_readreg.exit84
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %data.i86 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %data.i86, align 1
  br label %cx22702_readreg.exit105

cx22702_readreg.exit105:                          ; preds = %if.end.i103, %do.end.i102
  %retval.0.i104 = phi i8 [ 0, %do.end.i102 ], [ %117, %if.end.i103 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i87) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i86) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i85)
  br label %if.end

if.end:                                           ; preds = %cx22702_readreg.exit105, %cx22702_readreg.exit63
  %retval.0.i104.sink = phi i8 [ %retval.0.i104, %cx22702_readreg.exit105 ], [ %retval.0.i62, %cx22702_readreg.exit63 ]
  %shl11.sink = phi i16 [ %shl11, %cx22702_readreg.exit105 ], [ %shl, %cx22702_readreg.exit63 ]
  %conv13 = zext i8 %retval.0.i104.sink to i16
  %or14 = or i16 %shl11.sink, %conv13
  %neg = xor i16 %or14, -1
  %118 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %neg, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22702_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %2 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -29, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %data.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22702_state, ptr %1, i32 0, i32 1
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv4.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data.i, ptr %buf7.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i, !prof !85

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %22 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i, i32 noundef %call.i) #10
  br label %cx22702_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data.i, align 1
  br label %cx22702_readreg.exit

cx22702_readreg.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i8 [ 0, %do.end.i ], [ %24, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %prevUCBlocks = getelementptr inbounds %struct.cx22702_state, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %prevUCBlocks to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %prevUCBlocks, align 4
  %conv = zext i8 %26 to i32
  %conv1 = zext i8 %retval.0.i to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %retval.0.i)
  %cmp = icmp ult i8 %26, %retval.0.i
  %sub9 = sub nsw i32 %conv, %conv1
  %sub = sub nsw i32 %conv1, %conv
  %storemerge = select i1 %cmp, i32 %sub, i32 %sub9
  %27 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %storemerge, ptr %ucblocks, align 4
  %28 = ptrtoint ptr %prevUCBlocks to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %retval.0.i, ptr %prevUCBlocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx22702_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i13 = alloca [2 x i8], align 1
  %msg.i14 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %enable) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 13, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #6
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %data.i, align 1, !annotation !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx22702_state, ptr %1, i32 0, i32 1
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = load i8, ptr %8, align 1
  %conv4.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data.i, ptr %buf7.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i, !prof !85

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %23 to i32
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv10.i, i32 noundef %call.i) #10
  br label %cx22702_readreg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i, align 1
  %phi.bo = and i8 %25, -2
  br label %cx22702_readreg.exit

cx22702_readreg.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i8 [ 0, %do.end.i ], [ %phi.bo, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool2.not = icmp eq i32 %enable, 0
  %masksel = zext i1 %tobool2.not to i8
  %val.0 = or i8 %retval.0.i, %masksel
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i13) #6
  %26 = getelementptr inbounds [2 x i8], ptr %buf.i13, i32 0, i32 1
  %27 = ptrtoint ptr %buf.i13 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 13, ptr %buf.i13, align 1
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %val.0, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14) #6
  %29 = getelementptr inbounds i8, ptr %msg.i14, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 196607, ptr %29, align 4
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv.i16 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i16, ptr %msg.i14, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i17, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %37 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i13, ptr %buf1.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i19 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i14, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i19)
  %cmp.not.i20 = icmp eq i32 %call.i19, 1
  br i1 %cmp.not.i20, label %cx22702_readreg.exit.cx22702_writereg.exit_crit_edge, label %do.end.i21, !prof !85

cx22702_readreg.exit.cx22702_writereg.exit_crit_edge: ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cx22702_writereg.exit

do.end.i21:                                       ; preds = %cx22702_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = zext i8 %val.0 to i32
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 13, i32 noundef %conv5.i, i32 noundef %call.i19) #10
  br label %cx22702_writereg.exit

cx22702_writereg.exit:                            ; preds = %do.end.i21, %cx22702_readreg.exit.cx22702_writereg.exit_crit_edge
  %retval.0.i22 = phi i32 [ -1, %do.end.i21 ], [ 0, %cx22702_readreg.exit.cx22702_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i13) #6
  ret i32 %retval.0.i22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 40, i32 1}
!5 = !{ptr @__ksymtab_cx22702_attach, !6, !"__ksymtab_cx22702_attach", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 607, i32 1}
!7 = !{ptr @__UNIQUE_ID_description292, !8, !"__UNIQUE_ID_description292", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 639, i32 1}
!9 = !{ptr @__UNIQUE_ID_author293, !10, !"__UNIQUE_ID_author293", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 640, i32 1}
!11 = !{ptr @__UNIQUE_ID_file294, !12, !"__UNIQUE_ID_file294", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 641, i32 1}
!13 = !{ptr @__UNIQUE_ID_license295, !12, !"__UNIQUE_ID_license295", i1 false, i1 false}
!14 = !{ptr @debug, !15, !"debug", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 38, i32 12}
!16 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 107, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cx22702_readreg._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @cx22702_readreg._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @cx22702_ops, !24, !"cx22702_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 609, i32 38}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 84, i32 3}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cx22702_writereg._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @cx22702_writereg._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @init_tab, !31, !"init_tab", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 45, i32 17}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 278, i32 3}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cx22702_set_tps._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cx22702_set_tps._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 302, i32 3}
!39 = !{ptr @cx22702_set_tps._entry.7, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cx22702_set_tps._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 318, i32 3}
!43 = !{ptr @cx22702_set_tps._entry.10, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cx22702_set_tps._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 334, i32 3}
!47 = !{ptr @cx22702_set_tps._entry.13, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cx22702_set_tps._entry_ptr.15, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 357, i32 3}
!51 = !{ptr @cx22702_set_tps._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cx22702_set_tps._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 377, i32 3}
!55 = !{ptr @cx22702_set_tps._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @cx22702_set_tps._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 396, i32 3}
!59 = !{ptr @cx22702_set_tps._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cx22702_set_tps._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 406, i32 3}
!63 = !{ptr @cx22702_set_tps._entry.25, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cx22702_set_tps._entry_ptr.27, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 454, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cx22702_read_status._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @cx22702_read_status._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/cx22702.c", i32 241, i32 2}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cx22702_i2c_gate_ctrl._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @cx22702_i2c_gate_ctrl._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{!"branch_weights", i32 2000, i32 1}
