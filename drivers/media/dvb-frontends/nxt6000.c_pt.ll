; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/nxt6000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/nxt6000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nxt6000_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_nxt6000_attach\09\09\09\09"
module asm "\09.long\09__crc_nxt6000_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nxt6000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22nxt6000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_nxt6000_attach:\09\09\09\09\09"
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
%struct.nxt6000_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.nxt6000_config = type { i8, i8 }

@nxt6000_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"NxtWave NXT6000 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 863250000, i32 62500, i32 0, i32 0, i32 9360000, i32 4000, i32 1780734 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @nxt6000_release, ptr null, ptr @nxt6000_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nxt6000_set_frontend, ptr @nxt6000_fe_get_tune_settings, ptr null, ptr @nxt6000_read_status, ptr @nxt6000_read_ber, ptr @nxt6000_read_signal_strength, ptr @nxt6000_read_snr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nxt6000_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [14 x i8] c"nxt6000.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"nxt6000.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"nxt6000.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [61 x i8] c"nxt6000.description=NxtWave NXT6000 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [32 x i8] c"nxt6000.author=Florian Schirmer\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"nxt6000.file=drivers/media/dvb-frontends/nxt6000\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"nxt6000.license=GPL\00", section ".modinfo", align 1
@__kstrtab_nxt6000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_nxt6000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_nxt6000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nxt6000_attach to i32), ptr @__kstrtab_nxt6000_attach, ptr @__kstrtabns_nxt6000_attach }, section "___ksymtab+nxt6000_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nxt6000_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017nxt6000: %s: nxt6000: nxt6000_read error (reg: 0x%02X, ret: %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nxt6000_readreg\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/nxt6000.c\00", [58 x i8] zeroinitializer }, align 32
@nxt6000_readreg._entry_ptr = internal global ptr @nxt6000_readreg._entry, section ".printk_index", align 4
@nxt6000_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\017nxt6000: %s: nxt6000: nxt6000_write error (reg: 0x%02X, data: 0x%02X, ret: %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nxt6000_writereg\00", [47 x i8] zeroinitializer }, align 32
@nxt6000_writereg._entry_ptr = internal global ptr @nxt6000_writereg._entry, section ".printk_index", align 4
@nxt6000_dump_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016nxt6000: NXT6000 status:\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nxt6000_dump_status\00", [44 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr = internal global ptr @nxt6000_dump_status._entry, section ".printk_index", align 4
@nxt6000_dump_status._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01c DATA DESCR LOCK: %d,\00", [40 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.9 = internal global ptr @nxt6000_dump_status._entry.7, section ".printk_index", align 4
@nxt6000_dump_status._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\01c DATA SYNC LOCK: %d,\00", [41 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.12 = internal global ptr @nxt6000_dump_status._entry.10, section ".printk_index", align 4
@nxt6000_dump_status._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01c VITERBI LOCK: %d,\00", [43 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.15 = internal global ptr @nxt6000_dump_status._entry.13, section ".printk_index", align 4
@nxt6000_dump_status._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01c VITERBI CODERATE: 1/2,\00", [38 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.18 = internal global ptr @nxt6000_dump_status._entry.16, section ".printk_index", align 4
@nxt6000_dump_status._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01c VITERBI CODERATE: 2/3,\00", [38 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.21 = internal global ptr @nxt6000_dump_status._entry.19, section ".printk_index", align 4
@nxt6000_dump_status._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01c VITERBI CODERATE: 3/4,\00", [38 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.24 = internal global ptr @nxt6000_dump_status._entry.22, section ".printk_index", align 4
@nxt6000_dump_status._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01c VITERBI CODERATE: 5/6,\00", [38 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.27 = internal global ptr @nxt6000_dump_status._entry.25, section ".printk_index", align 4
@nxt6000_dump_status._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.6, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\01c VITERBI CODERATE: 7/8,\00", [38 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.30 = internal global ptr @nxt6000_dump_status._entry.28, section ".printk_index", align 4
@nxt6000_dump_status._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.6, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\01c VITERBI CODERATE: Reserved,\00", [33 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.33 = internal global ptr @nxt6000_dump_status._entry.31, section ".printk_index", align 4
@nxt6000_dump_status._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.6, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\01c CHCTrack: %d,\00", [47 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.36 = internal global ptr @nxt6000_dump_status._entry.34, section ".printk_index", align 4
@nxt6000_dump_status._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.6, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c TPSLock: %d,\00", [16 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.39 = internal global ptr @nxt6000_dump_status._entry.37, section ".printk_index", align 4
@nxt6000_dump_status._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.6, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c SYRLock: %d,\00", [16 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.42 = internal global ptr @nxt6000_dump_status._entry.40, section ".printk_index", align 4
@nxt6000_dump_status._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.6, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c AGCLock: %d,\00", [16 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.45 = internal global ptr @nxt6000_dump_status._entry.43, section ".printk_index", align 4
@nxt6000_dump_status._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.6, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c CoreState: IDLE,\00", [44 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.48 = internal global ptr @nxt6000_dump_status._entry.46, section ".printk_index", align 4
@nxt6000_dump_status._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.6, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01c CoreState: WAIT_AGC,\00", [40 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.51 = internal global ptr @nxt6000_dump_status._entry.49, section ".printk_index", align 4
@nxt6000_dump_status._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.6, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01c CoreState: WAIT_SYR,\00", [40 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.54 = internal global ptr @nxt6000_dump_status._entry.52, section ".printk_index", align 4
@nxt6000_dump_status._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.6, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01c CoreState: WAIT_PPM,\00", [40 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.57 = internal global ptr @nxt6000_dump_status._entry.55, section ".printk_index", align 4
@nxt6000_dump_status._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.6, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01c CoreState: WAIT_TRL,\00", [40 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.60 = internal global ptr @nxt6000_dump_status._entry.58, section ".printk_index", align 4
@nxt6000_dump_status._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.6, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01c CoreState: WAIT_TPS,\00", [40 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.63 = internal global ptr @nxt6000_dump_status._entry.61, section ".printk_index", align 4
@nxt6000_dump_status._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.6, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\01c CoreState: MONITOR_TPS,\00", [37 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.66 = internal global ptr @nxt6000_dump_status._entry.64, section ".printk_index", align 4
@nxt6000_dump_status._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.6, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\01c CoreState: Reserved,\00", [40 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.69 = internal global ptr @nxt6000_dump_status._entry.67, section ".printk_index", align 4
@nxt6000_dump_status._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.6, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.71 = internal global ptr @nxt6000_dump_status._entry.70, section ".printk_index", align 4
@nxt6000_dump_status._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.6, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c SYRMode: %s,\00", [16 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.74 = internal global ptr @nxt6000_dump_status._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"8K\00", [29 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2K\00", [29 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.6, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c SYRGuard: 1/32,\00", [45 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.79 = internal global ptr @nxt6000_dump_status._entry.77, section ".printk_index", align 4
@nxt6000_dump_status._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.6, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c SYRGuard: 1/16,\00", [45 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.82 = internal global ptr @nxt6000_dump_status._entry.80, section ".printk_index", align 4
@nxt6000_dump_status._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.6, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\01c SYRGuard: 1/8,\00", [46 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.85 = internal global ptr @nxt6000_dump_status._entry.83, section ".printk_index", align 4
@nxt6000_dump_status._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.6, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\01c SYRGuard: 1/4,\00", [46 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.88 = internal global ptr @nxt6000_dump_status._entry.86, section ".printk_index", align 4
@nxt6000_dump_status._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.6, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c TPSLP: 1/2,\00", [17 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.91 = internal global ptr @nxt6000_dump_status._entry.89, section ".printk_index", align 4
@nxt6000_dump_status._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.6, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c TPSLP: 2/3,\00", [17 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.94 = internal global ptr @nxt6000_dump_status._entry.92, section ".printk_index", align 4
@nxt6000_dump_status._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.6, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c TPSLP: 3/4,\00", [17 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.97 = internal global ptr @nxt6000_dump_status._entry.95, section ".printk_index", align 4
@nxt6000_dump_status._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.6, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c TPSLP: 5/6,\00", [17 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.100 = internal global ptr @nxt6000_dump_status._entry.98, section ".printk_index", align 4
@nxt6000_dump_status._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.6, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c TPSLP: 7/8,\00", [17 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.103 = internal global ptr @nxt6000_dump_status._entry.101, section ".printk_index", align 4
@nxt6000_dump_status._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.6, ptr @.str.2, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c TPSLP: Reserved,\00", [44 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.106 = internal global ptr @nxt6000_dump_status._entry.104, section ".printk_index", align 4
@nxt6000_dump_status._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.6, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c TPSHP: 1/2,\00", [17 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.109 = internal global ptr @nxt6000_dump_status._entry.107, section ".printk_index", align 4
@nxt6000_dump_status._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.6, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c TPSHP: 2/3,\00", [17 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.112 = internal global ptr @nxt6000_dump_status._entry.110, section ".printk_index", align 4
@nxt6000_dump_status._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.6, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c TPSHP: 3/4,\00", [17 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.115 = internal global ptr @nxt6000_dump_status._entry.113, section ".printk_index", align 4
@nxt6000_dump_status._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.6, ptr @.str.2, i32 382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c TPSHP: 5/6,\00", [17 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.118 = internal global ptr @nxt6000_dump_status._entry.116, section ".printk_index", align 4
@nxt6000_dump_status._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.6, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01c TPSHP: 7/8,\00", [17 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.121 = internal global ptr @nxt6000_dump_status._entry.119, section ".printk_index", align 4
@nxt6000_dump_status._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.6, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c TPSHP: Reserved,\00", [44 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.124 = internal global ptr @nxt6000_dump_status._entry.122, section ".printk_index", align 4
@nxt6000_dump_status._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.6, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01c TPSMode: %s,\00", [16 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.127 = internal global ptr @nxt6000_dump_status._entry.125, section ".printk_index", align 4
@nxt6000_dump_status._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.6, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c TPSGuard: 1/32,\00", [45 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.130 = internal global ptr @nxt6000_dump_status._entry.128, section ".printk_index", align 4
@nxt6000_dump_status._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.6, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c TPSGuard: 1/16,\00", [45 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.133 = internal global ptr @nxt6000_dump_status._entry.131, section ".printk_index", align 4
@nxt6000_dump_status._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.6, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\01c TPSGuard: 1/8,\00", [46 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.136 = internal global ptr @nxt6000_dump_status._entry.134, section ".printk_index", align 4
@nxt6000_dump_status._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.6, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\01c TPSGuard: 1/4,\00", [46 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.139 = internal global ptr @nxt6000_dump_status._entry.137, section ".printk_index", align 4
@nxt6000_dump_status._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.6, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\01c RF AGC LOCK: %d,\00", [44 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.142 = internal global ptr @nxt6000_dump_status._entry.140, section ".printk_index", align 4
@nxt6000_dump_status._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.6, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@nxt6000_dump_status._entry_ptr.145 = internal global ptr @nxt6000_dump_status._entry.143, section ".printk_index", align 4
@switch.table.nxt6000_read_status = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29], [44 x i8] zeroinitializer }, align 32
@switch.table.nxt6000_read_status.146 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.47, ptr @.str.59, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.62, ptr @.str.65], [36 x i8] zeroinitializer }, align 32
@switch.table.nxt6000_read_status.147 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87], [16 x i8] zeroinitializer }, align 32
@switch.table.nxt6000_read_status.148 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102], [44 x i8] zeroinitializer }, align 32
@switch.table.nxt6000_read_status.149 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120], [44 x i8] zeroinitializer }, align 32
@switch.table.nxt6000_read_status.150 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.151 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"nxt6000_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 583, i32 38 }
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 31, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 63, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 45, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 234, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 238, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 239, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 243, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 248, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 252, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 256, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 260, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 264, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 268, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 274, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 275, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 276, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 277, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 282, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 286, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 290, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 294, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 298, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 302, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 306, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 310, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 316, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 317, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 322, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 326, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 330, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 334, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 343, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 347, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 351, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 355, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 359, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 363, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 370, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 374, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 378, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 382, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 386, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 390, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 396, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 401, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 405, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 409, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 413, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 423, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.467 = private constant [41 x i8] c"../drivers/media/dvb-frontends/nxt6000.c\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 424, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [33 x i8] c"switch.table.nxt6000_read_status\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [37 x i8] c"switch.table.nxt6000_read_status.146\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [37 x i8] c"switch.table.nxt6000_read_status.147\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [37 x i8] c"switch.table.nxt6000_read_status.148\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [37 x i8] c"switch.table.nxt6000_read_status.149\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [37 x i8] c"switch.table.nxt6000_read_status.150\00", align 1
@llvm.compiler.used = appending global [168 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_nxt6000_attach, ptr @__param_debug, ptr @nxt6000_dump_status._entry, ptr @nxt6000_dump_status._entry.10, ptr @nxt6000_dump_status._entry.101, ptr @nxt6000_dump_status._entry.104, ptr @nxt6000_dump_status._entry.107, ptr @nxt6000_dump_status._entry.110, ptr @nxt6000_dump_status._entry.113, ptr @nxt6000_dump_status._entry.116, ptr @nxt6000_dump_status._entry.119, ptr @nxt6000_dump_status._entry.122, ptr @nxt6000_dump_status._entry.125, ptr @nxt6000_dump_status._entry.128, ptr @nxt6000_dump_status._entry.13, ptr @nxt6000_dump_status._entry.131, ptr @nxt6000_dump_status._entry.134, ptr @nxt6000_dump_status._entry.137, ptr @nxt6000_dump_status._entry.140, ptr @nxt6000_dump_status._entry.143, ptr @nxt6000_dump_status._entry.16, ptr @nxt6000_dump_status._entry.19, ptr @nxt6000_dump_status._entry.22, ptr @nxt6000_dump_status._entry.25, ptr @nxt6000_dump_status._entry.28, ptr @nxt6000_dump_status._entry.31, ptr @nxt6000_dump_status._entry.34, ptr @nxt6000_dump_status._entry.37, ptr @nxt6000_dump_status._entry.40, ptr @nxt6000_dump_status._entry.43, ptr @nxt6000_dump_status._entry.46, ptr @nxt6000_dump_status._entry.49, ptr @nxt6000_dump_status._entry.52, ptr @nxt6000_dump_status._entry.55, ptr @nxt6000_dump_status._entry.58, ptr @nxt6000_dump_status._entry.61, ptr @nxt6000_dump_status._entry.64, ptr @nxt6000_dump_status._entry.67, ptr @nxt6000_dump_status._entry.7, ptr @nxt6000_dump_status._entry.70, ptr @nxt6000_dump_status._entry.72, ptr @nxt6000_dump_status._entry.77, ptr @nxt6000_dump_status._entry.80, ptr @nxt6000_dump_status._entry.83, ptr @nxt6000_dump_status._entry.86, ptr @nxt6000_dump_status._entry.89, ptr @nxt6000_dump_status._entry.92, ptr @nxt6000_dump_status._entry.95, ptr @nxt6000_dump_status._entry.98, ptr @nxt6000_dump_status._entry_ptr, ptr @nxt6000_dump_status._entry_ptr.100, ptr @nxt6000_dump_status._entry_ptr.103, ptr @nxt6000_dump_status._entry_ptr.106, ptr @nxt6000_dump_status._entry_ptr.109, ptr @nxt6000_dump_status._entry_ptr.112, ptr @nxt6000_dump_status._entry_ptr.115, ptr @nxt6000_dump_status._entry_ptr.118, ptr @nxt6000_dump_status._entry_ptr.12, ptr @nxt6000_dump_status._entry_ptr.121, ptr @nxt6000_dump_status._entry_ptr.124, ptr @nxt6000_dump_status._entry_ptr.127, ptr @nxt6000_dump_status._entry_ptr.130, ptr @nxt6000_dump_status._entry_ptr.133, ptr @nxt6000_dump_status._entry_ptr.136, ptr @nxt6000_dump_status._entry_ptr.139, ptr @nxt6000_dump_status._entry_ptr.142, ptr @nxt6000_dump_status._entry_ptr.145, ptr @nxt6000_dump_status._entry_ptr.15, ptr @nxt6000_dump_status._entry_ptr.18, ptr @nxt6000_dump_status._entry_ptr.21, ptr @nxt6000_dump_status._entry_ptr.24, ptr @nxt6000_dump_status._entry_ptr.27, ptr @nxt6000_dump_status._entry_ptr.30, ptr @nxt6000_dump_status._entry_ptr.33, ptr @nxt6000_dump_status._entry_ptr.36, ptr @nxt6000_dump_status._entry_ptr.39, ptr @nxt6000_dump_status._entry_ptr.42, ptr @nxt6000_dump_status._entry_ptr.45, ptr @nxt6000_dump_status._entry_ptr.48, ptr @nxt6000_dump_status._entry_ptr.51, ptr @nxt6000_dump_status._entry_ptr.54, ptr @nxt6000_dump_status._entry_ptr.57, ptr @nxt6000_dump_status._entry_ptr.60, ptr @nxt6000_dump_status._entry_ptr.63, ptr @nxt6000_dump_status._entry_ptr.66, ptr @nxt6000_dump_status._entry_ptr.69, ptr @nxt6000_dump_status._entry_ptr.71, ptr @nxt6000_dump_status._entry_ptr.74, ptr @nxt6000_dump_status._entry_ptr.79, ptr @nxt6000_dump_status._entry_ptr.82, ptr @nxt6000_dump_status._entry_ptr.85, ptr @nxt6000_dump_status._entry_ptr.88, ptr @nxt6000_dump_status._entry_ptr.9, ptr @nxt6000_dump_status._entry_ptr.91, ptr @nxt6000_dump_status._entry_ptr.94, ptr @nxt6000_dump_status._entry_ptr.97, ptr @nxt6000_readreg._entry, ptr @nxt6000_readreg._entry_ptr, ptr @nxt6000_writereg._entry, ptr @nxt6000_writereg._entry_ptr, ptr @nxt6000_ops, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @.str.144, ptr @switch.table.nxt6000_read_status, ptr @switch.table.nxt6000_read_status.146, ptr @switch.table.nxt6000_read_status.147, ptr @switch.table.nxt6000_read_status.148, ptr @switch.table.nxt6000_read_status.149, ptr @switch.table.nxt6000_read_status.150], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt6000_dump_status._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nxt6000_read_status to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nxt6000_read_status.146 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nxt6000_read_status.147 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nxt6000_read_status.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nxt6000_read_status.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nxt6000_read_status.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nxt6000_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1048) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.nxt6000_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 115, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config, align 1
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %15 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1.i, ptr %buf8.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.nxt6000_readreg.exit_crit_edge, label %do.body.i

if.end.nxt6000_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit

do.body.i:                                        ; preds = %if.end
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i.nxt6000_readreg.exit_crit_edge, label %do.end.i

do.body.i.nxt6000_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 115, i32 noundef %call.i) #10
  br label %nxt6000_readreg.exit

nxt6000_readreg.exit:                             ; preds = %do.end.i, %do.body.i.nxt6000_readreg.exit_crit_edge, %if.end.nxt6000_readreg.exit_crit_edge
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %19)
  %cmp4.not = icmp eq i8 %19, 11
  br i1 %cmp4.not, label %if.end7, label %nxt6000_readreg.exit.error_crit_edge

nxt6000_readreg.exit.error_crit_edge:             ; preds = %nxt6000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end7:                                          ; preds = %nxt6000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %frontend = getelementptr inbounds %struct.nxt6000_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.nxt6000_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = call ptr @memcpy(ptr %ops, ptr @nxt6000_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.nxt6000_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %nxt6000_readreg.exit.error_crit_edge, %entry.error_crit_edge
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
define internal void @nxt6000_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @nxt6000_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i408.i = alloca [2 x i8], align 1
  %msg.i409.i = alloca %struct.i2c_msg, align 4
  %buf.i393.i = alloca [2 x i8], align 1
  %msg.i394.i = alloca %struct.i2c_msg, align 4
  %buf.i378.i = alloca [2 x i8], align 1
  %msg.i379.i = alloca %struct.i2c_msg, align 4
  %buf.i363.i = alloca [2 x i8], align 1
  %msg.i364.i = alloca %struct.i2c_msg, align 4
  %buf.i348.i = alloca [2 x i8], align 1
  %msg.i349.i = alloca %struct.i2c_msg, align 4
  %buf.i333.i = alloca [2 x i8], align 1
  %msg.i334.i = alloca %struct.i2c_msg, align 4
  %buf.i318.i = alloca [2 x i8], align 1
  %msg.i319.i = alloca %struct.i2c_msg, align 4
  %buf.i303.i = alloca [2 x i8], align 1
  %msg.i304.i = alloca %struct.i2c_msg, align 4
  %buf.i288.i = alloca [2 x i8], align 1
  %msg.i289.i = alloca %struct.i2c_msg, align 4
  %buf.i273.i = alloca [2 x i8], align 1
  %msg.i274.i = alloca %struct.i2c_msg, align 4
  %buf.i258.i = alloca [2 x i8], align 1
  %msg.i259.i = alloca %struct.i2c_msg, align 4
  %buf.i243.i = alloca [2 x i8], align 1
  %msg.i244.i = alloca %struct.i2c_msg, align 4
  %buf.i228.i = alloca [2 x i8], align 1
  %msg.i229.i = alloca %struct.i2c_msg, align 4
  %buf.i213.i = alloca [2 x i8], align 1
  %msg.i214.i = alloca %struct.i2c_msg, align 4
  %buf.i198.i = alloca [2 x i8], align 1
  %msg.i199.i = alloca %struct.i2c_msg, align 4
  %buf.i183.i = alloca [2 x i8], align 1
  %msg.i184.i = alloca %struct.i2c_msg, align 4
  %buf.i168.i = alloca [2 x i8], align 1
  %msg.i169.i = alloca %struct.i2c_msg, align 4
  %b0.i.i2 = alloca [1 x i8], align 1
  %b1.i.i3 = alloca [1 x i8], align 1
  %msgs.i.i4 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i143.i = alloca [2 x i8], align 1
  %msg.i144.i = alloca %struct.i2c_msg, align 4
  %buf.i128.i = alloca [2 x i8], align 1
  %msg.i129.i = alloca %struct.i2c_msg, align 4
  %buf.i113.i = alloca [2 x i8], align 1
  %msg.i114.i = alloca %struct.i2c_msg, align 4
  %buf.i98.i = alloca [2 x i8], align 1
  %msg.i99.i = alloca %struct.i2c_msg, align 4
  %buf.i83.i = alloca [2 x i8], align 1
  %msg.i84.i = alloca %struct.i2c_msg, align 4
  %buf.i68.i = alloca [2 x i8], align 1
  %msg.i69.i = alloca %struct.i2c_msg, align 4
  %buf.i53.i = alloca [2 x i8], align 1
  %msg.i54.i = alloca %struct.i2c_msg, align 4
  %buf.i.i5 = alloca [2 x i8], align 1
  %msg.i.i6 = alloca %struct.i2c_msg, align 4
  %buf.i19.i = alloca [2 x i8], align 1
  %msg.i20.i = alloca %struct.i2c_msg, align 4
  %buf.i9.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #6
  %2 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #6
  %3 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %4 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i.i = getelementptr inbounds %struct.nxt6000_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %entry.nxt6000_readreg.exit.i_crit_edge, label %do.body.i.i

entry.nxt6000_readreg.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit.i

do.body.i.i:                                      ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.nxt6000_readreg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.nxt6000_readreg.exit.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef %call.i.i) #10
  br label %nxt6000_readreg.exit.i

nxt6000_readreg.exit.i:                           ; preds = %do.end.i.i, %do.body.i.i.nxt6000_readreg.exit.i_crit_edge, %entry.nxt6000_readreg.exit.i_crit_edge
  %22 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #6
  %and.i = and i8 %23, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i9.i) #6
  %24 = getelementptr inbounds [2 x i8], ptr %buf.i9.i, i32 0, i32 1
  %25 = ptrtoint ptr %buf.i9.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 64, ptr %buf.i9.i, align 1
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %and.i, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %27 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 196607, ptr %27, align 4
  %29 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv.i11.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i11.i, ptr %msg.i.i, align 4
  %flags.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i12.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i12.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i9.i, ptr %buf1.i.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i14.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14.i)
  %cmp.not.i15.i = icmp eq i32 %call.i14.i, 1
  br i1 %cmp.not.i15.i, label %nxt6000_readreg.exit.i.nxt6000_writereg.exit.i_crit_edge, label %do.body.i17.i

nxt6000_readreg.exit.i.nxt6000_writereg.exit.i_crit_edge: ; preds = %nxt6000_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit.i

do.body.i17.i:                                    ; preds = %nxt6000_readreg.exit.i
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i16.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i16.i, label %do.body.i17.i.nxt6000_writereg.exit.i_crit_edge, label %do.end.i18.i

do.body.i17.i.nxt6000_writereg.exit.i_crit_edge:  ; preds = %do.body.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit.i

do.end.i18.i:                                     ; preds = %do.body.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i.i = zext i8 %and.i to i32
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 64, i32 noundef %conv6.i.i, i32 noundef %call.i14.i) #10
  br label %nxt6000_writereg.exit.i

nxt6000_writereg.exit.i:                          ; preds = %do.end.i18.i, %do.body.i17.i.nxt6000_writereg.exit.i_crit_edge, %nxt6000_readreg.exit.i.nxt6000_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i9.i) #6
  %39 = or i8 %23, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i19.i) #6
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i19.i, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i19.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 64, ptr %buf.i19.i, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i20.i) #6
  %43 = getelementptr inbounds i8, ptr %msg.i20.i, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %45 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv.i22.i = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i20.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i22.i, ptr %msg.i20.i, align 4
  %flags.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20.i, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i23.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i23.i, align 2
  %buf1.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20.i, i32 0, i32 3
  %51 = ptrtoint ptr %buf1.i25.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i19.i, ptr %buf1.i25.i, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i26.i = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i20.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i26.i)
  %cmp.not.i27.i = icmp eq i32 %call.i26.i, 1
  br i1 %cmp.not.i27.i, label %nxt6000_writereg.exit.i.nxt6000_reset.exit_crit_edge, label %do.body.i29.i

nxt6000_writereg.exit.i.nxt6000_reset.exit_crit_edge: ; preds = %nxt6000_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_reset.exit

do.body.i29.i:                                    ; preds = %nxt6000_writereg.exit.i
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i28.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i28.i, label %do.body.i29.i.nxt6000_reset.exit_crit_edge, label %do.end.i32.i

do.body.i29.i.nxt6000_reset.exit_crit_edge:       ; preds = %do.body.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_reset.exit

do.end.i32.i:                                     ; preds = %do.body.i29.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i30.i = zext i8 %39 to i32
  %call7.i31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 64, i32 noundef %conv6.i30.i, i32 noundef %call.i26.i) #10
  br label %nxt6000_reset.exit

