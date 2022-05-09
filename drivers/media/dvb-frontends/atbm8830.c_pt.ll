; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/atbm8830.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/atbm8830.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+atbm8830_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_atbm8830_attach\09\09\09\09"
module asm "\09.long\09__crc_atbm8830_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atbm8830_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22atbm8830_attach\22\09\09\09\09\09"
module asm "__kstrtabns_atbm8830_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atbm_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.atbm8830_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [15 x i8] c"atbm8830.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [28 x i8] c"atbm8830.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [66 x i8] c"atbm8830.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@atbm8830_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 456, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017atbm8830: %s()\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atbm8830_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/atbm8830.c\00", [57 x i8] zeroinitializer }, align 32
@atbm8830_attach._entry_ptr = internal global ptr @atbm8830_attach._entry, section ".printk_index", align 4
@atbm8830_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017atbm8830: %s atbm8830/8831 not found at i2c addr 0x%02X\0A\00", [37 x i8] zeroinitializer }, align 32
@atbm8830_attach._entry_ptr.5 = internal global ptr @atbm8830_attach._entry.3, section ".printk_index", align 4
@atbm8830_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017atbm8830: atbm8830 chip id: 0x%02X\0A\00", [58 x i8] zeroinitializer }, align 32
@atbm8830_attach._entry_ptr.8 = internal global ptr @atbm8830_attach._entry.6, section ".printk_index", align 4
@atbm8830_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"AltoBeam ATBM8830/8831 DMB-TH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 474000000, i32 858000000, i32 10000, i32 0, i32 0, i32 0, i32 0, i32 721408 }, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr null, ptr @atbm8830_release, ptr null, ptr @atbm8830_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atbm8830_set_fe, ptr @atbm8830_get_tune_settings, ptr @atbm8830_get_fe, ptr @atbm8830_read_status, ptr @atbm8830_read_ber, ptr @atbm8830_read_signal_strength, ptr @atbm8830_read_snr, ptr @atbm8830_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atbm8830_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@atbm8830_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017atbm8830: %s() error_out\0A\00", [36 x i8] zeroinitializer }, align 32
@atbm8830_attach._entry_ptr.11 = internal global ptr @atbm8830_attach._entry.9, section ".printk_index", align 4
@__kstrtab_atbm8830_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_atbm8830_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_atbm8830_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atbm8830_attach to i32), ptr @__kstrtab_atbm8830_attach, ptr @__kstrtabns_atbm8830_attach }, section "___ksymtab+atbm8830_attach", align 4
@__UNIQUE_ID_description292 = internal constant [71 x i8] c"atbm8830.description=AltoBeam ATBM8830/8831 GB20600 demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [57 x i8] c"atbm8830.author=David T. L. Wong <davidtlwong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [51 x i8] c"atbm8830.file=drivers/media/dvb-frontends/atbm8830\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"atbm8830.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@atbm8830_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017atbm8830: %s: error reg=0x%04x, ret=%i\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atbm8830_read_reg\00", [46 x i8] zeroinitializer }, align 32
@atbm8830_read_reg._entry_ptr = internal global ptr @atbm8830_read_reg._entry, section ".printk_index", align 4
@atbm8830_read_reg._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017atbm8830: %s: reg=0x%04X, data=0x%02X\0A\00", [55 x i8] zeroinitializer }, align 32
@atbm8830_read_reg._entry_ptr.16 = internal global ptr @atbm8830_read_reg._entry.14, section ".printk_index", align 4
@atbm8830_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017atbm8830: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atbm8830_release\00", [47 x i8] zeroinitializer }, align 32
@atbm8830_release._entry_ptr = internal global ptr @atbm8830_release._entry, section ".printk_index", align 4
@atbm8830_set_fe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atbm8830_set_fe\00", [16 x i8] zeroinitializer }, align 32
@atbm8830_set_fe._entry_ptr = internal global ptr @atbm8830_set_fe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@atbm8830_set_fe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017atbm8830: Try %d\0A\00", [44 x i8] zeroinitializer }, align 32
@atbm8830_set_fe._entry_ptr.22 = internal global ptr @atbm8830_set_fe._entry.20, section ".printk_index", align 4
@atbm8830_set_fe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017atbm8830: ATBM8830 locked!\0A\00", [34 x i8] zeroinitializer }, align 32
@atbm8830_set_fe._entry_ptr.25 = internal global ptr @atbm8830_set_fe._entry.23, section ".printk_index", align 4
@atbm8830_get_fe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.26, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atbm8830_get_fe\00", [16 x i8] zeroinitializer }, align 32
@atbm8830_get_fe._entry_ptr = internal global ptr @atbm8830_get_fe._entry, section ".printk_index", align 4
@atbm8830_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.27, ptr @.str.2, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atbm8830_read_status\00", [43 x i8] zeroinitializer }, align 32
@atbm8830_read_status._entry_ptr = internal global ptr @atbm8830_read_status._entry, section ".printk_index", align 4
@atbm8830_read_status._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017atbm8830: %s: fe_status=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@atbm8830_read_status._entry_ptr.30 = internal global ptr @atbm8830_read_status._entry.28, section ".printk_index", align 4
@atbm8830_read_status._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017atbm8830: AGC Lock: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@atbm8830_read_status._entry_ptr.33 = internal global ptr @atbm8830_read_status._entry.31, section ".printk_index", align 4
@atbm8830_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.34, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atbm8830_read_ber\00", [46 x i8] zeroinitializer }, align 32
@atbm8830_read_ber._entry_ptr = internal global ptr @atbm8830_read_ber._entry, section ".printk_index", align 4
@atbm8830_read_ber._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017atbm8830: %s: ber=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@atbm8830_read_ber._entry_ptr.37 = internal global ptr @atbm8830_read_ber._entry.35, section ".printk_index", align 4
@atbm8830_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.38, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atbm8830_write_reg\00", [45 x i8] zeroinitializer }, align 32
@atbm8830_write_reg._entry_ptr = internal global ptr @atbm8830_write_reg._entry, section ".printk_index", align 4
@atbm8830_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.39, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"atbm8830_read_signal_strength\00", [34 x i8] zeroinitializer }, align 32
@atbm8830_read_signal_strength._entry_ptr = internal global ptr @atbm8830_read_signal_strength._entry, section ".printk_index", align 4
@atbm8830_read_signal_strength._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017atbm8830: AGC PWM = 0x%02X\0A\00", [34 x i8] zeroinitializer }, align 32
@atbm8830_read_signal_strength._entry_ptr.42 = internal global ptr @atbm8830_read_signal_strength._entry.40, section ".printk_index", align 4
@atbm8830_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.43, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atbm8830_read_snr\00", [46 x i8] zeroinitializer }, align 32
@atbm8830_read_snr._entry_ptr = internal global ptr @atbm8830_read_snr._entry, section ".printk_index", align 4
@atbm8830_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.44, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atbm8830_read_ucblocks\00", [41 x i8] zeroinitializer }, align 32
@atbm8830_read_ucblocks._entry_ptr = internal global ptr @atbm8830_read_ucblocks._entry, section ".printk_index", align 4
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 21, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 456, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 470, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 474, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"atbm8830_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 418, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 487, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 66, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 76, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 252, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 262, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 276, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 279, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 290, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 332, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 340, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 343, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 354, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 368, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 40, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 378, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 389, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 399, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private constant [42 x i8] c"../drivers/media/dvb-frontends/atbm8830.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 406, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_atbm8830_attach, ptr @__param_debug, ptr @atbm8830_attach._entry, ptr @atbm8830_attach._entry.3, ptr @atbm8830_attach._entry.6, ptr @atbm8830_attach._entry.9, ptr @atbm8830_attach._entry_ptr, ptr @atbm8830_attach._entry_ptr.11, ptr @atbm8830_attach._entry_ptr.5, ptr @atbm8830_attach._entry_ptr.8, ptr @atbm8830_get_fe._entry, ptr @atbm8830_get_fe._entry_ptr, ptr @atbm8830_read_ber._entry, ptr @atbm8830_read_ber._entry.35, ptr @atbm8830_read_ber._entry_ptr, ptr @atbm8830_read_ber._entry_ptr.37, ptr @atbm8830_read_reg._entry, ptr @atbm8830_read_reg._entry.14, ptr @atbm8830_read_reg._entry_ptr, ptr @atbm8830_read_reg._entry_ptr.16, ptr @atbm8830_read_signal_strength._entry, ptr @atbm8830_read_signal_strength._entry.40, ptr @atbm8830_read_signal_strength._entry_ptr, ptr @atbm8830_read_signal_strength._entry_ptr.42, ptr @atbm8830_read_snr._entry, ptr @atbm8830_read_snr._entry_ptr, ptr @atbm8830_read_status._entry, ptr @atbm8830_read_status._entry.28, ptr @atbm8830_read_status._entry.31, ptr @atbm8830_read_status._entry_ptr, ptr @atbm8830_read_status._entry_ptr.30, ptr @atbm8830_read_status._entry_ptr.33, ptr @atbm8830_read_ucblocks._entry, ptr @atbm8830_read_ucblocks._entry_ptr, ptr @atbm8830_release._entry, ptr @atbm8830_release._entry_ptr, ptr @atbm8830_set_fe._entry, ptr @atbm8830_set_fe._entry.20, ptr @atbm8830_set_fe._entry.23, ptr @atbm8830_set_fe._entry_ptr, ptr @atbm8830_set_fe._entry_ptr.22, ptr @atbm8830_set_fe._entry_ptr.25, ptr @atbm8830_write_reg._entry, ptr @atbm8830_write_reg._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @atbm8830_ops, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_reg._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_set_fe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_set_fe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_set_fe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_get_fe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_status._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_status._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_ber._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_signal_strength._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atbm8830_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @atbm8830_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %cmp = icmp eq ptr %config, null
  %cmp4 = icmp eq ptr %i2c, null
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1048) #10
  %cmp8 = icmp eq ptr %call7.i.i, null
  br i1 %cmp8, label %if.end6.do.body47_crit_edge, label %if.end10