nxt6000_reset.exit:                               ; preds = %do.end.i32.i, %do.body.i29.i.nxt6000_reset.exit_crit_edge, %nxt6000_writereg.exit.i.nxt6000_reset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i20.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i19.i) #6
  %55 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i5) #6
  %57 = getelementptr inbounds [2 x i8], ptr %buf.i.i5, i32 0, i32 1
  %58 = ptrtoint ptr %buf.i.i5 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 36, ptr %buf.i.i5, align 1
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 3, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i6) #6
  %60 = getelementptr inbounds i8, ptr %msg.i.i6, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 196607, ptr %60, align 4
  %config.i.i7 = getelementptr inbounds %struct.nxt6000_state, ptr %56, i32 0, i32 1
  %62 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i.i7, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 1
  %conv.i.i8 = zext i8 %65 to i16
  %66 = ptrtoint ptr %msg.i.i6 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i.i8, ptr %msg.i.i6, align 4
  %flags.i.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i6, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i.i9 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i.i9, align 2
  %buf1.i.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i6, i32 0, i32 3
  %68 = ptrtoint ptr %buf1.i.i10 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf.i.i5, ptr %buf1.i.i10, align 4
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %56, align 4
  %call.i.i11 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i.i6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i11)
  %cmp.not.i.i12 = icmp eq i32 %call.i.i11, 1
  br i1 %cmp.not.i.i12, label %nxt6000_reset.exit.nxt6000_writereg.exit.i17_crit_edge, label %do.body.i.i14

nxt6000_reset.exit.nxt6000_writereg.exit.i17_crit_edge: ; preds = %nxt6000_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit.i17

do.body.i.i14:                                    ; preds = %nxt6000_reset.exit
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i13 = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i13, label %do.body.i.i14.nxt6000_writereg.exit.i17_crit_edge, label %do.end.i.i16

do.body.i.i14.nxt6000_writereg.exit.i17_crit_edge: ; preds = %do.body.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit.i17

do.end.i.i16:                                     ; preds = %do.body.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 36, i32 noundef 3, i32 noundef %call.i.i11) #10
  br label %nxt6000_writereg.exit.i17

nxt6000_writereg.exit.i17:                        ; preds = %do.end.i.i16, %do.body.i.i14.nxt6000_writereg.exit.i17_crit_edge, %nxt6000_reset.exit.nxt6000_writereg.exit.i17_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i6) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i5) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53.i) #6
  %72 = getelementptr inbounds [2 x i8], ptr %buf.i53.i, i32 0, i32 1
  %73 = ptrtoint ptr %buf.i53.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 37, ptr %buf.i53.i, align 1
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 3, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i54.i) #6
  %75 = getelementptr inbounds i8, ptr %msg.i54.i, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %75, align 4
  %77 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %config.i.i7, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  %conv.i56.i = zext i8 %80 to i16
  %81 = ptrtoint ptr %msg.i54.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i56.i, ptr %msg.i54.i, align 4
  %flags.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54.i, i32 0, i32 1
  %82 = ptrtoint ptr %flags.i57.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %flags.i57.i, align 2
  store i16 2, ptr %75, align 4
  %buf1.i59.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54.i, i32 0, i32 3
  %83 = ptrtoint ptr %buf1.i59.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %buf.i53.i, ptr %buf1.i59.i, align 4
  %84 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %56, align 4
  %call.i60.i = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %msg.i54.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i60.i)
  %cmp.not.i61.i = icmp eq i32 %call.i60.i, 1
  br i1 %cmp.not.i61.i, label %nxt6000_writereg.exit.i17.nxt6000_writereg.exit67.i_crit_edge, label %do.body.i63.i

nxt6000_writereg.exit.i17.nxt6000_writereg.exit67.i_crit_edge: ; preds = %nxt6000_writereg.exit.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit67.i

do.body.i63.i:                                    ; preds = %nxt6000_writereg.exit.i17
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i62.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i62.i, label %do.body.i63.i.nxt6000_writereg.exit67.i_crit_edge, label %do.end.i65.i

do.body.i63.i.nxt6000_writereg.exit67.i_crit_edge: ; preds = %do.body.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit67.i

do.end.i65.i:                                     ; preds = %do.body.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 37, i32 noundef 3, i32 noundef %call.i60.i) #10
  br label %nxt6000_writereg.exit67.i

nxt6000_writereg.exit67.i:                        ; preds = %do.end.i65.i, %do.body.i63.i.nxt6000_writereg.exit67.i_crit_edge, %nxt6000_writereg.exit.i17.nxt6000_writereg.exit67.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i68.i) #6
  %87 = getelementptr inbounds [2 x i8], ptr %buf.i68.i, i32 0, i32 1
  %88 = ptrtoint ptr %buf.i68.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 56, ptr %buf.i68.i, align 1
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %87, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i69.i) #6
  %90 = getelementptr inbounds i8, ptr %msg.i69.i, i32 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %90, align 4
  %92 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %config.i.i7, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 1
  %conv.i71.i = zext i8 %95 to i16
  %96 = ptrtoint ptr %msg.i69.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i71.i, ptr %msg.i69.i, align 4
  %flags.i72.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69.i, i32 0, i32 1
  %97 = ptrtoint ptr %flags.i72.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %flags.i72.i, align 2
  store i16 2, ptr %90, align 4
  %buf1.i74.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69.i, i32 0, i32 3
  %98 = ptrtoint ptr %buf1.i74.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %buf.i68.i, ptr %buf1.i74.i, align 4
  %99 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %56, align 4
  %call.i75.i = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %msg.i69.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i75.i)
  %cmp.not.i76.i = icmp eq i32 %call.i75.i, 1
  br i1 %cmp.not.i76.i, label %nxt6000_writereg.exit67.i.nxt6000_writereg.exit82.i_crit_edge, label %do.body.i78.i

nxt6000_writereg.exit67.i.nxt6000_writereg.exit82.i_crit_edge: ; preds = %nxt6000_writereg.exit67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit82.i

do.body.i78.i:                                    ; preds = %nxt6000_writereg.exit67.i
  %101 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i77.i = icmp eq i32 %101, 0
  br i1 %tobool.not.i77.i, label %do.body.i78.i.nxt6000_writereg.exit82.i_crit_edge, label %do.end.i80.i

do.body.i78.i.nxt6000_writereg.exit82.i_crit_edge: ; preds = %do.body.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit82.i

do.end.i80.i:                                     ; preds = %do.body.i78.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 56, i32 noundef 0, i32 noundef %call.i75.i) #10
  br label %nxt6000_writereg.exit82.i

nxt6000_writereg.exit82.i:                        ; preds = %do.end.i80.i, %do.body.i78.i.nxt6000_writereg.exit82.i_crit_edge, %nxt6000_writereg.exit67.i.nxt6000_writereg.exit82.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i69.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i68.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i83.i) #6
  %102 = getelementptr inbounds [2 x i8], ptr %buf.i83.i, i32 0, i32 1
  %103 = ptrtoint ptr %buf.i83.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 57, ptr %buf.i83.i, align 1
  %104 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 2, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84.i) #6
  %105 = getelementptr inbounds i8, ptr %msg.i84.i, i32 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %105, align 4
  %107 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %config.i.i7, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %108, align 1
  %conv.i86.i = zext i8 %110 to i16
  %111 = ptrtoint ptr %msg.i84.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv.i86.i, ptr %msg.i84.i, align 4
  %flags.i87.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 1
  %112 = ptrtoint ptr %flags.i87.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 0, ptr %flags.i87.i, align 2
  store i16 2, ptr %105, align 4
  %buf1.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 3
  %113 = ptrtoint ptr %buf1.i89.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %buf.i83.i, ptr %buf1.i89.i, align 4
  %114 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %56, align 4
  %call.i90.i = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %msg.i84.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i90.i)
  %cmp.not.i91.i = icmp eq i32 %call.i90.i, 1
  br i1 %cmp.not.i91.i, label %nxt6000_writereg.exit82.i.nxt6000_writereg.exit97.i_crit_edge, label %do.body.i93.i

nxt6000_writereg.exit82.i.nxt6000_writereg.exit97.i_crit_edge: ; preds = %nxt6000_writereg.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit97.i

do.body.i93.i:                                    ; preds = %nxt6000_writereg.exit82.i
  %116 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i92.i = icmp eq i32 %116, 0
  br i1 %tobool.not.i92.i, label %do.body.i93.i.nxt6000_writereg.exit97.i_crit_edge, label %do.end.i95.i

do.body.i93.i.nxt6000_writereg.exit97.i_crit_edge: ; preds = %do.body.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit97.i

do.end.i95.i:                                     ; preds = %do.body.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 57, i32 noundef 2, i32 noundef %call.i90.i) #10
  br label %nxt6000_writereg.exit97.i

nxt6000_writereg.exit97.i:                        ; preds = %do.end.i95.i, %do.body.i93.i.nxt6000_writereg.exit97.i_crit_edge, %nxt6000_writereg.exit82.i.nxt6000_writereg.exit97.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i83.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i98.i) #6
  %117 = getelementptr inbounds [2 x i8], ptr %buf.i98.i, i32 0, i32 1
  %118 = ptrtoint ptr %buf.i98.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 58, ptr %buf.i98.i, align 1
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %117, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i99.i) #6
  %120 = getelementptr inbounds i8, ptr %msg.i99.i, i32 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %120, align 4
  %122 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %config.i.i7, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %123, align 1
  %conv.i101.i = zext i8 %125 to i16
  %126 = ptrtoint ptr %msg.i99.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv.i101.i, ptr %msg.i99.i, align 4
  %flags.i102.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99.i, i32 0, i32 1
  %127 = ptrtoint ptr %flags.i102.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %flags.i102.i, align 2
  store i16 2, ptr %120, align 4
  %buf1.i104.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99.i, i32 0, i32 3
  %128 = ptrtoint ptr %buf1.i104.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %buf.i98.i, ptr %buf1.i104.i, align 4
  %129 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %56, align 4
  %call.i105.i = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %msg.i99.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i105.i)
  %cmp.not.i106.i = icmp eq i32 %call.i105.i, 1
  br i1 %cmp.not.i106.i, label %nxt6000_writereg.exit97.i.nxt6000_writereg.exit112.i_crit_edge, label %do.body.i108.i

nxt6000_writereg.exit97.i.nxt6000_writereg.exit112.i_crit_edge: ; preds = %nxt6000_writereg.exit97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit112.i

do.body.i108.i:                                   ; preds = %nxt6000_writereg.exit97.i
  %131 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i107.i = icmp eq i32 %131, 0
  br i1 %tobool.not.i107.i, label %do.body.i108.i.nxt6000_writereg.exit112.i_crit_edge, label %do.end.i110.i

do.body.i108.i.nxt6000_writereg.exit112.i_crit_edge: ; preds = %do.body.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit112.i

do.end.i110.i:                                    ; preds = %do.body.i108.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i109.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 58, i32 noundef 0, i32 noundef %call.i105.i) #10
  br label %nxt6000_writereg.exit112.i

nxt6000_writereg.exit112.i:                       ; preds = %do.end.i110.i, %do.body.i108.i.nxt6000_writereg.exit112.i_crit_edge, %nxt6000_writereg.exit97.i.nxt6000_writereg.exit112.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i99.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i98.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i113.i) #6
  %132 = getelementptr inbounds [2 x i8], ptr %buf.i113.i, i32 0, i32 1
  %133 = ptrtoint ptr %buf.i113.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 51, ptr %buf.i113.i, align 1
  %134 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -104, ptr %132, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i114.i) #6
  %135 = getelementptr inbounds i8, ptr %msg.i114.i, i32 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %135, align 4
  %137 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %config.i.i7, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %138, align 1
  %conv.i116.i = zext i8 %140 to i16
  %141 = ptrtoint ptr %msg.i114.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv.i116.i, ptr %msg.i114.i, align 4
  %flags.i117.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114.i, i32 0, i32 1
  %142 = ptrtoint ptr %flags.i117.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 0, ptr %flags.i117.i, align 2
  store i16 2, ptr %135, align 4
  %buf1.i119.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114.i, i32 0, i32 3
  %143 = ptrtoint ptr %buf1.i119.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %buf.i113.i, ptr %buf1.i119.i, align 4
  %144 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %56, align 4
  %call.i120.i = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %msg.i114.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i120.i)
  %cmp.not.i121.i = icmp eq i32 %call.i120.i, 1
  br i1 %cmp.not.i121.i, label %nxt6000_writereg.exit112.i.nxt6000_writereg.exit127.i_crit_edge, label %do.body.i123.i

nxt6000_writereg.exit112.i.nxt6000_writereg.exit127.i_crit_edge: ; preds = %nxt6000_writereg.exit112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit127.i

do.body.i123.i:                                   ; preds = %nxt6000_writereg.exit112.i
  %146 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool.not.i122.i = icmp eq i32 %146, 0
  br i1 %tobool.not.i122.i, label %do.body.i123.i.nxt6000_writereg.exit127.i_crit_edge, label %do.end.i125.i

do.body.i123.i.nxt6000_writereg.exit127.i_crit_edge: ; preds = %do.body.i123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit127.i

do.end.i125.i:                                    ; preds = %do.body.i123.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i124.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 51, i32 noundef 152, i32 noundef %call.i120.i) #10
  br label %nxt6000_writereg.exit127.i

nxt6000_writereg.exit127.i:                       ; preds = %do.end.i125.i, %do.body.i123.i.nxt6000_writereg.exit127.i_crit_edge, %nxt6000_writereg.exit112.i.nxt6000_writereg.exit127.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i114.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i113.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i128.i) #6
  %147 = getelementptr inbounds [2 x i8], ptr %buf.i128.i, i32 0, i32 1
  %148 = ptrtoint ptr %buf.i128.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 48, ptr %buf.i128.i, align 1
  %149 = ptrtoint ptr %147 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 -126, ptr %147, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i129.i) #6
  %150 = getelementptr inbounds i8, ptr %msg.i129.i, i32 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1, ptr %150, align 4
  %152 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %config.i.i7, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %153, align 1
  %conv.i131.i = zext i8 %155 to i16
  %156 = ptrtoint ptr %msg.i129.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv.i131.i, ptr %msg.i129.i, align 4
  %flags.i132.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129.i, i32 0, i32 1
  %157 = ptrtoint ptr %flags.i132.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 0, ptr %flags.i132.i, align 2
  store i16 2, ptr %150, align 4
  %buf1.i134.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129.i, i32 0, i32 3
  %158 = ptrtoint ptr %buf1.i134.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %buf.i128.i, ptr %buf1.i134.i, align 4
  %159 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %56, align 4
  %call.i135.i = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %msg.i129.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i135.i)
  %cmp.not.i136.i = icmp eq i32 %call.i135.i, 1
  br i1 %cmp.not.i136.i, label %nxt6000_writereg.exit127.i.nxt6000_writereg.exit142.i_crit_edge, label %do.body.i138.i

nxt6000_writereg.exit127.i.nxt6000_writereg.exit142.i_crit_edge: ; preds = %nxt6000_writereg.exit127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit142.i

do.body.i138.i:                                   ; preds = %nxt6000_writereg.exit127.i
  %161 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool.not.i137.i = icmp eq i32 %161, 0
  br i1 %tobool.not.i137.i, label %do.body.i138.i.nxt6000_writereg.exit142.i_crit_edge, label %do.end.i140.i

do.body.i138.i.nxt6000_writereg.exit142.i_crit_edge: ; preds = %do.body.i138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit142.i

do.end.i140.i:                                    ; preds = %do.body.i138.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i139.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 48, i32 noundef 130, i32 noundef %call.i135.i) #10
  br label %nxt6000_writereg.exit142.i

nxt6000_writereg.exit142.i:                       ; preds = %do.end.i140.i, %do.body.i138.i.nxt6000_writereg.exit142.i_crit_edge, %nxt6000_writereg.exit127.i.nxt6000_writereg.exit142.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i129.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i128.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i143.i) #6
  %162 = getelementptr inbounds [2 x i8], ptr %buf.i143.i, i32 0, i32 1
  %163 = ptrtoint ptr %buf.i143.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 48, ptr %buf.i143.i, align 1
  %164 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -126, ptr %162, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i144.i) #6
  %165 = getelementptr inbounds i8, ptr %msg.i144.i, i32 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -1, ptr %165, align 4
  %167 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %config.i.i7, align 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %168, align 1
  %conv.i146.i = zext i8 %170 to i16
  %171 = ptrtoint ptr %msg.i144.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv.i146.i, ptr %msg.i144.i, align 4
  %flags.i147.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i144.i, i32 0, i32 1
  %172 = ptrtoint ptr %flags.i147.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %flags.i147.i, align 2
  store i16 2, ptr %165, align 4
  %buf1.i149.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i144.i, i32 0, i32 3
  %173 = ptrtoint ptr %buf1.i149.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %buf.i143.i, ptr %buf1.i149.i, align 4
  %174 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %56, align 4
  %call.i150.i = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %msg.i144.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i150.i)
  %cmp.not.i151.i = icmp eq i32 %call.i150.i, 1
  br i1 %cmp.not.i151.i, label %nxt6000_writereg.exit142.i.nxt6000_writereg.exit157.i_crit_edge, label %do.body.i153.i

nxt6000_writereg.exit142.i.nxt6000_writereg.exit157.i_crit_edge: ; preds = %nxt6000_writereg.exit142.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit157.i

do.body.i153.i:                                   ; preds = %nxt6000_writereg.exit142.i
  %176 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.not.i152.i = icmp eq i32 %176, 0
  br i1 %tobool.not.i152.i, label %do.body.i153.i.nxt6000_writereg.exit157.i_crit_edge, label %do.end.i155.i

do.body.i153.i.nxt6000_writereg.exit157.i_crit_edge: ; preds = %do.body.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit157.i

do.end.i155.i:                                    ; preds = %do.body.i153.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i154.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 48, i32 noundef 130, i32 noundef %call.i150.i) #10
  br label %nxt6000_writereg.exit157.i

nxt6000_writereg.exit157.i:                       ; preds = %do.end.i155.i, %do.body.i153.i.nxt6000_writereg.exit157.i_crit_edge, %nxt6000_writereg.exit142.i.nxt6000_writereg.exit157.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i144.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i143.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i2) #6
  %177 = ptrtoint ptr %b0.i.i2 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 64, ptr %b0.i.i2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i3) #6
  %178 = ptrtoint ptr %b1.i.i3 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %b1.i.i3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i4) #6
  %179 = getelementptr inbounds i8, ptr %msgs.i.i4, i32 4
  %180 = call ptr @memset(ptr %179, i32 255, i32 16)
  %181 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %config.i.i7, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %182, align 1
  %conv.i159.i = zext i8 %184 to i16
  %185 = ptrtoint ptr %msgs.i.i4 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv.i159.i, ptr %msgs.i.i4, align 4
  %flags.i160.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4, i32 0, i32 1
  %186 = ptrtoint ptr %flags.i160.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 0, ptr %flags.i160.i, align 2
  %187 = ptrtoint ptr %179 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 1, ptr %179, align 4
  %buf.i162.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4, i32 0, i32 3
  %188 = ptrtoint ptr %buf.i162.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %b0.i.i2, ptr %buf.i162.i, align 4
  %arrayinit.element.i.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4, i32 1
  %189 = load i8, ptr %182, align 1
  %conv5.i.i19 = zext i8 %189 to i16
  %190 = ptrtoint ptr %arrayinit.element.i.i18 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv5.i.i19, ptr %arrayinit.element.i.i18, align 4
  %flags6.i.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4, i32 1, i32 1
  %191 = ptrtoint ptr %flags6.i.i20 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 1, ptr %flags6.i.i20, align 2
  %len7.i.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4, i32 1, i32 2
  %192 = ptrtoint ptr %len7.i.i21 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 1, ptr %len7.i.i21, align 4
  %buf8.i.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4, i32 1, i32 3
  %193 = ptrtoint ptr %buf8.i.i22 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %b1.i.i3, ptr %buf8.i.i22, align 4
  %194 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %56, align 4
  %call.i163.i = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %msgs.i.i4, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i163.i)
  %cmp.not.i164.i = icmp eq i32 %call.i163.i, 2
  br i1 %cmp.not.i164.i, label %nxt6000_writereg.exit157.i.nxt6000_readreg.exit.i24_crit_edge, label %do.body.i166.i

nxt6000_writereg.exit157.i.nxt6000_readreg.exit.i24_crit_edge: ; preds = %nxt6000_writereg.exit157.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit.i24

do.body.i166.i:                                   ; preds = %nxt6000_writereg.exit157.i
  %196 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.i165.i = icmp eq i32 %196, 0
  br i1 %tobool.not.i165.i, label %do.body.i166.i.nxt6000_readreg.exit.i24_crit_edge, label %do.end.i167.i

do.body.i166.i.nxt6000_readreg.exit.i24_crit_edge: ; preds = %do.body.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit.i24

do.end.i167.i:                                    ; preds = %do.body.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i.i23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef %call.i163.i) #10
  br label %nxt6000_readreg.exit.i24

nxt6000_readreg.exit.i24:                         ; preds = %do.end.i167.i, %do.body.i166.i.nxt6000_readreg.exit.i24_crit_edge, %nxt6000_writereg.exit157.i.nxt6000_readreg.exit.i24_crit_edge
  %197 = ptrtoint ptr %b1.i.i3 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %b1.i.i3, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i4) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i2) #6
  %199 = and i8 %198, 15
  %200 = or i8 %199, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i168.i) #6
  %201 = getelementptr inbounds [2 x i8], ptr %buf.i168.i, i32 0, i32 1
  %202 = ptrtoint ptr %buf.i168.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 64, ptr %buf.i168.i, align 1
  %203 = ptrtoint ptr %201 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %200, ptr %201, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i169.i) #6
  %204 = getelementptr inbounds i8, ptr %msg.i169.i, i32 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 -1, ptr %204, align 4
  %206 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %config.i.i7, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %207, align 1
  %conv.i171.i = zext i8 %209 to i16
  %210 = ptrtoint ptr %msg.i169.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv.i171.i, ptr %msg.i169.i, align 4
  %flags.i172.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i169.i, i32 0, i32 1
  %211 = ptrtoint ptr %flags.i172.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %flags.i172.i, align 2
  store i16 2, ptr %204, align 4
  %buf1.i174.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i169.i, i32 0, i32 3
  %212 = ptrtoint ptr %buf1.i174.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %buf.i168.i, ptr %buf1.i174.i, align 4
  %213 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %56, align 4
  %call.i175.i = call i32 @i2c_transfer(ptr noundef %214, ptr noundef nonnull %msg.i169.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i175.i)
  %cmp.not.i176.i = icmp eq i32 %call.i175.i, 1
  br i1 %cmp.not.i176.i, label %nxt6000_readreg.exit.i24.nxt6000_writereg.exit182.i_crit_edge, label %do.body.i178.i

nxt6000_readreg.exit.i24.nxt6000_writereg.exit182.i_crit_edge: ; preds = %nxt6000_readreg.exit.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit182.i

do.body.i178.i:                                   ; preds = %nxt6000_readreg.exit.i24
  %215 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool.not.i177.i = icmp eq i32 %215, 0
  br i1 %tobool.not.i177.i, label %do.body.i178.i.nxt6000_writereg.exit182.i_crit_edge, label %do.end.i180.i

do.body.i178.i.nxt6000_writereg.exit182.i_crit_edge: ; preds = %do.body.i178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit182.i

do.end.i180.i:                                    ; preds = %do.body.i178.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i.i25 = zext i8 %200 to i32
  %call7.i179.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 64, i32 noundef %conv6.i.i25, i32 noundef %call.i175.i) #10
  br label %nxt6000_writereg.exit182.i

nxt6000_writereg.exit182.i:                       ; preds = %do.end.i180.i, %do.body.i178.i.nxt6000_writereg.exit182.i_crit_edge, %nxt6000_readreg.exit.i24.nxt6000_writereg.exit182.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i169.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i168.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i183.i) #6
  %216 = getelementptr inbounds [2 x i8], ptr %buf.i183.i, i32 0, i32 1
  %217 = ptrtoint ptr %buf.i183.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 68, ptr %buf.i183.i, align 1
  %218 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 6, ptr %216, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i184.i) #6
  %219 = getelementptr inbounds i8, ptr %msg.i184.i, i32 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 -1, ptr %219, align 4
  %221 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %config.i.i7, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %222, align 1
  %conv.i186.i = zext i8 %224 to i16
  %225 = ptrtoint ptr %msg.i184.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv.i186.i, ptr %msg.i184.i, align 4
  %flags.i187.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i184.i, i32 0, i32 1
  %226 = ptrtoint ptr %flags.i187.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 0, ptr %flags.i187.i, align 2
  store i16 2, ptr %219, align 4
  %buf1.i189.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i184.i, i32 0, i32 3
  %227 = ptrtoint ptr %buf1.i189.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %buf.i183.i, ptr %buf1.i189.i, align 4
  %228 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %56, align 4
  %call.i190.i = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %msg.i184.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i190.i)
  %cmp.not.i191.i = icmp eq i32 %call.i190.i, 1
  br i1 %cmp.not.i191.i, label %nxt6000_writereg.exit182.i.nxt6000_writereg.exit197.i_crit_edge, label %do.body.i193.i

nxt6000_writereg.exit182.i.nxt6000_writereg.exit197.i_crit_edge: ; preds = %nxt6000_writereg.exit182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit197.i

do.body.i193.i:                                   ; preds = %nxt6000_writereg.exit182.i
  %230 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool.not.i192.i = icmp eq i32 %230, 0
  br i1 %tobool.not.i192.i, label %do.body.i193.i.nxt6000_writereg.exit197.i_crit_edge, label %do.end.i195.i

do.body.i193.i.nxt6000_writereg.exit197.i_crit_edge: ; preds = %do.body.i193.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit197.i

do.end.i195.i:                                    ; preds = %do.body.i193.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i194.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 68, i32 noundef 6, i32 noundef %call.i190.i) #10
  br label %nxt6000_writereg.exit197.i

nxt6000_writereg.exit197.i:                       ; preds = %do.end.i195.i, %do.body.i193.i.nxt6000_writereg.exit197.i_crit_edge, %nxt6000_writereg.exit182.i.nxt6000_writereg.exit197.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i184.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i183.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i198.i) #6
  %231 = getelementptr inbounds [2 x i8], ptr %buf.i198.i, i32 0, i32 1
  %232 = ptrtoint ptr %buf.i198.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 69, ptr %buf.i198.i, align 1
  %233 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 24, ptr %231, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i199.i) #6
  %234 = getelementptr inbounds i8, ptr %msg.i199.i, i32 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 -1, ptr %234, align 4
  %236 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %config.i.i7, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %237, align 1
  %conv.i201.i = zext i8 %239 to i16
  %240 = ptrtoint ptr %msg.i199.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 %conv.i201.i, ptr %msg.i199.i, align 4
  %flags.i202.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i199.i, i32 0, i32 1
  %241 = ptrtoint ptr %flags.i202.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 0, ptr %flags.i202.i, align 2
  store i16 2, ptr %234, align 4
  %buf1.i204.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i199.i, i32 0, i32 3
  %242 = ptrtoint ptr %buf1.i204.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %buf.i198.i, ptr %buf1.i204.i, align 4
  %243 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %56, align 4
  %call.i205.i = call i32 @i2c_transfer(ptr noundef %244, ptr noundef nonnull %msg.i199.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i205.i)
  %cmp.not.i206.i = icmp eq i32 %call.i205.i, 1
  br i1 %cmp.not.i206.i, label %nxt6000_writereg.exit197.i.nxt6000_writereg.exit212.i_crit_edge, label %do.body.i208.i

nxt6000_writereg.exit197.i.nxt6000_writereg.exit212.i_crit_edge: ; preds = %nxt6000_writereg.exit197.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit212.i

do.body.i208.i:                                   ; preds = %nxt6000_writereg.exit197.i
  %245 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.not.i207.i = icmp eq i32 %245, 0
  br i1 %tobool.not.i207.i, label %do.body.i208.i.nxt6000_writereg.exit212.i_crit_edge, label %do.end.i210.i

do.body.i208.i.nxt6000_writereg.exit212.i_crit_edge: ; preds = %do.body.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit212.i

do.end.i210.i:                                    ; preds = %do.body.i208.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i209.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 69, i32 noundef 24, i32 noundef %call.i205.i) #10
  br label %nxt6000_writereg.exit212.i

nxt6000_writereg.exit212.i:                       ; preds = %do.end.i210.i, %do.body.i208.i.nxt6000_writereg.exit212.i_crit_edge, %nxt6000_writereg.exit197.i.nxt6000_writereg.exit212.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i199.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i198.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i213.i) #6
  %246 = getelementptr inbounds [2 x i8], ptr %buf.i213.i, i32 0, i32 1
  %247 = ptrtoint ptr %buf.i213.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 76, ptr %buf.i213.i, align 1
  %248 = ptrtoint ptr %246 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 6, ptr %246, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i214.i) #6
  %249 = getelementptr inbounds i8, ptr %msg.i214.i, i32 4
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 -1, ptr %249, align 4
  %251 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %config.i.i7, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %252, align 1
  %conv.i216.i = zext i8 %254 to i16
  %255 = ptrtoint ptr %msg.i214.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv.i216.i, ptr %msg.i214.i, align 4
  %flags.i217.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i214.i, i32 0, i32 1
  %256 = ptrtoint ptr %flags.i217.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 0, ptr %flags.i217.i, align 2
  store i16 2, ptr %249, align 4
  %buf1.i219.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i214.i, i32 0, i32 3
  %257 = ptrtoint ptr %buf1.i219.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %buf.i213.i, ptr %buf1.i219.i, align 4
  %258 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %56, align 4
  %call.i220.i = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %msg.i214.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i220.i)
  %cmp.not.i221.i = icmp eq i32 %call.i220.i, 1
  br i1 %cmp.not.i221.i, label %nxt6000_writereg.exit212.i.nxt6000_writereg.exit227.i_crit_edge, label %do.body.i223.i

nxt6000_writereg.exit212.i.nxt6000_writereg.exit227.i_crit_edge: ; preds = %nxt6000_writereg.exit212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit227.i

do.body.i223.i:                                   ; preds = %nxt6000_writereg.exit212.i
  %260 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.i222.i = icmp eq i32 %260, 0
  br i1 %tobool.not.i222.i, label %do.body.i223.i.nxt6000_writereg.exit227.i_crit_edge, label %do.end.i225.i

do.body.i223.i.nxt6000_writereg.exit227.i_crit_edge: ; preds = %do.body.i223.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit227.i

do.end.i225.i:                                    ; preds = %do.body.i223.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i224.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 76, i32 noundef 6, i32 noundef %call.i220.i) #10
  br label %nxt6000_writereg.exit227.i

nxt6000_writereg.exit227.i:                       ; preds = %do.end.i225.i, %do.body.i223.i.nxt6000_writereg.exit227.i_crit_edge, %nxt6000_writereg.exit212.i.nxt6000_writereg.exit227.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i214.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i213.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i228.i) #6
  %261 = getelementptr inbounds [2 x i8], ptr %buf.i228.i, i32 0, i32 1
  %262 = ptrtoint ptr %buf.i228.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 77, ptr %buf.i228.i, align 1
  %263 = ptrtoint ptr %261 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 49, ptr %261, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i229.i) #6
  %264 = getelementptr inbounds i8, ptr %msg.i229.i, i32 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 -1, ptr %264, align 4
  %266 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %config.i.i7, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %267, align 1
  %conv.i231.i = zext i8 %269 to i16
  %270 = ptrtoint ptr %msg.i229.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %conv.i231.i, ptr %msg.i229.i, align 4
  %flags.i232.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i229.i, i32 0, i32 1
  %271 = ptrtoint ptr %flags.i232.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 0, ptr %flags.i232.i, align 2
  store i16 2, ptr %264, align 4
  %buf1.i234.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i229.i, i32 0, i32 3
  %272 = ptrtoint ptr %buf1.i234.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %buf.i228.i, ptr %buf1.i234.i, align 4
  %273 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %56, align 4
  %call.i235.i = call i32 @i2c_transfer(ptr noundef %274, ptr noundef nonnull %msg.i229.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i235.i)
  %cmp.not.i236.i = icmp eq i32 %call.i235.i, 1
  br i1 %cmp.not.i236.i, label %nxt6000_writereg.exit227.i.nxt6000_writereg.exit242.i_crit_edge, label %do.body.i238.i

nxt6000_writereg.exit227.i.nxt6000_writereg.exit242.i_crit_edge: ; preds = %nxt6000_writereg.exit227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit242.i

do.body.i238.i:                                   ; preds = %nxt6000_writereg.exit227.i
  %275 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool.not.i237.i = icmp eq i32 %275, 0
  br i1 %tobool.not.i237.i, label %do.body.i238.i.nxt6000_writereg.exit242.i_crit_edge, label %do.end.i240.i

do.body.i238.i.nxt6000_writereg.exit242.i_crit_edge: ; preds = %do.body.i238.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit242.i

do.end.i240.i:                                    ; preds = %do.body.i238.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i239.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 77, i32 noundef 49, i32 noundef %call.i235.i) #10
  br label %nxt6000_writereg.exit242.i

nxt6000_writereg.exit242.i:                       ; preds = %do.end.i240.i, %do.body.i238.i.nxt6000_writereg.exit242.i_crit_edge, %nxt6000_writereg.exit227.i.nxt6000_writereg.exit242.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i229.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i228.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i243.i) #6
  %276 = getelementptr inbounds [2 x i8], ptr %buf.i243.i, i32 0, i32 1
  %277 = ptrtoint ptr %buf.i243.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 78, ptr %buf.i243.i, align 1
  %278 = ptrtoint ptr %276 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 -108, ptr %276, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i244.i) #6
  %279 = getelementptr inbounds i8, ptr %msg.i244.i, i32 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 -1, ptr %279, align 4
  %281 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %config.i.i7, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %282, align 1
  %conv.i246.i = zext i8 %284 to i16
  %285 = ptrtoint ptr %msg.i244.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 %conv.i246.i, ptr %msg.i244.i, align 4
  %flags.i247.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i244.i, i32 0, i32 1
  %286 = ptrtoint ptr %flags.i247.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 0, ptr %flags.i247.i, align 2
  store i16 2, ptr %279, align 4
  %buf1.i249.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i244.i, i32 0, i32 3
  %287 = ptrtoint ptr %buf1.i249.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %buf.i243.i, ptr %buf1.i249.i, align 4
  %288 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %56, align 4
  %call.i250.i = call i32 @i2c_transfer(ptr noundef %289, ptr noundef nonnull %msg.i244.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i250.i)
  %cmp.not.i251.i = icmp eq i32 %call.i250.i, 1
  br i1 %cmp.not.i251.i, label %nxt6000_writereg.exit242.i.nxt6000_writereg.exit257.i_crit_edge, label %do.body.i253.i

nxt6000_writereg.exit242.i.nxt6000_writereg.exit257.i_crit_edge: ; preds = %nxt6000_writereg.exit242.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit257.i

do.body.i253.i:                                   ; preds = %nxt6000_writereg.exit242.i
  %290 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool.not.i252.i = icmp eq i32 %290, 0
  br i1 %tobool.not.i252.i, label %do.body.i253.i.nxt6000_writereg.exit257.i_crit_edge, label %do.end.i255.i

do.body.i253.i.nxt6000_writereg.exit257.i_crit_edge: ; preds = %do.body.i253.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit257.i

do.end.i255.i:                                    ; preds = %do.body.i253.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i254.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 78, i32 noundef 148, i32 noundef %call.i250.i) #10
  br label %nxt6000_writereg.exit257.i

nxt6000_writereg.exit257.i:                       ; preds = %do.end.i255.i, %do.body.i253.i.nxt6000_writereg.exit257.i_crit_edge, %nxt6000_writereg.exit242.i.nxt6000_writereg.exit257.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i244.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i243.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i258.i) #6
  %291 = getelementptr inbounds [2 x i8], ptr %buf.i258.i, i32 0, i32 1
  %292 = ptrtoint ptr %buf.i258.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 79, ptr %buf.i258.i, align 1
  %293 = ptrtoint ptr %291 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 -69, ptr %291, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i259.i) #6
  %294 = getelementptr inbounds i8, ptr %msg.i259.i, i32 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 -1, ptr %294, align 4
  %296 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %config.i.i7, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %297, align 1
  %conv.i261.i = zext i8 %299 to i16
  %300 = ptrtoint ptr %msg.i259.i to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %conv.i261.i, ptr %msg.i259.i, align 4
  %flags.i262.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i259.i, i32 0, i32 1
  %301 = ptrtoint ptr %flags.i262.i to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 0, ptr %flags.i262.i, align 2
  store i16 2, ptr %294, align 4
  %buf1.i264.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i259.i, i32 0, i32 3
  %302 = ptrtoint ptr %buf1.i264.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %buf.i258.i, ptr %buf1.i264.i, align 4
  %303 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %56, align 4
  %call.i265.i = call i32 @i2c_transfer(ptr noundef %304, ptr noundef nonnull %msg.i259.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i265.i)
  %cmp.not.i266.i = icmp eq i32 %call.i265.i, 1
  br i1 %cmp.not.i266.i, label %nxt6000_writereg.exit257.i.nxt6000_writereg.exit272.i_crit_edge, label %do.body.i268.i

nxt6000_writereg.exit257.i.nxt6000_writereg.exit272.i_crit_edge: ; preds = %nxt6000_writereg.exit257.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit272.i

do.body.i268.i:                                   ; preds = %nxt6000_writereg.exit257.i
  %305 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool.not.i267.i = icmp eq i32 %305, 0
  br i1 %tobool.not.i267.i, label %do.body.i268.i.nxt6000_writereg.exit272.i_crit_edge, label %do.end.i270.i

do.body.i268.i.nxt6000_writereg.exit272.i_crit_edge: ; preds = %do.body.i268.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit272.i

do.end.i270.i:                                    ; preds = %do.body.i268.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i269.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 79, i32 noundef 187, i32 noundef %call.i265.i) #10
  br label %nxt6000_writereg.exit272.i

nxt6000_writereg.exit272.i:                       ; preds = %do.end.i270.i, %do.body.i268.i.nxt6000_writereg.exit272.i_crit_edge, %nxt6000_writereg.exit257.i.nxt6000_writereg.exit272.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i259.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i258.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i273.i) #6
  %306 = getelementptr inbounds [2 x i8], ptr %buf.i273.i, i32 0, i32 1
  %307 = ptrtoint ptr %buf.i273.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 81, ptr %buf.i273.i, align 1
  %308 = ptrtoint ptr %306 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 4, ptr %306, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i274.i) #6
  %309 = getelementptr inbounds i8, ptr %msg.i274.i, i32 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 -1, ptr %309, align 4
  %311 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %config.i.i7, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %312, align 1
  %conv.i276.i = zext i8 %314 to i16
  %315 = ptrtoint ptr %msg.i274.i to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 %conv.i276.i, ptr %msg.i274.i, align 4
  %flags.i277.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i274.i, i32 0, i32 1
  %316 = ptrtoint ptr %flags.i277.i to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 0, ptr %flags.i277.i, align 2
  store i16 2, ptr %309, align 4
  %buf1.i279.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i274.i, i32 0, i32 3
  %317 = ptrtoint ptr %buf1.i279.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %buf.i273.i, ptr %buf1.i279.i, align 4
  %318 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %56, align 4
  %call.i280.i = call i32 @i2c_transfer(ptr noundef %319, ptr noundef nonnull %msg.i274.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i280.i)
  %cmp.not.i281.i = icmp eq i32 %call.i280.i, 1
  br i1 %cmp.not.i281.i, label %nxt6000_writereg.exit272.i.nxt6000_writereg.exit287.i_crit_edge, label %do.body.i283.i

nxt6000_writereg.exit272.i.nxt6000_writereg.exit287.i_crit_edge: ; preds = %nxt6000_writereg.exit272.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit287.i

do.body.i283.i:                                   ; preds = %nxt6000_writereg.exit272.i
  %320 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %320)
  %tobool.not.i282.i = icmp eq i32 %320, 0
  br i1 %tobool.not.i282.i, label %do.body.i283.i.nxt6000_writereg.exit287.i_crit_edge, label %do.end.i285.i

do.body.i283.i.nxt6000_writereg.exit287.i_crit_edge: ; preds = %do.body.i283.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit287.i

do.end.i285.i:                                    ; preds = %do.body.i283.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i284.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 81, i32 noundef 4, i32 noundef %call.i280.i) #10
  br label %nxt6000_writereg.exit287.i

nxt6000_writereg.exit287.i:                       ; preds = %do.end.i285.i, %do.body.i283.i.nxt6000_writereg.exit287.i_crit_edge, %nxt6000_writereg.exit272.i.nxt6000_writereg.exit287.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i274.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i273.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i288.i) #6
  %321 = getelementptr inbounds [2 x i8], ptr %buf.i288.i, i32 0, i32 1
  %322 = ptrtoint ptr %buf.i288.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 89, ptr %buf.i288.i, align 1
  %323 = ptrtoint ptr %321 to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 48, ptr %321, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i289.i) #6
  %324 = getelementptr inbounds i8, ptr %msg.i289.i, i32 4
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 196607, ptr %324, align 4
  %326 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %config.i.i7, align 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %327, align 1
  %conv.i291.i = zext i8 %329 to i16
  %330 = ptrtoint ptr %msg.i289.i to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 %conv.i291.i, ptr %msg.i289.i, align 4
  %flags.i292.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i289.i, i32 0, i32 1
  %331 = ptrtoint ptr %flags.i292.i to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 0, ptr %flags.i292.i, align 2
  %buf1.i294.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i289.i, i32 0, i32 3
  %332 = ptrtoint ptr %buf1.i294.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %buf.i288.i, ptr %buf1.i294.i, align 4
  %333 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %56, align 4
  %call.i295.i = call i32 @i2c_transfer(ptr noundef %334, ptr noundef nonnull %msg.i289.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i295.i)
  %cmp.not.i296.i = icmp eq i32 %call.i295.i, 1
  br i1 %cmp.not.i296.i, label %nxt6000_writereg.exit287.i.nxt6000_writereg.exit302.i_crit_edge, label %do.body.i298.i

nxt6000_writereg.exit287.i.nxt6000_writereg.exit302.i_crit_edge: ; preds = %nxt6000_writereg.exit287.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit302.i

do.body.i298.i:                                   ; preds = %nxt6000_writereg.exit287.i
  %335 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool.not.i297.i = icmp eq i32 %335, 0
  br i1 %tobool.not.i297.i, label %do.body.i298.i.nxt6000_writereg.exit302.i_crit_edge, label %do.end.i300.i

do.body.i298.i.nxt6000_writereg.exit302.i_crit_edge: ; preds = %do.body.i298.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit302.i

do.end.i300.i:                                    ; preds = %do.body.i298.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i299.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 89, i32 noundef 48, i32 noundef %call.i295.i) #10
  br label %nxt6000_writereg.exit302.i

nxt6000_writereg.exit302.i:                       ; preds = %do.end.i300.i, %do.body.i298.i.nxt6000_writereg.exit302.i_crit_edge, %nxt6000_writereg.exit287.i.nxt6000_writereg.exit302.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i289.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i288.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i303.i) #6
  %336 = getelementptr inbounds [2 x i8], ptr %buf.i303.i, i32 0, i32 1
  %337 = ptrtoint ptr %buf.i303.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 91, ptr %buf.i303.i, align 1
  %338 = ptrtoint ptr %336 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 73, ptr %336, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i304.i) #6
  %339 = getelementptr inbounds i8, ptr %msg.i304.i, i32 4
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 196607, ptr %339, align 4
  %341 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %config.i.i7, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %342, align 1
  %conv.i306.i = zext i8 %344 to i16
  %345 = ptrtoint ptr %msg.i304.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 %conv.i306.i, ptr %msg.i304.i, align 4
  %flags.i307.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304.i, i32 0, i32 1
  %346 = ptrtoint ptr %flags.i307.i to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 0, ptr %flags.i307.i, align 2
  %buf1.i309.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304.i, i32 0, i32 3
  %347 = ptrtoint ptr %buf1.i309.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %buf.i303.i, ptr %buf1.i309.i, align 4
  %348 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %56, align 4
  %call.i310.i = call i32 @i2c_transfer(ptr noundef %349, ptr noundef nonnull %msg.i304.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i310.i)
  %cmp.not.i311.i = icmp eq i32 %call.i310.i, 1
  br i1 %cmp.not.i311.i, label %nxt6000_writereg.exit302.i.nxt6000_writereg.exit317.i_crit_edge, label %do.body.i313.i

nxt6000_writereg.exit302.i.nxt6000_writereg.exit317.i_crit_edge: ; preds = %nxt6000_writereg.exit302.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit317.i

do.body.i313.i:                                   ; preds = %nxt6000_writereg.exit302.i
  %350 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %tobool.not.i312.i = icmp eq i32 %350, 0
  br i1 %tobool.not.i312.i, label %do.body.i313.i.nxt6000_writereg.exit317.i_crit_edge, label %do.end.i315.i

do.body.i313.i.nxt6000_writereg.exit317.i_crit_edge: ; preds = %do.body.i313.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit317.i

do.end.i315.i:                                    ; preds = %do.body.i313.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i314.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 91, i32 noundef 73, i32 noundef %call.i310.i) #10
  br label %nxt6000_writereg.exit317.i

nxt6000_writereg.exit317.i:                       ; preds = %do.end.i315.i, %do.body.i313.i.nxt6000_writereg.exit317.i_crit_edge, %nxt6000_writereg.exit302.i.nxt6000_writereg.exit317.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i304.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i303.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i318.i) #6
  %351 = getelementptr inbounds [2 x i8], ptr %buf.i318.i, i32 0, i32 1
  %352 = ptrtoint ptr %buf.i318.i to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 92, ptr %buf.i318.i, align 1
  %353 = ptrtoint ptr %351 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 114, ptr %351, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i319.i) #6
  %354 = getelementptr inbounds i8, ptr %msg.i319.i, i32 4
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 196607, ptr %354, align 4
  %356 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %config.i.i7, align 4
  %358 = ptrtoint ptr %357 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %357, align 1
  %conv.i321.i = zext i8 %359 to i16
  %360 = ptrtoint ptr %msg.i319.i to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 %conv.i321.i, ptr %msg.i319.i, align 4
  %flags.i322.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i319.i, i32 0, i32 1
  %361 = ptrtoint ptr %flags.i322.i to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 0, ptr %flags.i322.i, align 2
  %buf1.i324.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i319.i, i32 0, i32 3
  %362 = ptrtoint ptr %buf1.i324.i to i32
  call void @__asan_store4_noabort(i32 %362)
  store ptr %buf.i318.i, ptr %buf1.i324.i, align 4
  %363 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %56, align 4
  %call.i325.i = call i32 @i2c_transfer(ptr noundef %364, ptr noundef nonnull %msg.i319.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i325.i)
  %cmp.not.i326.i = icmp eq i32 %call.i325.i, 1
  br i1 %cmp.not.i326.i, label %nxt6000_writereg.exit317.i.nxt6000_writereg.exit332.i_crit_edge, label %do.body.i328.i

nxt6000_writereg.exit317.i.nxt6000_writereg.exit332.i_crit_edge: ; preds = %nxt6000_writereg.exit317.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit332.i

do.body.i328.i:                                   ; preds = %nxt6000_writereg.exit317.i
  %365 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %tobool.not.i327.i = icmp eq i32 %365, 0
  br i1 %tobool.not.i327.i, label %do.body.i328.i.nxt6000_writereg.exit332.i_crit_edge, label %do.end.i330.i

do.body.i328.i.nxt6000_writereg.exit332.i_crit_edge: ; preds = %do.body.i328.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit332.i

do.end.i330.i:                                    ; preds = %do.body.i328.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i329.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 92, i32 noundef 114, i32 noundef %call.i325.i) #10
  br label %nxt6000_writereg.exit332.i

nxt6000_writereg.exit332.i:                       ; preds = %do.end.i330.i, %do.body.i328.i.nxt6000_writereg.exit332.i_crit_edge, %nxt6000_writereg.exit317.i.nxt6000_writereg.exit332.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i319.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i318.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i333.i) #6
  %366 = getelementptr inbounds [2 x i8], ptr %buf.i333.i, i32 0, i32 1
  %367 = ptrtoint ptr %buf.i333.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 -128, ptr %buf.i333.i, align 1
  %368 = ptrtoint ptr %366 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 32, ptr %366, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i334.i) #6
  %369 = getelementptr inbounds i8, ptr %msg.i334.i, i32 4
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 196607, ptr %369, align 4
  %371 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %config.i.i7, align 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %372, align 1
  %conv.i336.i = zext i8 %374 to i16
  %375 = ptrtoint ptr %msg.i334.i to i32
  call void @__asan_store2_noabort(i32 %375)
  store i16 %conv.i336.i, ptr %msg.i334.i, align 4
  %flags.i337.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i334.i, i32 0, i32 1
  %376 = ptrtoint ptr %flags.i337.i to i32
  call void @__asan_store2_noabort(i32 %376)
  store i16 0, ptr %flags.i337.i, align 2
  %buf1.i339.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i334.i, i32 0, i32 3
  %377 = ptrtoint ptr %buf1.i339.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store ptr %buf.i333.i, ptr %buf1.i339.i, align 4
  %378 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %56, align 4
  %call.i340.i = call i32 @i2c_transfer(ptr noundef %379, ptr noundef nonnull %msg.i334.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i340.i)
  %cmp.not.i341.i = icmp eq i32 %call.i340.i, 1
  br i1 %cmp.not.i341.i, label %nxt6000_writereg.exit332.i.nxt6000_writereg.exit347.i_crit_edge, label %do.body.i343.i

nxt6000_writereg.exit332.i.nxt6000_writereg.exit347.i_crit_edge: ; preds = %nxt6000_writereg.exit332.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit347.i

do.body.i343.i:                                   ; preds = %nxt6000_writereg.exit332.i
  %380 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %tobool.not.i342.i = icmp eq i32 %380, 0
  br i1 %tobool.not.i342.i, label %do.body.i343.i.nxt6000_writereg.exit347.i_crit_edge, label %do.end.i345.i

do.body.i343.i.nxt6000_writereg.exit347.i_crit_edge: ; preds = %do.body.i343.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit347.i

do.end.i345.i:                                    ; preds = %do.body.i343.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i344.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 128, i32 noundef 32, i32 noundef %call.i340.i) #10
  br label %nxt6000_writereg.exit347.i

nxt6000_writereg.exit347.i:                       ; preds = %do.end.i345.i, %do.body.i343.i.nxt6000_writereg.exit347.i_crit_edge, %nxt6000_writereg.exit332.i.nxt6000_writereg.exit347.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i334.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i333.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i348.i) #6
  %381 = getelementptr inbounds [2 x i8], ptr %buf.i348.i, i32 0, i32 1
  %382 = ptrtoint ptr %buf.i348.i to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 -126, ptr %buf.i348.i, align 1
  %383 = ptrtoint ptr %381 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 -78, ptr %381, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i349.i) #6
  %384 = getelementptr inbounds i8, ptr %msg.i349.i, i32 4
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 196607, ptr %384, align 4
  %386 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %config.i.i7, align 4
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %387, align 1
  %conv.i351.i = zext i8 %389 to i16
  %390 = ptrtoint ptr %msg.i349.i to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %conv.i351.i, ptr %msg.i349.i, align 4
  %flags.i352.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i349.i, i32 0, i32 1
  %391 = ptrtoint ptr %flags.i352.i to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 0, ptr %flags.i352.i, align 2
  %buf1.i354.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i349.i, i32 0, i32 3
  %392 = ptrtoint ptr %buf1.i354.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %buf.i348.i, ptr %buf1.i354.i, align 4
  %393 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %56, align 4
  %call.i355.i = call i32 @i2c_transfer(ptr noundef %394, ptr noundef nonnull %msg.i349.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i355.i)
  %cmp.not.i356.i = icmp eq i32 %call.i355.i, 1
  br i1 %cmp.not.i356.i, label %nxt6000_writereg.exit347.i.nxt6000_writereg.exit362.i_crit_edge, label %do.body.i358.i

nxt6000_writereg.exit347.i.nxt6000_writereg.exit362.i_crit_edge: ; preds = %nxt6000_writereg.exit347.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit362.i

do.body.i358.i:                                   ; preds = %nxt6000_writereg.exit347.i
  %395 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %395)
  %tobool.not.i357.i = icmp eq i32 %395, 0
  br i1 %tobool.not.i357.i, label %do.body.i358.i.nxt6000_writereg.exit362.i_crit_edge, label %do.end.i360.i

do.body.i358.i.nxt6000_writereg.exit362.i_crit_edge: ; preds = %do.body.i358.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit362.i

do.end.i360.i:                                    ; preds = %do.body.i358.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i359.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 130, i32 noundef 178, i32 noundef %call.i355.i) #10
  br label %nxt6000_writereg.exit362.i