if.end6.do.body47_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47

if.end10:                                         ; preds = %if.end6
  %config11 = getelementptr inbounds %struct.atbm_state, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %config11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %config, ptr %config11, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i2c, ptr %call7.i.i, align 8
  %call13 = call fastcc i32 @atbm8830_read_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 0, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool30.not = icmp eq i32 %5, 0
  br i1 %cmp14.not, label %do.body29, label %do.body16

do.body16:                                        ; preds = %if.end10
  br i1 %tobool30.not, label %do.body16.do.end57_crit_edge, label %do.end21

do.body16.do.end57_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end57

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %config11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config11, align 4
  %demod_address = getelementptr inbounds %struct.atbm8830_config, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %demod_address, align 1
  %conv = zext i8 %9 to i32
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %do.body47

do.body29:                                        ; preds = %if.end10
  br i1 %tobool30.not, label %do.body29.do.end40_crit_edge, label %do.end34

do.body29.do.end40_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end40

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data, align 1
  %conv36 = zext i8 %11 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv36) #9
  br label %do.end40

do.end40:                                         ; preds = %do.end34, %do.body29.do.end40_crit_edge
  %frontend = getelementptr inbounds %struct.atbm_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.atbm_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = call ptr @memcpy(ptr %ops, ptr @atbm8830_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.atbm_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %call43 = tail call i32 @atbm8830_init(ptr noundef %frontend)
  %14 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %demodulator_priv, align 8
  %call.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %15, i16 noundef zeroext 259, i8 noundef zeroext 1) #6
  br label %cleanup