nxt6000_writereg.exit362.i:                       ; preds = %do.end.i360.i, %do.body.i358.i.nxt6000_writereg.exit362.i_crit_edge, %nxt6000_writereg.exit347.i.nxt6000_writereg.exit362.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i349.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i348.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i363.i) #6
  %396 = getelementptr inbounds [2 x i8], ptr %buf.i363.i, i32 0, i32 1
  %397 = ptrtoint ptr %buf.i363.i to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 -104, ptr %buf.i363.i, align 1
  %398 = ptrtoint ptr %396 to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 16, ptr %396, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i364.i) #6
  %399 = getelementptr inbounds i8, ptr %msg.i364.i, i32 4
  %400 = ptrtoint ptr %399 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 196607, ptr %399, align 4
  %401 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %config.i.i7, align 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %402, align 1
  %conv.i366.i = zext i8 %404 to i16
  %405 = ptrtoint ptr %msg.i364.i to i32
  call void @__asan_store2_noabort(i32 %405)
  store i16 %conv.i366.i, ptr %msg.i364.i, align 4
  %flags.i367.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i364.i, i32 0, i32 1
  %406 = ptrtoint ptr %flags.i367.i to i32
  call void @__asan_store2_noabort(i32 %406)
  store i16 0, ptr %flags.i367.i, align 2
  %buf1.i369.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i364.i, i32 0, i32 3
  %407 = ptrtoint ptr %buf1.i369.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr %buf.i363.i, ptr %buf1.i369.i, align 4
  %408 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %56, align 4
  %call.i370.i = call i32 @i2c_transfer(ptr noundef %409, ptr noundef nonnull %msg.i364.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i370.i)
  %cmp.not.i371.i = icmp eq i32 %call.i370.i, 1
  br i1 %cmp.not.i371.i, label %nxt6000_writereg.exit362.i.nxt6000_writereg.exit377.i_crit_edge, label %do.body.i373.i

nxt6000_writereg.exit362.i.nxt6000_writereg.exit377.i_crit_edge: ; preds = %nxt6000_writereg.exit362.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit377.i

do.body.i373.i:                                   ; preds = %nxt6000_writereg.exit362.i
  %410 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %410)
  %tobool.not.i372.i = icmp eq i32 %410, 0
  br i1 %tobool.not.i372.i, label %do.body.i373.i.nxt6000_writereg.exit377.i_crit_edge, label %do.end.i375.i

do.body.i373.i.nxt6000_writereg.exit377.i_crit_edge: ; preds = %do.body.i373.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit377.i

do.end.i375.i:                                    ; preds = %do.body.i373.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i374.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 152, i32 noundef 16, i32 noundef %call.i370.i) #10
  br label %nxt6000_writereg.exit377.i

nxt6000_writereg.exit377.i:                       ; preds = %do.end.i375.i, %do.body.i373.i.nxt6000_writereg.exit377.i_crit_edge, %nxt6000_writereg.exit362.i.nxt6000_writereg.exit377.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i364.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i363.i) #6
  %411 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %config.i.i7, align 4
  %clock_inversion.i = getelementptr inbounds %struct.nxt6000_config, ptr %412, i32 0, i32 1
  %413 = ptrtoint ptr %clock_inversion.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %bf.load.i = load i8, ptr %clock_inversion.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %nxt6000_writereg.exit377.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i378.i) #6
  %414 = getelementptr inbounds [2 x i8], ptr %buf.i378.i, i32 0, i32 1
  %415 = ptrtoint ptr %buf.i378.i to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 -103, ptr %buf.i378.i, align 1
  %416 = ptrtoint ptr %414 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 1, ptr %414, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i379.i) #6
  %417 = getelementptr inbounds i8, ptr %msg.i379.i, i32 4
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 196607, ptr %417, align 4
  %419 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %config.i.i7, align 4
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %420, align 1
  %conv.i381.i = zext i8 %422 to i16
  %423 = ptrtoint ptr %msg.i379.i to i32
  call void @__asan_store2_noabort(i32 %423)
  store i16 %conv.i381.i, ptr %msg.i379.i, align 4
  %flags.i382.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i379.i, i32 0, i32 1
  %424 = ptrtoint ptr %flags.i382.i to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 0, ptr %flags.i382.i, align 2
  %buf1.i384.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i379.i, i32 0, i32 3
  %425 = ptrtoint ptr %buf1.i384.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr %buf.i378.i, ptr %buf1.i384.i, align 4
  %426 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %56, align 4
  %call.i385.i = call i32 @i2c_transfer(ptr noundef %427, ptr noundef nonnull %msg.i379.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i385.i)
  %cmp.not.i386.i = icmp eq i32 %call.i385.i, 1
  br i1 %cmp.not.i386.i, label %if.then.i.nxt6000_writereg.exit392.i_crit_edge, label %do.body.i388.i

if.then.i.nxt6000_writereg.exit392.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit392.i

do.body.i388.i:                                   ; preds = %if.then.i
  %428 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %428)
  %tobool.not.i387.i = icmp eq i32 %428, 0
  br i1 %tobool.not.i387.i, label %do.body.i388.i.nxt6000_writereg.exit392.i_crit_edge, label %do.end.i390.i

do.body.i388.i.nxt6000_writereg.exit392.i_crit_edge: ; preds = %do.body.i388.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit392.i

do.end.i390.i:                                    ; preds = %do.body.i388.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i389.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 153, i32 noundef 1, i32 noundef %call.i385.i) #10
  br label %nxt6000_writereg.exit392.i

nxt6000_writereg.exit392.i:                       ; preds = %do.end.i390.i, %do.body.i388.i.nxt6000_writereg.exit392.i_crit_edge, %if.then.i.nxt6000_writereg.exit392.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i379.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i378.i) #6
  br label %if.end.i

if.else.i:                                        ; preds = %nxt6000_writereg.exit377.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i393.i) #6
  %429 = getelementptr inbounds [2 x i8], ptr %buf.i393.i, i32 0, i32 1
  %430 = ptrtoint ptr %buf.i393.i to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 -103, ptr %buf.i393.i, align 1
  %431 = ptrtoint ptr %429 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 0, ptr %429, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i394.i) #6
  %432 = getelementptr inbounds i8, ptr %msg.i394.i, i32 4
  %433 = ptrtoint ptr %432 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 196607, ptr %432, align 4
  %434 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %config.i.i7, align 4
  %436 = ptrtoint ptr %435 to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %435, align 1
  %conv.i396.i = zext i8 %437 to i16
  %438 = ptrtoint ptr %msg.i394.i to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 %conv.i396.i, ptr %msg.i394.i, align 4
  %flags.i397.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i394.i, i32 0, i32 1
  %439 = ptrtoint ptr %flags.i397.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 0, ptr %flags.i397.i, align 2
  %buf1.i399.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i394.i, i32 0, i32 3
  %440 = ptrtoint ptr %buf1.i399.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr %buf.i393.i, ptr %buf1.i399.i, align 4
  %441 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %56, align 4
  %call.i400.i = call i32 @i2c_transfer(ptr noundef %442, ptr noundef nonnull %msg.i394.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i400.i)
  %cmp.not.i401.i = icmp eq i32 %call.i400.i, 1
  br i1 %cmp.not.i401.i, label %if.else.i.nxt6000_writereg.exit407.i_crit_edge, label %do.body.i403.i

if.else.i.nxt6000_writereg.exit407.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit407.i

do.body.i403.i:                                   ; preds = %if.else.i
  %443 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %443)
  %tobool.not.i402.i = icmp eq i32 %443, 0
  br i1 %tobool.not.i402.i, label %do.body.i403.i.nxt6000_writereg.exit407.i_crit_edge, label %do.end.i405.i

do.body.i403.i.nxt6000_writereg.exit407.i_crit_edge: ; preds = %do.body.i403.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit407.i

do.end.i405.i:                                    ; preds = %do.body.i403.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i404.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 153, i32 noundef 0, i32 noundef %call.i400.i) #10
  br label %nxt6000_writereg.exit407.i

nxt6000_writereg.exit407.i:                       ; preds = %do.end.i405.i, %do.body.i403.i.nxt6000_writereg.exit407.i_crit_edge, %if.else.i.nxt6000_writereg.exit407.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i394.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i393.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %nxt6000_writereg.exit407.i, %nxt6000_writereg.exit392.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i408.i) #6
  %444 = getelementptr inbounds [2 x i8], ptr %buf.i408.i, i32 0, i32 1
  %445 = ptrtoint ptr %buf.i408.i to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 -102, ptr %buf.i408.i, align 1
  %446 = ptrtoint ptr %444 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 0, ptr %444, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i409.i) #6
  %447 = getelementptr inbounds i8, ptr %msg.i409.i, i32 4
  %448 = ptrtoint ptr %447 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 196607, ptr %447, align 4
  %449 = ptrtoint ptr %config.i.i7 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %config.i.i7, align 4
  %451 = ptrtoint ptr %450 to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %450, align 1
  %conv.i411.i = zext i8 %452 to i16
  %453 = ptrtoint ptr %msg.i409.i to i32
  call void @__asan_store2_noabort(i32 %453)
  store i16 %conv.i411.i, ptr %msg.i409.i, align 4
  %flags.i412.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i409.i, i32 0, i32 1
  %454 = ptrtoint ptr %flags.i412.i to i32
  call void @__asan_store2_noabort(i32 %454)
  store i16 0, ptr %flags.i412.i, align 2
  %buf1.i414.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i409.i, i32 0, i32 3
  %455 = ptrtoint ptr %buf1.i414.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %buf.i408.i, ptr %buf1.i414.i, align 4
  %456 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %56, align 4
  %call.i415.i = call i32 @i2c_transfer(ptr noundef %457, ptr noundef nonnull %msg.i409.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i415.i)
  %cmp.not.i416.i = icmp eq i32 %call.i415.i, 1
  br i1 %cmp.not.i416.i, label %if.end.i.nxt6000_setup.exit_crit_edge, label %do.body.i418.i

if.end.i.nxt6000_setup.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_setup.exit

do.body.i418.i:                                   ; preds = %if.end.i
  %458 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %458)
  %tobool.not.i417.i = icmp eq i32 %458, 0
  br i1 %tobool.not.i417.i, label %do.body.i418.i.nxt6000_setup.exit_crit_edge, label %do.end.i420.i

do.body.i418.i.nxt6000_setup.exit_crit_edge:      ; preds = %do.body.i418.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_setup.exit

do.end.i420.i:                                    ; preds = %do.body.i418.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i419.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 154, i32 noundef 0, i32 noundef %call.i415.i) #10
  br label %nxt6000_setup.exit

nxt6000_setup.exit:                               ; preds = %do.end.i420.i, %do.body.i418.i.nxt6000_setup.exit_crit_edge, %if.end.i.nxt6000_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i409.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i408.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt6000_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i4.i = alloca [2 x i8], align 1
  %msg.i5.i = alloca %struct.i2c_msg, align 4
  %buf.i.i91 = alloca [2 x i8], align 1
  %msg.i.i92 = alloca %struct.i2c_msg, align 4
  %buf.i137.i = alloca [2 x i8], align 1
  %msg.i138.i = alloca %struct.i2c_msg, align 4
  %b0.i117.i = alloca [1 x i8], align 1
  %b1.i118.i = alloca [1 x i8], align 1
  %msgs.i119.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i101.i = alloca [2 x i8], align 1
  %msg.i102.i = alloca %struct.i2c_msg, align 4
  %b0.i81.i = alloca [1 x i8], align 1
  %b1.i82.i = alloca [1 x i8], align 1
  %msgs.i83.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i65.i = alloca [2 x i8], align 1
  %msg.i66.i = alloca %struct.i2c_msg, align 4
  %b0.i45.i = alloca [1 x i8], align 1
  %b1.i46.i = alloca [1 x i8], align 1
  %msgs.i47.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i35.i = alloca [2 x i8], align 1
  %msg.i.i63 = alloca %struct.i2c_msg, align 4
  %b0.i.i64 = alloca [1 x i8], align 1
  %b1.i.i65 = alloca [1 x i8], align 1
  %msgs.i.i66 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i133.i = alloca [2 x i8], align 1
  %msg.i134.i = alloca %struct.i2c_msg, align 4
  %b0.i113.i = alloca [1 x i8], align 1
  %b1.i114.i = alloca [1 x i8], align 1
  %msgs.i115.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i97.i = alloca [2 x i8], align 1
  %msg.i98.i = alloca %struct.i2c_msg, align 4
  %b0.i77.i = alloca [1 x i8], align 1
  %b1.i78.i = alloca [1 x i8], align 1
  %msgs.i79.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i61.i = alloca [2 x i8], align 1
  %msg.i62.i = alloca %struct.i2c_msg, align 4
  %b0.i41.i = alloca [1 x i8], align 1
  %b1.i42.i = alloca [1 x i8], align 1
  %msgs.i43.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i31.i = alloca [2 x i8], align 1
  %msg.i.i49 = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i12.i = alloca [2 x i8], align 1
  %msg.i13.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
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
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %6 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bandwidth_hz, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end10.cleanup_crit_edge [
    i32 6000000, label %if.end10.sw.epilog.i_crit_edge
    i32 7000000, label %sw.bb1.i
    i32 8000000, label %sw.bb2.i
  ]

if.end10.sw.epilog.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb1.i, %if.end10.sw.epilog.i_crit_edge
  %nominal_rate.0.i = phi i32 [ 29257, %sw.bb2.i ], [ 25600, %sw.bb1.i ], [ 21943, %if.end10.sw.epilog.i_crit_edge ]
  %conv3.i = trunc i32 %nominal_rate.0.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 91, ptr %buf.i.i, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3.i, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %12 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 196607, ptr %12, align 4
  %config.i.i = getelementptr inbounds %struct.nxt6000_state, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv.i.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.epilog.i
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.nxt6000_writereg.exit.thread.i_crit_edge, label %do.end.i.i

do.body.i.i.nxt6000_writereg.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit.thread.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i.i = and i32 %nominal_rate.0.i, 255
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 91, i32 noundef %conv6.i.i, i32 noundef %call.i.i) #10
  br label %nxt6000_writereg.exit.thread.i

nxt6000_writereg.exit.thread.i:                   ; preds = %do.end.i.i, %do.body.i.i.nxt6000_writereg.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %24 = lshr i32 %nominal_rate.0.i, 8
  %conv7.i = trunc i32 %24 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i12.i) #6
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i12.i, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i12.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 92, ptr %buf.i12.i, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv7.i, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i13.i) #6
  %28 = getelementptr inbounds i8, ptr %msg.i13.i, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  %30 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i15.i = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i13.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i15.i, ptr %msg.i13.i, align 4
  %flags.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i16.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i16.i, align 2
  %buf1.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13.i, i32 0, i32 3
  %36 = ptrtoint ptr %buf1.i18.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i12.i, ptr %buf1.i18.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i19.i = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i13.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i19.i)
  %cmp.not.i20.i = icmp eq i32 %call.i19.i, 1
  br i1 %cmp.not.i20.i, label %if.end13, label %do.body.i22.i

do.body.i22.i:                                    ; preds = %if.end.i
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i21.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i21.i, label %do.body.i22.i.nxt6000_set_bandwidth.exit.thread111_crit_edge, label %do.end.i25.i

do.body.i22.i.nxt6000_set_bandwidth.exit.thread111_crit_edge: ; preds = %do.body.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_set_bandwidth.exit.thread111

do.end.i25.i:                                     ; preds = %do.body.i22.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 92, i32 noundef %24, i32 noundef %call.i19.i) #10
  br label %nxt6000_set_bandwidth.exit.thread111

nxt6000_set_bandwidth.exit.thread111:             ; preds = %do.end.i25.i, %do.body.i22.i.nxt6000_set_bandwidth.exit.thread111_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i13.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i12.i) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i13.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i12.i) #6
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %40 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %guard_interval, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %41, label %if.end13.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 4, label %if.end13.sw.bb10.i_crit_edge
    i32 2, label %if.end13.sw.bb10.i_crit_edge120
    i32 3, label %sw.bb17.i
  ]

if.end13.sw.bb10.i_crit_edge120:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

if.end13.sw.bb10.i_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #6
  %43 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 68, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #6
  %44 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %45 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %46 = call ptr @memset(ptr %45, i32 255, i32 16)
  %47 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv.i.i51 = zext i8 %50 to i16
  %51 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i.i51, ptr %msgs.i.i, align 4
  %flags.i.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i.i52 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i.i52, align 2
  %53 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %45, align 4
  %buf.i.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %buf.i.i53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %b0.i.i, ptr %buf.i.i53, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %55 = load i8, ptr %48, align 1
  %conv5.i.i = zext i8 %55 to i16
  %56 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %57 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %58 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %59 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call.i.i54 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i54)
  %cmp.not.i.i55 = icmp eq i32 %call.i.i54, 2
  br i1 %cmp.not.i.i55, label %sw.bb.i.nxt6000_readreg.exit.i_crit_edge, label %do.body.i.i57

sw.bb.i.nxt6000_readreg.exit.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit.i

do.body.i.i57:                                    ; preds = %sw.bb.i
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i.i56 = icmp eq i32 %62, 0
  br i1 %tobool.not.i.i56, label %do.body.i.i57.nxt6000_readreg.exit.i_crit_edge, label %do.end.i.i58

do.body.i.i57.nxt6000_readreg.exit.i_crit_edge:   ; preds = %do.body.i.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit.i

do.end.i.i58:                                     ; preds = %do.body.i.i57
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef %call.i.i54) #10
  br label %nxt6000_readreg.exit.i

nxt6000_readreg.exit.i:                           ; preds = %do.end.i.i58, %do.body.i.i57.nxt6000_readreg.exit.i_crit_edge, %sw.bb.i.nxt6000_readreg.exit.i_crit_edge
  %63 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %b1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #6
  %65 = and i8 %64, -4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i31.i) #6
  %66 = getelementptr inbounds [2 x i8], ptr %buf.i31.i, i32 0, i32 1
  %67 = ptrtoint ptr %buf.i31.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 68, ptr %buf.i31.i, align 1
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %65, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i49) #6
  %69 = getelementptr inbounds i8, ptr %msg.i.i49, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %71 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 1
  %conv.i33.i = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i.i49 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i33.i, ptr %msg.i.i49, align 4
  %flags.i34.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i49, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i34.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i34.i, align 2
  %buf1.i.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i49, i32 0, i32 3
  %77 = ptrtoint ptr %buf1.i.i59 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i31.i, ptr %buf1.i.i59, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i36.i = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i.i49, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i36.i)
  %cmp.not.i37.i = icmp eq i32 %call.i36.i, 1
  br i1 %cmp.not.i37.i, label %nxt6000_readreg.exit.i.nxt6000_writereg.exit.i_crit_edge, label %do.body.i39.i

nxt6000_readreg.exit.i.nxt6000_writereg.exit.i_crit_edge: ; preds = %nxt6000_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit.i

do.body.i39.i:                                    ; preds = %nxt6000_readreg.exit.i
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i38.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i38.i, label %do.body.i39.i.nxt6000_writereg.exit.i_crit_edge, label %do.end.i40.i

do.body.i39.i.nxt6000_writereg.exit.i_crit_edge:  ; preds = %do.body.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit.i

do.end.i40.i:                                     ; preds = %do.body.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i.i60 = zext i8 %65 to i32
  %call7.i.i61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 68, i32 noundef %conv6.i.i60, i32 noundef %call.i36.i) #10
  br label %nxt6000_writereg.exit.i

nxt6000_writereg.exit.i:                          ; preds = %do.end.i40.i, %do.body.i39.i.nxt6000_writereg.exit.i_crit_edge, %nxt6000_readreg.exit.i.nxt6000_writereg.exit.i_crit_edge
  %cond.i.i = phi i32 [ -5, %do.body.i39.i.nxt6000_writereg.exit.i_crit_edge ], [ -5, %do.end.i40.i ], [ 0, %nxt6000_readreg.exit.i.nxt6000_writereg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i49) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i31.i) #6
  br label %nxt6000_set_guard_interval.exit

sw.bb3.i:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i41.i) #6
  %81 = ptrtoint ptr %b0.i41.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 68, ptr %b0.i41.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i42.i) #6
  %82 = ptrtoint ptr %b1.i42.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %b1.i42.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i43.i) #6
  %83 = getelementptr inbounds i8, ptr %msgs.i43.i, i32 4
  %84 = call ptr @memset(ptr %83, i32 255, i32 16)
  %85 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %config.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 1
  %conv.i45.i = zext i8 %88 to i16
  %89 = ptrtoint ptr %msgs.i43.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i45.i, ptr %msgs.i43.i, align 4
  %flags.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i43.i, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i46.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i46.i, align 2
  %91 = ptrtoint ptr %83 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %83, align 4
  %buf.i48.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i43.i, i32 0, i32 3
  %92 = ptrtoint ptr %buf.i48.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %b0.i41.i, ptr %buf.i48.i, align 4
  %arrayinit.element.i49.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i43.i, i32 1
  %93 = load i8, ptr %86, align 1
  %conv5.i50.i = zext i8 %93 to i16
  %94 = ptrtoint ptr %arrayinit.element.i49.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv5.i50.i, ptr %arrayinit.element.i49.i, align 4
  %flags6.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i43.i, i32 1, i32 1
  %95 = ptrtoint ptr %flags6.i51.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 1, ptr %flags6.i51.i, align 2
  %len7.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i43.i, i32 1, i32 2
  %96 = ptrtoint ptr %len7.i52.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 1, ptr %len7.i52.i, align 4
  %buf8.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i43.i, i32 1, i32 3
  %97 = ptrtoint ptr %buf8.i53.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %b1.i42.i, ptr %buf8.i53.i, align 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %call.i54.i = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msgs.i43.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i54.i)
  %cmp.not.i55.i = icmp eq i32 %call.i54.i, 2
  br i1 %cmp.not.i55.i, label %sw.bb3.i.nxt6000_readreg.exit60.i_crit_edge, label %do.body.i57.i

sw.bb3.i.nxt6000_readreg.exit60.i_crit_edge:      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit60.i

do.body.i57.i:                                    ; preds = %sw.bb3.i
  %100 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i56.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i56.i, label %do.body.i57.i.nxt6000_readreg.exit60.i_crit_edge, label %do.end.i59.i

do.body.i57.i.nxt6000_readreg.exit60.i_crit_edge: ; preds = %do.body.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit60.i

do.end.i59.i:                                     ; preds = %do.body.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef %call.i54.i) #10
  br label %nxt6000_readreg.exit60.i

nxt6000_readreg.exit60.i:                         ; preds = %do.end.i59.i, %do.body.i57.i.nxt6000_readreg.exit60.i_crit_edge, %sw.bb3.i.nxt6000_readreg.exit60.i_crit_edge
  %101 = ptrtoint ptr %b1.i42.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %b1.i42.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i43.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i42.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i41.i) #6
  %103 = and i8 %102, -4
  %104 = or i8 %103, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i61.i) #6
  %105 = getelementptr inbounds [2 x i8], ptr %buf.i61.i, i32 0, i32 1
  %106 = ptrtoint ptr %buf.i61.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 68, ptr %buf.i61.i, align 1
  %107 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %104, ptr %105, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i62.i) #6
  %108 = getelementptr inbounds i8, ptr %msg.i62.i, i32 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 196607, ptr %108, align 4
  %110 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %config.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 1
  %conv.i64.i = zext i8 %113 to i16
  %114 = ptrtoint ptr %msg.i62.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i64.i, ptr %msg.i62.i, align 4
  %flags.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 1
  %115 = ptrtoint ptr %flags.i65.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags.i65.i, align 2
  %buf1.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62.i, i32 0, i32 3
  %116 = ptrtoint ptr %buf1.i67.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %buf.i61.i, ptr %buf1.i67.i, align 4
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %call.i68.i = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %msg.i62.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i68.i)
  %cmp.not.i69.i = icmp eq i32 %call.i68.i, 1
  br i1 %cmp.not.i69.i, label %nxt6000_readreg.exit60.i.nxt6000_writereg.exit76.i_crit_edge, label %do.body.i71.i

nxt6000_readreg.exit60.i.nxt6000_writereg.exit76.i_crit_edge: ; preds = %nxt6000_readreg.exit60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit76.i

do.body.i71.i:                                    ; preds = %nxt6000_readreg.exit60.i
  %119 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i70.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i70.i, label %do.body.i71.i.nxt6000_writereg.exit76.i_crit_edge, label %do.end.i74.i

do.body.i71.i.nxt6000_writereg.exit76.i_crit_edge: ; preds = %do.body.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit76.i

do.end.i74.i:                                     ; preds = %do.body.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i72.i = zext i8 %104 to i32
  %call7.i73.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 68, i32 noundef %conv6.i72.i, i32 noundef %call.i68.i) #10
  br label %nxt6000_writereg.exit76.i

nxt6000_writereg.exit76.i:                        ; preds = %do.end.i74.i, %do.body.i71.i.nxt6000_writereg.exit76.i_crit_edge, %nxt6000_readreg.exit60.i.nxt6000_writereg.exit76.i_crit_edge
  %cond.i75.i = phi i32 [ -5, %do.body.i71.i.nxt6000_writereg.exit76.i_crit_edge ], [ -5, %do.end.i74.i ], [ 0, %nxt6000_readreg.exit60.i.nxt6000_writereg.exit76.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i62.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i61.i) #6
  br label %nxt6000_set_guard_interval.exit

sw.bb10.i:                                        ; preds = %if.end13.sw.bb10.i_crit_edge, %if.end13.sw.bb10.i_crit_edge120
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i77.i) #6
  %120 = ptrtoint ptr %b0.i77.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 68, ptr %b0.i77.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i78.i) #6
  %121 = ptrtoint ptr %b1.i78.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %b1.i78.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i79.i) #6
  %122 = getelementptr inbounds i8, ptr %msgs.i79.i, i32 4
  %123 = call ptr @memset(ptr %122, i32 255, i32 16)
  %124 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %config.i.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 1
  %conv.i81.i = zext i8 %127 to i16
  %128 = ptrtoint ptr %msgs.i79.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv.i81.i, ptr %msgs.i79.i, align 4
  %flags.i82.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i79.i, i32 0, i32 1
  %129 = ptrtoint ptr %flags.i82.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %flags.i82.i, align 2
  %130 = ptrtoint ptr %122 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 1, ptr %122, align 4
  %buf.i84.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i79.i, i32 0, i32 3
  %131 = ptrtoint ptr %buf.i84.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %b0.i77.i, ptr %buf.i84.i, align 4
  %arrayinit.element.i85.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i79.i, i32 1
  %132 = load i8, ptr %125, align 1
  %conv5.i86.i = zext i8 %132 to i16
  %133 = ptrtoint ptr %arrayinit.element.i85.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv5.i86.i, ptr %arrayinit.element.i85.i, align 4
  %flags6.i87.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i79.i, i32 1, i32 1
  %134 = ptrtoint ptr %flags6.i87.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 1, ptr %flags6.i87.i, align 2
  %len7.i88.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i79.i, i32 1, i32 2
  %135 = ptrtoint ptr %len7.i88.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 1, ptr %len7.i88.i, align 4
  %buf8.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i79.i, i32 1, i32 3
  %136 = ptrtoint ptr %buf8.i89.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %b1.i78.i, ptr %buf8.i89.i, align 4
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  %call.i90.i = call i32 @i2c_transfer(ptr noundef %138, ptr noundef nonnull %msgs.i79.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i90.i)
  %cmp.not.i91.i = icmp eq i32 %call.i90.i, 2
  br i1 %cmp.not.i91.i, label %sw.bb10.i.nxt6000_readreg.exit96.i_crit_edge, label %do.body.i93.i

sw.bb10.i.nxt6000_readreg.exit96.i_crit_edge:     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit96.i