do.body47:                                        ; preds = %do.end21, %if.end6.do.body47_crit_edge
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool48.not = icmp eq i32 %.pr, 0
  br i1 %tobool48.not, label %do.body47.do.end57_crit_edge, label %do.end52

do.body47.do.end57_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end57

do.end52:                                         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #9
  br label %do.end57

do.end57:                                         ; preds = %do.end52, %do.body47.do.end57_crit_edge, %do.body16.do.end57_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end57, %do.end40, %do.end3.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end57 ], [ %frontend, %do.end40 ], [ null, %do.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atbm8830_read_reg(ptr nocapture noundef readonly %priv, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %p_data) unnamed_addr #0 align 64 {
entry:
  %buf1 = alloca [2 x i8], align 1
  %buf2 = alloca [1 x i8], align 1
  %msg1 = alloca %struct.i2c_msg, align 4
  %msg2 = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf1) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf1, i32 0, i32 1
  %conv = zext i16 %reg to i32
  %1 = lshr i16 %reg, 8
  %conv1 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %buf1, align 1
  %conv3 = trunc i16 %reg to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf2) #6
  %4 = ptrtoint ptr %buf2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg1) #6
  %5 = getelementptr inbounds i8, ptr %msg1, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg2) #6
  %10 = getelementptr inbounds i8, ptr %msg2, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 1
  %12 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 2
  %13 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 3
  %14 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf2, ptr %buf7, align 4
  %config = getelementptr inbounds %struct.atbm_state, ptr %priv, i32 0, i32 1
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.atbm8830_config, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %demod_address, align 1
  %conv9 = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv9, ptr %msg1, align 4
  %20 = ptrtoint ptr %msg2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv9, ptr %msg2, align 4
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %call = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end20, label %do.body