do.body.i93.i:                                    ; preds = %sw.bb10.i
  %139 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool.not.i92.i = icmp eq i32 %139, 0
  br i1 %tobool.not.i92.i, label %do.body.i93.i.nxt6000_readreg.exit96.i_crit_edge, label %do.end.i95.i

do.body.i93.i.nxt6000_readreg.exit96.i_crit_edge: ; preds = %do.body.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit96.i

do.end.i95.i:                                     ; preds = %do.body.i93.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i94.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef %call.i90.i) #10
  br label %nxt6000_readreg.exit96.i

nxt6000_readreg.exit96.i:                         ; preds = %do.end.i95.i, %do.body.i93.i.nxt6000_readreg.exit96.i_crit_edge, %sw.bb10.i.nxt6000_readreg.exit96.i_crit_edge
  %140 = ptrtoint ptr %b1.i78.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %b1.i78.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i79.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i78.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i77.i) #6
  %142 = and i8 %141, -4
  %143 = or i8 %142, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i97.i) #6
  %144 = getelementptr inbounds [2 x i8], ptr %buf.i97.i, i32 0, i32 1
  %145 = ptrtoint ptr %buf.i97.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 68, ptr %buf.i97.i, align 1
  %146 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %143, ptr %144, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i98.i) #6
  %147 = getelementptr inbounds i8, ptr %msg.i98.i, i32 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 196607, ptr %147, align 4
  %149 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %config.i.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 1
  %conv.i100.i = zext i8 %152 to i16
  %153 = ptrtoint ptr %msg.i98.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv.i100.i, ptr %msg.i98.i, align 4
  %flags.i101.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98.i, i32 0, i32 1
  %154 = ptrtoint ptr %flags.i101.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %flags.i101.i, align 2
  %buf1.i103.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98.i, i32 0, i32 3
  %155 = ptrtoint ptr %buf1.i103.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %buf.i97.i, ptr %buf1.i103.i, align 4
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 4
  %call.i104.i = call i32 @i2c_transfer(ptr noundef %157, ptr noundef nonnull %msg.i98.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i104.i)
  %cmp.not.i105.i = icmp eq i32 %call.i104.i, 1
  br i1 %cmp.not.i105.i, label %nxt6000_readreg.exit96.i.nxt6000_writereg.exit112.i_crit_edge, label %do.body.i107.i

nxt6000_readreg.exit96.i.nxt6000_writereg.exit112.i_crit_edge: ; preds = %nxt6000_readreg.exit96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit112.i

do.body.i107.i:                                   ; preds = %nxt6000_readreg.exit96.i
  %158 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i106.i = icmp eq i32 %158, 0
  br i1 %tobool.not.i106.i, label %do.body.i107.i.nxt6000_writereg.exit112.i_crit_edge, label %do.end.i110.i

do.body.i107.i.nxt6000_writereg.exit112.i_crit_edge: ; preds = %do.body.i107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit112.i

do.end.i110.i:                                    ; preds = %do.body.i107.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i108.i = zext i8 %143 to i32
  %call7.i109.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 68, i32 noundef %conv6.i108.i, i32 noundef %call.i104.i) #10
  br label %nxt6000_writereg.exit112.i

nxt6000_writereg.exit112.i:                       ; preds = %do.end.i110.i, %do.body.i107.i.nxt6000_writereg.exit112.i_crit_edge, %nxt6000_readreg.exit96.i.nxt6000_writereg.exit112.i_crit_edge
  %cond.i111.i = phi i32 [ -5, %do.body.i107.i.nxt6000_writereg.exit112.i_crit_edge ], [ -5, %do.end.i110.i ], [ 0, %nxt6000_readreg.exit96.i.nxt6000_writereg.exit112.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i98.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i97.i) #6
  br label %nxt6000_set_guard_interval.exit

sw.bb17.i:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i113.i) #6
  %159 = ptrtoint ptr %b0.i113.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 68, ptr %b0.i113.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i114.i) #6
  %160 = ptrtoint ptr %b1.i114.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %b1.i114.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i115.i) #6
  %161 = getelementptr inbounds i8, ptr %msgs.i115.i, i32 4
  %162 = call ptr @memset(ptr %161, i32 255, i32 16)
  %163 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %config.i.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %164, align 1
  %conv.i117.i = zext i8 %166 to i16
  %167 = ptrtoint ptr %msgs.i115.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i117.i, ptr %msgs.i115.i, align 4
  %flags.i118.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i115.i, i32 0, i32 1
  %168 = ptrtoint ptr %flags.i118.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i118.i, align 2
  %169 = ptrtoint ptr %161 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 1, ptr %161, align 4
  %buf.i120.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i115.i, i32 0, i32 3
  %170 = ptrtoint ptr %buf.i120.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %b0.i113.i, ptr %buf.i120.i, align 4
  %arrayinit.element.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i115.i, i32 1
  %171 = load i8, ptr %164, align 1
  %conv5.i122.i = zext i8 %171 to i16
  %172 = ptrtoint ptr %arrayinit.element.i121.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv5.i122.i, ptr %arrayinit.element.i121.i, align 4
  %flags6.i123.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i115.i, i32 1, i32 1
  %173 = ptrtoint ptr %flags6.i123.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 1, ptr %flags6.i123.i, align 2
  %len7.i124.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i115.i, i32 1, i32 2
  %174 = ptrtoint ptr %len7.i124.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 1, ptr %len7.i124.i, align 4
  %buf8.i125.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i115.i, i32 1, i32 3
  %175 = ptrtoint ptr %buf8.i125.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %b1.i114.i, ptr %buf8.i125.i, align 4
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 4
  %call.i126.i = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %msgs.i115.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i126.i)
  %cmp.not.i127.i = icmp eq i32 %call.i126.i, 2
  br i1 %cmp.not.i127.i, label %sw.bb17.i.nxt6000_readreg.exit132.i_crit_edge, label %do.body.i129.i

sw.bb17.i.nxt6000_readreg.exit132.i_crit_edge:    ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit132.i

do.body.i129.i:                                   ; preds = %sw.bb17.i
  %178 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool.not.i128.i = icmp eq i32 %178, 0
  br i1 %tobool.not.i128.i, label %do.body.i129.i.nxt6000_readreg.exit132.i_crit_edge, label %do.end.i131.i

do.body.i129.i.nxt6000_readreg.exit132.i_crit_edge: ; preds = %do.body.i129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit132.i

do.end.i131.i:                                    ; preds = %do.body.i129.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i130.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef %call.i126.i) #10
  br label %nxt6000_readreg.exit132.i

nxt6000_readreg.exit132.i:                        ; preds = %do.end.i131.i, %do.body.i129.i.nxt6000_readreg.exit132.i_crit_edge, %sw.bb17.i.nxt6000_readreg.exit132.i_crit_edge
  %179 = ptrtoint ptr %b1.i114.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %b1.i114.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i115.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i114.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i113.i) #6
  %181 = or i8 %180, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i133.i) #6
  %182 = getelementptr inbounds [2 x i8], ptr %buf.i133.i, i32 0, i32 1
  %183 = ptrtoint ptr %buf.i133.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 68, ptr %buf.i133.i, align 1
  %184 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %181, ptr %182, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i134.i) #6
  %185 = getelementptr inbounds i8, ptr %msg.i134.i, i32 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 196607, ptr %185, align 4
  %187 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %config.i.i, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %188, align 1
  %conv.i136.i = zext i8 %190 to i16
  %191 = ptrtoint ptr %msg.i134.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv.i136.i, ptr %msg.i134.i, align 4
  %flags.i137.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i, i32 0, i32 1
  %192 = ptrtoint ptr %flags.i137.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 0, ptr %flags.i137.i, align 2
  %buf1.i139.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i, i32 0, i32 3
  %193 = ptrtoint ptr %buf1.i139.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %buf.i133.i, ptr %buf1.i139.i, align 4
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 4
  %call.i140.i = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %msg.i134.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i140.i)
  %cmp.not.i141.i = icmp eq i32 %call.i140.i, 1
  br i1 %cmp.not.i141.i, label %nxt6000_readreg.exit132.i.nxt6000_writereg.exit148.i_crit_edge, label %do.body.i143.i

nxt6000_readreg.exit132.i.nxt6000_writereg.exit148.i_crit_edge: ; preds = %nxt6000_readreg.exit132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit148.i

do.body.i143.i:                                   ; preds = %nxt6000_readreg.exit132.i
  %196 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.i142.i = icmp eq i32 %196, 0
  br i1 %tobool.not.i142.i, label %do.body.i143.i.nxt6000_writereg.exit148.i_crit_edge, label %do.end.i146.i

do.body.i143.i.nxt6000_writereg.exit148.i_crit_edge: ; preds = %do.body.i143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit148.i

do.end.i146.i:                                    ; preds = %do.body.i143.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i144.i = zext i8 %181 to i32
  %call7.i145.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 68, i32 noundef %conv6.i144.i, i32 noundef %call.i140.i) #10
  br label %nxt6000_writereg.exit148.i

nxt6000_writereg.exit148.i:                       ; preds = %do.end.i146.i, %do.body.i143.i.nxt6000_writereg.exit148.i_crit_edge, %nxt6000_readreg.exit132.i.nxt6000_writereg.exit148.i_crit_edge
  %cond.i147.i = phi i32 [ -5, %do.body.i143.i.nxt6000_writereg.exit148.i_crit_edge ], [ -5, %do.end.i146.i ], [ 0, %nxt6000_readreg.exit132.i.nxt6000_writereg.exit148.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i134.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i133.i) #6
  br label %nxt6000_set_guard_interval.exit

nxt6000_set_guard_interval.exit:                  ; preds = %nxt6000_writereg.exit148.i, %nxt6000_writereg.exit112.i, %nxt6000_writereg.exit76.i, %nxt6000_writereg.exit.i
  %retval.0.i62 = phi i32 [ %cond.i147.i, %nxt6000_writereg.exit148.i ], [ %cond.i111.i, %nxt6000_writereg.exit112.i ], [ %cond.i75.i, %nxt6000_writereg.exit76.i ], [ %cond.i.i, %nxt6000_writereg.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i62)
  %cmp15 = icmp slt i32 %retval.0.i62, 0
  br i1 %cmp15, label %nxt6000_set_guard_interval.exit.cleanup_crit_edge, label %if.end17

nxt6000_set_guard_interval.exit.cleanup_crit_edge: ; preds = %nxt6000_set_guard_interval.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %nxt6000_set_guard_interval.exit
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %197 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %transmission_mode, align 4
  %199 = zext i32 %198 to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %198, label %if.end17.cleanup_crit_edge [
    i32 0, label %sw.bb.i78
    i32 1, label %if.end17.sw.bb10.i89_crit_edge
    i32 2, label %if.end17.sw.bb10.i89_crit_edge121
  ]

if.end17.sw.bb10.i89_crit_edge121:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i89

if.end17.sw.bb10.i89_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10.i89

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i78:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i64) #6
  %200 = ptrtoint ptr %b0.i.i64 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -126, ptr %b0.i.i64, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i65) #6
  %201 = ptrtoint ptr %b1.i.i65 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %b1.i.i65, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i66) #6
  %202 = getelementptr inbounds i8, ptr %msgs.i.i66, i32 4
  %203 = call ptr @memset(ptr %202, i32 255, i32 16)
  %204 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %config.i.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %205, align 1
  %conv.i.i68 = zext i8 %207 to i16
  %208 = ptrtoint ptr %msgs.i.i66 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %conv.i.i68, ptr %msgs.i.i66, align 4
  %flags.i.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i66, i32 0, i32 1
  %209 = ptrtoint ptr %flags.i.i69 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 0, ptr %flags.i.i69, align 2
  %210 = ptrtoint ptr %202 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 1, ptr %202, align 4
  %buf.i.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i66, i32 0, i32 3
  %211 = ptrtoint ptr %buf.i.i70 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %b0.i.i64, ptr %buf.i.i70, align 4
  %arrayinit.element.i.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i66, i32 1
  %212 = load i8, ptr %205, align 1
  %conv5.i.i72 = zext i8 %212 to i16
  %213 = ptrtoint ptr %arrayinit.element.i.i71 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %conv5.i.i72, ptr %arrayinit.element.i.i71, align 4
  %flags6.i.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i66, i32 1, i32 1
  %214 = ptrtoint ptr %flags6.i.i73 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 1, ptr %flags6.i.i73, align 2
  %len7.i.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i66, i32 1, i32 2
  %215 = ptrtoint ptr %len7.i.i74 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 1, ptr %len7.i.i74, align 4
  %buf8.i.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i66, i32 1, i32 3
  %216 = ptrtoint ptr %buf8.i.i75 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %b1.i.i65, ptr %buf8.i.i75, align 4
  %217 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %1, align 4
  %call.i.i76 = call i32 @i2c_transfer(ptr noundef %218, ptr noundef nonnull %msgs.i.i66, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i76)
  %cmp.not.i.i77 = icmp eq i32 %call.i.i76, 2
  br i1 %cmp.not.i.i77, label %sw.bb.i78.nxt6000_readreg.exit.i84_crit_edge, label %do.body.i.i80

sw.bb.i78.nxt6000_readreg.exit.i84_crit_edge:     ; preds = %sw.bb.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit.i84

do.body.i.i80:                                    ; preds = %sw.bb.i78
  %219 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool.not.i.i79 = icmp eq i32 %219, 0
  br i1 %tobool.not.i.i79, label %do.body.i.i80.nxt6000_readreg.exit.i84_crit_edge, label %do.end.i.i82

do.body.i.i80.nxt6000_readreg.exit.i84_crit_edge: ; preds = %do.body.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit.i84

do.end.i.i82:                                     ; preds = %do.body.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i.i81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 130, i32 noundef %call.i.i76) #10
  br label %nxt6000_readreg.exit.i84

nxt6000_readreg.exit.i84:                         ; preds = %do.end.i.i82, %do.body.i.i80.nxt6000_readreg.exit.i84_crit_edge, %sw.bb.i78.nxt6000_readreg.exit.i84_crit_edge
  %220 = ptrtoint ptr %b1.i.i65 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %b1.i.i65, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i66) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i65) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i64) #6
  %222 = and i8 %221, -4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i35.i) #6
  %223 = getelementptr inbounds [2 x i8], ptr %buf.i35.i, i32 0, i32 1
  %224 = ptrtoint ptr %buf.i35.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 -126, ptr %buf.i35.i, align 1
  %225 = ptrtoint ptr %223 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %222, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i63) #6
  %226 = getelementptr inbounds i8, ptr %msg.i.i63, i32 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 196607, ptr %226, align 4
  %228 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %config.i.i, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %229, align 1
  %conv.i37.i = zext i8 %231 to i16
  %232 = ptrtoint ptr %msg.i.i63 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %conv.i37.i, ptr %msg.i.i63, align 4
  %flags.i38.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i63, i32 0, i32 1
  %233 = ptrtoint ptr %flags.i38.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 0, ptr %flags.i38.i, align 2
  %buf1.i.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i63, i32 0, i32 3
  %234 = ptrtoint ptr %buf1.i.i83 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %buf.i35.i, ptr %buf1.i.i83, align 4
  %235 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %1, align 4
  %call.i40.i = call i32 @i2c_transfer(ptr noundef %236, ptr noundef nonnull %msg.i.i63, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i40.i)
  %cmp.not.i41.i = icmp eq i32 %call.i40.i, 1
  br i1 %cmp.not.i41.i, label %if.end.i88, label %do.body.i43.i

do.body.i43.i:                                    ; preds = %nxt6000_readreg.exit.i84
  %237 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool.not.i42.i = icmp eq i32 %237, 0
  br i1 %tobool.not.i42.i, label %do.body.i43.i.nxt6000_writereg.exit.thread.i87_crit_edge, label %do.end.i44.i

do.body.i43.i.nxt6000_writereg.exit.thread.i87_crit_edge: ; preds = %do.body.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit.thread.i87

do.end.i44.i:                                     ; preds = %do.body.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i.i85 = zext i8 %222 to i32
  %call7.i.i86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 130, i32 noundef %conv6.i.i85, i32 noundef %call.i40.i) #10
  br label %nxt6000_writereg.exit.thread.i87

nxt6000_writereg.exit.thread.i87:                 ; preds = %do.end.i44.i, %do.body.i43.i.nxt6000_writereg.exit.thread.i87_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i63) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35.i) #6
  br label %cleanup

if.end.i88:                                       ; preds = %nxt6000_readreg.exit.i84
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i63) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i45.i) #6
  %238 = ptrtoint ptr %b0.i45.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 68, ptr %b0.i45.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i46.i) #6
  %239 = ptrtoint ptr %b1.i46.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 0, ptr %b1.i46.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i47.i) #6
  %240 = getelementptr inbounds i8, ptr %msgs.i47.i, i32 4
  %241 = call ptr @memset(ptr %240, i32 255, i32 16)
  %242 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %config.i.i, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %243, align 1
  %conv.i49.i = zext i8 %245 to i16
  %246 = ptrtoint ptr %msgs.i47.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 %conv.i49.i, ptr %msgs.i47.i, align 4
  %flags.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i47.i, i32 0, i32 1
  %247 = ptrtoint ptr %flags.i50.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 0, ptr %flags.i50.i, align 2
  %248 = ptrtoint ptr %240 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 1, ptr %240, align 4
  %buf.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i47.i, i32 0, i32 3
  %249 = ptrtoint ptr %buf.i52.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %b0.i45.i, ptr %buf.i52.i, align 4
  %arrayinit.element.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i47.i, i32 1
  %250 = load i8, ptr %243, align 1
  %conv5.i54.i = zext i8 %250 to i16
  %251 = ptrtoint ptr %arrayinit.element.i53.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %conv5.i54.i, ptr %arrayinit.element.i53.i, align 4
  %flags6.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i47.i, i32 1, i32 1
  %252 = ptrtoint ptr %flags6.i55.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 1, ptr %flags6.i55.i, align 2
  %len7.i56.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i47.i, i32 1, i32 2
  %253 = ptrtoint ptr %len7.i56.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 1, ptr %len7.i56.i, align 4
  %buf8.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i47.i, i32 1, i32 3
  %254 = ptrtoint ptr %buf8.i57.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %b1.i46.i, ptr %buf8.i57.i, align 4
  %255 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %1, align 4
  %call.i58.i = call i32 @i2c_transfer(ptr noundef %256, ptr noundef nonnull %msgs.i47.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i58.i)
  %cmp.not.i59.i = icmp eq i32 %call.i58.i, 2
  br i1 %cmp.not.i59.i, label %if.end.i88.nxt6000_readreg.exit64.i_crit_edge, label %do.body.i61.i

if.end.i88.nxt6000_readreg.exit64.i_crit_edge:    ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit64.i

do.body.i61.i:                                    ; preds = %if.end.i88
  %257 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %257)
  %tobool.not.i60.i = icmp eq i32 %257, 0
  br i1 %tobool.not.i60.i, label %do.body.i61.i.nxt6000_readreg.exit64.i_crit_edge, label %do.end.i63.i

do.body.i61.i.nxt6000_readreg.exit64.i_crit_edge: ; preds = %do.body.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit64.i

do.end.i63.i:                                     ; preds = %do.body.i61.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef %call.i58.i) #10
  br label %nxt6000_readreg.exit64.i

nxt6000_readreg.exit64.i:                         ; preds = %do.end.i63.i, %do.body.i61.i.nxt6000_readreg.exit64.i_crit_edge, %if.end.i88.nxt6000_readreg.exit64.i_crit_edge
  %258 = ptrtoint ptr %b1.i46.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %b1.i46.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i47.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i46.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i45.i) #6
  %260 = and i8 %259, -5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i65.i) #6
  %261 = getelementptr inbounds [2 x i8], ptr %buf.i65.i, i32 0, i32 1
  %262 = ptrtoint ptr %buf.i65.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 68, ptr %buf.i65.i, align 1
  %263 = ptrtoint ptr %261 to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %260, ptr %261, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i66.i) #6
  %264 = getelementptr inbounds i8, ptr %msg.i66.i, i32 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 196607, ptr %264, align 4
  %266 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %config.i.i, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %267, align 1
  %conv.i68.i = zext i8 %269 to i16
  %270 = ptrtoint ptr %msg.i66.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %conv.i68.i, ptr %msg.i66.i, align 4
  %flags.i69.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66.i, i32 0, i32 1
  %271 = ptrtoint ptr %flags.i69.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 0, ptr %flags.i69.i, align 2
  %buf1.i71.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66.i, i32 0, i32 3
  %272 = ptrtoint ptr %buf1.i71.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %buf.i65.i, ptr %buf1.i71.i, align 4
  %273 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %1, align 4
  %call.i72.i = call i32 @i2c_transfer(ptr noundef %274, ptr noundef nonnull %msg.i66.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i72.i)
  %cmp.not.i73.i = icmp eq i32 %call.i72.i, 1
  br i1 %cmp.not.i73.i, label %nxt6000_readreg.exit64.i.nxt6000_writereg.exit80.i_crit_edge, label %do.body.i75.i

nxt6000_readreg.exit64.i.nxt6000_writereg.exit80.i_crit_edge: ; preds = %nxt6000_readreg.exit64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit80.i

do.body.i75.i:                                    ; preds = %nxt6000_readreg.exit64.i
  %275 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool.not.i74.i = icmp eq i32 %275, 0
  br i1 %tobool.not.i74.i, label %do.body.i75.i.nxt6000_writereg.exit80.i_crit_edge, label %do.end.i78.i

do.body.i75.i.nxt6000_writereg.exit80.i_crit_edge: ; preds = %do.body.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit80.i

do.end.i78.i:                                     ; preds = %do.body.i75.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i76.i = zext i8 %260 to i32
  %call7.i77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 68, i32 noundef %conv6.i76.i, i32 noundef %call.i72.i) #10
  br label %nxt6000_writereg.exit80.i

nxt6000_writereg.exit80.i:                        ; preds = %do.end.i78.i, %do.body.i75.i.nxt6000_writereg.exit80.i_crit_edge, %nxt6000_readreg.exit64.i.nxt6000_writereg.exit80.i_crit_edge
  %cond.i79.i = phi i32 [ -5, %do.body.i75.i.nxt6000_writereg.exit80.i_crit_edge ], [ -5, %do.end.i78.i ], [ 0, %nxt6000_readreg.exit64.i.nxt6000_writereg.exit80.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i66.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i65.i) #6
  br label %nxt6000_set_transmission_mode.exit

sw.bb10.i89:                                      ; preds = %if.end17.sw.bb10.i89_crit_edge, %if.end17.sw.bb10.i89_crit_edge121
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i81.i) #6
  %276 = ptrtoint ptr %b0.i81.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 -126, ptr %b0.i81.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i82.i) #6
  %277 = ptrtoint ptr %b1.i82.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 0, ptr %b1.i82.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i83.i) #6
  %278 = getelementptr inbounds i8, ptr %msgs.i83.i, i32 4
  %279 = call ptr @memset(ptr %278, i32 255, i32 16)
  %280 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %config.i.i, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %281, align 1
  %conv.i85.i = zext i8 %283 to i16
  %284 = ptrtoint ptr %msgs.i83.i to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %conv.i85.i, ptr %msgs.i83.i, align 4
  %flags.i86.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i83.i, i32 0, i32 1
  %285 = ptrtoint ptr %flags.i86.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 0, ptr %flags.i86.i, align 2
  %286 = ptrtoint ptr %278 to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 1, ptr %278, align 4
  %buf.i88.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i83.i, i32 0, i32 3
  %287 = ptrtoint ptr %buf.i88.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %b0.i81.i, ptr %buf.i88.i, align 4
  %arrayinit.element.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i83.i, i32 1
  %288 = load i8, ptr %281, align 1
  %conv5.i90.i = zext i8 %288 to i16
  %289 = ptrtoint ptr %arrayinit.element.i89.i to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 %conv5.i90.i, ptr %arrayinit.element.i89.i, align 4
  %flags6.i91.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i83.i, i32 1, i32 1
  %290 = ptrtoint ptr %flags6.i91.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 1, ptr %flags6.i91.i, align 2
  %len7.i92.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i83.i, i32 1, i32 2
  %291 = ptrtoint ptr %len7.i92.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 1, ptr %len7.i92.i, align 4
  %buf8.i93.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i83.i, i32 1, i32 3
  %292 = ptrtoint ptr %buf8.i93.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %b1.i82.i, ptr %buf8.i93.i, align 4
  %293 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %1, align 4
  %call.i94.i = call i32 @i2c_transfer(ptr noundef %294, ptr noundef nonnull %msgs.i83.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i94.i)
  %cmp.not.i95.i = icmp eq i32 %call.i94.i, 2
  br i1 %cmp.not.i95.i, label %sw.bb10.i89.nxt6000_readreg.exit100.i_crit_edge, label %do.body.i97.i

sw.bb10.i89.nxt6000_readreg.exit100.i_crit_edge:  ; preds = %sw.bb10.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit100.i

do.body.i97.i:                                    ; preds = %sw.bb10.i89
  %295 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool.not.i96.i = icmp eq i32 %295, 0
  br i1 %tobool.not.i96.i, label %do.body.i97.i.nxt6000_readreg.exit100.i_crit_edge, label %do.end.i99.i

do.body.i97.i.nxt6000_readreg.exit100.i_crit_edge: ; preds = %do.body.i97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit100.i

do.end.i99.i:                                     ; preds = %do.body.i97.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i98.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 130, i32 noundef %call.i94.i) #10
  br label %nxt6000_readreg.exit100.i

nxt6000_readreg.exit100.i:                        ; preds = %do.end.i99.i, %do.body.i97.i.nxt6000_readreg.exit100.i_crit_edge, %sw.bb10.i89.nxt6000_readreg.exit100.i_crit_edge
  %296 = ptrtoint ptr %b1.i82.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %b1.i82.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i83.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i82.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i81.i) #6
  %298 = and i8 %297, -4
  %299 = or i8 %298, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i101.i) #6
  %300 = getelementptr inbounds [2 x i8], ptr %buf.i101.i, i32 0, i32 1
  %301 = ptrtoint ptr %buf.i101.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 -126, ptr %buf.i101.i, align 1
  %302 = ptrtoint ptr %300 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %299, ptr %300, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i102.i) #6
  %303 = getelementptr inbounds i8, ptr %msg.i102.i, i32 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 196607, ptr %303, align 4
  %305 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %config.i.i, align 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %306, align 1
  %conv.i104.i = zext i8 %308 to i16
  %309 = ptrtoint ptr %msg.i102.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 %conv.i104.i, ptr %msg.i102.i, align 4
  %flags.i105.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102.i, i32 0, i32 1
  %310 = ptrtoint ptr %flags.i105.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 0, ptr %flags.i105.i, align 2
  %buf1.i107.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102.i, i32 0, i32 3
  %311 = ptrtoint ptr %buf1.i107.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %buf.i101.i, ptr %buf1.i107.i, align 4
  %312 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %1, align 4
  %call.i108.i = call i32 @i2c_transfer(ptr noundef %313, ptr noundef nonnull %msg.i102.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i108.i)
  %cmp.not.i109.i = icmp eq i32 %call.i108.i, 1
  br i1 %cmp.not.i109.i, label %if.end20.i, label %do.body.i111.i