do.body:                                          ; preds = %entry
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %call) #9
  br label %cleanup

if.end20:                                         ; preds = %entry
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %call22 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 1
  br i1 %cmp23.not, label %if.end26, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %26 = ptrtoint ptr %buf2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf2, align 1
  %28 = ptrtoint ptr %p_data to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %p_data, align 1
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp27 = icmp sgt i32 %29, 1
  br i1 %cmp27, label %do.end35, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %conv39 = zext i8 %27 to i32
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %conv39) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end26.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ -5, %if.end20.cleanup_crit_edge ], [ 0, %do.end35 ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg2) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf1) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atbm8830_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %dat.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.atbm_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %osc_clk_freq = getelementptr inbounds %struct.atbm8830_config, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %osc_clk_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %osc_clk_freq, align 4
  %conv.i = zext i32 %5 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 20
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8504919899247140640, i64 %mul.i, i32 0) #11, !srcloc !116
  %asmresult.i.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8504919899247140640, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #11, !srcloc !117
  %asmresult10.i.i = extractvalue { i64, i32 } %7, 0
  %extract2.i = lshr i64 %asmresult10.i.i, 14
  %conv184.i = trunc i64 %extract2.i to i8
  %call185.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2563, i8 noundef zeroext %conv184.i) #6
  %shr1864.i = lshr i64 %asmresult10.i.i, 22
  %conv187.i = trunc i64 %shr1864.i to i8
  %call188.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2564, i8 noundef zeroext %conv187.i) #6
  %shr1895.i = lshr i64 %asmresult10.i.i, 30
  %conv190.i = trunc i64 %shr1895.i to i8
  %call191.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2565, i8 noundef zeroext %conv190.i) #6
  %if_freq = getelementptr inbounds %struct.atbm8830_config, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %if_freq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %if_freq, align 4
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config, align 4
  %osc_clk_freq.i = getelementptr inbounds %struct.atbm8830_config, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %osc_clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %osc_clk_freq.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dat.i) #6
  %14 = ptrtoint ptr %dat.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %dat.i, align 1, !annotation !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %if.else423.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %sub.i = sub i32 %9, %13
  %conv.i20 = zext i32 %sub.i to i64
  %shl.i = mul i64 %conv.i20, 263536508928
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i)
  %cmp171.i = icmp ult i64 %shl.i, 4294967296
  br i1 %cmp171.i, label %if.then175.i, label %if.else181.i, !prof !119

if.then175.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv176.i = trunc i64 %shl.i to i32
  %div179.i = udiv i32 %conv176.i, %13
  %conv180.i = zext i32 %div179.i to i64
  br label %if.end406.i

if.else181.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %13, i64 %shl.i) #11, !srcloc !120
  %asmresult1.i.i = extractvalue { i64, i64 } %15, 1
  br label %if.end406.i

if.end406.i:                                      ; preds = %if.else181.i, %if.then175.i
  %t.0.i = phi i64 [ %conv180.i, %if.then175.i ], [ %asmresult1.i.i, %if.else181.i ]
  %16 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %t.0.i, i32 0) #11, !srcloc !116
  %asmresult.i8.i = extractvalue { i64, i32 } %16, 0
  %asmresult4.i9.i = extractvalue { i64, i32 } %16, 1
  %17 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %t.0.i, i64 %asmresult.i8.i, i32 %asmresult4.i9.i) #11, !srcloc !117
  %asmresult10.i13.i = extractvalue { i64, i32 } %17, 0
  %storemerge.i = lshr i64 %asmresult10.i13.i, 9
  %call409.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 1, i8 noundef zeroext 1) #6
  %conv410.i = trunc i64 %storemerge.i to i8
  %call411.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2560, i8 noundef zeroext %conv410.i) #6
  %shr4122.i = lshr i64 %asmresult10.i13.i, 17
  %conv413.i = trunc i64 %shr4122.i to i8
  %call414.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2561, i8 noundef zeroext %conv413.i) #6
  %shr4153.i = lshr i64 %asmresult10.i13.i, 25
  %conv416.i = trunc i64 %shr4153.i to i8
  %call417.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2562, i8 noundef zeroext %conv416.i) #6
  %call418.i = call fastcc i32 @atbm8830_read_reg(ptr noundef %1, i16 noundef zeroext 1538, ptr noundef nonnull %dat.i) #6
  %18 = ptrtoint ptr %dat.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dat.i, align 1
  %20 = and i8 %19, -4
  %call422.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 1538, i8 noundef zeroext %20) #6
  br label %set_if_freq.exit