do.body.i111.i:                                   ; preds = %nxt6000_readreg.exit100.i
  %314 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i110.i = icmp eq i32 %314, 0
  br i1 %tobool.not.i110.i, label %do.body.i111.i.nxt6000_writereg.exit116.thread.i_crit_edge, label %do.end.i114.i

do.body.i111.i.nxt6000_writereg.exit116.thread.i_crit_edge: ; preds = %do.body.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit116.thread.i

do.end.i114.i:                                    ; preds = %do.body.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i112.i = zext i8 %299 to i32
  %call7.i113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 130, i32 noundef %conv6.i112.i, i32 noundef %call.i108.i) #10
  br label %nxt6000_writereg.exit116.thread.i

nxt6000_writereg.exit116.thread.i:                ; preds = %do.end.i114.i, %do.body.i111.i.nxt6000_writereg.exit116.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i102.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i101.i) #6
  br label %cleanup

if.end20.i:                                       ; preds = %nxt6000_readreg.exit100.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i102.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i101.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i117.i) #6
  %315 = ptrtoint ptr %b0.i117.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 68, ptr %b0.i117.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i118.i) #6
  %316 = ptrtoint ptr %b1.i118.i to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %b1.i118.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i119.i) #6
  %317 = getelementptr inbounds i8, ptr %msgs.i119.i, i32 4
  %318 = call ptr @memset(ptr %317, i32 255, i32 16)
  %319 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %config.i.i, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %320, align 1
  %conv.i121.i = zext i8 %322 to i16
  %323 = ptrtoint ptr %msgs.i119.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 %conv.i121.i, ptr %msgs.i119.i, align 4
  %flags.i122.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i119.i, i32 0, i32 1
  %324 = ptrtoint ptr %flags.i122.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 0, ptr %flags.i122.i, align 2
  %325 = ptrtoint ptr %317 to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 1, ptr %317, align 4
  %buf.i124.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i119.i, i32 0, i32 3
  %326 = ptrtoint ptr %buf.i124.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %b0.i117.i, ptr %buf.i124.i, align 4
  %arrayinit.element.i125.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i119.i, i32 1
  %327 = load i8, ptr %320, align 1
  %conv5.i126.i = zext i8 %327 to i16
  %328 = ptrtoint ptr %arrayinit.element.i125.i to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 %conv5.i126.i, ptr %arrayinit.element.i125.i, align 4
  %flags6.i127.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i119.i, i32 1, i32 1
  %329 = ptrtoint ptr %flags6.i127.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 1, ptr %flags6.i127.i, align 2
  %len7.i128.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i119.i, i32 1, i32 2
  %330 = ptrtoint ptr %len7.i128.i to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 1, ptr %len7.i128.i, align 4
  %buf8.i129.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i119.i, i32 1, i32 3
  %331 = ptrtoint ptr %buf8.i129.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %b1.i118.i, ptr %buf8.i129.i, align 4
  %332 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %1, align 4
  %call.i130.i = call i32 @i2c_transfer(ptr noundef %333, ptr noundef nonnull %msgs.i119.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i130.i)
  %cmp.not.i131.i = icmp eq i32 %call.i130.i, 2
  br i1 %cmp.not.i131.i, label %if.end20.i.nxt6000_readreg.exit136.i_crit_edge, label %do.body.i133.i

if.end20.i.nxt6000_readreg.exit136.i_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit136.i

do.body.i133.i:                                   ; preds = %if.end20.i
  %334 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %334)
  %tobool.not.i132.i = icmp eq i32 %334, 0
  br i1 %tobool.not.i132.i, label %do.body.i133.i.nxt6000_readreg.exit136.i_crit_edge, label %do.end.i135.i

do.body.i133.i.nxt6000_readreg.exit136.i_crit_edge: ; preds = %do.body.i133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit136.i

do.end.i135.i:                                    ; preds = %do.body.i133.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef %call.i130.i) #10
  br label %nxt6000_readreg.exit136.i

nxt6000_readreg.exit136.i:                        ; preds = %do.end.i135.i, %do.body.i133.i.nxt6000_readreg.exit136.i_crit_edge, %if.end20.i.nxt6000_readreg.exit136.i_crit_edge
  %335 = ptrtoint ptr %b1.i118.i to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %b1.i118.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i119.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i118.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i117.i) #6
  %337 = or i8 %336, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i137.i) #6
  %338 = getelementptr inbounds [2 x i8], ptr %buf.i137.i, i32 0, i32 1
  %339 = ptrtoint ptr %buf.i137.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 68, ptr %buf.i137.i, align 1
  %340 = ptrtoint ptr %338 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %337, ptr %338, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i138.i) #6
  %341 = getelementptr inbounds i8, ptr %msg.i138.i, i32 4
  %342 = ptrtoint ptr %341 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 196607, ptr %341, align 4
  %343 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %config.i.i, align 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %344, align 1
  %conv.i140.i = zext i8 %346 to i16
  %347 = ptrtoint ptr %msg.i138.i to i32
  call void @__asan_store2_noabort(i32 %347)
  store i16 %conv.i140.i, ptr %msg.i138.i, align 4
  %flags.i141.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i138.i, i32 0, i32 1
  %348 = ptrtoint ptr %flags.i141.i to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 0, ptr %flags.i141.i, align 2
  %buf1.i143.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i138.i, i32 0, i32 3
  %349 = ptrtoint ptr %buf1.i143.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %buf.i137.i, ptr %buf1.i143.i, align 4
  %350 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %1, align 4
  %call.i144.i = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %msg.i138.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i144.i)
  %cmp.not.i145.i = icmp eq i32 %call.i144.i, 1
  br i1 %cmp.not.i145.i, label %nxt6000_readreg.exit136.i.nxt6000_writereg.exit152.i_crit_edge, label %do.body.i147.i

nxt6000_readreg.exit136.i.nxt6000_writereg.exit152.i_crit_edge: ; preds = %nxt6000_readreg.exit136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit152.i

do.body.i147.i:                                   ; preds = %nxt6000_readreg.exit136.i
  %352 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool.not.i146.i = icmp eq i32 %352, 0
  br i1 %tobool.not.i146.i, label %do.body.i147.i.nxt6000_writereg.exit152.i_crit_edge, label %do.end.i150.i

do.body.i147.i.nxt6000_writereg.exit152.i_crit_edge: ; preds = %do.body.i147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit152.i

do.end.i150.i:                                    ; preds = %do.body.i147.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i148.i = zext i8 %337 to i32
  %call7.i149.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 68, i32 noundef %conv6.i148.i, i32 noundef %call.i144.i) #10
  br label %nxt6000_writereg.exit152.i

nxt6000_writereg.exit152.i:                       ; preds = %do.end.i150.i, %do.body.i147.i.nxt6000_writereg.exit152.i_crit_edge, %nxt6000_readreg.exit136.i.nxt6000_writereg.exit152.i_crit_edge
  %cond.i151.i = phi i32 [ -5, %do.body.i147.i.nxt6000_writereg.exit152.i_crit_edge ], [ -5, %do.end.i150.i ], [ 0, %nxt6000_readreg.exit136.i.nxt6000_writereg.exit152.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i138.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i137.i) #6
  br label %nxt6000_set_transmission_mode.exit

nxt6000_set_transmission_mode.exit:               ; preds = %nxt6000_writereg.exit152.i, %nxt6000_writereg.exit80.i
  %retval.0.i90 = phi i32 [ %cond.i151.i, %nxt6000_writereg.exit152.i ], [ %cond.i79.i, %nxt6000_writereg.exit80.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i90)
  %cmp19 = icmp slt i32 %retval.0.i90, 0
  br i1 %cmp19, label %nxt6000_set_transmission_mode.exit.cleanup_crit_edge, label %if.end21

nxt6000_set_transmission_mode.exit.cleanup_crit_edge: ; preds = %nxt6000_set_transmission_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %nxt6000_set_transmission_mode.exit
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %353 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %inversion, align 4
  %355 = zext i32 %354 to i64
  call void @__sanitizer_cov_trace_switch(i64 %355, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %354, label %if.end21.cleanup_crit_edge [
    i32 0, label %sw.bb.i99
    i32 1, label %sw.bb1.i106
  ]

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i99:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i91) #6
  %356 = getelementptr inbounds [2 x i8], ptr %buf.i.i91, i32 0, i32 1
  %357 = ptrtoint ptr %buf.i.i91 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 75, ptr %buf.i.i91, align 1
  %358 = ptrtoint ptr %356 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 0, ptr %356, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i92) #6
  %359 = getelementptr inbounds i8, ptr %msg.i.i92, i32 4
  %360 = ptrtoint ptr %359 to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 196607, ptr %359, align 4
  %361 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %config.i.i, align 4
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %362, align 1
  %conv.i.i94 = zext i8 %364 to i16
  %365 = ptrtoint ptr %msg.i.i92 to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 %conv.i.i94, ptr %msg.i.i92, align 4
  %flags.i.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i92, i32 0, i32 1
  %366 = ptrtoint ptr %flags.i.i95 to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 0, ptr %flags.i.i95, align 2
  %buf1.i.i96 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i92, i32 0, i32 3
  %367 = ptrtoint ptr %buf1.i.i96 to i32
  call void @__asan_store4_noabort(i32 %367)
  store ptr %buf.i.i91, ptr %buf1.i.i96, align 4
  %368 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %1, align 4
  %call.i.i97 = call i32 @i2c_transfer(ptr noundef %369, ptr noundef nonnull %msg.i.i92, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i97)
  %cmp.not.i.i98 = icmp eq i32 %call.i.i97, 1
  br i1 %cmp.not.i.i98, label %sw.bb.i99.nxt6000_writereg.exit.i105_crit_edge, label %do.body.i.i101

sw.bb.i99.nxt6000_writereg.exit.i105_crit_edge:   ; preds = %sw.bb.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit.i105

do.body.i.i101:                                   ; preds = %sw.bb.i99
  %370 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool.not.i.i100 = icmp eq i32 %370, 0
  br i1 %tobool.not.i.i100, label %do.body.i.i101.nxt6000_writereg.exit.i105_crit_edge, label %do.end.i.i103

do.body.i.i101.nxt6000_writereg.exit.i105_crit_edge: ; preds = %do.body.i.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit.i105

do.end.i.i103:                                    ; preds = %do.body.i.i101
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 75, i32 noundef 0, i32 noundef %call.i.i97) #10
  br label %nxt6000_writereg.exit.i105

nxt6000_writereg.exit.i105:                       ; preds = %do.end.i.i103, %do.body.i.i101.nxt6000_writereg.exit.i105_crit_edge, %sw.bb.i99.nxt6000_writereg.exit.i105_crit_edge
  %cond.i.i104 = phi i32 [ -5, %do.body.i.i101.nxt6000_writereg.exit.i105_crit_edge ], [ -5, %do.end.i.i103 ], [ 0, %sw.bb.i99.nxt6000_writereg.exit.i105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i92) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i91) #6
  br label %nxt6000_set_inversion.exit

sw.bb1.i106:                                      ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i4.i) #6
  %371 = getelementptr inbounds [2 x i8], ptr %buf.i4.i, i32 0, i32 1
  %372 = ptrtoint ptr %buf.i4.i to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 75, ptr %buf.i4.i, align 1
  %373 = ptrtoint ptr %371 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 1, ptr %371, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i5.i) #6
  %374 = getelementptr inbounds i8, ptr %msg.i5.i, i32 4
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 196607, ptr %374, align 4
  %376 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %config.i.i, align 4
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %377, align 1
  %conv.i7.i = zext i8 %379 to i16
  %380 = ptrtoint ptr %msg.i5.i to i32
  call void @__asan_store2_noabort(i32 %380)
  store i16 %conv.i7.i, ptr %msg.i5.i, align 4
  %flags.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5.i, i32 0, i32 1
  %381 = ptrtoint ptr %flags.i8.i to i32
  call void @__asan_store2_noabort(i32 %381)
  store i16 0, ptr %flags.i8.i, align 2
  %buf1.i10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5.i, i32 0, i32 3
  %382 = ptrtoint ptr %buf1.i10.i to i32
  call void @__asan_store4_noabort(i32 %382)
  store ptr %buf.i4.i, ptr %buf1.i10.i, align 4
  %383 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %1, align 4
  %call.i11.i = call i32 @i2c_transfer(ptr noundef %384, ptr noundef nonnull %msg.i5.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i11.i)
  %cmp.not.i12.i = icmp eq i32 %call.i11.i, 1
  br i1 %cmp.not.i12.i, label %sw.bb1.i106.nxt6000_writereg.exit18.i_crit_edge, label %do.body.i14.i

sw.bb1.i106.nxt6000_writereg.exit18.i_crit_edge:  ; preds = %sw.bb1.i106
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit18.i

do.body.i14.i:                                    ; preds = %sw.bb1.i106
  %385 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %tobool.not.i13.i = icmp eq i32 %385, 0
  br i1 %tobool.not.i13.i, label %do.body.i14.i.nxt6000_writereg.exit18.i_crit_edge, label %do.end.i16.i

do.body.i14.i.nxt6000_writereg.exit18.i_crit_edge: ; preds = %do.body.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit18.i

do.end.i16.i:                                     ; preds = %do.body.i14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 75, i32 noundef 1, i32 noundef %call.i11.i) #10
  br label %nxt6000_writereg.exit18.i

nxt6000_writereg.exit18.i:                        ; preds = %do.end.i16.i, %do.body.i14.i.nxt6000_writereg.exit18.i_crit_edge, %sw.bb1.i106.nxt6000_writereg.exit18.i_crit_edge
  %cond.i17.i = phi i32 [ -5, %do.body.i14.i.nxt6000_writereg.exit18.i_crit_edge ], [ -5, %do.end.i16.i ], [ 0, %sw.bb1.i106.nxt6000_writereg.exit18.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i5.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i4.i) #6
  br label %nxt6000_set_inversion.exit

nxt6000_set_inversion.exit:                       ; preds = %nxt6000_writereg.exit18.i, %nxt6000_writereg.exit.i105
  %retval.0.i107 = phi i32 [ %cond.i17.i, %nxt6000_writereg.exit18.i ], [ %cond.i.i104, %nxt6000_writereg.exit.i105 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i107)
  %cmp23 = icmp slt i32 %retval.0.i107, 0
  br i1 %cmp23, label %nxt6000_set_inversion.exit.cleanup_crit_edge, label %if.end25

nxt6000_set_inversion.exit.cleanup_crit_edge:     ; preds = %nxt6000_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %nxt6000_set_inversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 500) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %nxt6000_set_inversion.exit.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %nxt6000_set_transmission_mode.exit.cleanup_crit_edge, %nxt6000_writereg.exit116.thread.i, %nxt6000_writereg.exit.thread.i87, %if.end17.cleanup_crit_edge, %nxt6000_set_guard_interval.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %nxt6000_set_bandwidth.exit.thread111, %nxt6000_writereg.exit.thread.i, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %retval.0.i62, %nxt6000_set_guard_interval.exit.cleanup_crit_edge ], [ %retval.0.i90, %nxt6000_set_transmission_mode.exit.cleanup_crit_edge ], [ %retval.0.i107, %nxt6000_set_inversion.exit.cleanup_crit_edge ], [ -5, %nxt6000_set_bandwidth.exit.thread111 ], [ -5, %nxt6000_writereg.exit.thread.i ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -5, %nxt6000_writereg.exit116.thread.i ], [ -5, %nxt6000_writereg.exit.thread.i87 ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nxt6000_fe_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 500, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt6000_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i487.i = alloca [1 x i8], align 1
  %b1.i488.i = alloca [1 x i8], align 1
  %msgs.i489.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i467.i = alloca [1 x i8], align 1
  %b1.i468.i = alloca [1 x i8], align 1
  %msgs.i469.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i447.i = alloca [1 x i8], align 1
  %b1.i448.i = alloca [1 x i8], align 1
  %msgs.i449.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i427.i = alloca [1 x i8], align 1
  %b1.i428.i = alloca [1 x i8], align 1
  %msgs.i429.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i407.i = alloca [1 x i8], align 1
  %b1.i408.i = alloca [1 x i8], align 1
  %msgs.i409.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i387.i = alloca [1 x i8], align 1
  %b1.i388.i = alloca [1 x i8], align 1
  %msgs.i389.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i367.i = alloca [1 x i8], align 1
  %b1.i368.i = alloca [1 x i8], align 1
  %msgs.i369.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i347.i = alloca [1 x i8], align 1
  %b1.i348.i = alloca [1 x i8], align 1
  %msgs.i349.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i83 = alloca [1 x i8], align 1
  %b1.i84 = alloca [1 x i8], align 1
  %msgs.i85 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i63 = alloca [1 x i8], align 1
  %b1.i64 = alloca [1 x i8], align 1
  %msgs.i65 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i43 = alloca [1 x i8], align 1
  %b1.i44 = alloca [1 x i8], align 1
  %msgs.i45 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 65, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %5 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.nxt6000_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %15 = load i8, ptr %8, align 1
  %conv5.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b1.i, ptr %buf8.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.nxt6000_readreg.exit_crit_edge, label %do.body.i

entry.nxt6000_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit

do.body.i:                                        ; preds = %entry
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.nxt6000_readreg.exit_crit_edge, label %do.end.i

do.body.i.nxt6000_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef %call.i) #10
  br label %nxt6000_readreg.exit

nxt6000_readreg.exit:                             ; preds = %do.end.i, %do.body.i.nxt6000_readreg.exit_crit_edge, %entry.nxt6000_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %conv = zext i8 %24 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %nxt6000_readreg.exit.if.end_crit_edge, label %if.then

nxt6000_readreg.exit.if.end_crit_edge:            ; preds = %nxt6000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %nxt6000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr %status, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nxt6000_readreg.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i43) #6
  %27 = ptrtoint ptr %b0.i43 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 82, ptr %b0.i43, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i44) #6
  %28 = ptrtoint ptr %b1.i44 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i44, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i45) #6
  %29 = getelementptr inbounds i8, ptr %msgs.i45, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv.i47 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msgs.i45 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i47, ptr %msgs.i45, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i45, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i48, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %29, align 4
  %buf.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i45, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i43, ptr %buf.i50, align 4
  %arrayinit.element.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i45, i32 1
  %39 = load i8, ptr %32, align 1
  %conv5.i52 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element.i51 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i52, ptr %arrayinit.element.i51, align 4
  %flags6.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i45, i32 1, i32 1
  %41 = ptrtoint ptr %flags6.i53 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags6.i53, align 2
  %len7.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i45, i32 1, i32 2
  %42 = ptrtoint ptr %len7.i54 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len7.i54, align 4
  %buf8.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i45, i32 1, i32 3
  %43 = ptrtoint ptr %buf8.i55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i44, ptr %buf8.i55, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i56 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msgs.i45, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i56)
  %cmp.not.i57 = icmp eq i32 %call.i56, 2
  br i1 %cmp.not.i57, label %if.end.nxt6000_readreg.exit62_crit_edge, label %do.body.i59

if.end.nxt6000_readreg.exit62_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit62

do.body.i59:                                      ; preds = %if.end
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i58 = icmp eq i32 %46, 0
  br i1 %tobool.not.i58, label %do.body.i59.nxt6000_readreg.exit62_crit_edge, label %do.end.i61

do.body.i59.nxt6000_readreg.exit62_crit_edge:     ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit62

do.end.i61:                                       ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 82, i32 noundef %call.i56) #10
  br label %nxt6000_readreg.exit62

nxt6000_readreg.exit62:                           ; preds = %do.end.i61, %do.body.i59.nxt6000_readreg.exit62_crit_edge, %if.end.nxt6000_readreg.exit62_crit_edge
  %47 = ptrtoint ptr %b1.i44 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b1.i44, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i45) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i44) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i43) #6
  %49 = and i8 %48, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool4.not = icmp eq i8 %49, 0
  br i1 %tobool4.not, label %nxt6000_readreg.exit62.if.end7_crit_edge, label %if.then5

nxt6000_readreg.exit62.if.end7_crit_edge:         ; preds = %nxt6000_readreg.exit62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %nxt6000_readreg.exit62
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status, align 4
  %or6 = or i32 %51, 2
  store i32 %or6, ptr %status, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %nxt6000_readreg.exit62.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i63) #6
  %52 = ptrtoint ptr %b0.i63 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 50, ptr %b0.i63, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i64) #6
  %53 = ptrtoint ptr %b1.i64 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %b1.i64, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i65) #6
  %54 = getelementptr inbounds i8, ptr %msgs.i65, i32 4
  %55 = call ptr @memset(ptr %54, i32 255, i32 16)
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %conv.i67 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msgs.i65 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i67, ptr %msgs.i65, align 4
  %flags.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i65, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i68, align 2
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %54, align 4
  %buf.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i65, i32 0, i32 3
  %63 = ptrtoint ptr %buf.i70 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %b0.i63, ptr %buf.i70, align 4
  %arrayinit.element.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i65, i32 1
  %64 = load i8, ptr %57, align 1
  %conv5.i72 = zext i8 %64 to i16
  %65 = ptrtoint ptr %arrayinit.element.i71 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv5.i72, ptr %arrayinit.element.i71, align 4
  %flags6.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i65, i32 1, i32 1
  %66 = ptrtoint ptr %flags6.i73 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags6.i73, align 2
  %len7.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i65, i32 1, i32 2
  %67 = ptrtoint ptr %len7.i74 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %len7.i74, align 4
  %buf8.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i65, i32 1, i32 3
  %68 = ptrtoint ptr %buf8.i75 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %b1.i64, ptr %buf8.i75, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i76 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msgs.i65, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i76)
  %cmp.not.i77 = icmp eq i32 %call.i76, 2
  br i1 %cmp.not.i77, label %if.end7.nxt6000_readreg.exit82_crit_edge, label %do.body.i79

if.end7.nxt6000_readreg.exit82_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit82

do.body.i79:                                      ; preds = %if.end7
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i78 = icmp eq i32 %71, 0
  br i1 %tobool.not.i78, label %do.body.i79.nxt6000_readreg.exit82_crit_edge, label %do.end.i81

do.body.i79.nxt6000_readreg.exit82_crit_edge:     ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit82

do.end.i81:                                       ; preds = %do.body.i79
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 50, i32 noundef %call.i76) #10
  br label %nxt6000_readreg.exit82

nxt6000_readreg.exit82:                           ; preds = %do.end.i81, %do.body.i79.nxt6000_readreg.exit82_crit_edge, %if.end7.nxt6000_readreg.exit82_crit_edge
  %72 = ptrtoint ptr %b1.i64 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %b1.i64, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i65) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i64) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i63) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %73)
  %tobool11.not = icmp sgt i8 %73, -1
  br i1 %tobool11.not, label %nxt6000_readreg.exit82.if.end14_crit_edge, label %if.then12

nxt6000_readreg.exit82.if.end14_crit_edge:        ; preds = %nxt6000_readreg.exit82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %nxt6000_readreg.exit82
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %status, align 4
  %or13 = or i32 %75, 4
  store i32 %or13, ptr %status, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %nxt6000_readreg.exit82.if.end14_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i83) #6
  %76 = ptrtoint ptr %b0.i83 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 33, ptr %b0.i83, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i84) #6
  %77 = ptrtoint ptr %b1.i84 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %b1.i84, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i85) #6
  %78 = getelementptr inbounds i8, ptr %msgs.i85, i32 4
  %79 = call ptr @memset(ptr %78, i32 255, i32 16)
  %80 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %config.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 1
  %conv.i87 = zext i8 %83 to i16
  %84 = ptrtoint ptr %msgs.i85 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i87, ptr %msgs.i85, align 4
  %flags.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i85, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i88 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i88, align 2
  %86 = ptrtoint ptr %78 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 1, ptr %78, align 4
  %buf.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i85, i32 0, i32 3
  %87 = ptrtoint ptr %buf.i90 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %b0.i83, ptr %buf.i90, align 4
  %arrayinit.element.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i85, i32 1
  %88 = load i8, ptr %81, align 1
  %conv5.i92 = zext i8 %88 to i16
  %89 = ptrtoint ptr %arrayinit.element.i91 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv5.i92, ptr %arrayinit.element.i91, align 4
  %flags6.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i85, i32 1, i32 1
  %90 = ptrtoint ptr %flags6.i93 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 1, ptr %flags6.i93, align 2
  %len7.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i85, i32 1, i32 2
  %91 = ptrtoint ptr %len7.i94 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 1, ptr %len7.i94, align 4
  %buf8.i95 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i85, i32 1, i32 3
  %92 = ptrtoint ptr %buf8.i95 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %b1.i84, ptr %buf8.i95, align 4
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call.i96 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msgs.i85, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i96)
  %cmp.not.i97 = icmp eq i32 %call.i96, 2
  br i1 %cmp.not.i97, label %if.end14.nxt6000_readreg.exit102_crit_edge, label %do.body.i99

if.end14.nxt6000_readreg.exit102_crit_edge:       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit102

do.body.i99:                                      ; preds = %if.end14
  %95 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not.i98 = icmp eq i32 %95, 0
  br i1 %tobool.not.i98, label %do.body.i99.nxt6000_readreg.exit102_crit_edge, label %do.end.i101

do.body.i99.nxt6000_readreg.exit102_crit_edge:    ; preds = %do.body.i99
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit102

do.end.i101:                                      ; preds = %do.body.i99
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 33, i32 noundef %call.i96) #10
  br label %nxt6000_readreg.exit102

nxt6000_readreg.exit102:                          ; preds = %do.end.i101, %do.body.i99.nxt6000_readreg.exit102_crit_edge, %if.end14.nxt6000_readreg.exit102_crit_edge
  %96 = ptrtoint ptr %b1.i84 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %b1.i84, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i85) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i84) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i83) #6
  %98 = and i8 %97, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool18.not = icmp eq i8 %98, 0
  br i1 %tobool18.not, label %nxt6000_readreg.exit102.if.end21_crit_edge, label %if.then19

nxt6000_readreg.exit102.if.end21_crit_edge:       ; preds = %nxt6000_readreg.exit102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %nxt6000_readreg.exit102
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %status, align 4
  %or20 = or i32 %100, 8
  store i32 %or20, ptr %status, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %nxt6000_readreg.exit102.if.end21_crit_edge
  %and23 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end21.if.end28_crit_edge, label %land.lhs.true

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end21
  %101 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %102)
  %cmp = icmp eq i32 %102, 15
  br i1 %cmp, label %if.then26, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 31, ptr %status, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  %104 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool29.not = icmp eq i32 %104, 0
  br i1 %tobool29.not, label %if.end28.if.end31_crit_edge, label %if.then30