if.else423.i:                                     ; preds = %entry
  %call424.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 1, i8 noundef zeroext 0) #6
  %call425.i = call fastcc i32 @atbm8830_read_reg(ptr noundef %1, i16 noundef zeroext 1538, ptr noundef nonnull %dat.i) #6
  %21 = ptrtoint ptr %dat.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dat.i, align 1
  %23 = and i8 %22, -4
  %24 = or i8 %23, 2
  %call432.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 1538, i8 noundef zeroext %24) #6
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config, align 4
  %zif_swap_iq.i = getelementptr inbounds %struct.atbm8830_config, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %zif_swap_iq.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %zif_swap_iq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool434.not.i = icmp eq i8 %28, 0
  br i1 %tobool434.not.i, label %if.else437.i, label %if.then435.i

if.then435.i:                                     ; preds = %if.else423.i
  call void @__sanitizer_cov_trace_pc() #8
  %call436.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 3073, i8 noundef zeroext 3) #6
  br label %set_if_freq.exit

if.else437.i:                                     ; preds = %if.else423.i
  call void @__sanitizer_cov_trace_pc() #8
  %call438.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 3073, i8 noundef zeroext 1) #6
  br label %set_if_freq.exit

set_if_freq.exit:                                 ; preds = %if.else437.i, %if.then435.i, %if.end406.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dat.i) #6
  %agc_min = getelementptr inbounds %struct.atbm8830_config, ptr %3, i32 0, i32 8
  %29 = ptrtoint ptr %agc_min to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %agc_min, align 1
  %agc_max = getelementptr inbounds %struct.atbm8830_config, ptr %3, i32 0, i32 9
  %31 = ptrtoint ptr %agc_max to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %agc_max, align 2
  %33 = or i8 %32, %30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %set_if_freq.exit.set_agc_config.exit_crit_edge, label %if.end.i

set_if_freq.exit.set_agc_config.exit_crit_edge:   ; preds = %set_if_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_agc_config.exit

if.end.i:                                         ; preds = %set_if_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %agc_hold_loop = getelementptr inbounds %struct.atbm8830_config, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %agc_hold_loop to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %agc_hold_loop, align 1
  %call.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 4128, i8 noundef zeroext %30) #6
  %call2.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 4131, i8 noundef zeroext %32) #6
  %call3.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 4145, i8 noundef zeroext %36) #6
  br label %set_agc_config.exit

set_agc_config.exit:                              ; preds = %if.end.i, %set_if_freq.exit.set_agc_config.exit_crit_edge
  %call.i24 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2459, i8 noundef zeroext 8) #6
  %call.1.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2460, i8 noundef zeroext 8) #6
  %call.2.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2461, i8 noundef zeroext 8) #6
  %call.3.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2462, i8 noundef zeroext 8) #6
  %call.4.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2463, i8 noundef zeroext 8) #6
  %call1.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2395, i8 noundef zeroext 127) #6
  %call2.i25 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2507, i8 noundef zeroext 1) #6
  %call3.i26 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2508, i8 noundef zeroext 127) #6
  %call4.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2509, i8 noundef zeroext 127) #6
  %call5.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 3585, i8 noundef zeroext 32) #6
  %call6.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2819, i8 noundef zeroext 10) #6
  %call7.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2357, i8 noundef zeroext 16) #6
  %call8.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2358, i8 noundef zeroext 8) #6
  %call9.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2366, i8 noundef zeroext 8) #6
  %call10.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2414, i8 noundef zeroext 6) #6
  %call11.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2825, i8 noundef zeroext 0) #6
  %call12.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2826, i8 noundef zeroext 8) #6
  %37 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %config, align 4
  %serial_ts.i = getelementptr inbounds %struct.atbm8830_config, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %serial_ts.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %serial_ts.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i28 = icmp ne i8 %40, 0
  %conv1.i = zext i1 %tobool.not.i28 to i8
  %call.i29 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 773, i8 noundef zeroext %conv1.i) #6
  %41 = ptrtoint ptr %serial_ts.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %serial_ts.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool4.not.i = icmp ne i8 %42, 0
  %conv6.i = zext i1 %tobool4.not.i to i8
  %call7.i30 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 779, i8 noundef zeroext %conv6.i) #6
  %ts_sampling_edge.i = getelementptr inbounds %struct.atbm8830_config, ptr %38, i32 0, i32 4
  %43 = ptrtoint ptr %ts_sampling_edge.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ts_sampling_edge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool9.not.i = icmp ne i8 %44, 0
  %conv11.i = zext i1 %tobool9.not.i to i8
  %call12.i31 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 769, i8 noundef zeroext %conv11.i) #6
  %ts_clk_gated.i = getelementptr inbounds %struct.atbm8830_config, ptr %38, i32 0, i32 3
  %45 = ptrtoint ptr %ts_clk_gated.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ts_clk_gated.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool14.not.i = icmp eq i8 %46, 0
  %conv16.i = zext i1 %tobool14.not.i to i8
  %call17.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 774, i8 noundef zeroext %conv16.i) #6
  %call5 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 10, i8 noundef zeroext 0)
  %call6 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 524, i8 noundef zeroext 11)
  %call7 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 4, i8 noundef zeroext 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atbm8830_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp ne i32 %enable, 0
  %conv = zext i1 %tobool.not to i8
  %call = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 259, i8 noundef zeroext %conv)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atbm8830_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atbm8830_set_fe(ptr noundef %fe) #0 align 64 {
entry:
  %status.i = alloca i8, align 1
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.19) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.end3.while.cond.preheader.preheader_crit_edge, label %if.then5

do.end3.while.cond.preheader.preheader_crit_edge: ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.preheader

if.then5:                                         ; preds = %do.end3
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %5 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.then5.if.end12_crit_edge, label %if.then8

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 %6(ptr noundef %fe, i32 noundef 1) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then5.if.end12_crit_edge
  %7 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %set_params, align 4
  %call16 = tail call i32 %8(ptr noundef %fe) #6
  %9 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool19.not = icmp eq ptr %10, null
  br i1 %tobool19.not, label %if.end12.while.cond.preheader.preheader_crit_edge, label %if.then20

if.end12.while.cond.preheader.preheader_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.preheader

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 %10(ptr noundef %fe, i32 noundef 0) #6
  br label %while.cond.preheader.preheader

while.cond.preheader.preheader:                   ; preds = %if.then20, %if.end12.while.cond.preheader.preheader_crit_edge, %do.end3.while.cond.preheader.preheader_crit_edge
  br label %while.cond.preheader

for.cond:                                         ; preds = %do.end37
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.while.cond.preheader_crit_edge

for.cond.while.cond.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

while.cond.preheader:                             ; preds = %for.cond.while.cond.preheader_crit_edge, %while.cond.preheader.preheader
  %i.067 = phi i32 [ %inc, %for.cond.while.cond.preheader_crit_edge ], [ 0, %while.cond.preheader.preheader ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader
  %__ms.066 = phi i32 [ 100, %while.cond.preheader ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.066, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool28.not = icmp eq i32 %12, 0
  br i1 %tobool28.not, label %while.end.do.end37_crit_edge, label %do.end32

while.end.do.end37_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

do.end32:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %i.067) #9
  br label %do.end37

do.end37:                                         ; preds = %do.end32, %while.end.do.end37_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #6
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %status.i, align 1, !annotation !118
  %call.i = call fastcc i32 @atbm8830_read_reg(ptr noundef %1, i16 noundef zeroext 781, ptr noundef nonnull %status.i) #6
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp1.i.not = icmp eq i8 %15, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #6
  br i1 %cmp1.i.not, label %do.body42, label %for.cond

do.body42:                                        ; preds = %do.end37
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool43.not = icmp eq i32 %16, 0
  br i1 %tobool43.not, label %do.body42.for.end_crit_edge, label %do.end47

do.body42.for.end_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end47:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #9
  br label %for.end

for.end:                                          ; preds = %do.end47, %do.body42.for.end_crit_edge, %for.cond.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @atbm8830_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %fesettings, align 4
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
define internal i32 @atbm8830_get_fe(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.26) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %1 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %inversion, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8000000, ptr %bandwidth_hz, align 4
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %3 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 9, ptr %code_rate_HP, align 4
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %4 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 9, ptr %code_rate_LP, align 4
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %5 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %modulation, align 4
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %6 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %transmission_mode, align 4
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %7 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %guard_interval, align 4
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %8 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %hierarchy, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atbm8830_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %fe_status) #0 align 64 {
entry:
  %status.i = alloca i8, align 1
  %agc_locked = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %agc_locked) #6
  %2 = ptrtoint ptr %agc_locked to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %agc_locked, align 1
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.27) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %4 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fe_status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #6
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %status.i, align 1, !annotation !118
  %call.i = call fastcc i32 @atbm8830_read_reg(ptr noundef %1, i16 noundef zeroext 781, ptr noundef nonnull %status.i) #6
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp1.i.not = icmp eq i8 %7, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #6
  br i1 %cmp1.i.not, label %if.then6, label %do.end3.do.body8_crit_edge