if.end28.if.end31_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %if.end28
  %call.i103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #6
  %105 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 33, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #6
  %106 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %107 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %108 = call ptr @memset(ptr %107, i32 255, i32 16)
  %109 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %config.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %110, align 1
  %conv.i.i = zext i8 %112 to i16
  %113 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %114 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %flags.i.i, align 2
  %115 = ptrtoint ptr %107 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %107, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %116 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %117 = load i8, ptr %110, align 1
  %conv5.i.i = zext i8 %117 to i16
  %118 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %119 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %120 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %len7.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %121 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %b1.i.i, ptr %buf8.i.i, align 4
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.then30.nxt6000_readreg.exit.i_crit_edge, label %do.body.i.i

if.then30.nxt6000_readreg.exit.i_crit_edge:       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit.i

do.body.i.i:                                      ; preds = %if.then30
  %124 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i.i = icmp eq i32 %124, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.nxt6000_readreg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.nxt6000_readreg.exit.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 33, i32 noundef %call.i.i) #10
  br label %nxt6000_readreg.exit.i

nxt6000_readreg.exit.i:                           ; preds = %do.end.i.i, %do.body.i.i.nxt6000_readreg.exit.i_crit_edge, %if.then30.nxt6000_readreg.exit.i_crit_edge
  %125 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %b1.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #6
  %conv.i104 = zext i8 %126 to i32
  %and.i = and i32 %conv.i104, 1
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %and.i) #10
  %127 = lshr i32 %conv.i104, 1
  %and12.i = and i32 %127, 1
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %and12.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i347.i) #6
  %128 = ptrtoint ptr %b0.i347.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 50, ptr %b0.i347.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i348.i) #6
  %129 = ptrtoint ptr %b1.i348.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %b1.i348.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i349.i) #6
  %130 = getelementptr inbounds i8, ptr %msgs.i349.i, i32 4
  %131 = call ptr @memset(ptr %130, i32 255, i32 16)
  %132 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %config.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %133, align 1
  %conv.i351.i = zext i8 %135 to i16
  %136 = ptrtoint ptr %msgs.i349.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv.i351.i, ptr %msgs.i349.i, align 4
  %flags.i352.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i349.i, i32 0, i32 1
  %137 = ptrtoint ptr %flags.i352.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %flags.i352.i, align 2
  %138 = ptrtoint ptr %130 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %130, align 4
  %buf.i354.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i349.i, i32 0, i32 3
  %139 = ptrtoint ptr %buf.i354.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %b0.i347.i, ptr %buf.i354.i, align 4
  %arrayinit.element.i355.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i349.i, i32 1
  %140 = load i8, ptr %133, align 1
  %conv5.i356.i = zext i8 %140 to i16
  %141 = ptrtoint ptr %arrayinit.element.i355.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv5.i356.i, ptr %arrayinit.element.i355.i, align 4
  %flags6.i357.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i349.i, i32 1, i32 1
  %142 = ptrtoint ptr %flags6.i357.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %flags6.i357.i, align 2
  %len7.i358.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i349.i, i32 1, i32 2
  %143 = ptrtoint ptr %len7.i358.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 1, ptr %len7.i358.i, align 4
  %buf8.i359.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i349.i, i32 1, i32 3
  %144 = ptrtoint ptr %buf8.i359.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %b1.i348.i, ptr %buf8.i359.i, align 4
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 4
  %call.i360.i = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %msgs.i349.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i360.i)
  %cmp.not.i361.i = icmp eq i32 %call.i360.i, 2
  br i1 %cmp.not.i361.i, label %nxt6000_readreg.exit.i.nxt6000_readreg.exit366.i_crit_edge, label %do.body.i363.i

nxt6000_readreg.exit.i.nxt6000_readreg.exit366.i_crit_edge: ; preds = %nxt6000_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit366.i

do.body.i363.i:                                   ; preds = %nxt6000_readreg.exit.i
  %147 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.not.i362.i = icmp eq i32 %147, 0
  br i1 %tobool.not.i362.i, label %do.body.i363.i.nxt6000_readreg.exit366.i_crit_edge, label %do.end.i365.i

do.body.i363.i.nxt6000_readreg.exit366.i_crit_edge: ; preds = %do.body.i363.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit366.i

do.end.i365.i:                                    ; preds = %do.body.i363.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i364.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 50, i32 noundef %call.i360.i) #10
  br label %nxt6000_readreg.exit366.i

nxt6000_readreg.exit366.i:                        ; preds = %do.end.i365.i, %do.body.i363.i.nxt6000_readreg.exit366.i_crit_edge, %nxt6000_readreg.exit.i.nxt6000_readreg.exit366.i_crit_edge
  %148 = ptrtoint ptr %b1.i348.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %b1.i348.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i349.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i348.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i347.i) #6
  %conv19.i = zext i8 %149 to i32
  %150 = lshr i32 %conv19.i, 7
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %150) #10
  %151 = lshr i32 %conv19.i, 4
  %and25.i = and i32 %151, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and25.i)
  %152 = icmp ult i32 %and25.i, 5
  br i1 %152, label %switch.lookup, label %nxt6000_readreg.exit366.i.sw.epilog.i_crit_edge

nxt6000_readreg.exit366.i.sw.epilog.i_crit_edge:  ; preds = %nxt6000_readreg.exit366.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %nxt6000_readreg.exit366.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.nxt6000_read_status, i32 0, i32 %and25.i
  %153 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %153)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %nxt6000_readreg.exit366.i.sw.epilog.i_crit_edge
  %.str.32.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.32, %nxt6000_readreg.exit366.i.sw.epilog.i_crit_edge ]
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.32.sink.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i367.i) #6
  %154 = ptrtoint ptr %b0.i367.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 65, ptr %b0.i367.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i368.i) #6
  %155 = ptrtoint ptr %b1.i368.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %b1.i368.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i369.i) #6
  %156 = getelementptr inbounds i8, ptr %msgs.i369.i, i32 4
  %157 = call ptr @memset(ptr %156, i32 255, i32 16)
  %158 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %config.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %159, align 1
  %conv.i371.i = zext i8 %161 to i16
  %162 = ptrtoint ptr %msgs.i369.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv.i371.i, ptr %msgs.i369.i, align 4
  %flags.i372.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i369.i, i32 0, i32 1
  %163 = ptrtoint ptr %flags.i372.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %flags.i372.i, align 2
  %164 = ptrtoint ptr %156 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 1, ptr %156, align 4
  %buf.i374.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i369.i, i32 0, i32 3
  %165 = ptrtoint ptr %buf.i374.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %b0.i367.i, ptr %buf.i374.i, align 4
  %arrayinit.element.i375.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i369.i, i32 1
  %166 = load i8, ptr %159, align 1
  %conv5.i376.i = zext i8 %166 to i16
  %167 = ptrtoint ptr %arrayinit.element.i375.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv5.i376.i, ptr %arrayinit.element.i375.i, align 4
  %flags6.i377.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i369.i, i32 1, i32 1
  %168 = ptrtoint ptr %flags6.i377.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 1, ptr %flags6.i377.i, align 2
  %len7.i378.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i369.i, i32 1, i32 2
  %169 = ptrtoint ptr %len7.i378.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 1, ptr %len7.i378.i, align 4
  %buf8.i379.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i369.i, i32 1, i32 3
  %170 = ptrtoint ptr %buf8.i379.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %b1.i368.i, ptr %buf8.i379.i, align 4
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %call.i380.i = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %msgs.i369.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i380.i)
  %cmp.not.i381.i = icmp eq i32 %call.i380.i, 2
  br i1 %cmp.not.i381.i, label %sw.epilog.i.nxt6000_readreg.exit386.i_crit_edge, label %do.body.i383.i

sw.epilog.i.nxt6000_readreg.exit386.i_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit386.i

do.body.i383.i:                                   ; preds = %sw.epilog.i
  %173 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool.not.i382.i = icmp eq i32 %173, 0
  br i1 %tobool.not.i382.i, label %do.body.i383.i.nxt6000_readreg.exit386.i_crit_edge, label %do.end.i385.i

do.body.i383.i.nxt6000_readreg.exit386.i_crit_edge: ; preds = %do.body.i383.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit386.i

do.end.i385.i:                                    ; preds = %do.body.i383.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i384.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef %call.i380.i) #10
  br label %nxt6000_readreg.exit386.i

nxt6000_readreg.exit386.i:                        ; preds = %do.end.i385.i, %do.body.i383.i.nxt6000_readreg.exit386.i_crit_edge, %sw.epilog.i.nxt6000_readreg.exit386.i_crit_edge
  %174 = ptrtoint ptr %b1.i368.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %b1.i368.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i369.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i368.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i367.i) #6
  %conv65.i = zext i8 %175 to i32
  %176 = lshr i32 %conv65.i, 7
  %call68.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %176) #10
  %177 = lshr i32 %conv65.i, 6
  %and75.i = and i32 %177, 1
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %and75.i) #10
  %178 = lshr i32 %conv65.i, 5
  %and83.i = and i32 %178, 1
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %and83.i) #10
  %179 = lshr i32 %conv65.i, 4
  %and91.i = and i32 %179, 1
  %call92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %and91.i) #10
  %and94.i = and i32 %conv65.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and94.i)
  %180 = icmp ult i32 %and94.i, 7
  br i1 %180, label %switch.lookup106, label %nxt6000_readreg.exit386.i.sw.epilog143.i_crit_edge

nxt6000_readreg.exit386.i.sw.epilog143.i_crit_edge: ; preds = %nxt6000_readreg.exit386.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog143.i

switch.lookup106:                                 ; preds = %nxt6000_readreg.exit386.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep107 = getelementptr inbounds [7 x ptr], ptr @switch.table.nxt6000_read_status.146, i32 0, i32 %and94.i
  %181 = ptrtoint ptr %switch.gep107 to i32
  call void @__asan_load4_noabort(i32 %181)
  %switch.load108 = load ptr, ptr %switch.gep107, align 4
  br label %sw.epilog143.i

sw.epilog143.i:                                   ; preds = %switch.lookup106, %nxt6000_readreg.exit386.i.sw.epilog143.i_crit_edge
  %.str.68.sink.i = phi ptr [ %switch.load108, %switch.lookup106 ], [ @.str.68, %nxt6000_readreg.exit386.i.sw.epilog143.i_crit_edge ]
  %call142.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.68.sink.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i387.i) #6
  %182 = ptrtoint ptr %b0.i387.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 82, ptr %b0.i387.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i388.i) #6
  %183 = ptrtoint ptr %b1.i388.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %b1.i388.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i389.i) #6
  %184 = getelementptr inbounds i8, ptr %msgs.i389.i, i32 4
  %185 = call ptr @memset(ptr %184, i32 255, i32 16)
  %186 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %config.i, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %187, align 1
  %conv.i391.i = zext i8 %189 to i16
  %190 = ptrtoint ptr %msgs.i389.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv.i391.i, ptr %msgs.i389.i, align 4
  %flags.i392.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i389.i, i32 0, i32 1
  %191 = ptrtoint ptr %flags.i392.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %flags.i392.i, align 2
  %192 = ptrtoint ptr %184 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 1, ptr %184, align 4
  %buf.i394.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i389.i, i32 0, i32 3
  %193 = ptrtoint ptr %buf.i394.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %b0.i387.i, ptr %buf.i394.i, align 4
  %arrayinit.element.i395.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i389.i, i32 1
  %194 = load i8, ptr %187, align 1
  %conv5.i396.i = zext i8 %194 to i16
  %195 = ptrtoint ptr %arrayinit.element.i395.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv5.i396.i, ptr %arrayinit.element.i395.i, align 4
  %flags6.i397.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i389.i, i32 1, i32 1
  %196 = ptrtoint ptr %flags6.i397.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 1, ptr %flags6.i397.i, align 2
  %len7.i398.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i389.i, i32 1, i32 2
  %197 = ptrtoint ptr %len7.i398.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 1, ptr %len7.i398.i, align 4
  %buf8.i399.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i389.i, i32 1, i32 3
  %198 = ptrtoint ptr %buf8.i399.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %b1.i388.i, ptr %buf8.i399.i, align 4
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 4
  %call.i400.i = call i32 @i2c_transfer(ptr noundef %200, ptr noundef nonnull %msgs.i389.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i400.i)
  %cmp.not.i401.i = icmp eq i32 %call.i400.i, 2
  br i1 %cmp.not.i401.i, label %sw.epilog143.i.nxt6000_readreg.exit406.i_crit_edge, label %do.body.i403.i

sw.epilog143.i.nxt6000_readreg.exit406.i_crit_edge: ; preds = %sw.epilog143.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit406.i

do.body.i403.i:                                   ; preds = %sw.epilog143.i
  %201 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool.not.i402.i = icmp eq i32 %201, 0
  br i1 %tobool.not.i402.i, label %do.body.i403.i.nxt6000_readreg.exit406.i_crit_edge, label %do.end.i405.i

do.body.i403.i.nxt6000_readreg.exit406.i_crit_edge: ; preds = %do.body.i403.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit406.i

do.end.i405.i:                                    ; preds = %do.body.i403.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i404.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 82, i32 noundef %call.i400.i) #10
  br label %nxt6000_readreg.exit406.i

nxt6000_readreg.exit406.i:                        ; preds = %do.end.i405.i, %do.body.i403.i.nxt6000_readreg.exit406.i_crit_edge, %sw.epilog143.i.nxt6000_readreg.exit406.i_crit_edge
  %202 = ptrtoint ptr %b1.i388.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %b1.i388.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i389.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i388.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i387.i) #6
  %conv149.i = zext i8 %203 to i32
  %204 = lshr i32 %conv149.i, 4
  %and151.i = and i32 %204, 1
  %call152.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %and151.i) #10
  %205 = and i32 %conv149.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i105 = icmp eq i32 %205, 0
  %cond.i = select i1 %tobool.not.i105, ptr @.str.76, ptr @.str.75
  %call160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull %cond.i) #10
  %and163.i = and i32 %204, 3
  %switch.gep110 = getelementptr inbounds [4 x ptr], ptr @switch.table.nxt6000_read_status.147, i32 0, i32 %and163.i
  %206 = ptrtoint ptr %switch.gep110 to i32
  call void @__asan_load4_noabort(i32 %206)
  %switch.load111 = load ptr, ptr %switch.gep110, align 4
  %call187.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %switch.load111) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i407.i) #6
  %207 = ptrtoint ptr %b0.i407.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 105, ptr %b0.i407.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i408.i) #6
  %208 = ptrtoint ptr %b1.i408.i to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %b1.i408.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i409.i) #6
  %209 = getelementptr inbounds i8, ptr %msgs.i409.i, i32 4
  %210 = call ptr @memset(ptr %209, i32 255, i32 16)
  %211 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %config.i, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %212, align 1
  %conv.i411.i = zext i8 %214 to i16
  %215 = ptrtoint ptr %msgs.i409.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv.i411.i, ptr %msgs.i409.i, align 4
  %flags.i412.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i409.i, i32 0, i32 1
  %216 = ptrtoint ptr %flags.i412.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 0, ptr %flags.i412.i, align 2
  %217 = ptrtoint ptr %209 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 1, ptr %209, align 4
  %buf.i414.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i409.i, i32 0, i32 3
  %218 = ptrtoint ptr %buf.i414.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %b0.i407.i, ptr %buf.i414.i, align 4
  %arrayinit.element.i415.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i409.i, i32 1
  %219 = load i8, ptr %212, align 1
  %conv5.i416.i = zext i8 %219 to i16
  %220 = ptrtoint ptr %arrayinit.element.i415.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv5.i416.i, ptr %arrayinit.element.i415.i, align 4
  %flags6.i417.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i409.i, i32 1, i32 1
  %221 = ptrtoint ptr %flags6.i417.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 1, ptr %flags6.i417.i, align 2
  %len7.i418.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i409.i, i32 1, i32 2
  %222 = ptrtoint ptr %len7.i418.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 1, ptr %len7.i418.i, align 4
  %buf8.i419.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i409.i, i32 1, i32 3
  %223 = ptrtoint ptr %buf8.i419.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %b1.i408.i, ptr %buf8.i419.i, align 4
  %224 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %1, align 4
  %call.i420.i = call i32 @i2c_transfer(ptr noundef %225, ptr noundef nonnull %msgs.i409.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i420.i)
  %cmp.not.i421.i = icmp eq i32 %call.i420.i, 2
  br i1 %cmp.not.i421.i, label %nxt6000_readreg.exit406.i.nxt6000_readreg.exit426.i_crit_edge, label %do.body.i423.i

nxt6000_readreg.exit406.i.nxt6000_readreg.exit426.i_crit_edge: ; preds = %nxt6000_readreg.exit406.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit426.i

do.body.i423.i:                                   ; preds = %nxt6000_readreg.exit406.i
  %226 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool.not.i422.i = icmp eq i32 %226, 0
  br i1 %tobool.not.i422.i, label %do.body.i423.i.nxt6000_readreg.exit426.i_crit_edge, label %do.end.i425.i

do.body.i423.i.nxt6000_readreg.exit426.i_crit_edge: ; preds = %do.body.i423.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit426.i

do.end.i425.i:                                    ; preds = %do.body.i423.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i424.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef %call.i420.i) #10
  br label %nxt6000_readreg.exit426.i

nxt6000_readreg.exit426.i:                        ; preds = %do.end.i425.i, %do.body.i423.i.nxt6000_readreg.exit426.i_crit_edge, %nxt6000_readreg.exit406.i.nxt6000_readreg.exit426.i_crit_edge
  %227 = ptrtoint ptr %b1.i408.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %b1.i408.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i409.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i408.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i407.i) #6
  %conv190.i = zext i8 %228 to i32
  %229 = lshr i32 %conv190.i, 4
  %and192.i = and i32 %229, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and192.i)
  %230 = icmp ult i32 %and192.i, 5
  br i1 %230, label %switch.lookup112, label %nxt6000_readreg.exit426.i.sw.epilog229.i_crit_edge

nxt6000_readreg.exit426.i.sw.epilog229.i_crit_edge: ; preds = %nxt6000_readreg.exit426.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog229.i

switch.lookup112:                                 ; preds = %nxt6000_readreg.exit426.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep113 = getelementptr inbounds [5 x ptr], ptr @switch.table.nxt6000_read_status.148, i32 0, i32 %and192.i
  %231 = ptrtoint ptr %switch.gep113 to i32
  call void @__asan_load4_noabort(i32 %231)
  %switch.load114 = load ptr, ptr %switch.gep113, align 4
  br label %sw.epilog229.i

sw.epilog229.i:                                   ; preds = %switch.lookup112, %nxt6000_readreg.exit426.i.sw.epilog229.i_crit_edge
  %.str.105.sink.i = phi ptr [ %switch.load114, %switch.lookup112 ], [ @.str.105, %nxt6000_readreg.exit426.i.sw.epilog229.i_crit_edge ]
  %call228.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.105.sink.i) #10
  %and231.i = and i32 %conv190.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and231.i)
  %232 = icmp ult i32 %and231.i, 5
  br i1 %232, label %switch.lookup115, label %sw.epilog229.i.sw.epilog268.i_crit_edge

sw.epilog229.i.sw.epilog268.i_crit_edge:          ; preds = %sw.epilog229.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog268.i

switch.lookup115:                                 ; preds = %sw.epilog229.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep116 = getelementptr inbounds [5 x ptr], ptr @switch.table.nxt6000_read_status.149, i32 0, i32 %and231.i
  %233 = ptrtoint ptr %switch.gep116 to i32
  call void @__asan_load4_noabort(i32 %233)
  %switch.load117 = load ptr, ptr %switch.gep116, align 4
  br label %sw.epilog268.i

sw.epilog268.i:                                   ; preds = %switch.lookup115, %sw.epilog229.i.sw.epilog268.i_crit_edge
  %.str.123.sink.i = phi ptr [ %switch.load117, %switch.lookup115 ], [ @.str.123, %sw.epilog229.i.sw.epilog268.i_crit_edge ]
  %call267.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.123.sink.i) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i427.i) #6
  %234 = ptrtoint ptr %b0.i427.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 106, ptr %b0.i427.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i428.i) #6
  %235 = ptrtoint ptr %b1.i428.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 0, ptr %b1.i428.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i429.i) #6
  %236 = getelementptr inbounds i8, ptr %msgs.i429.i, i32 4
  %237 = call ptr @memset(ptr %236, i32 255, i32 16)
  %238 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %config.i, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %239, align 1
  %conv.i431.i = zext i8 %241 to i16
  %242 = ptrtoint ptr %msgs.i429.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %conv.i431.i, ptr %msgs.i429.i, align 4
  %flags.i432.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i429.i, i32 0, i32 1
  %243 = ptrtoint ptr %flags.i432.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 0, ptr %flags.i432.i, align 2
  %244 = ptrtoint ptr %236 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 1, ptr %236, align 4
  %buf.i434.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i429.i, i32 0, i32 3
  %245 = ptrtoint ptr %buf.i434.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %b0.i427.i, ptr %buf.i434.i, align 4
  %arrayinit.element.i435.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i429.i, i32 1
  %246 = load i8, ptr %239, align 1
  %conv5.i436.i = zext i8 %246 to i16
  %247 = ptrtoint ptr %arrayinit.element.i435.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv5.i436.i, ptr %arrayinit.element.i435.i, align 4
  %flags6.i437.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i429.i, i32 1, i32 1
  %248 = ptrtoint ptr %flags6.i437.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 1, ptr %flags6.i437.i, align 2
  %len7.i438.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i429.i, i32 1, i32 2
  %249 = ptrtoint ptr %len7.i438.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 1, ptr %len7.i438.i, align 4
  %buf8.i439.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i429.i, i32 1, i32 3
  %250 = ptrtoint ptr %buf8.i439.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %b1.i428.i, ptr %buf8.i439.i, align 4
  %251 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %1, align 4
  %call.i440.i = call i32 @i2c_transfer(ptr noundef %252, ptr noundef nonnull %msgs.i429.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i440.i)
  %cmp.not.i441.i = icmp eq i32 %call.i440.i, 2
  br i1 %cmp.not.i441.i, label %sw.epilog268.i.nxt6000_readreg.exit446.i_crit_edge, label %do.body.i443.i

sw.epilog268.i.nxt6000_readreg.exit446.i_crit_edge: ; preds = %sw.epilog268.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit446.i

do.body.i443.i:                                   ; preds = %sw.epilog268.i
  %253 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool.not.i442.i = icmp eq i32 %253, 0
  br i1 %tobool.not.i442.i, label %do.body.i443.i.nxt6000_readreg.exit446.i_crit_edge, label %do.end.i445.i

do.body.i443.i.nxt6000_readreg.exit446.i_crit_edge: ; preds = %do.body.i443.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit446.i

do.end.i445.i:                                    ; preds = %do.body.i443.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i444.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef %call.i440.i) #10
  br label %nxt6000_readreg.exit446.i

nxt6000_readreg.exit446.i:                        ; preds = %do.end.i445.i, %do.body.i443.i.nxt6000_readreg.exit446.i_crit_edge, %sw.epilog268.i.nxt6000_readreg.exit446.i_crit_edge
  %254 = ptrtoint ptr %b1.i428.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %b1.i428.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i429.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i428.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i427.i) #6
  %conv274.i = zext i8 %255 to i32
  %and275.i = and i32 %conv274.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275.i)
  %tobool276.not.i = icmp eq i32 %and275.i, 0
  %cond277.i = select i1 %tobool276.not.i, ptr @.str.76, ptr @.str.75
  %call278.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull %cond277.i) #10
  %256 = lshr i32 %conv274.i, 4
  %and281.i = and i32 %256, 3
  %switch.gep119 = getelementptr inbounds [4 x ptr], ptr @switch.table.nxt6000_read_status.150, i32 0, i32 %and281.i
  %257 = ptrtoint ptr %switch.gep119 to i32
  call void @__asan_load4_noabort(i32 %257)
  %switch.load120 = load ptr, ptr %switch.gep119, align 4
  %call305.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %switch.load120) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i447.i) #6
  %258 = ptrtoint ptr %b0.i447.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 -111, ptr %b0.i447.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i448.i) #6
  %259 = ptrtoint ptr %b1.i448.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %b1.i448.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i449.i) #6
  %260 = getelementptr inbounds i8, ptr %msgs.i449.i, i32 4
  %261 = call ptr @memset(ptr %260, i32 255, i32 16)
  %262 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %config.i, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %263, align 1
  %conv.i451.i = zext i8 %265 to i16
  %266 = ptrtoint ptr %msgs.i449.i to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %conv.i451.i, ptr %msgs.i449.i, align 4
  %flags.i452.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i449.i, i32 0, i32 1
  %267 = ptrtoint ptr %flags.i452.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 0, ptr %flags.i452.i, align 2
  %268 = ptrtoint ptr %260 to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 1, ptr %260, align 4
  %buf.i454.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i449.i, i32 0, i32 3
  %269 = ptrtoint ptr %buf.i454.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %b0.i447.i, ptr %buf.i454.i, align 4
  %arrayinit.element.i455.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i449.i, i32 1
  %270 = load i8, ptr %263, align 1
  %conv5.i456.i = zext i8 %270 to i16
  %271 = ptrtoint ptr %arrayinit.element.i455.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 %conv5.i456.i, ptr %arrayinit.element.i455.i, align 4
  %flags6.i457.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i449.i, i32 1, i32 1
  %272 = ptrtoint ptr %flags6.i457.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 1, ptr %flags6.i457.i, align 2
  %len7.i458.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i449.i, i32 1, i32 2
  %273 = ptrtoint ptr %len7.i458.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 1, ptr %len7.i458.i, align 4
  %buf8.i459.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i449.i, i32 1, i32 3
  %274 = ptrtoint ptr %buf8.i459.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %b1.i448.i, ptr %buf8.i459.i, align 4
  %275 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %1, align 4
  %call.i460.i = call i32 @i2c_transfer(ptr noundef %276, ptr noundef nonnull %msgs.i449.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i460.i)
  %cmp.not.i461.i = icmp eq i32 %call.i460.i, 2
  br i1 %cmp.not.i461.i, label %nxt6000_readreg.exit446.i.nxt6000_readreg.exit466.i_crit_edge, label %do.body.i463.i

nxt6000_readreg.exit446.i.nxt6000_readreg.exit466.i_crit_edge: ; preds = %nxt6000_readreg.exit446.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit466.i

do.body.i463.i:                                   ; preds = %nxt6000_readreg.exit446.i
  %277 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool.not.i462.i = icmp eq i32 %277, 0
  br i1 %tobool.not.i462.i, label %do.body.i463.i.nxt6000_readreg.exit466.i_crit_edge, label %do.end.i465.i

do.body.i463.i.nxt6000_readreg.exit466.i_crit_edge: ; preds = %do.body.i463.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit466.i

do.end.i465.i:                                    ; preds = %do.body.i463.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i464.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 145, i32 noundef %call.i460.i) #10
  br label %nxt6000_readreg.exit466.i