do.end3.do.body8_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

if.then6:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fe_status, align 4
  %or = or i32 %9, 31
  store i32 %or, ptr %fe_status, align 4
  br label %do.body8

do.body8:                                         ; preds = %if.then6, %do.end3.do.body8_crit_edge
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %do.body8.do.end18_crit_edge, label %do.end13

do.body8.do.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fe_status, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %12) #9
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %do.body8.do.end18_crit_edge
  %call19 = call fastcc i32 @atbm8830_read_reg(ptr noundef %1, i16 noundef zeroext 4135, ptr noundef nonnull %agc_locked)
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.end18.do.end30_crit_edge, label %do.end25

do.end18.do.end30_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.end25:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %agc_locked to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %agc_locked, align 1
  %conv = zext i8 %15 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv) #9
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %do.end18.do.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %agc_locked) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atbm8830_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %t = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t) #6
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %t, align 1, !annotation !118
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.34) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2125, i8 noundef zeroext 1) #6
  %call5 = call fastcc i32 @atbm8830_read_reg(ptr noundef %1, i16 noundef zeroext 2821, ptr noundef nonnull %t)
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %t, align 1
  %6 = and i8 %5, 127
  %and = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %and, 8
  %call6 = call fastcc i32 @atbm8830_read_reg(ptr noundef %1, i16 noundef zeroext 2820, ptr noundef nonnull %t)
  %7 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %t, align 1
  %conv7 = zext i8 %8 to i32
  %or = or i32 %shl, %conv7
  %call.i26 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2125, i8 noundef zeroext 0) #6
  %mul = mul nuw nsw i32 %or, 100
  %div = udiv i32 %mul, 32767
  %9 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div, ptr %ber, align 4
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %do.end3.do.end19_crit_edge, label %do.end14

do.end3.do.end19_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

do.end14:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %div) #9
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.end3.do.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atbm8830_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal) #0 align 64 {
entry:
  %t = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t) #6
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %t, align 1, !annotation !118
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.39) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call.i = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2125, i8 noundef zeroext 1) #6
  %call5 = call fastcc i32 @atbm8830_read_reg(ptr noundef %1, i16 noundef zeroext 4137, ptr noundef nonnull %t)
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %t, align 1
  %6 = and i8 %5, 3
  %and = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %and, 8
  %call6 = call fastcc i32 @atbm8830_read_reg(ptr noundef %1, i16 noundef zeroext 4136, ptr noundef nonnull %t)
  %7 = ptrtoint ptr %t to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %t, align 1
  %conv7 = zext i8 %8 to i32
  %or = or i32 %shl, %conv7
  %call.i29 = tail call fastcc i32 @atbm8830_write_reg(ptr noundef %1, i16 noundef zeroext 2125, i8 noundef zeroext 0) #6
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %do.end3.do.end19_crit_edge, label %do.end14

do.end3.do.end19_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

do.end14:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %or) #9
  br label %do.end19

do.end19:                                         ; preds = %do.end14, %do.end3.do.end19_crit_edge
  %.neg = mul i32 %or, 67043328
  %div28 = lshr exact i32 %.neg, 10
  %conv20 = trunc i32 %div28 to i16
  %10 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv20, ptr %signal, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atbm8830_read_snr(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.43) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %1 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atbm8830_read_ucblocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.44) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %1 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atbm8830_write_reg(ptr nocapture noundef readonly %priv, i16 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %buf1 = alloca [2 x i8], align 1
  %buf2 = alloca [1 x i8], align 1
  %msg1 = alloca %struct.i2c_msg, align 4
  %msg2 = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf1) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf1, i32 0, i32 1
  %1 = lshr i16 %reg, 8
  %conv1 = trunc i16 %1 to i8
  %2 = ptrtoint ptr %buf1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %buf1, align 1
  %conv3 = trunc i16 %reg to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf2) #6
  %4 = ptrtoint ptr %buf2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %data, ptr %buf2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg1) #6
  %5 = getelementptr inbounds i8, ptr %msg1, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg1, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg2) #6
  %10 = getelementptr inbounds i8, ptr %msg2, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 1
  %12 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 2
  %13 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg2, i32 0, i32 3
  %14 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf2, ptr %buf8, align 4
  %config = getelementptr inbounds %struct.atbm_state, ptr %priv, i32 0, i32 1
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.atbm8830_config, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %demod_address, align 1
  %conv10 = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv10, ptr %msg1, align 4
  %20 = ptrtoint ptr %msg2 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv10, ptr %msg2, align 4
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp = icmp sgt i32 %21, 1
  br i1 %cmp, label %do.end, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %reg to i32
  %conv18 = zext i8 %data to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.38, i32 noundef %conv, i32 noundef %conv18) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end, %entry.if.end21_crit_edge
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 4
  %call22 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg1, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, 1
  br i1 %cmp23.not, label %if.end26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %call28 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 1
  %cond = select i1 %cmp29.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end21.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end26 ], [ -5, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg2) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf1) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 24, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 456, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @atbm8830_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @atbm8830_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 470, i32 3}
!13 = !{ptr @atbm8830_attach._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @atbm8830_attach._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 474, i32 2}
!17 = !{ptr @atbm8830_attach._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @atbm8830_attach._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 487, i32 2}
!21 = !{ptr @atbm8830_attach._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @atbm8830_attach._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_atbm8830_attach, !24, !"__ksymtab_atbm8830_attach", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 492, i32 1}
!25 = !{ptr @__UNIQUE_ID_description292, !26, !"__UNIQUE_ID_description292", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 494, i32 1}
!27 = !{ptr @__UNIQUE_ID_author293, !28, !"__UNIQUE_ID_author293", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 495, i32 1}
!29 = !{ptr @__UNIQUE_ID_file294, !30, !"__UNIQUE_ID_file294", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 496, i32 1}
!31 = !{ptr @__UNIQUE_ID_license295, !30, !"__UNIQUE_ID_license295", i1 false, i1 false}
!32 = !{ptr @debug, !33, !"debug", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 21, i32 12}
!34 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 66, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @atbm8830_read_reg._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @atbm8830_read_reg._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 76, i32 3}
!42 = !{ptr @atbm8830_read_reg._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @atbm8830_read_reg._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @atbm8830_ops, !45, !"atbm8830_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 418, i32 38}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 252, i32 2}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @atbm8830_release._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @atbm8830_release._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 262, i32 2}
!53 = !{ptr @atbm8830_set_fe._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @atbm8830_set_fe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 276, i32 3}
!57 = !{ptr @atbm8830_set_fe._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @atbm8830_set_fe._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 279, i32 4}
!61 = !{ptr @atbm8830_set_fe._entry.23, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @atbm8830_set_fe._entry_ptr.25, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 290, i32 2}
!65 = !{ptr @atbm8830_get_fe._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @atbm8830_get_fe._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 332, i32 2}
!69 = !{ptr @atbm8830_read_status._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @atbm8830_read_status._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 340, i32 2}
!73 = !{ptr @atbm8830_read_status._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @atbm8830_read_status._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 343, i32 2}
!77 = !{ptr @atbm8830_read_status._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @atbm8830_read_status._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 354, i32 2}
!81 = !{ptr @atbm8830_read_ber._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @atbm8830_read_ber._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 368, i32 2}
!85 = !{ptr @atbm8830_read_ber._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @atbm8830_read_ber._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 40, i32 3}
!89 = !{ptr @atbm8830_write_reg._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @atbm8830_write_reg._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 378, i32 2}
!93 = !{ptr @atbm8830_read_signal_strength._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @atbm8830_read_signal_strength._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 389, i32 2}
!97 = !{ptr @atbm8830_read_signal_strength._entry.40, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @atbm8830_read_signal_strength._entry_ptr.42, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 399, i32 2}
!101 = !{ptr @atbm8830_read_snr._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @atbm8830_read_snr._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/atbm8830.c", i32 406, i32 2}
!105 = !{ptr @atbm8830_read_ucblocks._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @atbm8830_read_ucblocks._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{i64 476227, i64 476254, i64 476276, i64 476304}
!117 = !{i64 476635, i64 476662, i64 476695, i64 476716, i64 476743, i64 476769}
!118 = !{!"auto-init"}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 2147983955, i64 2147984235, i64 2147984569, i64 2147984903}