nxt6000_readreg.exit466.i:                        ; preds = %do.end.i465.i, %do.body.i463.i.nxt6000_readreg.exit466.i_crit_edge, %nxt6000_readreg.exit446.i.nxt6000_readreg.exit466.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i449.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i448.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i447.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i467.i) #6
  %278 = ptrtoint ptr %b0.i467.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 -110, ptr %b0.i467.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i468.i) #6
  %279 = ptrtoint ptr %b1.i468.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 0, ptr %b1.i468.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i469.i) #6
  %280 = getelementptr inbounds i8, ptr %msgs.i469.i, i32 4
  %281 = call ptr @memset(ptr %280, i32 255, i32 16)
  %282 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %config.i, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %283, align 1
  %conv.i471.i = zext i8 %285 to i16
  %286 = ptrtoint ptr %msgs.i469.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 %conv.i471.i, ptr %msgs.i469.i, align 4
  %flags.i472.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i469.i, i32 0, i32 1
  %287 = ptrtoint ptr %flags.i472.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 0, ptr %flags.i472.i, align 2
  %288 = ptrtoint ptr %280 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 1, ptr %280, align 4
  %buf.i474.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i469.i, i32 0, i32 3
  %289 = ptrtoint ptr %buf.i474.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %b0.i467.i, ptr %buf.i474.i, align 4
  %arrayinit.element.i475.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i469.i, i32 1
  %290 = load i8, ptr %283, align 1
  %conv5.i476.i = zext i8 %290 to i16
  %291 = ptrtoint ptr %arrayinit.element.i475.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %conv5.i476.i, ptr %arrayinit.element.i475.i, align 4
  %flags6.i477.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i469.i, i32 1, i32 1
  %292 = ptrtoint ptr %flags6.i477.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 1, ptr %flags6.i477.i, align 2
  %len7.i478.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i469.i, i32 1, i32 2
  %293 = ptrtoint ptr %len7.i478.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 1, ptr %len7.i478.i, align 4
  %buf8.i479.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i469.i, i32 1, i32 3
  %294 = ptrtoint ptr %buf8.i479.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %b1.i468.i, ptr %buf8.i479.i, align 4
  %295 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %1, align 4
  %call.i480.i = call i32 @i2c_transfer(ptr noundef %296, ptr noundef nonnull %msgs.i469.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i480.i)
  %cmp.not.i481.i = icmp eq i32 %call.i480.i, 2
  br i1 %cmp.not.i481.i, label %nxt6000_readreg.exit466.i.nxt6000_readreg.exit486.i_crit_edge, label %do.body.i483.i

nxt6000_readreg.exit466.i.nxt6000_readreg.exit486.i_crit_edge: ; preds = %nxt6000_readreg.exit466.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit486.i

do.body.i483.i:                                   ; preds = %nxt6000_readreg.exit466.i
  %297 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool.not.i482.i = icmp eq i32 %297, 0
  br i1 %tobool.not.i482.i, label %do.body.i483.i.nxt6000_readreg.exit486.i_crit_edge, label %do.end.i485.i

do.body.i483.i.nxt6000_readreg.exit486.i_crit_edge: ; preds = %do.body.i483.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit486.i

do.end.i485.i:                                    ; preds = %do.body.i483.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i484.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 146, i32 noundef %call.i480.i) #10
  br label %nxt6000_readreg.exit486.i

nxt6000_readreg.exit486.i:                        ; preds = %do.end.i485.i, %do.body.i483.i.nxt6000_readreg.exit486.i_crit_edge, %nxt6000_readreg.exit466.i.nxt6000_readreg.exit486.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i469.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i468.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i467.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i487.i) #6
  %298 = ptrtoint ptr %b0.i487.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 -110, ptr %b0.i487.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i488.i) #6
  %299 = ptrtoint ptr %b1.i488.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 0, ptr %b1.i488.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i489.i) #6
  %300 = getelementptr inbounds i8, ptr %msgs.i489.i, i32 4
  %301 = call ptr @memset(ptr %300, i32 255, i32 16)
  %302 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %config.i, align 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %303, align 1
  %conv.i491.i = zext i8 %305 to i16
  %306 = ptrtoint ptr %msgs.i489.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %conv.i491.i, ptr %msgs.i489.i, align 4
  %flags.i492.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i489.i, i32 0, i32 1
  %307 = ptrtoint ptr %flags.i492.i to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 0, ptr %flags.i492.i, align 2
  %308 = ptrtoint ptr %300 to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 1, ptr %300, align 4
  %buf.i494.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i489.i, i32 0, i32 3
  %309 = ptrtoint ptr %buf.i494.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr %b0.i487.i, ptr %buf.i494.i, align 4
  %arrayinit.element.i495.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i489.i, i32 1
  %310 = load i8, ptr %303, align 1
  %conv5.i496.i = zext i8 %310 to i16
  %311 = ptrtoint ptr %arrayinit.element.i495.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %conv5.i496.i, ptr %arrayinit.element.i495.i, align 4
  %flags6.i497.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i489.i, i32 1, i32 1
  %312 = ptrtoint ptr %flags6.i497.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 1, ptr %flags6.i497.i, align 2
  %len7.i498.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i489.i, i32 1, i32 2
  %313 = ptrtoint ptr %len7.i498.i to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 1, ptr %len7.i498.i, align 4
  %buf8.i499.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i489.i, i32 1, i32 3
  %314 = ptrtoint ptr %buf8.i499.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %b1.i488.i, ptr %buf8.i499.i, align 4
  %315 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %1, align 4
  %call.i500.i = call i32 @i2c_transfer(ptr noundef %316, ptr noundef nonnull %msgs.i489.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i500.i)
  %cmp.not.i501.i = icmp eq i32 %call.i500.i, 2
  br i1 %cmp.not.i501.i, label %nxt6000_readreg.exit486.i.nxt6000_dump_status.exit_crit_edge, label %do.body.i503.i

nxt6000_readreg.exit486.i.nxt6000_dump_status.exit_crit_edge: ; preds = %nxt6000_readreg.exit486.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_dump_status.exit

do.body.i503.i:                                   ; preds = %nxt6000_readreg.exit486.i
  %317 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool.not.i502.i = icmp eq i32 %317, 0
  br i1 %tobool.not.i502.i, label %do.body.i503.i.nxt6000_dump_status.exit_crit_edge, label %do.end.i505.i

do.body.i503.i.nxt6000_dump_status.exit_crit_edge: ; preds = %do.body.i503.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_dump_status.exit

do.end.i505.i:                                    ; preds = %do.body.i503.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i504.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 146, i32 noundef %call.i500.i) #10
  br label %nxt6000_dump_status.exit

nxt6000_dump_status.exit:                         ; preds = %do.end.i505.i, %do.body.i503.i.nxt6000_dump_status.exit_crit_edge, %nxt6000_readreg.exit486.i.nxt6000_dump_status.exit_crit_edge
  %318 = ptrtoint ptr %b1.i488.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %b1.i488.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i489.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i488.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i487.i) #6
  %320 = lshr i8 %319, 4
  %321 = and i8 %320, 1
  %and316.i = zext i8 %321 to i32
  %call317.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %and316.i) #10
  %call322.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #10
  br label %if.end31

if.end31:                                         ; preds = %nxt6000_dump_status.exit, %if.end28.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt6000_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %buf.i38 = alloca [2 x i8], align 1
  %msg.i39 = alloca %struct.i2c_msg, align 4
  %b0.i18 = alloca [1 x i8], align 1
  %b1.i19 = alloca [1 x i8], align 1
  %msgs.i20 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 52, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 24, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.nxt6000_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %entry.nxt6000_writereg.exit_crit_edge, label %do.body.i

entry.nxt6000_writereg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit

do.body.i:                                        ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.nxt6000_writereg.exit_crit_edge, label %do.end.i

do.body.i.nxt6000_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 52, i32 noundef 24, i32 noundef %call.i) #10
  br label %nxt6000_writereg.exit

nxt6000_writereg.exit:                            ; preds = %do.end.i, %do.body.i.nxt6000_writereg.exit_crit_edge, %entry.nxt6000_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %17 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 59, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %18 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %19 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 255, i32 16)
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv.i9 = zext i8 %24 to i16
  %25 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i9, ptr %msgs.i, align 4
  %flags.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i10, align 2
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %19, align 4
  %buf.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %b0.i, ptr %buf.i12, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %29 = load i8, ptr %22, align 1
  %conv5.i = zext i8 %29 to i16
  %30 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %31 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %32 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %33 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b1.i, ptr %buf8.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i13 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i13)
  %cmp.not.i14 = icmp eq i32 %call.i13, 2
  br i1 %cmp.not.i14, label %nxt6000_writereg.exit.nxt6000_readreg.exit_crit_edge, label %do.body.i16

nxt6000_writereg.exit.nxt6000_readreg.exit_crit_edge: ; preds = %nxt6000_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit

do.body.i16:                                      ; preds = %nxt6000_writereg.exit
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i15 = icmp eq i32 %36, 0
  br i1 %tobool.not.i15, label %do.body.i16.nxt6000_readreg.exit_crit_edge, label %do.end.i17

do.body.i16.nxt6000_readreg.exit_crit_edge:       ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit

do.end.i17:                                       ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 59, i32 noundef %call.i13) #10
  br label %nxt6000_readreg.exit

nxt6000_readreg.exit:                             ; preds = %do.end.i17, %do.body.i16.nxt6000_readreg.exit_crit_edge, %nxt6000_writereg.exit.nxt6000_readreg.exit_crit_edge
  %37 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %conv = zext i8 %38 to i32
  %shl = shl nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i18) #6
  %39 = ptrtoint ptr %b0.i18 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 60, ptr %b0.i18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i19) #6
  %40 = ptrtoint ptr %b1.i19 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %b1.i19, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i20) #6
  %41 = getelementptr inbounds i8, ptr %msgs.i20, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %conv.i22 = zext i8 %46 to i16
  %47 = ptrtoint ptr %msgs.i20 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i22, ptr %msgs.i20, align 4
  %flags.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i20, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i23, align 2
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %41, align 4
  %buf.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i20, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %b0.i18, ptr %buf.i25, align 4
  %arrayinit.element.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i20, i32 1
  %51 = load i8, ptr %44, align 1
  %conv5.i27 = zext i8 %51 to i16
  %52 = ptrtoint ptr %arrayinit.element.i26 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv5.i27, ptr %arrayinit.element.i26, align 4
  %flags6.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i20, i32 1, i32 1
  %53 = ptrtoint ptr %flags6.i28 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags6.i28, align 2
  %len7.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i20, i32 1, i32 2
  %54 = ptrtoint ptr %len7.i29 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len7.i29, align 4
  %buf8.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i20, i32 1, i32 3
  %55 = ptrtoint ptr %buf8.i30 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b1.i19, ptr %buf8.i30, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i31 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msgs.i20, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i31)
  %cmp.not.i32 = icmp eq i32 %call.i31, 2
  br i1 %cmp.not.i32, label %nxt6000_readreg.exit.nxt6000_readreg.exit37_crit_edge, label %do.body.i34

nxt6000_readreg.exit.nxt6000_readreg.exit37_crit_edge: ; preds = %nxt6000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit37

do.body.i34:                                      ; preds = %nxt6000_readreg.exit
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i33 = icmp eq i32 %58, 0
  br i1 %tobool.not.i33, label %do.body.i34.nxt6000_readreg.exit37_crit_edge, label %do.end.i36

do.body.i34.nxt6000_readreg.exit37_crit_edge:     ; preds = %do.body.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit37

do.end.i36:                                       ; preds = %do.body.i34
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 60, i32 noundef %call.i31) #10
  br label %nxt6000_readreg.exit37

nxt6000_readreg.exit37:                           ; preds = %do.end.i36, %do.body.i34.nxt6000_readreg.exit37_crit_edge, %nxt6000_readreg.exit.nxt6000_readreg.exit37_crit_edge
  %59 = ptrtoint ptr %b1.i19 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %b1.i19, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i20) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i19) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i18) #6
  %conv3 = zext i8 %60 to i32
  %or = or i32 %shl, %conv3
  %61 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i38) #6
  %62 = getelementptr inbounds [2 x i8], ptr %buf.i38, i32 0, i32 1
  %63 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 52, ptr %buf.i38, align 1
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 24, ptr %62, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i39) #6
  %65 = getelementptr inbounds i8, ptr %msg.i39, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 196607, ptr %65, align 4
  %67 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 1
  %conv.i41 = zext i8 %70 to i16
  %71 = ptrtoint ptr %msg.i39 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i41, ptr %msg.i39, align 4
  %flags.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i42, align 2
  %buf1.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 3
  %73 = ptrtoint ptr %buf1.i44 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %buf.i38, ptr %buf1.i44, align 4
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %call.i45 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msg.i39, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i45)
  %cmp.not.i46 = icmp eq i32 %call.i45, 1
  br i1 %cmp.not.i46, label %nxt6000_readreg.exit37.nxt6000_writereg.exit52_crit_edge, label %do.body.i48

nxt6000_readreg.exit37.nxt6000_writereg.exit52_crit_edge: ; preds = %nxt6000_readreg.exit37
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit52

do.body.i48:                                      ; preds = %nxt6000_readreg.exit37
  %76 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i47 = icmp eq i32 %76, 0
  br i1 %tobool.not.i47, label %do.body.i48.nxt6000_writereg.exit52_crit_edge, label %do.end.i50

do.body.i48.nxt6000_writereg.exit52_crit_edge:    ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit52

do.end.i50:                                       ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 52, i32 noundef 24, i32 noundef %call.i45) #10
  br label %nxt6000_writereg.exit52

nxt6000_writereg.exit52:                          ; preds = %do.end.i50, %do.body.i48.nxt6000_writereg.exit52_crit_edge, %nxt6000_readreg.exit37.nxt6000_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i39) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i38) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt6000_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
entry:
  %b0.i5 = alloca [1 x i8], align 1
  %b1.i6 = alloca [1 x i8], align 1
  %msgs.i7 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 73, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.nxt6000_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.nxt6000_readreg.exit_crit_edge, label %do.body.i

entry.nxt6000_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.nxt6000_readreg.exit_crit_edge, label %do.end.i

do.body.i.nxt6000_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef %call.i) #10
  br label %nxt6000_readreg.exit

nxt6000_readreg.exit:                             ; preds = %do.end.i, %do.body.i.nxt6000_readreg.exit_crit_edge, %entry.nxt6000_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i5) #6
  %24 = ptrtoint ptr %b0.i5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 74, ptr %b0.i5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i6) #6
  %25 = ptrtoint ptr %b1.i6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i7) #6
  %26 = getelementptr inbounds i8, ptr %msgs.i7, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i9 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msgs.i7 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i9, ptr %msgs.i7, align 4
  %flags.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i7, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i10, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i7, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i5, ptr %buf.i12, align 4
  %arrayinit.element.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i7, i32 1
  %36 = load i8, ptr %29, align 1
  %conv5.i14 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i13 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i14, ptr %arrayinit.element.i13, align 4
  %flags6.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i7, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i15 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i15, align 2
  %len7.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i7, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i16 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i16, align 4
  %buf8.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i7, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i17 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i6, ptr %buf8.i17, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i18 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msgs.i7, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i18)
  %cmp.not.i19 = icmp eq i32 %call.i18, 2
  br i1 %cmp.not.i19, label %nxt6000_readreg.exit.nxt6000_readreg.exit24_crit_edge, label %do.body.i21

nxt6000_readreg.exit.nxt6000_readreg.exit24_crit_edge: ; preds = %nxt6000_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit24

do.body.i21:                                      ; preds = %nxt6000_readreg.exit
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i20 = icmp eq i32 %43, 0
  br i1 %tobool.not.i20, label %do.body.i21.nxt6000_readreg.exit24_crit_edge, label %do.end.i23

do.body.i21.nxt6000_readreg.exit24_crit_edge:     ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit24

do.end.i23:                                       ; preds = %do.body.i21
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 74, i32 noundef %call.i18) #10
  br label %nxt6000_readreg.exit24

nxt6000_readreg.exit24:                           ; preds = %do.end.i23, %do.body.i21.nxt6000_readreg.exit24_crit_edge, %nxt6000_readreg.exit.nxt6000_readreg.exit24_crit_edge
  %conv = zext i8 %23 to i16
  %44 = ptrtoint ptr %b1.i6 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i6) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i5) #6
  %46 = and i8 %45, 3
  %and = zext i8 %46 to i16
  %shl.neg25 = mul nsw i16 %and, -256
  %add.neg = xor i16 %conv, 511
  %sub = add nsw i16 %add.neg, %shl.neg25
  %47 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %sub, ptr %signal_strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt6000_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 100, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #6
  %4 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.nxt6000_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %14 = load i8, ptr %7, align 1
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.nxt6000_readreg.exit_crit_edge, label %do.body.i

entry.nxt6000_readreg.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.nxt6000_readreg.exit_crit_edge, label %do.end.i

do.body.i.nxt6000_readreg.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 100, i32 noundef %call.i) #10
  br label %nxt6000_readreg.exit

nxt6000_readreg.exit:                             ; preds = %do.end.i, %do.body.i.nxt6000_readreg.exit_crit_edge, %entry.nxt6000_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %24 = lshr i8 %23, 3
  %conv1 = zext i8 %24 to i16
  %25 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv1, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt6000_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -127, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.nxt6000_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.then.nxt6000_writereg.exit_crit_edge, label %do.body.i

if.then.nxt6000_writereg.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit

do.body.i:                                        ; preds = %if.then
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.nxt6000_writereg.exit_crit_edge, label %do.end.i

do.body.i.nxt6000_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 129, i32 noundef 1, i32 noundef %call.i) #10
  br label %nxt6000_writereg.exit

nxt6000_writereg.exit:                            ; preds = %do.end.i, %do.body.i.nxt6000_writereg.exit_crit_edge, %if.then.nxt6000_writereg.exit_crit_edge
  %cond.i = phi i32 [ -5, %do.body.i.nxt6000_writereg.exit_crit_edge ], [ -5, %do.end.i ], [ 0, %if.then.nxt6000_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #6
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -127, ptr %buf.i3, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %20 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %config.i5 = getelementptr inbounds %struct.nxt6000_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %config.i5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i5, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
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
  %call.i10 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %if.else.nxt6000_writereg.exit17_crit_edge, label %do.body.i13

if.else.nxt6000_writereg.exit17_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit17

do.body.i13:                                      ; preds = %if.else
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i12 = icmp eq i32 %31, 0
  br i1 %tobool.not.i12, label %do.body.i13.nxt6000_writereg.exit17_crit_edge, label %do.end.i15

do.body.i13.nxt6000_writereg.exit17_crit_edge:    ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %nxt6000_writereg.exit17

do.end.i15:                                       ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 129, i32 noundef 0, i32 noundef %call.i10) #10
  br label %nxt6000_writereg.exit17

nxt6000_writereg.exit17:                          ; preds = %do.end.i15, %do.body.i13.nxt6000_writereg.exit17_crit_edge, %if.else.nxt6000_writereg.exit17_crit_edge
  %cond.i16 = phi i32 [ -5, %do.body.i13.nxt6000_writereg.exit17_crit_edge ], [ -5, %do.end.i15 ], [ 0, %if.else.nxt6000_writereg.exit17_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #6
  br label %cleanup

cleanup:                                          ; preds = %nxt6000_writereg.exit17, %nxt6000_writereg.exit
  %retval.0 = phi i32 [ %cond.i, %nxt6000_writereg.exit ], [ %cond.i16, %nxt6000_writereg.exit17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !123, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219}
!llvm.module.flags = !{!220, !221, !222, !223, !224, !225, !226, !227}
!llvm.ident = !{!228}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 617, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 618, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 620, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 621, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 622, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @__ksymtab_nxt6000_attach, !13, !"__ksymtab_nxt6000_attach", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 624, i32 1}
!14 = !{ptr @debug, !15, !"debug", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 31, i32 12}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 63, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nxt6000_readreg._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @nxt6000_readreg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @nxt6000_ops, !23, !"nxt6000_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 583, i32 38}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 45, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @nxt6000_writereg._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @nxt6000_writereg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 234, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nxt6000_dump_status._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @nxt6000_dump_status._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 238, i32 2}
!36 = !{ptr @nxt6000_dump_status._entry.7, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @nxt6000_dump_status._entry_ptr.9, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 239, i32 2}
!40 = !{ptr @nxt6000_dump_status._entry.10, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @nxt6000_dump_status._entry_ptr.12, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 243, i32 2}
!44 = !{ptr @nxt6000_dump_status._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @nxt6000_dump_status._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 248, i32 3}
!48 = !{ptr @nxt6000_dump_status._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nxt6000_dump_status._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 252, i32 3}
!52 = !{ptr @nxt6000_dump_status._entry.19, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @nxt6000_dump_status._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 256, i32 3}
!56 = !{ptr @nxt6000_dump_status._entry.22, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nxt6000_dump_status._entry_ptr.24, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 260, i32 3}
!60 = !{ptr @nxt6000_dump_status._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @nxt6000_dump_status._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 264, i32 3}
!64 = !{ptr @nxt6000_dump_status._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @nxt6000_dump_status._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 268, i32 3}
!68 = !{ptr @nxt6000_dump_status._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @nxt6000_dump_status._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 274, i32 2}
!72 = !{ptr @nxt6000_dump_status._entry.34, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @nxt6000_dump_status._entry_ptr.36, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 275, i32 2}
!76 = !{ptr @nxt6000_dump_status._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @nxt6000_dump_status._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 276, i32 2}
!80 = !{ptr @nxt6000_dump_status._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @nxt6000_dump_status._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 277, i32 2}
!84 = !{ptr @nxt6000_dump_status._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @nxt6000_dump_status._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 282, i32 3}
!88 = !{ptr @nxt6000_dump_status._entry.46, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @nxt6000_dump_status._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 286, i32 3}
!92 = !{ptr @nxt6000_dump_status._entry.49, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @nxt6000_dump_status._entry_ptr.51, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 290, i32 3}
!96 = !{ptr @nxt6000_dump_status._entry.52, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @nxt6000_dump_status._entry_ptr.54, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 294, i32 3}
!100 = !{ptr @nxt6000_dump_status._entry.55, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @nxt6000_dump_status._entry_ptr.57, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 298, i32 3}
!104 = !{ptr @nxt6000_dump_status._entry.58, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @nxt6000_dump_status._entry_ptr.60, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 302, i32 3}
!108 = !{ptr @nxt6000_dump_status._entry.61, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @nxt6000_dump_status._entry_ptr.63, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.65, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 306, i32 3}
!112 = !{ptr @nxt6000_dump_status._entry.64, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @nxt6000_dump_status._entry_ptr.66, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.68, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 310, i32 3}
!116 = !{ptr @nxt6000_dump_status._entry.67, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @nxt6000_dump_status._entry_ptr.69, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @nxt6000_dump_status._entry.70, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 316, i32 2}
!120 = !{ptr @nxt6000_dump_status._entry_ptr.71, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.73, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 317, i32 2}
!123 = !{ptr @nxt6000_dump_status._entry.72, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @nxt6000_dump_status._entry_ptr.74, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.75, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.76, !122, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.78, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 322, i32 3}
!129 = !{ptr @nxt6000_dump_status._entry.77, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @nxt6000_dump_status._entry_ptr.79, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.81, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 326, i32 3}
!133 = !{ptr @nxt6000_dump_status._entry.80, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @nxt6000_dump_status._entry_ptr.82, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.84, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 330, i32 3}
!137 = !{ptr @nxt6000_dump_status._entry.83, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @nxt6000_dump_status._entry_ptr.85, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.87, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 334, i32 3}
!141 = !{ptr @nxt6000_dump_status._entry.86, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @nxt6000_dump_status._entry_ptr.88, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.90, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 343, i32 3}
!145 = !{ptr @nxt6000_dump_status._entry.89, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @nxt6000_dump_status._entry_ptr.91, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.93, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 347, i32 3}
!149 = !{ptr @nxt6000_dump_status._entry.92, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @nxt6000_dump_status._entry_ptr.94, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.96, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 351, i32 3}
!153 = !{ptr @nxt6000_dump_status._entry.95, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @nxt6000_dump_status._entry_ptr.97, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.99, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 355, i32 3}
!157 = !{ptr @nxt6000_dump_status._entry.98, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @nxt6000_dump_status._entry_ptr.100, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.102, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 359, i32 3}
!161 = !{ptr @nxt6000_dump_status._entry.101, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @nxt6000_dump_status._entry_ptr.103, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.105, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 363, i32 3}
!165 = !{ptr @nxt6000_dump_status._entry.104, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @nxt6000_dump_status._entry_ptr.106, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.108, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 370, i32 3}
!169 = !{ptr @nxt6000_dump_status._entry.107, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @nxt6000_dump_status._entry_ptr.109, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.111, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 374, i32 3}
!173 = !{ptr @nxt6000_dump_status._entry.110, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @nxt6000_dump_status._entry_ptr.112, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.114, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 378, i32 3}
!177 = !{ptr @nxt6000_dump_status._entry.113, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @nxt6000_dump_status._entry_ptr.115, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.117, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 382, i32 3}
!181 = !{ptr @nxt6000_dump_status._entry.116, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @nxt6000_dump_status._entry_ptr.118, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.120, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 386, i32 3}
!185 = !{ptr @nxt6000_dump_status._entry.119, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @nxt6000_dump_status._entry_ptr.121, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.123, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 390, i32 3}
!189 = !{ptr @nxt6000_dump_status._entry.122, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @nxt6000_dump_status._entry_ptr.124, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.126, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 396, i32 2}
!193 = !{ptr @nxt6000_dump_status._entry.125, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @nxt6000_dump_status._entry_ptr.127, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.129, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 401, i32 3}
!197 = !{ptr @nxt6000_dump_status._entry.128, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @nxt6000_dump_status._entry_ptr.130, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.132, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 405, i32 3}
!201 = !{ptr @nxt6000_dump_status._entry.131, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @nxt6000_dump_status._entry_ptr.133, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.135, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 409, i32 3}
!205 = !{ptr @nxt6000_dump_status._entry.134, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @nxt6000_dump_status._entry_ptr.136, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.138, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 413, i32 3}
!209 = !{ptr @nxt6000_dump_status._entry.137, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @nxt6000_dump_status._entry_ptr.139, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.141, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 423, i32 2}
!213 = !{ptr @nxt6000_dump_status._entry.140, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @nxt6000_dump_status._entry_ptr.142, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.144, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/dvb-frontends/nxt6000.c", i32 424, i32 2}
!217 = !{ptr @nxt6000_dump_status._entry.143, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @nxt6000_dump_status._entry_ptr.145, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!220 = !{i32 1, !"wchar_size", i32 2}
!221 = !{i32 1, !"min_enum_size", i32 4}
!222 = !{i32 8, !"branch-target-enforcement", i32 0}
!223 = !{i32 8, !"sign-return-address", i32 0}
!224 = !{i32 8, !"sign-return-address-all", i32 0}
!225 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!226 = !{i32 7, !"uwtable", i32 1}
!227 = !{i32 7, !"frame-pointer", i32 2}
!228 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
