; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cx24113.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24113.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx24113_agc_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_cx24113_agc_callback\09\09\09\09"
module asm "\09.long\09__crc_cx24113_agc_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24113_agc_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24113_agc_callback\22\09\09\09\09\09"
module asm "__kstrtabns_cx24113_agc_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cx24113_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cx24113_attach\09\09\09\09"
module asm "\09.long\09__crc_cx24113_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24113_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24113_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24113_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cx24113_state = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i16, i8, i32, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.cx24113_config = type { i8, i32 }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cx24113_agc_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017CX24113: %s: \00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24113_agc_callback\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/cx24113.c\00", [58 x i8] zeroinitializer }, align 32
@cx24113_agc_callback._entry_ptr = internal global ptr @cx24113_agc_callback._entry, section ".printk_index", align 4
@cx24113_agc_callback._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"signal strength: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24113_agc_callback._entry_ptr.5 = internal global ptr @cx24113_agc_callback._entry.3, section ".printk_index", align 4
@cx24113_agc_table = internal constant { [2 x [10 x i8]], [44 x i8] } { [2 x [10 x i8]] [[10 x i8] c"\CA\D7\DD\E2\E7\EB\F0\F6\FA\FE", [10 x i8] c"\D9\DD\E2\E7\ED\F1\F5\FB\01\09"], [44 x i8] zeroinitializer }, align 32
@__kstrtab_cx24113_agc_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24113_agc_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24113_agc_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24113_agc_callback to i32), ptr @__kstrtab_cx24113_agc_callback, ptr @__kstrtabns_cx24113_agc_callback }, section "___ksymtab+cx24113_agc_callback", align 4
@cx24113_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016CX24113: trying to detect myself\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24113_attach\00", [17 x i8] zeroinitializer }, align 32
@cx24113_attach._entry_ptr = internal global ptr @cx24113_attach._entry, section ".printk_index", align 4
@cx24113_attach._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016CX24113: CX24113 not found.\0A\00", [33 x i8] zeroinitializer }, align 32
@cx24113_attach._entry_ptr.10 = internal global ptr @cx24113_attach._entry.8, section ".printk_index", align 4
@cx24113_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016CX24113: detected CX24113 variant\0A\00", [59 x i8] zeroinitializer }, align 32
@cx24113_attach._entry_ptr.13 = internal global ptr @cx24113_attach._entry.11, section ".printk_index", align 4
@cx24113_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016CX24113: successfully detected\0A\00", [62 x i8] zeroinitializer }, align 32
@cx24113_attach._entry_ptr.16 = internal global ptr @cx24113_attach._entry.14, section ".printk_index", align 4
@cx24113_attach._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.2, i32 576, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013CX24113: unsupported device id: %x\0A\00", [58 x i8] zeroinitializer }, align 32
@cx24113_attach._entry_ptr.19 = internal global ptr @cx24113_attach._entry.17, section ".printk_index", align 4
@cx24113_attach._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.2, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016CX24113: version: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@cx24113_attach._entry_ptr.22 = internal global ptr @cx24113_attach._entry.20, section ".printk_index", align 4
@cx24113_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Conexant CX24113\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 0, i32 0 }, ptr @cx24113_release, ptr @cx24113_init, ptr null, ptr null, ptr null, ptr @cx24113_set_params, ptr null, ptr null, ptr @cx24113_get_frequency, ptr null, ptr null, ptr @cx24113_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_cx24113_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24113_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24113_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24113_attach to i32), ptr @__kstrtab_cx24113_attach, ptr @__kstrtabns_cx24113_attach }, section "___ksymtab+cx24113_attach", align 4
@__param_str_debug = internal constant [14 x i8] c"cx24113.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"cx24113.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [60 x i8] c"cx24113.parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [50 x i8] c"cx24113.author=Patrick Boettcher <pb@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [77 x i8] c"cx24113.description=DVB Frontend module for Conexant CX24113/CX24128hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"cx24113.file=drivers/media/dvb-frontends/cx24113\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"cx24113.license=GPL\00", section ".modinfo", align 1
@cx24113_set_gain_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx24113_set_gain_settings\00", [38 x i8] zeroinitializer }, align 32
@cx24113_set_gain_settings._entry_ptr = internal global ptr @cx24113_set_gain_settings._entry, section ".printk_index", align 4
@cx24113_set_gain_settings._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"power estimation: %d, thres: %d, gain_level: %d/%d\0A\00", [44 x i8] zeroinitializer }, align 32
@cx24113_set_gain_settings._entry_ptr.26 = internal global ptr @cx24113_set_gain_settings._entry.24, section ".printk_index", align 4
@cx24113_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017%s: writereg error(err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24113_writereg\00", [47 x i8] zeroinitializer }, align 32
@cx24113_writereg._entry_ptr = internal global ptr @cx24113_writereg._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx24113_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: reg=0x%x (error=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24113_readreg\00", [16 x i8] zeroinitializer }, align 32
@cx24113_readreg._entry_ptr = internal global ptr @cx24113_readreg._entry, section ".printk_index", align 4
@cx24113_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.31, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24113_release\00", [16 x i8] zeroinitializer }, align 32
@cx24113_release._entry_ptr = internal global ptr @cx24113_release._entry, section ".printk_index", align 4
@cx24113_release._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cx24113_release._entry_ptr.34 = internal global ptr @cx24113_release._entry.32, section ".printk_index", align 4
@cx24113_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.35, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24113_set_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@cx24113_set_bandwidth._entry_ptr = internal global ptr @cx24113_set_bandwidth._entry, section ".printk_index", align 4
@cx24113_set_bandwidth._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bandwidth to be set: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cx24113_set_bandwidth._entry_ptr.38 = internal global ptr @cx24113_set_bandwidth._entry.36, section ".printk_index", align 4
@cx24113_set_bandwidth._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.35, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24113_set_bandwidth._entry_ptr.40 = internal global ptr @cx24113_set_bandwidth._entry.39, section ".printk_index", align 4
@cx24113_set_bandwidth._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bandwidth: %d %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cx24113_set_bandwidth._entry_ptr.43 = internal global ptr @cx24113_set_bandwidth._entry.41, section ".printk_index", align 4
@cx24113_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.44, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24113_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@cx24113_set_frequency._entry_ptr = internal global ptr @cx24113_set_frequency._entry, section ".printk_index", align 4
@cx24113_set_frequency._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tuning to frequency: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cx24113_set_frequency._entry_ptr.47 = internal global ptr @cx24113_set_frequency._entry.45, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx24113_calc_pll_nf\00", [44 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr = internal global ptr @cx24113_calc_pll_nf._entry, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"calculating N/F for %dHz with vcodiv %d\0A\00", [55 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr.51 = internal global ptr @cx24113_calc_pll_nf._entry.49, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013CX24113: strange frequency: N < 6\0A\00", [59 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr.54 = internal global ptr @cx24113_calc_pll_nf._entry.52, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr.56 = internal global ptr @cx24113_calc_pll_nf._entry.55, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.48, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"1 N: %d, F: %lld, R: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr.59 = internal global ptr @cx24113_calc_pll_nf._entry.57, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr.61 = internal global ptr @cx24113_calc_pll_nf._entry.60, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.48, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"2 N: %d, F: %lld, R: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr.64 = internal global ptr @cx24113_calc_pll_nf._entry.62, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr.66 = internal global ptr @cx24113_calc_pll_nf._entry.65, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.48, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"3 N: %d, F: %lld, R: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr.69 = internal global ptr @cx24113_calc_pll_nf._entry.67, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.48, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr.71 = internal global ptr @cx24113_calc_pll_nf._entry.70, section ".printk_index", align 4
@cx24113_calc_pll_nf._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.48, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"4 N: %d, F: %lld, R: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cx24113_calc_pll_nf._entry_ptr.74 = internal global ptr @cx24113_calc_pll_nf._entry.72, section ".printk_index", align 4
@cx24113_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.75, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx24113_get_status\00", [45 x i8] zeroinitializer }, align 32
@cx24113_get_status._entry_ptr = internal global ptr @cx24113_get_status._entry, section ".printk_index", align 4
@cx24113_get_status._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PLL locked: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24113_get_status._entry_ptr.78 = internal global ptr @cx24113_get_status._entry.76, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 35, i64 67]
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 18, i32 12 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 500, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"cx24113_agc_table\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 484, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 555, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 563, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 570, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 573, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 576, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 580, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"cx24113_tuner_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 524, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 195, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 97, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 119, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 519, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 251, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 258, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 393, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 316, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 330, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 335, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 340, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 343, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 356, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [41 x i8] c"../drivers/media/dvb-frontends/cx24113.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 277, i32 2 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_cx24113_agc_callback, ptr @__ksymtab_cx24113_attach, ptr @__param_debug, ptr @cx24113_agc_callback._entry, ptr @cx24113_agc_callback._entry.3, ptr @cx24113_agc_callback._entry_ptr, ptr @cx24113_agc_callback._entry_ptr.5, ptr @cx24113_attach._entry, ptr @cx24113_attach._entry.11, ptr @cx24113_attach._entry.14, ptr @cx24113_attach._entry.17, ptr @cx24113_attach._entry.20, ptr @cx24113_attach._entry.8, ptr @cx24113_attach._entry_ptr, ptr @cx24113_attach._entry_ptr.10, ptr @cx24113_attach._entry_ptr.13, ptr @cx24113_attach._entry_ptr.16, ptr @cx24113_attach._entry_ptr.19, ptr @cx24113_attach._entry_ptr.22, ptr @cx24113_calc_pll_nf._entry, ptr @cx24113_calc_pll_nf._entry.49, ptr @cx24113_calc_pll_nf._entry.52, ptr @cx24113_calc_pll_nf._entry.55, ptr @cx24113_calc_pll_nf._entry.57, ptr @cx24113_calc_pll_nf._entry.60, ptr @cx24113_calc_pll_nf._entry.62, ptr @cx24113_calc_pll_nf._entry.65, ptr @cx24113_calc_pll_nf._entry.67, ptr @cx24113_calc_pll_nf._entry.70, ptr @cx24113_calc_pll_nf._entry.72, ptr @cx24113_calc_pll_nf._entry_ptr, ptr @cx24113_calc_pll_nf._entry_ptr.51, ptr @cx24113_calc_pll_nf._entry_ptr.54, ptr @cx24113_calc_pll_nf._entry_ptr.56, ptr @cx24113_calc_pll_nf._entry_ptr.59, ptr @cx24113_calc_pll_nf._entry_ptr.61, ptr @cx24113_calc_pll_nf._entry_ptr.64, ptr @cx24113_calc_pll_nf._entry_ptr.66, ptr @cx24113_calc_pll_nf._entry_ptr.69, ptr @cx24113_calc_pll_nf._entry_ptr.71, ptr @cx24113_calc_pll_nf._entry_ptr.74, ptr @cx24113_get_status._entry, ptr @cx24113_get_status._entry.76, ptr @cx24113_get_status._entry_ptr, ptr @cx24113_get_status._entry_ptr.78, ptr @cx24113_readreg._entry, ptr @cx24113_readreg._entry_ptr, ptr @cx24113_release._entry, ptr @cx24113_release._entry.32, ptr @cx24113_release._entry_ptr, ptr @cx24113_release._entry_ptr.34, ptr @cx24113_set_bandwidth._entry, ptr @cx24113_set_bandwidth._entry.36, ptr @cx24113_set_bandwidth._entry.39, ptr @cx24113_set_bandwidth._entry.41, ptr @cx24113_set_bandwidth._entry_ptr, ptr @cx24113_set_bandwidth._entry_ptr.38, ptr @cx24113_set_bandwidth._entry_ptr.40, ptr @cx24113_set_bandwidth._entry_ptr.43, ptr @cx24113_set_frequency._entry, ptr @cx24113_set_frequency._entry.45, ptr @cx24113_set_frequency._entry_ptr, ptr @cx24113_set_frequency._entry_ptr.47, ptr @cx24113_set_gain_settings._entry, ptr @cx24113_set_gain_settings._entry.24, ptr @cx24113_set_gain_settings._entry_ptr, ptr @cx24113_set_gain_settings._entry_ptr.26, ptr @cx24113_writereg._entry, ptr @cx24113_writereg._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @cx24113_agc_table, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @cx24113_tuner_ops, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.58, ptr @.str.63, ptr @.str.68, ptr @.str.73, ptr @.str.75, ptr @.str.77], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_agc_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_agc_callback._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_agc_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_attach._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_attach._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_attach._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_set_gain_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_set_gain_settings._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_release._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_set_bandwidth._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_set_bandwidth._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_set_bandwidth._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_set_frequency._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_calc_pll_nf._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24113_get_status._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx24113_agc_callback(ptr noundef %fe) #0 align 64 {
entry:
  %s = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %s) #7
  %2 = ptrtoint ptr %s to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %s, align 2, !annotation !152
  %read_signal_strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 17
  %3 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read_signal_strength, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %gain_level = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 16
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %do.body.preheader
  %5 = ptrtoint ptr %read_signal_strength to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_signal_strength, align 4
  %call = call i32 %6(ptr noundef %fe, ptr noundef nonnull %s) #7
  %7 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %s, align 2
  %9 = ashr i16 %8, 8
  store i16 %9, ptr %s, align 2
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %do.body.do.end17_crit_edge, label %do.end

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  %11 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %s, align 2
  %conv13 = sext i16 %12 to i32
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv13) #10
  br label %do.end17

do.end17:                                         ; preds = %do.end, %do.body.do.end17_crit_edge
  %13 = ptrtoint ptr %gain_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %gain_level, align 2
  %idxprom = zext i8 %14 to i32
  %15 = ptrtoint ptr %s to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %s, align 2
  %arrayidx21 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %idxprom, i32 0
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx21, align 1
  %19 = sext i8 %18 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %19)
  %cmp24 = icmp slt i16 %16, %19
  br i1 %cmp24, label %do.end17.for.end_crit_edge, label %for.inc

do.end17.for.end_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %do.end17
  %arrayidx21.1 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx21.1, align 1
  %22 = sext i8 %21 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %22)
  %cmp24.1 = icmp slt i16 %16, %22
  br i1 %cmp24.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %arrayidx21.2 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %idxprom, i32 2
  %23 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx21.2, align 1
  %25 = sext i8 %24 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %25)
  %cmp24.2 = icmp slt i16 %16, %25
  br i1 %cmp24.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx21.3 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %idxprom, i32 3
  %26 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx21.3, align 1
  %28 = sext i8 %27 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %28)
  %cmp24.3 = icmp slt i16 %16, %28
  br i1 %cmp24.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx21.4 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %idxprom, i32 4
  %29 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx21.4, align 1
  %31 = sext i8 %30 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %31)
  %cmp24.4 = icmp slt i16 %16, %31
  br i1 %cmp24.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx21.5 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %idxprom, i32 5
  %32 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx21.5, align 1
  %34 = sext i8 %33 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %34)
  %cmp24.5 = icmp slt i16 %16, %34
  br i1 %cmp24.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx21.6 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %idxprom, i32 6
  %35 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx21.6, align 1
  %37 = sext i8 %36 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %37)
  %cmp24.6 = icmp slt i16 %16, %37
  br i1 %cmp24.6, label %for.inc.5.for.end_crit_edge, label %for.inc.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx21.7 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %idxprom, i32 7
  %38 = ptrtoint ptr %arrayidx21.7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx21.7, align 1
  %40 = sext i8 %39 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %40)
  %cmp24.7 = icmp slt i16 %16, %40
  br i1 %cmp24.7, label %for.inc.6.for.end_crit_edge, label %for.inc.7

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx21.8 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %idxprom, i32 8
  %41 = ptrtoint ptr %arrayidx21.8 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx21.8, align 1
  %43 = sext i8 %42 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %43)
  %cmp24.8 = icmp slt i16 %16, %43
  br i1 %cmp24.8, label %for.inc.7.for.end_crit_edge, label %for.inc.8

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx21.9 = getelementptr [2 x [10 x i8]], ptr @cx24113_agc_table, i32 0, i32 %idxprom, i32 9
  %44 = ptrtoint ptr %arrayidx21.9 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx21.9, align 1
  %46 = sext i8 %45 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %46)
  %cmp24.9 = icmp slt i16 %16, %46
  %spec.select = select i1 %cmp24.9, i16 -70, i16 -75
  br label %for.end

for.end:                                          ; preds = %for.inc.8, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %do.end17.for.end_crit_edge
  %i.0.lcssa = phi i16 [ -25, %do.end17.for.end_crit_edge ], [ -30, %for.inc.for.end_crit_edge ], [ -35, %for.inc.1.for.end_crit_edge ], [ -40, %for.inc.2.for.end_crit_edge ], [ -45, %for.inc.3.for.end_crit_edge ], [ -50, %for.inc.4.for.end_crit_edge ], [ -55, %for.inc.5.for.end_crit_edge ], [ -60, %for.inc.6.for.end_crit_edge ], [ -65, %for.inc.7.for.end_crit_edge ], [ %spec.select, %for.inc.8 ]
  %47 = ptrtoint ptr %s to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %i.0.lcssa, ptr %s, align 2
  %call31 = call fastcc i32 @cx24113_set_gain_settings(ptr noundef %1, i16 noundef signext %i.0.lcssa)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.end.cleanup_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %s) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24113_set_gain_settings(ptr nocapture noundef %state, i16 noundef signext %power_estimation) unnamed_addr #0 align 64 {
entry:
  %buf.i146 = alloca [2 x i8], align 1
  %msg.i147 = alloca %struct.i2c_msg, align 4
  %buf.i132 = alloca [2 x i8], align 1
  %msg.i133 = alloca %struct.i2c_msg, align 4
  %buf.i123 = alloca [2 x i8], align 1
  %msg.i124 = alloca %struct.i2c_msg, align 4
  %reg.addr.i101 = alloca i8, align 1
  %b.i102 = alloca i8, align 1
  %msg.i103 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i79 = alloca i8, align 1
  %b.i80 = alloca i8, align 1
  %msg.i81 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 29, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #7
  %1 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %b.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24113_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = load i8, ptr %5, align 4
  %conv4.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
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
  store ptr %b.i, ptr %buf7.i, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg.addr.i, align 1
  %conv9.i = zext i8 %20 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i, i32 noundef %call.i) #10
  br label %cx24113_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b.i, align 1
  %conv11.i = zext i8 %22 to i32
  br label %cx24113_readreg.exit

cx24113_readreg.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv11.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i79)
  %23 = ptrtoint ptr %reg.addr.i79 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 31, ptr %reg.addr.i79, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i80) #7
  %24 = ptrtoint ptr %b.i80 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %b.i80, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i81) #7
  %25 = getelementptr inbounds i8, ptr %msg.i81, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv.i83 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i81 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i83, ptr %msg.i81, align 4
  %flags.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i84 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i84, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %25, align 4
  %buf.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i86 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %reg.addr.i79, ptr %buf.i86, align 4
  %arrayinit.element.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81, i32 1
  %35 = load i8, ptr %28, align 4
  %conv4.i88 = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayinit.element.i87 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv4.i88, ptr %arrayinit.element.i87, align 4
  %flags5.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81, i32 1, i32 1
  %37 = ptrtoint ptr %flags5.i89 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags5.i89, align 2
  %len6.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81, i32 1, i32 2
  %38 = ptrtoint ptr %len6.i90 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len6.i90, align 4
  %buf7.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i81, i32 1, i32 3
  %39 = ptrtoint ptr %buf7.i91 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b.i80, ptr %buf7.i91, align 4
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 4
  %call.i92 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i81, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i92)
  %cmp.not.i93 = icmp eq i32 %call.i92, 2
  br i1 %cmp.not.i93, label %if.end.i98, label %do.end.i96

do.end.i96:                                       ; preds = %cx24113_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %reg.addr.i79 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reg.addr.i79, align 1
  %conv9.i94 = zext i8 %43 to i32
  %call10.i95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i94, i32 noundef %call.i92) #10
  br label %cx24113_readreg.exit100

if.end.i98:                                       ; preds = %cx24113_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %b.i80 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b.i80, align 1
  %conv11.i97 = zext i8 %45 to i32
  br label %cx24113_readreg.exit100

cx24113_readreg.exit100:                          ; preds = %if.end.i98, %do.end.i96
  %retval.0.i99 = phi i32 [ %call.i92, %do.end.i96 ], [ %conv11.i97, %if.end.i98 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i81) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i80) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i79)
  %conv3 = and i32 %retval.0.i99, 37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i101)
  %46 = ptrtoint ptr %reg.addr.i101 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 32, ptr %reg.addr.i101, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i102) #7
  %47 = ptrtoint ptr %b.i102 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %b.i102, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i103) #7
  %48 = getelementptr inbounds i8, ptr %msg.i103, i32 4
  %49 = call ptr @memset(ptr %48, i32 255, i32 16)
  %50 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 4
  %conv.i105 = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i103 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i105, ptr %msg.i103, align 4
  %flags.i106 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i106 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i106, align 2
  %56 = ptrtoint ptr %48 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %48, align 4
  %buf.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103, i32 0, i32 3
  %57 = ptrtoint ptr %buf.i108 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %reg.addr.i101, ptr %buf.i108, align 4
  %arrayinit.element.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103, i32 1
  %58 = load i8, ptr %51, align 4
  %conv4.i110 = zext i8 %58 to i16
  %59 = ptrtoint ptr %arrayinit.element.i109 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv4.i110, ptr %arrayinit.element.i109, align 4
  %flags5.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103, i32 1, i32 1
  %60 = ptrtoint ptr %flags5.i111 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %flags5.i111, align 2
  %len6.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103, i32 1, i32 2
  %61 = ptrtoint ptr %len6.i112 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %len6.i112, align 4
  %buf7.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i103, i32 1, i32 3
  %62 = ptrtoint ptr %buf7.i113 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %b.i102, ptr %buf7.i113, align 4
  %63 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %state, align 4
  %call.i114 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i103, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i114)
  %cmp.not.i115 = icmp eq i32 %call.i114, 2
  br i1 %cmp.not.i115, label %if.end.i120, label %do.end.i118

do.end.i118:                                      ; preds = %cx24113_readreg.exit100
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %reg.addr.i101 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %reg.addr.i101, align 1
  %conv9.i116 = zext i8 %66 to i32
  %call10.i117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i116, i32 noundef %call.i114) #10
  br label %cx24113_readreg.exit122

if.end.i120:                                      ; preds = %cx24113_readreg.exit100
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %b.i102 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %b.i102, align 1
  %conv11.i119 = zext i8 %68 to i32
  br label %cx24113_readreg.exit122

cx24113_readreg.exit122:                          ; preds = %if.end.i120, %do.end.i118
  %retval.0.i121 = phi i32 [ %call.i114, %do.end.i118 ], [ %conv11.i119, %if.end.i120 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i103) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i102) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i101)
  %69 = trunc i32 %retval.0.i121 to i8
  %conv6 = and i8 %69, -13
  %tuner_gain_thres = getelementptr inbounds %struct.cx24113_state, ptr %state, i32 0, i32 15
  %70 = ptrtoint ptr %tuner_gain_thres to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %tuner_gain_thres, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %power_estimation)
  %cmp = icmp sle i16 %71, %power_estimation
  %conv10 = zext i1 %cmp to i8
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not = icmp eq i32 %72, 0
  br i1 %tobool.not, label %cx24113_readreg.exit122.do.end25_crit_edge, label %do.end

cx24113_readreg.exit122.do.end25_crit_edge:       ; preds = %cx24113_readreg.exit122
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end:                                           ; preds = %cx24113_readreg.exit122
  call void @__sanitizer_cov_trace_pc() #9
  %conv7 = sext i16 %power_estimation to i32
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #10
  %73 = ptrtoint ptr %tuner_gain_thres to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %tuner_gain_thres, align 4
  %conv19 = sext i16 %74 to i32
  %gain_level20 = getelementptr inbounds %struct.cx24113_state, ptr %state, i32 0, i32 16
  %75 = ptrtoint ptr %gain_level20 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %gain_level20, align 2
  %conv21 = zext i8 %76 to i32
  %conv22 = zext i1 %cmp to i32
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv7, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv22) #10
  br label %do.end25

do.end25:                                         ; preds = %do.end, %cx24113_readreg.exit122.do.end25_crit_edge
  %gain_level27 = getelementptr inbounds %struct.cx24113_state, ptr %state, i32 0, i32 16
  %77 = ptrtoint ptr %gain_level27 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %gain_level27, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %conv10)
  %cmp29 = icmp eq i8 %78, %conv10
  br i1 %cmp29, label %do.end25.cleanup_crit_edge, label %if.end32

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %do.end25
  %79 = or i8 %conv6, 8
  %80 = or i32 %conv3, 26
  %vga.0 = select i1 %cmp, i32 63, i32 %80
  %rfvga.0 = select i1 %cmp, i8 %conv6, i8 %79
  %81 = ptrtoint ptr %gain_level27 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv10, ptr %gain_level27, align 2
  %conv34 = and i32 %retval.0.i, 240
  %conv51 = or i32 %conv34, 15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i123) #7
  %82 = getelementptr inbounds [2 x i8], ptr %buf.i123, i32 0, i32 1
  %83 = ptrtoint ptr %buf.i123 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 29, ptr %buf.i123, align 1
  %conv1.i = trunc i32 %conv51 to i8
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv1.i, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i124) #7
  %85 = getelementptr inbounds i8, ptr %msg.i124, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 196607, ptr %85, align 4
  %87 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %config.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 4
  %conv2.i = zext i8 %90 to i16
  %91 = ptrtoint ptr %msg.i124 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv2.i, ptr %msg.i124, align 4
  %flags.i126 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i124, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i126 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags.i126, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i124, i32 0, i32 3
  %93 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %buf.i123, ptr %buf3.i, align 4
  %94 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %state, align 4
  %call.i128 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i124, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i128)
  %cmp.not.i129 = icmp eq i32 %call.i128, 1
  br i1 %cmp.not.i129, label %if.end32.cx24113_writereg.exit_crit_edge, label %do.end.i130

if.end32.cx24113_writereg.exit_crit_edge:         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit

do.end.i130:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i128, i32 noundef 29, i32 noundef %conv51) #10
  br label %cx24113_writereg.exit

cx24113_writereg.exit:                            ; preds = %do.end.i130, %if.end32.cx24113_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i124) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i123) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i132) #7
  %96 = getelementptr inbounds [2 x i8], ptr %buf.i132, i32 0, i32 1
  %97 = ptrtoint ptr %buf.i132 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 31, ptr %buf.i132, align 1
  %conv1.i134 = trunc i32 %vga.0 to i8
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv1.i134, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i133) #7
  %99 = getelementptr inbounds i8, ptr %msg.i133, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 196607, ptr %99, align 4
  %101 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %config.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 4
  %conv2.i136 = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i133 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv2.i136, ptr %msg.i133, align 4
  %flags.i137 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i137 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i137, align 2
  %buf3.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133, i32 0, i32 3
  %107 = ptrtoint ptr %buf3.i139 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i132, ptr %buf3.i139, align 4
  %108 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %state, align 4
  %call.i140 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i133, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i140)
  %cmp.not.i141 = icmp eq i32 %call.i140, 1
  br i1 %cmp.not.i141, label %cx24113_writereg.exit.cx24113_writereg.exit145_crit_edge, label %do.end.i143

cx24113_writereg.exit.cx24113_writereg.exit145_crit_edge: ; preds = %cx24113_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit145

do.end.i143:                                      ; preds = %cx24113_writereg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i140, i32 noundef 31, i32 noundef %vga.0) #10
  br label %cx24113_writereg.exit145

cx24113_writereg.exit145:                         ; preds = %do.end.i143, %cx24113_writereg.exit.cx24113_writereg.exit145_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i133) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i132) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i146) #7
  %110 = getelementptr inbounds [2 x i8], ptr %buf.i146, i32 0, i32 1
  %111 = ptrtoint ptr %buf.i146 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 32, ptr %buf.i146, align 1
  %112 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %rfvga.0, ptr %110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i147) #7
  %113 = getelementptr inbounds i8, ptr %msg.i147, i32 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 196607, ptr %113, align 4
  %115 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %config.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %116, align 4
  %conv2.i149 = zext i8 %118 to i16
  %119 = ptrtoint ptr %msg.i147 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv2.i149, ptr %msg.i147, align 4
  %flags.i150 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147, i32 0, i32 1
  %120 = ptrtoint ptr %flags.i150 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %flags.i150, align 2
  %buf3.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i147, i32 0, i32 3
  %121 = ptrtoint ptr %buf3.i152 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %buf.i146, ptr %buf3.i152, align 4
  %122 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %state, align 4
  %call.i153 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msg.i147, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i153)
  %cmp.not.i154 = icmp eq i32 %call.i153, 1
  br i1 %cmp.not.i154, label %cx24113_writereg.exit145.cx24113_writereg.exit158_crit_edge, label %do.end.i156

cx24113_writereg.exit145.cx24113_writereg.exit158_crit_edge: ; preds = %cx24113_writereg.exit145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit158

do.end.i156:                                      ; preds = %cx24113_writereg.exit145
  call void @__sanitizer_cov_trace_pc() #9
  %conv55 = zext i8 %rfvga.0 to i32
  %call5.i155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i153, i32 noundef 32, i32 noundef %conv55) #10
  br label %cx24113_writereg.exit158

cx24113_writereg.exit158:                         ; preds = %do.end.i156, %cx24113_writereg.exit145.cx24113_writereg.exit158_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i147) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i146) #7
  br label %cleanup

cleanup:                                          ; preds = %cx24113_writereg.exit158, %do.end25.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %cx24113_writereg.exit158 ], [ 0, %do.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx24113_attach(ptr noundef writeonly %fe, ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %reg.addr.i96 = alloca i8, align 1
  %b.i97 = alloca i8, align 1
  %msg.i98 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i74 = alloca i8, align 1
  %b.i75 = alloca i8, align 1
  %msg.i76 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.cx24113_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #7
  %4 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %b.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config, align 4
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
  store ptr %b.i, ptr %buf7.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.cx24113_readreg.exit_crit_edge, label %do.end.i

if.end.cx24113_readreg.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_readreg.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg.addr.i, align 1
  %conv9.i = zext i8 %18 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i, i32 noundef %call.i) #10
  br label %cx24113_readreg.exit

cx24113_readreg.exit:                             ; preds = %do.end.i, %if.end.cx24113_readreg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i74)
  %19 = ptrtoint ptr %reg.addr.i74 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %reg.addr.i74, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i75) #7
  %20 = ptrtoint ptr %b.i75 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %b.i75, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i76) #7
  %21 = getelementptr inbounds i8, ptr %msg.i76, i32 4
  %22 = call ptr @memset(ptr %21, i32 255, i32 16)
  %23 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config1, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %conv.i78 = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i76 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i78, ptr %msg.i76, align 4
  %flags.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i79, align 2
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %21, align 4
  %buf.i81 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i81 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %reg.addr.i74, ptr %buf.i81, align 4
  %arrayinit.element.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1
  %31 = load i8, ptr %24, align 4
  %conv4.i83 = zext i8 %31 to i16
  %32 = ptrtoint ptr %arrayinit.element.i82 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv4.i83, ptr %arrayinit.element.i82, align 4
  %flags5.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1, i32 1
  %33 = ptrtoint ptr %flags5.i84 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %flags5.i84, align 2
  %len6.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1, i32 2
  %34 = ptrtoint ptr %len6.i85 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %len6.i85, align 4
  %buf7.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76, i32 1, i32 3
  %35 = ptrtoint ptr %buf7.i86 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b.i75, ptr %buf7.i86, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %call.i87 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i76, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i87)
  %cmp.not.i88 = icmp eq i32 %call.i87, 2
  br i1 %cmp.not.i88, label %cx24113_readreg.exit95.thread, label %cx24113_readreg.exit95

cx24113_readreg.exit95.thread:                    ; preds = %cx24113_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %b.i75 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %b.i75, align 1
  %conv11.i92 = zext i8 %39 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i76) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i75) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i74)
  br label %if.end18

cx24113_readreg.exit95:                           ; preds = %cx24113_readreg.exit
  %40 = ptrtoint ptr %reg.addr.i74 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg.addr.i74, align 1
  %conv9.i89 = zext i8 %41 to i32
  %call10.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i89, i32 noundef %call.i87) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i76) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i75) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp = icmp slt i32 %call.i87, 0
  br i1 %cmp, label %do.end13, label %cx24113_readreg.exit95.if.end18_crit_edge

cx24113_readreg.exit95.if.end18_crit_edge:        ; preds = %cx24113_readreg.exit95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end13:                                         ; preds = %cx24113_readreg.exit95
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %error

if.end18:                                         ; preds = %cx24113_readreg.exit95.if.end18_crit_edge, %cx24113_readreg.exit95.thread
  %retval.0.i94120 = phi i32 [ %conv11.i92, %cx24113_readreg.exit95.thread ], [ %call.i87, %cx24113_readreg.exit95.if.end18_crit_edge ]
  %conv = trunc i32 %retval.0.i94120 to i8
  %rev = getelementptr inbounds %struct.cx24113_state, ptr %call7.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %rev to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv, ptr %rev, align 8
  %43 = zext i32 %retval.0.i94120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i94120, label %do.end39 [
    i32 67, label %if.end18.sw.epilog_crit_edge
    i32 35, label %do.end31
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end31:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end39:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %conv42 = and i32 %retval.0.i94120, 255
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv42) #10
  br label %error

sw.epilog:                                        ; preds = %do.end31, %if.end18.sw.epilog_crit_edge
  %.str.15.sink = phi ptr [ @.str.15, %do.end31 ], [ @.str.12, %if.end18.sw.epilog_crit_edge ]
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i96)
  %44 = ptrtoint ptr %reg.addr.i96 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %reg.addr.i96, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i97) #7
  %45 = ptrtoint ptr %b.i97 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %b.i97, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i98) #7
  %46 = getelementptr inbounds i8, ptr %msg.i98, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %48 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv.i100 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i98 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i100, ptr %msg.i98, align 4
  %flags.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i101 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i101, align 2
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %46, align 4
  %buf.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 0, i32 3
  %55 = ptrtoint ptr %buf.i103 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %reg.addr.i96, ptr %buf.i103, align 4
  %arrayinit.element.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 1
  %56 = load i8, ptr %49, align 4
  %conv4.i105 = zext i8 %56 to i16
  %57 = ptrtoint ptr %arrayinit.element.i104 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv4.i105, ptr %arrayinit.element.i104, align 4
  %flags5.i106 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 1, i32 1
  %58 = ptrtoint ptr %flags5.i106 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %flags5.i106, align 2
  %len6.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 1, i32 2
  %59 = ptrtoint ptr %len6.i107 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %len6.i107, align 4
  %buf7.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i98, i32 1, i32 3
  %60 = ptrtoint ptr %buf7.i108 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %b.i97, ptr %buf7.i108, align 4
  %61 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call7.i.i, align 8
  %call.i109 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i98, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i109)
  %cmp.not.i110 = icmp eq i32 %call.i109, 2
  br i1 %cmp.not.i110, label %if.end.i115, label %do.end.i113

do.end.i113:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %reg.addr.i96 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %reg.addr.i96, align 1
  %conv9.i111 = zext i8 %64 to i32
  %call10.i112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i111, i32 noundef %call.i109) #10
  br label %cx24113_readreg.exit117

if.end.i115:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %b.i97 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %b.i97, align 1
  %conv11.i114 = zext i8 %66 to i32
  br label %cx24113_readreg.exit117

cx24113_readreg.exit117:                          ; preds = %if.end.i115, %do.end.i113
  %retval.0.i116 = phi i32 [ %call.i109, %do.end.i113 ], [ %conv11.i114, %if.end.i115 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i98) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i97) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i96)
  %conv47 = trunc i32 %retval.0.i116 to i8
  %ver = getelementptr inbounds %struct.cx24113_state, ptr %call7.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv47, ptr %ver, align 1
  %conv54 = and i32 %retval.0.i116, 255
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv54) #10
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %68 = call ptr @memcpy(ptr %tuner_ops, ptr @cx24113_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %69 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  br label %cleanup

error:                                            ; preds = %do.end39, %do.end13
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %cx24113_readreg.exit117, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error ], [ %fe, %cx24113_readreg.exit117 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx24113_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %3 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24113_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i198 = alloca [2 x i8], align 1
  %msg.i199 = alloca %struct.i2c_msg, align 4
  %reg.addr.i176 = alloca i8, align 1
  %b.i177 = alloca i8, align 1
  %msg.i178 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i165 = alloca [2 x i8], align 1
  %msg.i166 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1.i131 = alloca [2 x i8], align 1
  %msg.i2.i132 = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i133 = alloca i8, align 1
  %b.i.i134 = alloca i8, align 1
  %msg.i.i135 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i422.i = alloca [2 x i8], align 1
  %msg.i423.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i400.i = alloca i8, align 1
  %b.i401.i = alloca i8, align 1
  %msg.i402.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i386.i = alloca [2 x i8], align 1
  %msg.i387.i = alloca %struct.i2c_msg, align 4
  %buf.i372.i = alloca [2 x i8], align 1
  %msg.i373.i = alloca %struct.i2c_msg, align 4
  %buf.i359.i = alloca [2 x i8], align 1
  %msg.i360.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i337.i = alloca i8, align 1
  %b.i338.i = alloca i8, align 1
  %msg.i339.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i324.i = alloca [2 x i8], align 1
  %msg.i325.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i302.i = alloca i8, align 1
  %b.i303.i = alloca i8, align 1
  %msg.i304.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i289.i = alloca [2 x i8], align 1
  %msg.i290.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i267.i = alloca i8, align 1
  %b.i268.i = alloca i8, align 1
  %msg.i269.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i254.i = alloca [2 x i8], align 1
  %msg.i255.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i232.i = alloca i8, align 1
  %b.i233.i = alloca i8, align 1
  %msg.i234.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i219.i = alloca [2 x i8], align 1
  %msg.i220.i = alloca %struct.i2c_msg, align 4
  %buf.i210.i = alloca [2 x i8], align 1
  %msg.i211.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i104 = alloca i8, align 1
  %b.i.i105 = alloca i8, align 1
  %msg.i.i106 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i = alloca i8, align 1
  %b.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %tuner_gain_thres = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %tuner_gain_thres to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -50, ptr %tuner_gain_thres, align 4
  %gain_level = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %gain_level to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %gain_level, align 2
  %icp_mode = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %icp_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %icp_mode, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %icp_mode, align 2
  %config = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 4
  %xtal_khz = getelementptr inbounds %struct.cx24113_config, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %xtal_khz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xtal_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11000, i32 %8)
  %cmp = icmp ult i32 %8, 11000
  %icp_auto_hi = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %icp_auto_hi to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load1 = load i8, ptr %icp_auto_hi, align 1
  %bf.set6 = or i8 %bf.load1, -16
  store i8 %bf.set6, ptr %icp_auto_hi, align 1
  %bf.clear8 = and i8 %bf.load, 1
  %. = select i1 %cmp, i8 20, i8 12
  %bf.set28 = or i8 %bf.clear8, %.
  %icp_dig = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %icp_dig to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %icp_dig, align 4
  %11 = ptrtoint ptr %icp_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.set28, ptr %icp_mode, align 2
  %acp_on = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %acp_on to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load32 = load i8, ptr %acp_on, align 1
  %vco_band = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %vco_band to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %vco_band, align 2
  %bs_delay = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %bs_delay to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load41 = load i8, ptr %bs_delay, align 4
  %bf.clear42 = and i8 %bf.load41, 15
  %bf.set43 = or i8 %bf.clear42, -128
  store i8 %bf.set43, ptr %bs_delay, align 4
  %bs_freqcnt = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %bs_freqcnt to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load44 = load i16, ptr %bs_freqcnt, align 2
  %bf.clear45 = and i16 %bf.load44, 7
  %bf.set46 = or i16 %bf.clear45, 32760
  store i16 %bf.set46, ptr %bs_freqcnt, align 2
  %bs_rdiv = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %bs_rdiv to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 4095, ptr %bs_rdiv, align 4
  %prescaler_mode = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %prescaler_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load47 = load i8, ptr %prescaler_mode, align 2
  %bf.clear48 = and i8 %bf.load47, 127
  store i8 %bf.clear48, ptr %prescaler_mode, align 2
  %bf.clear36 = and i8 %bf.load32, 3
  %bf.set52 = or i8 %bf.clear36, -96
  store i8 %bf.set52, ptr %acp_on, align 1
  %rfvga_bias_ctrl = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %rfvga_bias_ctrl to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %rfvga_bias_ctrl, align 1
  %Fwindow_enabled = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %Fwindow_enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %Fwindow_enabled, align 1
  tail call fastcc void @cx24113_set_Fref(ptr noundef %1, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  %20 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 33, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i) #7
  %21 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %b.i.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %22 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %23 = call ptr @memset(ptr %22, i32 255, i32 16)
  %24 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 4
  %conv.i.i = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i.i, align 2
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %22, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %32 = load i8, ptr %25, align 4
  %conv4.i.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv4.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %34 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %35 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %len6.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %36 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %b.i.i, ptr %buf7.i.i, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reg.addr.i.i, align 1
  %conv9.i.i = zext i8 %40 to i32
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i.i, i32 noundef %call.i.i) #10
  br label %cx24113_readreg.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %b.i.i, align 1
  %conv11.i.i = zext i8 %42 to i32
  br label %cx24113_readreg.exit.i

cx24113_readreg.exit.i:                           ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %conv11.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  %43 = and i32 %retval.0.i.i, 192
  %conv1.i = or i32 %43, 61
  %rev.i = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %45)
  %cmp.i = icmp eq i8 %45, 35
  %46 = or i32 %retval.0.i.i, 63
  %spec.select.i = select i1 %cmp.i, i32 %46, i32 %conv1.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #7
  %47 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %48 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 33, ptr %buf.i1.i, align 1
  %conv1.i.i = trunc i32 %spec.select.i to i8
  %49 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv1.i.i, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #7
  %50 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 196607, ptr %50, align 4
  %52 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 4
  %conv2.i.i = zext i8 %55 to i16
  %56 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv2.i.i, ptr %msg.i2.i, align 4
  %flags.i4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i4.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i4.i, align 2
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %58 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %buf.i1.i, ptr %buf3.i.i, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call.i6.i = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6.i)
  %cmp.not.i7.i = icmp eq i32 %call.i6.i, 1
  br i1 %cmp.not.i7.i, label %cx24113_readreg.exit.i.cx24113_enable.exit_crit_edge, label %do.end.i8.i

cx24113_readreg.exit.i.cx24113_enable.exit_crit_edge: ; preds = %cx24113_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_enable.exit

do.end.i8.i:                                      ; preds = %cx24113_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i = and i32 %spec.select.i, 255
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i6.i, i32 noundef 33, i32 noundef %conv7.i) #10
  br label %cx24113_enable.exit

cx24113_enable.exit:                              ; preds = %do.end.i8.i, %cx24113_readreg.exit.i.cx24113_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i104) #7
  %61 = ptrtoint ptr %reg.addr.i.i104 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 16, ptr %reg.addr.i.i104, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i105) #7
  %62 = ptrtoint ptr %b.i.i105 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %b.i.i105, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i106) #7
  %63 = getelementptr inbounds i8, ptr %msg.i.i106, i32 4
  %64 = call ptr @memset(ptr %63, i32 255, i32 16)
  %65 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4
  %conv.i.i108 = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i.i106 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i.i108, ptr %msg.i.i106, align 4
  %flags.i.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i106, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i.i109 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i.i109, align 2
  %71 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %63, align 4
  %buf.i.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i106, i32 0, i32 3
  %72 = ptrtoint ptr %buf.i.i110 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %reg.addr.i.i104, ptr %buf.i.i110, align 4
  %arrayinit.element.i.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i106, i32 1
  %73 = load i8, ptr %66, align 4
  %conv4.i.i112 = zext i8 %73 to i16
  %74 = ptrtoint ptr %arrayinit.element.i.i111 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv4.i.i112, ptr %arrayinit.element.i.i111, align 4
  %flags5.i.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i106, i32 1, i32 1
  %75 = ptrtoint ptr %flags5.i.i113 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 1, ptr %flags5.i.i113, align 2
  %len6.i.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i106, i32 1, i32 2
  %76 = ptrtoint ptr %len6.i.i114 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %len6.i.i114, align 4
  %buf7.i.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i106, i32 1, i32 3
  %77 = ptrtoint ptr %buf7.i.i115 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %b.i.i105, ptr %buf7.i.i115, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i.i116 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i.i106, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i116)
  %cmp.not.i.i117 = icmp eq i32 %call.i.i116, 2
  br i1 %cmp.not.i.i117, label %if.end.i.i122, label %do.end.i.i120

do.end.i.i120:                                    ; preds = %cx24113_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %reg.addr.i.i104 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %reg.addr.i.i104, align 1
  %conv9.i.i118 = zext i8 %81 to i32
  %call10.i.i119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i.i118, i32 noundef %call.i.i116) #10
  br label %cx24113_readreg.exit.i126

if.end.i.i122:                                    ; preds = %cx24113_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %b.i.i105 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %b.i.i105, align 1
  %conv11.i.i121 = zext i8 %83 to i32
  br label %cx24113_readreg.exit.i126

cx24113_readreg.exit.i126:                        ; preds = %if.end.i.i122, %do.end.i.i120
  %retval.0.i.i123 = phi i32 [ %call.i.i116, %do.end.i.i120 ], [ %conv11.i.i121, %if.end.i.i122 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i106) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i105) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i104) #7
  %84 = ptrtoint ptr %icp_mode to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load.i = load i8, ptr %icp_mode, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %85 = trunc i32 %retval.0.i.i123 to i8
  %86 = and i8 %85, -126
  %conv3.i = or i8 %bf.lshr.i, %86
  %87 = lshr i8 %bf.load.i, 1
  %88 = and i8 %87, 48
  %or8204.i = or i8 %conv3.i, %88
  %89 = ptrtoint ptr %icp_dig to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %icp_dig, align 4
  %shl11.i = shl i8 %90, 2
  %or13.i = or i8 %or8204.i, %shl11.i
  %91 = ptrtoint ptr %prescaler_mode to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load15.i = load i8, ptr %prescaler_mode, align 2
  %92 = lshr i8 %bf.load15.i, 2
  %93 = and i8 %92, 32
  %or20205.i = or i8 %or13.i, %93
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i210.i) #7
  %94 = getelementptr inbounds [2 x i8], ptr %buf.i210.i, i32 0, i32 1
  %95 = ptrtoint ptr %buf.i210.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 16, ptr %buf.i210.i, align 1
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %or20205.i, ptr %94, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i211.i) #7
  %97 = getelementptr inbounds i8, ptr %msg.i211.i, i32 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %97, align 4
  %99 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %config, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 4
  %conv2.i.i124 = zext i8 %102 to i16
  %103 = ptrtoint ptr %msg.i211.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv2.i.i124, ptr %msg.i211.i, align 4
  %flags.i213.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i211.i, i32 0, i32 1
  %104 = ptrtoint ptr %flags.i213.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i213.i, align 2
  store i16 2, ptr %97, align 4
  %buf3.i.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i211.i, i32 0, i32 3
  %105 = ptrtoint ptr %buf3.i.i125 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %buf.i210.i, ptr %buf3.i.i125, align 4
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %call.i215.i = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %msg.i211.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i215.i)
  %cmp.not.i216.i = icmp eq i32 %call.i215.i, 1
  br i1 %cmp.not.i216.i, label %cx24113_readreg.exit.i126.cx24113_writereg.exit.i_crit_edge, label %do.end.i217.i

cx24113_readreg.exit.i126.cx24113_writereg.exit.i_crit_edge: ; preds = %cx24113_readreg.exit.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit.i

do.end.i217.i:                                    ; preds = %cx24113_readreg.exit.i126
  call void @__sanitizer_cov_trace_pc() #9
  %conv22.i = zext i8 %or20205.i to i32
  %call5.i.i127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i215.i, i32 noundef 16, i32 noundef %conv22.i) #10
  br label %cx24113_writereg.exit.i

cx24113_writereg.exit.i:                          ; preds = %do.end.i217.i, %cx24113_readreg.exit.i126.cx24113_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i211.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i210.i) #7
  %108 = ptrtoint ptr %icp_mode to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load24.i = load i8, ptr %icp_mode, align 2
  %bf.lshr25.i = lshr i8 %bf.load24.i, 3
  %bf.clear26.i = and i8 %bf.lshr25.i, 3
  %109 = shl i8 %bf.load24.i, 1
  %110 = and i8 %109, 12
  %or34206.i = or i8 %bf.clear26.i, %110
  %icp_auto_mhi.i = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 5
  %111 = ptrtoint ptr %icp_auto_mhi.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %bf.load35.i = load i8, ptr %icp_auto_mhi.i, align 1
  %112 = lshr i8 %bf.load35.i, 2
  %113 = and i8 %112, 48
  %or39207.i = or i8 %or34206.i, %113
  %114 = shl i8 %bf.load35.i, 2
  %115 = and i8 %114, -64
  %or45208.i = or i8 %or39207.i, %115
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i219.i) #7
  %116 = getelementptr inbounds [2 x i8], ptr %buf.i219.i, i32 0, i32 1
  %117 = ptrtoint ptr %buf.i219.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 17, ptr %buf.i219.i, align 1
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %or45208.i, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i220.i) #7
  %119 = getelementptr inbounds i8, ptr %msg.i220.i, i32 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %119, align 4
  %121 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %config, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 4
  %conv2.i222.i = zext i8 %124 to i16
  %125 = ptrtoint ptr %msg.i220.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv2.i222.i, ptr %msg.i220.i, align 4
  %flags.i223.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i220.i, i32 0, i32 1
  %126 = ptrtoint ptr %flags.i223.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %flags.i223.i, align 2
  store i16 2, ptr %119, align 4
  %buf3.i225.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i220.i, i32 0, i32 3
  %127 = ptrtoint ptr %buf3.i225.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %buf.i219.i, ptr %buf3.i225.i, align 4
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %call.i226.i = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %msg.i220.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i226.i)
  %cmp.not.i227.i = icmp eq i32 %call.i226.i, 1
  br i1 %cmp.not.i227.i, label %cx24113_writereg.exit.i.cx24113_writereg.exit231.i_crit_edge, label %do.end.i229.i

cx24113_writereg.exit.i.cx24113_writereg.exit231.i_crit_edge: ; preds = %cx24113_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit231.i

do.end.i229.i:                                    ; preds = %cx24113_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv47.i = zext i8 %or45208.i to i32
  %call5.i228.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i226.i, i32 noundef 17, i32 noundef %conv47.i) #10
  br label %cx24113_writereg.exit231.i

cx24113_writereg.exit231.i:                       ; preds = %do.end.i229.i, %cx24113_writereg.exit.i.cx24113_writereg.exit231.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i220.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i219.i) #7
  %130 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %131)
  %cmp.i129 = icmp eq i8 %131, 35
  br i1 %cmp.i129, label %if.then.i, label %cx24113_writereg.exit231.i.if.end.i_crit_edge

cx24113_writereg.exit231.i.if.end.i_crit_edge:    ; preds = %cx24113_writereg.exit231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %cx24113_writereg.exit231.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i232.i) #7
  %132 = ptrtoint ptr %reg.addr.i232.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 32, ptr %reg.addr.i232.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i233.i) #7
  %133 = ptrtoint ptr %b.i233.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -1, ptr %b.i233.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i234.i) #7
  %134 = getelementptr inbounds i8, ptr %msg.i234.i, i32 4
  %135 = call ptr @memset(ptr %134, i32 255, i32 16)
  %136 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %config, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %137, align 4
  %conv.i236.i = zext i8 %139 to i16
  %140 = ptrtoint ptr %msg.i234.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv.i236.i, ptr %msg.i234.i, align 4
  %flags.i237.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i234.i, i32 0, i32 1
  %141 = ptrtoint ptr %flags.i237.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %flags.i237.i, align 2
  %142 = ptrtoint ptr %134 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %134, align 4
  %buf.i239.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i234.i, i32 0, i32 3
  %143 = ptrtoint ptr %buf.i239.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %reg.addr.i232.i, ptr %buf.i239.i, align 4
  %arrayinit.element.i240.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i234.i, i32 1
  %144 = load i8, ptr %137, align 4
  %conv4.i241.i = zext i8 %144 to i16
  %145 = ptrtoint ptr %arrayinit.element.i240.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv4.i241.i, ptr %arrayinit.element.i240.i, align 4
  %flags5.i242.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i234.i, i32 1, i32 1
  %146 = ptrtoint ptr %flags5.i242.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 1, ptr %flags5.i242.i, align 2
  %len6.i243.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i234.i, i32 1, i32 2
  %147 = ptrtoint ptr %len6.i243.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 1, ptr %len6.i243.i, align 4
  %buf7.i244.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i234.i, i32 1, i32 3
  %148 = ptrtoint ptr %buf7.i244.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %b.i233.i, ptr %buf7.i244.i, align 4
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 4
  %call.i245.i = call i32 @i2c_transfer(ptr noundef %150, ptr noundef nonnull %msg.i234.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i245.i)
  %cmp.not.i246.i = icmp eq i32 %call.i245.i, 2
  br i1 %cmp.not.i246.i, label %if.end.i251.i, label %do.end.i249.i

do.end.i249.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %reg.addr.i232.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %reg.addr.i232.i, align 1
  %conv9.i247.i = zext i8 %152 to i32
  %call10.i248.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i247.i, i32 noundef %call.i245.i) #10
  br label %cx24113_readreg.exit253.i

if.end.i251.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %b.i233.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %b.i233.i, align 1
  %conv11.i250.i = zext i8 %154 to i32
  br label %cx24113_readreg.exit253.i

cx24113_readreg.exit253.i:                        ; preds = %if.end.i251.i, %do.end.i249.i
  %retval.0.i252.i = phi i32 [ %call.i245.i, %do.end.i249.i ], [ %conv11.i250.i, %if.end.i251.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i234.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i233.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i232.i) #7
  %155 = ptrtoint ptr %acp_on to i32
  call void @__asan_load1_noabort(i32 %155)
  %bf.load54.i = load i8, ptr %acp_on, align 1
  %bf.lshr55.i = lshr i8 %bf.load54.i, 6
  %156 = trunc i32 %retval.0.i252.i to i8
  %157 = and i8 %156, -20
  %conv59.i = or i8 %bf.lshr55.i, %157
  %158 = ptrtoint ptr %rfvga_bias_ctrl to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %rfvga_bias_ctrl, align 1
  %shl61.i = shl i8 %159, 4
  %or63.i = or i8 %conv59.i, %shl61.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i254.i) #7
  %160 = getelementptr inbounds [2 x i8], ptr %buf.i254.i, i32 0, i32 1
  %161 = ptrtoint ptr %buf.i254.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 32, ptr %buf.i254.i, align 1
  %162 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %or63.i, ptr %160, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i255.i) #7
  %163 = getelementptr inbounds i8, ptr %msg.i255.i, i32 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 196607, ptr %163, align 4
  %165 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %config, align 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %166, align 4
  %conv2.i257.i = zext i8 %168 to i16
  %169 = ptrtoint ptr %msg.i255.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %conv2.i257.i, ptr %msg.i255.i, align 4
  %flags.i258.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i255.i, i32 0, i32 1
  %170 = ptrtoint ptr %flags.i258.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %flags.i258.i, align 2
  %buf3.i260.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i255.i, i32 0, i32 3
  %171 = ptrtoint ptr %buf3.i260.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %buf.i254.i, ptr %buf3.i260.i, align 4
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 4
  %call.i261.i = call i32 @i2c_transfer(ptr noundef %173, ptr noundef nonnull %msg.i255.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i261.i)
  %cmp.not.i262.i = icmp eq i32 %call.i261.i, 1
  br i1 %cmp.not.i262.i, label %cx24113_readreg.exit253.i.cx24113_writereg.exit266.i_crit_edge, label %do.end.i264.i

cx24113_readreg.exit253.i.cx24113_writereg.exit266.i_crit_edge: ; preds = %cx24113_readreg.exit253.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit266.i

do.end.i264.i:                                    ; preds = %cx24113_readreg.exit253.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv65.i = zext i8 %or63.i to i32
  %call5.i263.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i261.i, i32 noundef 32, i32 noundef %conv65.i) #10
  br label %cx24113_writereg.exit266.i

cx24113_writereg.exit266.i:                       ; preds = %do.end.i264.i, %cx24113_readreg.exit253.i.cx24113_writereg.exit266.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i255.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i254.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %cx24113_writereg.exit266.i, %cx24113_writereg.exit231.i.if.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i267.i) #7
  %174 = ptrtoint ptr %reg.addr.i267.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 18, ptr %reg.addr.i267.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i268.i) #7
  %175 = ptrtoint ptr %b.i268.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -1, ptr %b.i268.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i269.i) #7
  %176 = getelementptr inbounds i8, ptr %msg.i269.i, i32 4
  %177 = call ptr @memset(ptr %176, i32 255, i32 16)
  %178 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %config, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %179, align 4
  %conv.i271.i = zext i8 %181 to i16
  %182 = ptrtoint ptr %msg.i269.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv.i271.i, ptr %msg.i269.i, align 4
  %flags.i272.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i269.i, i32 0, i32 1
  %183 = ptrtoint ptr %flags.i272.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 0, ptr %flags.i272.i, align 2
  %184 = ptrtoint ptr %176 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 1, ptr %176, align 4
  %buf.i274.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i269.i, i32 0, i32 3
  %185 = ptrtoint ptr %buf.i274.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %reg.addr.i267.i, ptr %buf.i274.i, align 4
  %arrayinit.element.i275.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i269.i, i32 1
  %186 = load i8, ptr %179, align 4
  %conv4.i276.i = zext i8 %186 to i16
  %187 = ptrtoint ptr %arrayinit.element.i275.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv4.i276.i, ptr %arrayinit.element.i275.i, align 4
  %flags5.i277.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i269.i, i32 1, i32 1
  %188 = ptrtoint ptr %flags5.i277.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 1, ptr %flags5.i277.i, align 2
  %len6.i278.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i269.i, i32 1, i32 2
  %189 = ptrtoint ptr %len6.i278.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 1, ptr %len6.i278.i, align 4
  %buf7.i279.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i269.i, i32 1, i32 3
  %190 = ptrtoint ptr %buf7.i279.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %b.i268.i, ptr %buf7.i279.i, align 4
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 4
  %call.i280.i = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %msg.i269.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i280.i)
  %cmp.not.i281.i = icmp eq i32 %call.i280.i, 2
  br i1 %cmp.not.i281.i, label %if.end.i286.i, label %do.end.i284.i

do.end.i284.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %reg.addr.i267.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %reg.addr.i267.i, align 1
  %conv9.i282.i = zext i8 %194 to i32
  %call10.i283.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i282.i, i32 noundef %call.i280.i) #10
  br label %cx24113_readreg.exit288.i

if.end.i286.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %195 = ptrtoint ptr %b.i268.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %b.i268.i, align 1
  %conv11.i285.i = zext i8 %196 to i32
  br label %cx24113_readreg.exit288.i

cx24113_readreg.exit288.i:                        ; preds = %if.end.i286.i, %do.end.i284.i
  %retval.0.i287.i = phi i32 [ %call.i280.i, %do.end.i284.i ], [ %conv11.i285.i, %if.end.i286.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i269.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i268.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i267.i) #7
  %197 = ptrtoint ptr %acp_on to i32
  call void @__asan_load1_noabort(i32 %197)
  %bf.load70.i = load i8, ptr %acp_on, align 1
  %198 = lshr i8 %bf.load70.i, 3
  %199 = and i8 %198, 4
  %200 = trunc i32 %retval.0.i287.i to i8
  %201 = and i8 %200, 3
  %conv77.i = or i8 %199, %201
  %202 = ptrtoint ptr %bs_delay to i32
  call void @__asan_load1_noabort(i32 %202)
  %bf.load78.i = load i8, ptr %bs_delay, align 4
  %bf.lshr79.i = and i8 %bf.load78.i, -16
  %or83209.i = or i8 %conv77.i, %bf.lshr79.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i289.i) #7
  %203 = getelementptr inbounds [2 x i8], ptr %buf.i289.i, i32 0, i32 1
  %204 = ptrtoint ptr %buf.i289.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 18, ptr %buf.i289.i, align 1
  %205 = ptrtoint ptr %203 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %or83209.i, ptr %203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i290.i) #7
  %206 = getelementptr inbounds i8, ptr %msg.i290.i, i32 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 196607, ptr %206, align 4
  %208 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %config, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %209, align 4
  %conv2.i292.i = zext i8 %211 to i16
  %212 = ptrtoint ptr %msg.i290.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv2.i292.i, ptr %msg.i290.i, align 4
  %flags.i293.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i290.i, i32 0, i32 1
  %213 = ptrtoint ptr %flags.i293.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 0, ptr %flags.i293.i, align 2
  %buf3.i295.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i290.i, i32 0, i32 3
  %214 = ptrtoint ptr %buf3.i295.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %buf.i289.i, ptr %buf3.i295.i, align 4
  %215 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %1, align 4
  %call.i296.i = call i32 @i2c_transfer(ptr noundef %216, ptr noundef nonnull %msg.i290.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i296.i)
  %cmp.not.i297.i = icmp eq i32 %call.i296.i, 1
  br i1 %cmp.not.i297.i, label %cx24113_readreg.exit288.i.cx24113_writereg.exit301.i_crit_edge, label %do.end.i299.i

cx24113_readreg.exit288.i.cx24113_writereg.exit301.i_crit_edge: ; preds = %cx24113_readreg.exit288.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit301.i

do.end.i299.i:                                    ; preds = %cx24113_readreg.exit288.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv85.i = zext i8 %or83209.i to i32
  %call5.i298.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i296.i, i32 noundef 18, i32 noundef %conv85.i) #10
  br label %cx24113_writereg.exit301.i

cx24113_writereg.exit301.i:                       ; preds = %do.end.i299.i, %cx24113_readreg.exit288.i.cx24113_writereg.exit301.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i290.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i289.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i302.i) #7
  %217 = ptrtoint ptr %reg.addr.i302.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 24, ptr %reg.addr.i302.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i303.i) #7
  %218 = ptrtoint ptr %b.i303.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 -1, ptr %b.i303.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i304.i) #7
  %219 = getelementptr inbounds i8, ptr %msg.i304.i, i32 4
  %220 = call ptr @memset(ptr %219, i32 255, i32 16)
  %221 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %config, align 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %222, align 4
  %conv.i306.i = zext i8 %224 to i16
  %225 = ptrtoint ptr %msg.i304.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv.i306.i, ptr %msg.i304.i, align 4
  %flags.i307.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304.i, i32 0, i32 1
  %226 = ptrtoint ptr %flags.i307.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 0, ptr %flags.i307.i, align 2
  %227 = ptrtoint ptr %219 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 1, ptr %219, align 4
  %buf.i309.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304.i, i32 0, i32 3
  %228 = ptrtoint ptr %buf.i309.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %reg.addr.i302.i, ptr %buf.i309.i, align 4
  %arrayinit.element.i310.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304.i, i32 1
  %229 = load i8, ptr %222, align 4
  %conv4.i311.i = zext i8 %229 to i16
  %230 = ptrtoint ptr %arrayinit.element.i310.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %conv4.i311.i, ptr %arrayinit.element.i310.i, align 4
  %flags5.i312.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304.i, i32 1, i32 1
  %231 = ptrtoint ptr %flags5.i312.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 1, ptr %flags5.i312.i, align 2
  %len6.i313.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304.i, i32 1, i32 2
  %232 = ptrtoint ptr %len6.i313.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 1, ptr %len6.i313.i, align 4
  %buf7.i314.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304.i, i32 1, i32 3
  %233 = ptrtoint ptr %buf7.i314.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %b.i303.i, ptr %buf7.i314.i, align 4
  %234 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %1, align 4
  %call.i315.i = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %msg.i304.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i315.i)
  %cmp.not.i316.i = icmp eq i32 %call.i315.i, 2
  br i1 %cmp.not.i316.i, label %if.end.i321.i, label %do.end.i319.i

do.end.i319.i:                                    ; preds = %cx24113_writereg.exit301.i
  call void @__sanitizer_cov_trace_pc() #9
  %236 = ptrtoint ptr %reg.addr.i302.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %reg.addr.i302.i, align 1
  %conv9.i317.i = zext i8 %237 to i32
  %call10.i318.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i317.i, i32 noundef %call.i315.i) #10
  br label %cx24113_readreg.exit323.i

if.end.i321.i:                                    ; preds = %cx24113_writereg.exit301.i
  call void @__sanitizer_cov_trace_pc() #9
  %238 = ptrtoint ptr %b.i303.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %b.i303.i, align 1
  %conv11.i320.i = zext i8 %239 to i32
  br label %cx24113_readreg.exit323.i

cx24113_readreg.exit323.i:                        ; preds = %if.end.i321.i, %do.end.i319.i
  %retval.0.i322.i = phi i32 [ %call.i315.i, %do.end.i319.i ], [ %conv11.i320.i, %if.end.i321.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i304.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i303.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i302.i) #7
  %240 = ptrtoint ptr %acp_on to i32
  call void @__asan_load1_noabort(i32 %240)
  %bf.load90.i = load i8, ptr %acp_on, align 1
  %bf.lshr91.i = lshr i8 %bf.load90.i, 2
  %bf.clear92.i = and i8 %bf.lshr91.i, 1
  %241 = trunc i32 %retval.0.i322.i to i8
  %242 = and i8 %241, 64
  %conv96.i = or i8 %bf.clear92.i, %242
  %243 = ptrtoint ptr %vco_band to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %vco_band, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %244)
  %cmp98.i = icmp eq i8 %244, -128
  %shl106.i = shl i8 %244, 1
  %r.0.v.i = select i1 %cmp98.i, i8 -128, i8 %shl106.i
  %r.0.i = or i8 %conv96.i, %r.0.v.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i324.i) #7
  %245 = getelementptr inbounds [2 x i8], ptr %buf.i324.i, i32 0, i32 1
  %246 = ptrtoint ptr %buf.i324.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 24, ptr %buf.i324.i, align 1
  %247 = ptrtoint ptr %245 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 %r.0.i, ptr %245, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i325.i) #7
  %248 = getelementptr inbounds i8, ptr %msg.i325.i, i32 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 196607, ptr %248, align 4
  %250 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %config, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %251, align 4
  %conv2.i327.i = zext i8 %253 to i16
  %254 = ptrtoint ptr %msg.i325.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv2.i327.i, ptr %msg.i325.i, align 4
  %flags.i328.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i325.i, i32 0, i32 1
  %255 = ptrtoint ptr %flags.i328.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 0, ptr %flags.i328.i, align 2
  %buf3.i330.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i325.i, i32 0, i32 3
  %256 = ptrtoint ptr %buf3.i330.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %buf.i324.i, ptr %buf3.i330.i, align 4
  %257 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %1, align 4
  %call.i331.i = call i32 @i2c_transfer(ptr noundef %258, ptr noundef nonnull %msg.i325.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i331.i)
  %cmp.not.i332.i = icmp eq i32 %call.i331.i, 1
  br i1 %cmp.not.i332.i, label %cx24113_readreg.exit323.i.cx24113_writereg.exit336.i_crit_edge, label %do.end.i334.i

cx24113_readreg.exit323.i.cx24113_writereg.exit336.i_crit_edge: ; preds = %cx24113_readreg.exit323.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit336.i

do.end.i334.i:                                    ; preds = %cx24113_readreg.exit323.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv111.i = zext i8 %r.0.i to i32
  %call5.i333.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i331.i, i32 noundef 24, i32 noundef %conv111.i) #10
  br label %cx24113_writereg.exit336.i

cx24113_writereg.exit336.i:                       ; preds = %do.end.i334.i, %cx24113_readreg.exit323.i.cx24113_writereg.exit336.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i325.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i324.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i337.i) #7
  %259 = ptrtoint ptr %reg.addr.i337.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 20, ptr %reg.addr.i337.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i338.i) #7
  %260 = ptrtoint ptr %b.i338.i to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 -1, ptr %b.i338.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i339.i) #7
  %261 = getelementptr inbounds i8, ptr %msg.i339.i, i32 4
  %262 = call ptr @memset(ptr %261, i32 255, i32 16)
  %263 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %config, align 4
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %264, align 4
  %conv.i341.i = zext i8 %266 to i16
  %267 = ptrtoint ptr %msg.i339.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 %conv.i341.i, ptr %msg.i339.i, align 4
  %flags.i342.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i339.i, i32 0, i32 1
  %268 = ptrtoint ptr %flags.i342.i to i32
  call void @__asan_store2_noabort(i32 %268)
  store i16 0, ptr %flags.i342.i, align 2
  %269 = ptrtoint ptr %261 to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 1, ptr %261, align 4
  %buf.i344.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i339.i, i32 0, i32 3
  %270 = ptrtoint ptr %buf.i344.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %reg.addr.i337.i, ptr %buf.i344.i, align 4
  %arrayinit.element.i345.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i339.i, i32 1
  %271 = load i8, ptr %264, align 4
  %conv4.i346.i = zext i8 %271 to i16
  %272 = ptrtoint ptr %arrayinit.element.i345.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %conv4.i346.i, ptr %arrayinit.element.i345.i, align 4
  %flags5.i347.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i339.i, i32 1, i32 1
  %273 = ptrtoint ptr %flags5.i347.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 1, ptr %flags5.i347.i, align 2
  %len6.i348.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i339.i, i32 1, i32 2
  %274 = ptrtoint ptr %len6.i348.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 1, ptr %len6.i348.i, align 4
  %buf7.i349.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i339.i, i32 1, i32 3
  %275 = ptrtoint ptr %buf7.i349.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %b.i338.i, ptr %buf7.i349.i, align 4
  %276 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %1, align 4
  %call.i350.i = call i32 @i2c_transfer(ptr noundef %277, ptr noundef nonnull %msg.i339.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i350.i)
  %cmp.not.i351.i = icmp eq i32 %call.i350.i, 2
  br i1 %cmp.not.i351.i, label %if.end.i356.i, label %do.end.i354.i

do.end.i354.i:                                    ; preds = %cx24113_writereg.exit336.i
  call void @__sanitizer_cov_trace_pc() #9
  %278 = ptrtoint ptr %reg.addr.i337.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %reg.addr.i337.i, align 1
  %conv9.i352.i = zext i8 %279 to i32
  %call10.i353.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i352.i, i32 noundef %call.i350.i) #10
  br label %cx24113_readreg.exit358.i

if.end.i356.i:                                    ; preds = %cx24113_writereg.exit336.i
  call void @__sanitizer_cov_trace_pc() #9
  %280 = ptrtoint ptr %b.i338.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %b.i338.i, align 1
  %conv11.i355.i = zext i8 %281 to i32
  br label %cx24113_readreg.exit358.i

cx24113_readreg.exit358.i:                        ; preds = %if.end.i356.i, %do.end.i354.i
  %retval.0.i357.i = phi i32 [ %call.i350.i, %do.end.i354.i ], [ %conv11.i355.i, %if.end.i356.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i339.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i338.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i337.i) #7
  %conv115.i = and i32 %retval.0.i357.i, 32
  %282 = ptrtoint ptr %acp_on to i32
  call void @__asan_load1_noabort(i32 %282)
  %bf.load116.i = load i8, ptr %acp_on, align 1
  %283 = shl i8 %bf.load116.i, 3
  %284 = and i8 %283, -64
  %shl120.i = zext i8 %284 to i32
  %285 = ptrtoint ptr %bs_freqcnt to i32
  call void @__asan_load2_noabort(i32 %285)
  %bf.load121.i = load i16, ptr %bs_freqcnt, align 2
  %bf.lshr122.i = lshr i16 %bf.load121.i, 11
  %286 = zext i16 %bf.lshr122.i to i32
  %or125.i = or i32 %conv115.i, %286
  %or127.i = or i32 %or125.i, %shl120.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i359.i) #7
  %287 = getelementptr inbounds [2 x i8], ptr %buf.i359.i, i32 0, i32 1
  %288 = ptrtoint ptr %buf.i359.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 20, ptr %buf.i359.i, align 1
  %conv1.i.i130 = trunc i32 %or127.i to i8
  %289 = ptrtoint ptr %287 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %conv1.i.i130, ptr %287, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i360.i) #7
  %290 = getelementptr inbounds i8, ptr %msg.i360.i, i32 4
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 196607, ptr %290, align 4
  %292 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %config, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %293, align 4
  %conv2.i362.i = zext i8 %295 to i16
  %296 = ptrtoint ptr %msg.i360.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %conv2.i362.i, ptr %msg.i360.i, align 4
  %flags.i363.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i360.i, i32 0, i32 1
  %297 = ptrtoint ptr %flags.i363.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 0, ptr %flags.i363.i, align 2
  %buf3.i365.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i360.i, i32 0, i32 3
  %298 = ptrtoint ptr %buf3.i365.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %buf.i359.i, ptr %buf3.i365.i, align 4
  %299 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %1, align 4
  %call.i366.i = call i32 @i2c_transfer(ptr noundef %300, ptr noundef nonnull %msg.i360.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i366.i)
  %cmp.not.i367.i = icmp eq i32 %call.i366.i, 1
  br i1 %cmp.not.i367.i, label %cx24113_readreg.exit358.i.cx24113_writereg.exit371.i_crit_edge, label %do.end.i369.i

cx24113_readreg.exit358.i.cx24113_writereg.exit371.i_crit_edge: ; preds = %cx24113_readreg.exit358.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit371.i

do.end.i369.i:                                    ; preds = %cx24113_readreg.exit358.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i368.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i366.i, i32 noundef 20, i32 noundef %or127.i) #10
  br label %cx24113_writereg.exit371.i

cx24113_writereg.exit371.i:                       ; preds = %do.end.i369.i, %cx24113_readreg.exit358.i.cx24113_writereg.exit371.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i360.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i359.i) #7
  %301 = ptrtoint ptr %bs_freqcnt to i32
  call void @__asan_load2_noabort(i32 %301)
  %bf.load132.i = load i16, ptr %bs_freqcnt, align 2
  %bf.lshr133.i = lshr i16 %bf.load132.i, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i372.i) #7
  %302 = getelementptr inbounds [2 x i8], ptr %buf.i372.i, i32 0, i32 1
  %303 = ptrtoint ptr %buf.i372.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 21, ptr %buf.i372.i, align 1
  %conv1.i374.i = trunc i16 %bf.lshr133.i to i8
  %304 = ptrtoint ptr %302 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv1.i374.i, ptr %302, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i373.i) #7
  %305 = getelementptr inbounds i8, ptr %msg.i373.i, i32 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 196607, ptr %305, align 4
  %307 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %config, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %308, align 4
  %conv2.i376.i = zext i8 %310 to i16
  %311 = ptrtoint ptr %msg.i373.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %conv2.i376.i, ptr %msg.i373.i, align 4
  %flags.i377.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i373.i, i32 0, i32 1
  %312 = ptrtoint ptr %flags.i377.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 0, ptr %flags.i377.i, align 2
  %buf3.i379.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i373.i, i32 0, i32 3
  %313 = ptrtoint ptr %buf3.i379.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %buf.i372.i, ptr %buf3.i379.i, align 4
  %314 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %1, align 4
  %call.i380.i = call i32 @i2c_transfer(ptr noundef %315, ptr noundef nonnull %msg.i373.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i380.i)
  %cmp.not.i381.i = icmp eq i32 %call.i380.i, 1
  br i1 %cmp.not.i381.i, label %cx24113_writereg.exit371.i.cx24113_writereg.exit385.i_crit_edge, label %do.end.i383.i

cx24113_writereg.exit371.i.cx24113_writereg.exit385.i_crit_edge: ; preds = %cx24113_writereg.exit371.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit385.i

do.end.i383.i:                                    ; preds = %cx24113_writereg.exit371.i
  call void @__sanitizer_cov_trace_pc() #9
  %316 = and i16 %bf.lshr133.i, 255
  %and135.i = zext i16 %316 to i32
  %call5.i382.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i380.i, i32 noundef 21, i32 noundef %and135.i) #10
  br label %cx24113_writereg.exit385.i

cx24113_writereg.exit385.i:                       ; preds = %do.end.i383.i, %cx24113_writereg.exit371.i.cx24113_writereg.exit385.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i373.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i372.i) #7
  %317 = ptrtoint ptr %bs_rdiv to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %bs_rdiv, align 4
  %319 = lshr i16 %318, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i386.i) #7
  %320 = getelementptr inbounds [2 x i8], ptr %buf.i386.i, i32 0, i32 1
  %321 = ptrtoint ptr %buf.i386.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 22, ptr %buf.i386.i, align 1
  %conv1.i388.i = trunc i16 %319 to i8
  %322 = ptrtoint ptr %320 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %conv1.i388.i, ptr %320, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i387.i) #7
  %323 = getelementptr inbounds i8, ptr %msg.i387.i, i32 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 196607, ptr %323, align 4
  %325 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %config, align 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %326, align 4
  %conv2.i390.i = zext i8 %328 to i16
  %329 = ptrtoint ptr %msg.i387.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %conv2.i390.i, ptr %msg.i387.i, align 4
  %flags.i391.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i387.i, i32 0, i32 1
  %330 = ptrtoint ptr %flags.i391.i to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 0, ptr %flags.i391.i, align 2
  %buf3.i393.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i387.i, i32 0, i32 3
  %331 = ptrtoint ptr %buf3.i393.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %buf.i386.i, ptr %buf3.i393.i, align 4
  %332 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %1, align 4
  %call.i394.i = call i32 @i2c_transfer(ptr noundef %333, ptr noundef nonnull %msg.i387.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i394.i)
  %cmp.not.i395.i = icmp eq i32 %call.i394.i, 1
  br i1 %cmp.not.i395.i, label %cx24113_writereg.exit385.i.cx24113_writereg.exit399.i_crit_edge, label %do.end.i397.i

cx24113_writereg.exit385.i.cx24113_writereg.exit399.i_crit_edge: ; preds = %cx24113_writereg.exit385.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit399.i

do.end.i397.i:                                    ; preds = %cx24113_writereg.exit385.i
  call void @__sanitizer_cov_trace_pc() #9
  %334 = and i16 %319, 255
  %and139.i = zext i16 %334 to i32
  %call5.i396.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i394.i, i32 noundef 22, i32 noundef %and139.i) #10
  br label %cx24113_writereg.exit399.i

cx24113_writereg.exit399.i:                       ; preds = %do.end.i397.i, %cx24113_writereg.exit385.i.cx24113_writereg.exit399.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i387.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i386.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i400.i) #7
  %335 = ptrtoint ptr %reg.addr.i400.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 23, ptr %reg.addr.i400.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i401.i) #7
  %336 = ptrtoint ptr %b.i401.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 -1, ptr %b.i401.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i402.i) #7
  %337 = getelementptr inbounds i8, ptr %msg.i402.i, i32 4
  %338 = call ptr @memset(ptr %337, i32 255, i32 16)
  %339 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %config, align 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %340, align 4
  %conv.i404.i = zext i8 %342 to i16
  %343 = ptrtoint ptr %msg.i402.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %conv.i404.i, ptr %msg.i402.i, align 4
  %flags.i405.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402.i, i32 0, i32 1
  %344 = ptrtoint ptr %flags.i405.i to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 0, ptr %flags.i405.i, align 2
  %345 = ptrtoint ptr %337 to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 1, ptr %337, align 4
  %buf.i407.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402.i, i32 0, i32 3
  %346 = ptrtoint ptr %buf.i407.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %reg.addr.i400.i, ptr %buf.i407.i, align 4
  %arrayinit.element.i408.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402.i, i32 1
  %347 = load i8, ptr %340, align 4
  %conv4.i409.i = zext i8 %347 to i16
  %348 = ptrtoint ptr %arrayinit.element.i408.i to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 %conv4.i409.i, ptr %arrayinit.element.i408.i, align 4
  %flags5.i410.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402.i, i32 1, i32 1
  %349 = ptrtoint ptr %flags5.i410.i to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 1, ptr %flags5.i410.i, align 2
  %len6.i411.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402.i, i32 1, i32 2
  %350 = ptrtoint ptr %len6.i411.i to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 1, ptr %len6.i411.i, align 4
  %buf7.i412.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402.i, i32 1, i32 3
  %351 = ptrtoint ptr %buf7.i412.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %b.i401.i, ptr %buf7.i412.i, align 4
  %352 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %1, align 4
  %call.i413.i = call i32 @i2c_transfer(ptr noundef %353, ptr noundef nonnull %msg.i402.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i413.i)
  %cmp.not.i414.i = icmp eq i32 %call.i413.i, 2
  br i1 %cmp.not.i414.i, label %if.end.i419.i, label %do.end.i417.i

do.end.i417.i:                                    ; preds = %cx24113_writereg.exit399.i
  call void @__sanitizer_cov_trace_pc() #9
  %354 = ptrtoint ptr %reg.addr.i400.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %reg.addr.i400.i, align 1
  %conv9.i415.i = zext i8 %355 to i32
  %call10.i416.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i415.i, i32 noundef %call.i413.i) #10
  br label %cx24113_readreg.exit421.i

if.end.i419.i:                                    ; preds = %cx24113_writereg.exit399.i
  call void @__sanitizer_cov_trace_pc() #9
  %356 = ptrtoint ptr %b.i401.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %b.i401.i, align 1
  %conv11.i418.i = zext i8 %357 to i32
  br label %cx24113_readreg.exit421.i

cx24113_readreg.exit421.i:                        ; preds = %if.end.i419.i, %do.end.i417.i
  %retval.0.i420.i = phi i32 [ %call.i413.i, %do.end.i417.i ], [ %conv11.i418.i, %if.end.i419.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i402.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i401.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i400.i) #7
  %and142.i = and i32 %retval.0.i420.i, 15
  %358 = ptrtoint ptr %bs_rdiv to i32
  call void @__asan_load2_noabort(i32 %358)
  %359 = load i16, ptr %bs_rdiv, align 4
  %360 = shl i16 %359, 4
  %361 = and i16 %360, 240
  %shl146.masked.i = zext i16 %361 to i32
  %conv149.i = or i32 %and142.i, %shl146.masked.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i422.i) #7
  %362 = getelementptr inbounds [2 x i8], ptr %buf.i422.i, i32 0, i32 1
  %363 = ptrtoint ptr %buf.i422.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 23, ptr %buf.i422.i, align 1
  %conv1.i424.i = trunc i32 %conv149.i to i8
  %364 = ptrtoint ptr %362 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %conv1.i424.i, ptr %362, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i423.i) #7
  %365 = getelementptr inbounds i8, ptr %msg.i423.i, i32 4
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 196607, ptr %365, align 4
  %367 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %config, align 4
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %368, align 4
  %conv2.i426.i = zext i8 %370 to i16
  %371 = ptrtoint ptr %msg.i423.i to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 %conv2.i426.i, ptr %msg.i423.i, align 4
  %flags.i427.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i423.i, i32 0, i32 1
  %372 = ptrtoint ptr %flags.i427.i to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 0, ptr %flags.i427.i, align 2
  %buf3.i429.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i423.i, i32 0, i32 3
  %373 = ptrtoint ptr %buf3.i429.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %buf.i422.i, ptr %buf3.i429.i, align 4
  %374 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %1, align 4
  %call.i430.i = call i32 @i2c_transfer(ptr noundef %375, ptr noundef nonnull %msg.i423.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i430.i)
  %cmp.not.i431.i = icmp eq i32 %call.i430.i, 1
  br i1 %cmp.not.i431.i, label %cx24113_readreg.exit421.i.cx24113_set_parameters.exit_crit_edge, label %do.end.i433.i

cx24113_readreg.exit421.i.cx24113_set_parameters.exit_crit_edge: ; preds = %cx24113_readreg.exit421.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_set_parameters.exit

do.end.i433.i:                                    ; preds = %cx24113_readreg.exit421.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i432.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i430.i, i32 noundef 23, i32 noundef %conv149.i) #10
  br label %cx24113_set_parameters.exit

cx24113_set_parameters.exit:                      ; preds = %do.end.i433.i, %cx24113_readreg.exit421.i.cx24113_set_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i423.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i422.i) #7
  %call54 = call fastcc i32 @cx24113_set_gain_settings(ptr noundef %1, i16 noundef signext -30)
  call fastcc void @cx24113_set_bandwidth(ptr noundef %1, i32 noundef 18025)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i133) #7
  %376 = ptrtoint ptr %reg.addr.i.i133 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 16, ptr %reg.addr.i.i133, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i134) #7
  %377 = ptrtoint ptr %b.i.i134 to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 -1, ptr %b.i.i134, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i135) #7
  %378 = getelementptr inbounds i8, ptr %msg.i.i135, i32 4
  %379 = call ptr @memset(ptr %378, i32 255, i32 16)
  %380 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %config, align 4
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %381, align 4
  %conv.i.i137 = zext i8 %383 to i16
  %384 = ptrtoint ptr %msg.i.i135 to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 %conv.i.i137, ptr %msg.i.i135, align 4
  %flags.i.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i135, i32 0, i32 1
  %385 = ptrtoint ptr %flags.i.i138 to i32
  call void @__asan_store2_noabort(i32 %385)
  store i16 0, ptr %flags.i.i138, align 2
  %386 = ptrtoint ptr %378 to i32
  call void @__asan_store2_noabort(i32 %386)
  store i16 1, ptr %378, align 4
  %buf.i.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i135, i32 0, i32 3
  %387 = ptrtoint ptr %buf.i.i139 to i32
  call void @__asan_store4_noabort(i32 %387)
  store ptr %reg.addr.i.i133, ptr %buf.i.i139, align 4
  %arrayinit.element.i.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i135, i32 1
  %388 = load i8, ptr %381, align 4
  %conv4.i.i141 = zext i8 %388 to i16
  %389 = ptrtoint ptr %arrayinit.element.i.i140 to i32
  call void @__asan_store2_noabort(i32 %389)
  store i16 %conv4.i.i141, ptr %arrayinit.element.i.i140, align 4
  %flags5.i.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i135, i32 1, i32 1
  %390 = ptrtoint ptr %flags5.i.i142 to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 1, ptr %flags5.i.i142, align 2
  %len6.i.i143 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i135, i32 1, i32 2
  %391 = ptrtoint ptr %len6.i.i143 to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 1, ptr %len6.i.i143, align 4
  %buf7.i.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i135, i32 1, i32 3
  %392 = ptrtoint ptr %buf7.i.i144 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr %b.i.i134, ptr %buf7.i.i144, align 4
  %393 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %1, align 4
  %call.i.i145 = call i32 @i2c_transfer(ptr noundef %394, ptr noundef nonnull %msg.i.i135, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i145)
  %cmp.not.i.i146 = icmp eq i32 %call.i.i145, 2
  br i1 %cmp.not.i.i146, label %if.end.i.i151, label %do.end.i.i149

do.end.i.i149:                                    ; preds = %cx24113_set_parameters.exit
  call void @__sanitizer_cov_trace_pc() #9
  %395 = ptrtoint ptr %reg.addr.i.i133 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %reg.addr.i.i133, align 1
  %conv9.i.i147 = zext i8 %396 to i32
  %call10.i.i148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i.i147, i32 noundef %call.i.i145) #10
  br label %cx24113_readreg.exit.i160

if.end.i.i151:                                    ; preds = %cx24113_set_parameters.exit
  call void @__sanitizer_cov_trace_pc() #9
  %397 = ptrtoint ptr %b.i.i134 to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %b.i.i134, align 1
  %conv11.i.i150 = zext i8 %398 to i32
  br label %cx24113_readreg.exit.i160

cx24113_readreg.exit.i160:                        ; preds = %if.end.i.i151, %do.end.i.i149
  %retval.0.i.i152 = phi i32 [ %call.i.i145, %do.end.i.i149 ], [ %conv11.i.i150, %if.end.i.i151 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i135) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i134) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i133) #7
  %conv2.i = and i32 %retval.0.i.i152, 127
  %conv3.i153 = or i32 %conv2.i, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i131) #7
  %399 = getelementptr inbounds [2 x i8], ptr %buf.i1.i131, i32 0, i32 1
  %400 = ptrtoint ptr %buf.i1.i131 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 16, ptr %buf.i1.i131, align 1
  %conv1.i.i154 = trunc i32 %conv3.i153 to i8
  %401 = ptrtoint ptr %399 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 %conv1.i.i154, ptr %399, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i132) #7
  %402 = getelementptr inbounds i8, ptr %msg.i2.i132, i32 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 196607, ptr %402, align 4
  %404 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %config, align 4
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %405, align 4
  %conv2.i.i155 = zext i8 %407 to i16
  %408 = ptrtoint ptr %msg.i2.i132 to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 %conv2.i.i155, ptr %msg.i2.i132, align 4
  %flags.i4.i156 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i132, i32 0, i32 1
  %409 = ptrtoint ptr %flags.i4.i156 to i32
  call void @__asan_store2_noabort(i32 %409)
  store i16 0, ptr %flags.i4.i156, align 2
  %buf3.i.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i132, i32 0, i32 3
  %410 = ptrtoint ptr %buf3.i.i157 to i32
  call void @__asan_store4_noabort(i32 %410)
  store ptr %buf.i1.i131, ptr %buf3.i.i157, align 4
  %411 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %1, align 4
  %call.i6.i158 = call i32 @i2c_transfer(ptr noundef %412, ptr noundef nonnull %msg.i2.i132, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6.i158)
  %cmp.not.i7.i159 = icmp eq i32 %call.i6.i158, 1
  br i1 %cmp.not.i7.i159, label %cx24113_readreg.exit.i160.cx24113_set_clk_inversion.exit_crit_edge, label %do.end.i8.i162

cx24113_readreg.exit.i160.cx24113_set_clk_inversion.exit_crit_edge: ; preds = %cx24113_readreg.exit.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_set_clk_inversion.exit

do.end.i8.i162:                                   ; preds = %cx24113_readreg.exit.i160
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i6.i158, i32 noundef 16, i32 noundef %conv3.i153) #10
  br label %cx24113_set_clk_inversion.exit

cx24113_set_clk_inversion.exit:                   ; preds = %do.end.i8.i162, %cx24113_readreg.exit.i160.cx24113_set_clk_inversion.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i132) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i131) #7
  %413 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %config, align 4
  %xtal_khz58 = getelementptr inbounds %struct.cx24113_config, ptr %414, i32 0, i32 1
  %415 = ptrtoint ptr %xtal_khz58 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %xtal_khz58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 39999, i32 %416)
  %cmp59 = icmp ugt i32 %416, 39999
  br i1 %cmp59, label %if.then60, label %if.else63

if.then60:                                        ; preds = %cx24113_set_clk_inversion.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %417 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 2, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #7
  %418 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 -1, ptr %b.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %419 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %420 = call ptr @memset(ptr %419, i32 255, i32 16)
  %421 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %config, align 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %422, align 4
  %conv.i = zext i8 %424 to i16
  %425 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %425)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %426 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %426)
  store i16 0, ptr %flags.i, align 2
  %427 = ptrtoint ptr %419 to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 1, ptr %419, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %428 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %428)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %429 = load i8, ptr %422, align 4
  %conv4.i = zext i8 %429 to i16
  %430 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %430)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %431 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %431)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %432 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %432)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %433 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %b.i, ptr %buf7.i, align 4
  %434 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %435, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i164, label %do.end.i

do.end.i:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %436 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %reg.addr.i, align 1
  %conv9.i = zext i8 %437 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i, i32 noundef %call.i) #10
  br label %cx24113_readreg.exit

if.end.i164:                                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  %438 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %b.i, align 1
  %conv11.i = zext i8 %439 to i32
  br label %cx24113_readreg.exit

cx24113_readreg.exit:                             ; preds = %if.end.i164, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv11.i, %if.end.i164 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %and = and i32 %retval.0.i, 251
  %or = or i32 %and, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i165) #7
  %440 = getelementptr inbounds [2 x i8], ptr %buf.i165, i32 0, i32 1
  %441 = ptrtoint ptr %buf.i165 to i32
  call void @__asan_store1_noabort(i32 %441)
  store i8 2, ptr %buf.i165, align 1
  %conv1.i167 = trunc i32 %or to i8
  %442 = ptrtoint ptr %440 to i32
  call void @__asan_store1_noabort(i32 %442)
  store i8 %conv1.i167, ptr %440, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i166) #7
  %443 = getelementptr inbounds i8, ptr %msg.i166, i32 4
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 196607, ptr %443, align 4
  %445 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %config, align 4
  %447 = ptrtoint ptr %446 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %446, align 4
  %conv2.i169 = zext i8 %448 to i16
  %449 = ptrtoint ptr %msg.i166 to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 %conv2.i169, ptr %msg.i166, align 4
  %flags.i170 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166, i32 0, i32 1
  %450 = ptrtoint ptr %flags.i170 to i32
  call void @__asan_store2_noabort(i32 %450)
  store i16 0, ptr %flags.i170, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166, i32 0, i32 3
  %451 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %buf.i165, ptr %buf3.i, align 4
  %452 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %1, align 4
  %call.i172 = call i32 @i2c_transfer(ptr noundef %453, ptr noundef nonnull %msg.i166, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i172)
  %cmp.not.i173 = icmp eq i32 %call.i172, 1
  br i1 %cmp.not.i173, label %cx24113_readreg.exit.cx24113_writereg.exit_crit_edge, label %do.end.i174

cx24113_readreg.exit.cx24113_writereg.exit_crit_edge: ; preds = %cx24113_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit

do.end.i174:                                      ; preds = %cx24113_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i172, i32 noundef 2, i32 noundef %or) #10
  br label %cx24113_writereg.exit

cx24113_writereg.exit:                            ; preds = %do.end.i174, %cx24113_readreg.exit.cx24113_writereg.exit_crit_edge
  %retval.0.i175 = phi i32 [ %call.i172, %do.end.i174 ], [ 0, %cx24113_readreg.exit.cx24113_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i166) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i165) #7
  br label %if.end68

if.else63:                                        ; preds = %cx24113_set_clk_inversion.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i176)
  %454 = ptrtoint ptr %reg.addr.i176 to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 2, ptr %reg.addr.i176, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i177) #7
  %455 = ptrtoint ptr %b.i177 to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 -1, ptr %b.i177, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i178) #7
  %456 = getelementptr inbounds i8, ptr %msg.i178, i32 4
  %457 = call ptr @memset(ptr %456, i32 255, i32 16)
  %458 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %config, align 4
  %460 = ptrtoint ptr %459 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %459, align 4
  %conv.i180 = zext i8 %461 to i16
  %462 = ptrtoint ptr %msg.i178 to i32
  call void @__asan_store2_noabort(i32 %462)
  store i16 %conv.i180, ptr %msg.i178, align 4
  %flags.i181 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i178, i32 0, i32 1
  %463 = ptrtoint ptr %flags.i181 to i32
  call void @__asan_store2_noabort(i32 %463)
  store i16 0, ptr %flags.i181, align 2
  %464 = ptrtoint ptr %456 to i32
  call void @__asan_store2_noabort(i32 %464)
  store i16 1, ptr %456, align 4
  %buf.i183 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i178, i32 0, i32 3
  %465 = ptrtoint ptr %buf.i183 to i32
  call void @__asan_store4_noabort(i32 %465)
  store ptr %reg.addr.i176, ptr %buf.i183, align 4
  %arrayinit.element.i184 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i178, i32 1
  %466 = load i8, ptr %459, align 4
  %conv4.i185 = zext i8 %466 to i16
  %467 = ptrtoint ptr %arrayinit.element.i184 to i32
  call void @__asan_store2_noabort(i32 %467)
  store i16 %conv4.i185, ptr %arrayinit.element.i184, align 4
  %flags5.i186 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i178, i32 1, i32 1
  %468 = ptrtoint ptr %flags5.i186 to i32
  call void @__asan_store2_noabort(i32 %468)
  store i16 1, ptr %flags5.i186, align 2
  %len6.i187 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i178, i32 1, i32 2
  %469 = ptrtoint ptr %len6.i187 to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 1, ptr %len6.i187, align 4
  %buf7.i188 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i178, i32 1, i32 3
  %470 = ptrtoint ptr %buf7.i188 to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr %b.i177, ptr %buf7.i188, align 4
  %471 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %1, align 4
  %call.i189 = call i32 @i2c_transfer(ptr noundef %472, ptr noundef nonnull %msg.i178, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i189)
  %cmp.not.i190 = icmp eq i32 %call.i189, 2
  br i1 %cmp.not.i190, label %if.end.i195, label %do.end.i193

do.end.i193:                                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #9
  %473 = ptrtoint ptr %reg.addr.i176 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %reg.addr.i176, align 1
  %conv9.i191 = zext i8 %474 to i32
  %call10.i192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i191, i32 noundef %call.i189) #10
  br label %cx24113_readreg.exit197

if.end.i195:                                      ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #9
  %475 = ptrtoint ptr %b.i177 to i32
  call void @__asan_load1_noabort(i32 %475)
  %476 = load i8, ptr %b.i177, align 1
  %conv11.i194 = zext i8 %476 to i32
  br label %cx24113_readreg.exit197

cx24113_readreg.exit197:                          ; preds = %if.end.i195, %do.end.i193
  %retval.0.i196 = phi i32 [ %call.i189, %do.end.i193 ], [ %conv11.i194, %if.end.i195 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i178) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i177) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i176)
  %and65 = and i32 %retval.0.i196, 251
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i198) #7
  %477 = getelementptr inbounds [2 x i8], ptr %buf.i198, i32 0, i32 1
  %478 = ptrtoint ptr %buf.i198 to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 2, ptr %buf.i198, align 1
  %conv1.i200 = trunc i32 %and65 to i8
  %479 = ptrtoint ptr %477 to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 %conv1.i200, ptr %477, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i199) #7
  %480 = getelementptr inbounds i8, ptr %msg.i199, i32 4
  %481 = ptrtoint ptr %480 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 196607, ptr %480, align 4
  %482 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %config, align 4
  %484 = ptrtoint ptr %483 to i32
  call void @__asan_load1_noabort(i32 %484)
  %485 = load i8, ptr %483, align 4
  %conv2.i202 = zext i8 %485 to i16
  %486 = ptrtoint ptr %msg.i199 to i32
  call void @__asan_store2_noabort(i32 %486)
  store i16 %conv2.i202, ptr %msg.i199, align 4
  %flags.i203 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i199, i32 0, i32 1
  %487 = ptrtoint ptr %flags.i203 to i32
  call void @__asan_store2_noabort(i32 %487)
  store i16 0, ptr %flags.i203, align 2
  %buf3.i205 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i199, i32 0, i32 3
  %488 = ptrtoint ptr %buf3.i205 to i32
  call void @__asan_store4_noabort(i32 %488)
  store ptr %buf.i198, ptr %buf3.i205, align 4
  %489 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %1, align 4
  %call.i206 = call i32 @i2c_transfer(ptr noundef %490, ptr noundef nonnull %msg.i199, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i206)
  %cmp.not.i207 = icmp eq i32 %call.i206, 1
  br i1 %cmp.not.i207, label %cx24113_readreg.exit197.cx24113_writereg.exit211_crit_edge, label %do.end.i209

cx24113_readreg.exit197.cx24113_writereg.exit211_crit_edge: ; preds = %cx24113_readreg.exit197
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit211

do.end.i209:                                      ; preds = %cx24113_readreg.exit197
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i206, i32 noundef 2, i32 noundef %and65) #10
  br label %cx24113_writereg.exit211

cx24113_writereg.exit211:                         ; preds = %do.end.i209, %cx24113_readreg.exit197.cx24113_writereg.exit211_crit_edge
  %retval.0.i210 = phi i32 [ %call.i206, %do.end.i209 ], [ 0, %cx24113_readreg.exit197.cx24113_writereg.exit211_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i199) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i198) #7
  br label %if.end68

if.end68:                                         ; preds = %cx24113_writereg.exit211, %cx24113_writereg.exit
  %ret.0 = phi i32 [ %retval.0.i175, %cx24113_writereg.exit ], [ %retval.0.i210, %cx24113_writereg.exit211 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24113_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i132.i = alloca [2 x i8], align 1
  %msg.i133.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i110.i = alloca i8, align 1
  %b.i111.i = alloca i8, align 1
  %msg.i112.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i96.i = alloca [2 x i8], align 1
  %msg.i97.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i74.i = alloca i8, align 1
  %b.i75.i = alloca i8, align 1
  %msg.i76.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i68.i.i = alloca [2 x i8], align 1
  %msg.i69.i.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i49.i = alloca i8, align 1
  %b.i.i50.i = alloca i8, align 1
  %msg.i59.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i45.i.i = alloca [2 x i8], align 1
  %msg.i46.i.i = alloca %struct.i2c_msg, align 4
  %buf.i31.i.i = alloca [2 x i8], align 1
  %msg.i32.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i51.i = alloca [2 x i8], align 1
  %msg.i.i52.i = alloca %struct.i2c_msg, align 4
  %buf.i513.i.i = alloca [2 x i8], align 1
  %msg.i514.i.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i.i = alloca i8, align 1
  %b.i.i.i = alloca i8, align 1
  %msg.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i32.i = alloca [2 x i8], align 1
  %msg.i33.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i10.i = alloca i8, align 1
  %b.i11.i = alloca i8, align 1
  %msg.i12.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i1.i = alloca [2 x i8], align 1
  %msg.i2.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i = alloca i8, align 1
  %b.i.i = alloca i8, align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %bw = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bw) #7
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %2 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %symbol_rate, align 4
  %div = udiv i32 %3, 100
  %mul = mul i32 %div, 675
  %div1 = udiv i32 %mul, 1000
  %add = add nuw nsw i32 %div1, 100005
  %div2 = udiv i32 %add, 10
  %add3 = add nuw nsw i32 %div2, 1000
  %4 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add3, ptr %bw, align 4
  tail call fastcc void @cx24113_set_bandwidth(ptr noundef %1, i32 noundef %add3)
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtv_property_cache, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  %7 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 20, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i) #7
  %8 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %b.i.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %config.i.i = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv.i.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i.i, align 2
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %9, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %reg.addr.i.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %19 = load i8, ptr %12, align 4
  %conv4.i.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv4.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %22 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %len6.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %b.i.i, ptr %buf7.i.i, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg.addr.i.i, align 1
  %conv9.i.i = zext i8 %27 to i32
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i.i, i32 noundef %call.i.i) #10
  br label %cx24113_readreg.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %b.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %b.i.i, align 1
  %conv11.i.i = zext i8 %29 to i32
  br label %cx24113_readreg.exit.i

cx24113_readreg.exit.i:                           ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %do.end.i.i ], [ %conv11.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  %and.i = and i32 %retval.0.i.i, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1.i) #7
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i1.i, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 20, ptr %buf.i1.i, align 1
  %conv1.i.i = trunc i32 %and.i to i8
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv1.i.i, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i) #7
  %33 = getelementptr inbounds i8, ptr %msg.i2.i, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %33, align 4
  %35 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  %conv2.i.i = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i2.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv2.i.i, ptr %msg.i2.i, align 4
  %flags.i4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i4.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i4.i, align 2
  store i16 2, ptr %33, align 4
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i, i32 0, i32 3
  %41 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i1.i, ptr %buf3.i.i, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i6.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i2.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6.i)
  %cmp.not.i7.i = icmp eq i32 %call.i6.i, 1
  br i1 %cmp.not.i7.i, label %cx24113_readreg.exit.i.cx24113_writereg.exit.i_crit_edge, label %do.end.i8.i

cx24113_readreg.exit.i.cx24113_writereg.exit.i_crit_edge: ; preds = %cx24113_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit.i

do.end.i8.i:                                      ; preds = %cx24113_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i6.i, i32 noundef 20, i32 noundef %and.i) #10
  br label %cx24113_writereg.exit.i

cx24113_writereg.exit.i:                          ; preds = %do.end.i8.i, %cx24113_readreg.exit.i.cx24113_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i10.i) #7
  %44 = ptrtoint ptr %reg.addr.i10.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 16, ptr %reg.addr.i10.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i11.i) #7
  %45 = ptrtoint ptr %b.i11.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %b.i11.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i12.i) #7
  %46 = getelementptr inbounds i8, ptr %msg.i12.i, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %48 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv.i14.i = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i12.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i14.i, ptr %msg.i12.i, align 4
  %flags.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i15.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i15.i, align 2
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %46, align 4
  %buf.i17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 0, i32 3
  %55 = ptrtoint ptr %buf.i17.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %reg.addr.i10.i, ptr %buf.i17.i, align 4
  %arrayinit.element.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 1
  %56 = load i8, ptr %49, align 4
  %conv4.i19.i = zext i8 %56 to i16
  %57 = ptrtoint ptr %arrayinit.element.i18.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv4.i19.i, ptr %arrayinit.element.i18.i, align 4
  %flags5.i20.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 1, i32 1
  %58 = ptrtoint ptr %flags5.i20.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %flags5.i20.i, align 2
  %len6.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 1, i32 2
  %59 = ptrtoint ptr %len6.i21.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %len6.i21.i, align 4
  %buf7.i22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12.i, i32 1, i32 3
  %60 = ptrtoint ptr %buf7.i22.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %b.i11.i, ptr %buf7.i22.i, align 4
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i23.i = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i12.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i23.i)
  %cmp.not.i24.i = icmp eq i32 %call.i23.i, 2
  br i1 %cmp.not.i24.i, label %if.end.i29.i, label %do.end.i27.i

do.end.i27.i:                                     ; preds = %cx24113_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %reg.addr.i10.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %reg.addr.i10.i, align 1
  %conv9.i25.i = zext i8 %64 to i32
  %call10.i26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i25.i, i32 noundef %call.i23.i) #10
  br label %cx24113_readreg.exit31.i

if.end.i29.i:                                     ; preds = %cx24113_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %b.i11.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %b.i11.i, align 1
  %conv11.i28.i = zext i8 %66 to i32
  br label %cx24113_readreg.exit31.i

cx24113_readreg.exit31.i:                         ; preds = %if.end.i29.i, %do.end.i27.i
  %retval.0.i30.i = phi i32 [ %call.i23.i, %do.end.i27.i ], [ %conv11.i28.i, %if.end.i29.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i12.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i11.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i10.i) #7
  %and6.i = and i32 %retval.0.i30.i, 191
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i32.i) #7
  %67 = getelementptr inbounds [2 x i8], ptr %buf.i32.i, i32 0, i32 1
  %68 = ptrtoint ptr %buf.i32.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 16, ptr %buf.i32.i, align 1
  %conv1.i34.i = trunc i32 %and6.i to i8
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv1.i34.i, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i33.i) #7
  %70 = getelementptr inbounds i8, ptr %msg.i33.i, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %70, align 4
  %72 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %config.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 4
  %conv2.i36.i = zext i8 %75 to i16
  %76 = ptrtoint ptr %msg.i33.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv2.i36.i, ptr %msg.i33.i, align 4
  %flags.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i37.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i37.i, align 2
  store i16 2, ptr %70, align 4
  %buf3.i39.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 0, i32 3
  %78 = ptrtoint ptr %buf3.i39.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %buf.i32.i, ptr %buf3.i39.i, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call.i40.i = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i33.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i40.i)
  %cmp.not.i41.i = icmp eq i32 %call.i40.i, 1
  br i1 %cmp.not.i41.i, label %cx24113_readreg.exit31.i.cx24113_writereg.exit45.i_crit_edge, label %do.end.i43.i

cx24113_readreg.exit31.i.cx24113_writereg.exit45.i_crit_edge: ; preds = %cx24113_readreg.exit31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit45.i

do.end.i43.i:                                     ; preds = %cx24113_readreg.exit31.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i40.i, i32 noundef 16, i32 noundef %and6.i) #10
  br label %cx24113_writereg.exit45.i

cx24113_writereg.exit45.i:                        ; preds = %do.end.i43.i, %cx24113_readreg.exit31.i.cx24113_writereg.exit45.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i33.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i32.i) #7
  %frequency8.i = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 17
  %81 = ptrtoint ptr %frequency8.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %6, ptr %frequency8.i, align 4
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i, label %cx24113_writereg.exit45.i.do.end17.i_crit_edge, label %do.end.i

cx24113_writereg.exit45.i.do.end17.i_crit_edge:   ; preds = %cx24113_writereg.exit45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17.i

do.end.i:                                         ; preds = %cx24113_writereg.exit45.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.44) #10
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %6) #10
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end.i, %cx24113_writereg.exit45.i.do.end17.i_crit_edge
  %83 = ptrtoint ptr %frequency8.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %frequency8.i, align 4
  %mul.i.i = mul i32 %84, 1000
  %85 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %config.i.i, align 4
  %xtal_khz.i.i = getelementptr inbounds %struct.cx24113_config, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %xtal_khz.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %xtal_khz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %88)
  %cmp.i.i = icmp ult i32 %88, 20000
  %..i.i = select i1 %cmp.i.i, i32 1, i32 2
  %rev.i.i = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 2
  %89 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 35, i8 %90)
  %cmp1.i.i = icmp eq i8 %90, 35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1099999, i32 %84)
  %cmp5.i.i = icmp ugt i32 %84, 1099999
  %.507.i.i = select i1 %cmp5.i.i, i8 2, i8 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1164999, i32 %84)
  %cmp12.i.i = icmp ugt i32 %84, 1164999
  %.508.i.i = select i1 %cmp12.i.i, i8 2, i8 4
  %vcodiv.0.i.i = select i1 %cmp1.i.i, i8 %.507.i.i, i8 %.508.i.i
  %vcodiv18.i.i = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 9
  %91 = ptrtoint ptr %vcodiv18.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %vcodiv.0.i.i, ptr %vcodiv18.i.i, align 1
  %92 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i.i, label %entry.do.end29_crit_edge.i.i, label %do.end.i48.i

entry.do.end29_crit_edge.i.i:                     ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i.i = zext i8 %vcodiv.0.i.i to i32
  br label %do.end29.i.i

do.end.i48.i:                                     ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #10
  %conv25.i.i = zext i8 %vcodiv.0.i.i to i32
  %call26.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %mul.i.i, i32 noundef %conv25.i.i) #10
  br label %do.end29.i.i

do.end29.i.i:                                     ; preds = %do.end.i48.i, %entry.do.end29_crit_edge.i.i
  %conv34.pre-phi.i.i = phi i32 [ %.pre.i.i, %entry.do.end29_crit_edge.i.i ], [ %conv25.i.i, %do.end.i48.i ]
  %93 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %94)
  %cmp.i.i.i = icmp eq i8 %94, 67
  %refdiv5.i.i.i = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 18
  %div.i.i = sdiv i32 %mul.i.i, 100
  %95 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %config.i.i, align 4
  %xtal_khz39.i.i = getelementptr inbounds %struct.cx24113_config, ptr %96, i32 0, i32 1
  %mul41.i.i = shl nuw nsw i32 %..i.i, 1
  br label %do.body30.i.i

do.body30.i.i:                                    ; preds = %cx24113_set_ref_div.exit.i.i.do.body30.i.i_crit_edge, %do.end29.i.i
  %R.0.i.i = phi i8 [ 0, %do.end29.i.i ], [ %refdiv.addr.0.i.i.i, %cx24113_set_ref_div.exit.i.i.do.body30.i.i_crit_edge ]
  %add.i.i = add nuw nsw i8 %R.0.i.i, 1
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %do.body30.i.i.cx24113_set_ref_div.exit.i.i_crit_edge

do.body30.i.i.cx24113_set_ref_div.exit.i.i_crit_edge: ; preds = %do.body30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_set_ref_div.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %vcodiv18.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %vcodiv18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %98)
  %cmp3.i.i.i = icmp eq i8 %98, 4
  %spec.select.i.i.i = select i1 %cmp3.i.i.i, i8 2, i8 %add.i.i
  br label %cx24113_set_ref_div.exit.i.i

cx24113_set_ref_div.exit.i.i:                     ; preds = %land.lhs.true.i.i.i, %do.body30.i.i.cx24113_set_ref_div.exit.i.i_crit_edge
  %refdiv.addr.0.i.i.i = phi i8 [ %add.i.i, %do.body30.i.i.cx24113_set_ref_div.exit.i.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %99 = ptrtoint ptr %refdiv5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %refdiv.addr.0.i.i.i, ptr %refdiv5.i.i.i, align 4
  %conv36.i.i = zext i8 %refdiv.addr.0.i.i.i to i32
  %mul35.i.i = mul nuw nsw i32 %conv34.pre-phi.i.i, %conv36.i.i
  %mul37.i.i = mul i32 %mul35.i.i, %div.i.i
  %100 = ptrtoint ptr %xtal_khz39.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %xtal_khz39.i.i, align 4
  %mul42.i.i = mul i32 %mul41.i.i, %101
  %div43.i.i = udiv i32 %mul37.i.i, %mul42.i.i
  %add44.i.i = add i32 %div43.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 380, i32 %add44.i.i)
  %cmp47.i.i = icmp slt i32 %add44.i.i, 380
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %refdiv.addr.0.i.i.i)
  %cmp50.i.i = icmp ult i8 %refdiv.addr.0.i.i.i, 3
  %or.cond.i.i = select i1 %cmp47.i.i, i1 %cmp50.i.i, i1 false
  br i1 %or.cond.i.i, label %cx24113_set_ref_div.exit.i.i.do.body30.i.i_crit_edge, label %do.end52.i.i

cx24113_set_ref_div.exit.i.i.do.body30.i.i_crit_edge: ; preds = %cx24113_set_ref_div.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body30.i.i

do.end52.i.i:                                     ; preds = %cx24113_set_ref_div.exit.i.i
  %div45.le.i.i = sdiv i32 %add44.i.i, 10
  %sub.le.i.i = add nsw i32 %div45.le.i.i, -32
  br i1 %cmp47.i.i, label %do.end59.i.i, label %if.end64.i.i

do.end59.i.i:                                     ; preds = %do.end52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call61.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #10
  br label %cx24113_calc_pll_nf.exit.i

if.end64.i.i:                                     ; preds = %do.end52.i.i
  %conv65.i.i = sext i32 %mul.i.i to i64
  %mul69.i.i = shl nuw nsw i32 %mul35.i.i, 18
  %102 = zext i32 %mul69.i.i to i64
  %mul71.i.i = mul nsw i64 %102, %conv65.i.i
  %103 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool73.not.i.i = icmp eq i32 %103, 0
  br i1 %tobool73.not.i.i, label %if.end64.i.i.do.end88.i.i_crit_edge, label %do.end77.i.i

if.end64.i.i.do.end88.i.i_crit_edge:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end88.i.i

do.end77.i.i:                                     ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call79.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #10
  %call85.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %sub.le.i.i, i64 noundef %mul71.i.i, i32 noundef %conv36.i.i) #10
  br label %do.end88.i.i

do.end88.i.i:                                     ; preds = %do.end77.i.i, %if.end64.i.i.do.end88.i.i_crit_edge
  %104 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config.i.i, align 4
  %xtal_khz90.i.i = getelementptr inbounds %struct.cx24113_config, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %xtal_khz90.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %xtal_khz90.i.i, align 4
  %mul93.i.i = mul nuw nsw i32 %..i.i, 2000
  %mul94.i.i = mul i32 %mul93.i.i, %107
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul71.i.i)
  %cmp271.i.i = icmp ult i64 %mul71.i.i, 4294967296
  br i1 %cmp271.i.i, label %if.then275.i.i, label %if.else281.i.i, !prof !153

if.then275.i.i:                                   ; preds = %do.end88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv276.i.i = trunc i64 %mul71.i.i to i32
  %div279.i.i = udiv i32 %conv276.i.i, %mul94.i.i
  %conv280.i.i = zext i32 %div279.i.i to i64
  br label %if.end285.i.i

if.else281.i.i:                                   ; preds = %do.end88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul94.i.i, i64 %mul71.i.i) #12, !srcloc !154
  %asmresult1.i.i.i = extractvalue { i64, i64 } %108, 1
  br label %if.end285.i.i

if.end285.i.i:                                    ; preds = %if.else281.i.i, %if.then275.i.i
  %dividend.0.i.i = phi i64 [ %conv280.i.i, %if.then275.i.i ], [ %asmresult1.i.i.i, %if.else281.i.i ]
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool288.not.i.i = icmp eq i32 %109, 0
  br i1 %tobool288.not.i.i, label %do.end303.thread.i.i, label %do.end303.i.i

do.end303.thread.i.i:                             ; preds = %if.end285.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul305544.i.i = shl i32 %div45.le.i.i, 18
  %conv306545.i.i = sext i32 %mul305544.i.i to i64
  %sub307546.i.i = sub i64 %dividend.0.i.i, %conv306545.i.i
  br label %do.end324.i.i

do.end303.i.i:                                    ; preds = %if.end285.i.i
  %call294.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #10
  %call300.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %sub.le.i.i, i64 noundef %dividend.0.i.i, i32 noundef %conv36.i.i) #10
  %.pr.i.i = load i32, ptr @debug, align 4
  %mul305.i.i = shl i32 %div45.le.i.i, 18
  %conv306.i.i = sext i32 %mul305.i.i to i64
  %sub307.i.i = sub i64 %dividend.0.i.i, %conv306.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %tobool309.not.i.i = icmp eq i32 %.pr.i.i, 0
  br i1 %tobool309.not.i.i, label %do.end303.i.i.do.end324.i.i_crit_edge, label %do.end313.i.i

do.end303.i.i.do.end324.i.i_crit_edge:            ; preds = %do.end303.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end324.i.i

do.end313.i.i:                                    ; preds = %do.end303.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call315.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #10
  %call321.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %sub.le.i.i, i64 noundef %sub307.i.i, i32 noundef %conv36.i.i) #10
  br label %do.end324.i.i

do.end324.i.i:                                    ; preds = %do.end313.i.i, %do.end303.i.i.do.end324.i.i_crit_edge, %do.end303.thread.i.i
  %sub307548.i.i = phi i64 [ %sub307546.i.i, %do.end303.thread.i.i ], [ %sub307.i.i, %do.end313.i.i ], [ %sub307.i.i, %do.end303.i.i.do.end324.i.i_crit_edge ]
  %Fwindow_enabled.i.i = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 19
  %110 = ptrtoint ptr %Fwindow_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %Fwindow_enabled.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool325.not.i.i = icmp eq i8 %111, 0
  br i1 %tobool325.not.i.i, label %do.end324.i.i.do.body353.i.i_crit_edge, label %if.then326.i.i

do.end324.i.i.do.body353.i.i_crit_edge:           ; preds = %do.end324.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body353.i.i

if.then326.i.i:                                   ; preds = %do.end324.i.i
  %112 = call i64 @llvm.smin.i64(i64 %sub307548.i.i, i64 129434) #7
  %113 = call i64 @llvm.smax.i64(i64 %112, i64 -129434) #7
  %114 = add nsw i64 %113, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 3276, i64 %114)
  %115 = icmp ult i64 %114, 3276
  call void @__sanitizer_cov_trace_const_cmp8(i64 -3277, i64 %113)
  %116 = icmp ugt i64 %113, -3277
  %or.cond550.i.i = or i1 %116, %115
  br i1 %or.cond550.i.i, label %if.then345.i.i, label %if.then326.i.i.do.body353.i.i_crit_edge

if.then326.i.i.do.body353.i.i_crit_edge:          ; preds = %if.then326.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body353.i.i

if.then345.i.i:                                   ; preds = %if.then326.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #7
  %117 = ptrtoint ptr %reg.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 16, ptr %reg.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i.i) #7
  %118 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -1, ptr %b.i.i.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i) #7
  %119 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %120 = call ptr @memset(ptr %119, i32 255, i32 16)
  %121 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %config.i.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 4
  %conv.i.i.i = zext i8 %124 to i16
  %125 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %126 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %flags.i.i.i, align 2
  %127 = ptrtoint ptr %119 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 1, ptr %119, align 4
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %128 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %reg.addr.i.i.i, ptr %buf.i.i.i, align 4
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1
  %129 = load i8, ptr %122, align 4
  %conv4.i.i.i = zext i8 %129 to i16
  %130 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv4.i.i.i, ptr %arrayinit.element.i.i.i, align 4
  %flags5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 1
  %131 = ptrtoint ptr %flags5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 1, ptr %flags5.i.i.i, align 2
  %len6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 2
  %132 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 1, ptr %len6.i.i.i, align 4
  %buf7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 1, i32 3
  %133 = ptrtoint ptr %buf7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %b.i.i.i, ptr %buf7.i.i.i, align 4
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %msg.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i512.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i512.i.i, label %if.end.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then345.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %136 = ptrtoint ptr %reg.addr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %reg.addr.i.i.i, align 1
  %conv9.i.i.i = zext i8 %137 to i32
  %call10.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i.i.i, i32 noundef %call.i.i.i) #10
  br label %cx24113_readreg.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then345.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %b.i.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %b.i.i.i, align 1
  %conv11.i.i.i = zext i8 %139 to i32
  br label %cx24113_readreg.exit.i.i

cx24113_readreg.exit.i.i:                         ; preds = %if.end.i.i.i, %do.end.i.i.i
  %retval.0.i.i.i = phi i32 [ %call.i.i.i, %do.end.i.i.i ], [ %conv11.i.i.i, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #7
  %conv348.i.i = and i32 %retval.0.i.i.i, 191
  %or349.i.i = or i32 %conv348.i.i, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i513.i.i) #7
  %140 = getelementptr inbounds [2 x i8], ptr %buf.i513.i.i, i32 0, i32 1
  %141 = ptrtoint ptr %buf.i513.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 16, ptr %buf.i513.i.i, align 1
  %conv1.i.i.i = trunc i32 %or349.i.i to i8
  %142 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv1.i.i.i, ptr %140, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i514.i.i) #7
  %143 = getelementptr inbounds i8, ptr %msg.i514.i.i, i32 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 196607, ptr %143, align 4
  %145 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %config.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %146, align 4
  %conv2.i.i.i = zext i8 %148 to i16
  %149 = ptrtoint ptr %msg.i514.i.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv2.i.i.i, ptr %msg.i514.i.i, align 4
  %flags.i516.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i514.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %flags.i516.i.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 0, ptr %flags.i516.i.i, align 2
  %buf3.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i514.i.i, i32 0, i32 3
  %151 = ptrtoint ptr %buf3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %buf.i513.i.i, ptr %buf3.i.i.i, align 4
  %152 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %1, align 4
  %call.i518.i.i = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %msg.i514.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i518.i.i)
  %cmp.not.i519.i.i = icmp eq i32 %call.i518.i.i, 1
  br i1 %cmp.not.i519.i.i, label %cx24113_readreg.exit.i.i.cx24113_writereg.exit.i.i_crit_edge, label %do.end.i520.i.i

cx24113_readreg.exit.i.i.cx24113_writereg.exit.i.i_crit_edge: ; preds = %cx24113_readreg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit.i.i

do.end.i520.i.i:                                  ; preds = %cx24113_readreg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i518.i.i, i32 noundef 16, i32 noundef %or349.i.i) #10
  br label %cx24113_writereg.exit.i.i

cx24113_writereg.exit.i.i:                        ; preds = %do.end.i520.i.i, %cx24113_readreg.exit.i.i.cx24113_writereg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i514.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i513.i.i) #7
  br label %do.body353.i.i

do.body353.i.i:                                   ; preds = %cx24113_writereg.exit.i.i, %if.then326.i.i.do.body353.i.i_crit_edge, %do.end324.i.i.do.body353.i.i_crit_edge
  %F.2.i.i = phi i64 [ 0, %cx24113_writereg.exit.i.i ], [ %sub307548.i.i, %do.end324.i.i.do.body353.i.i_crit_edge ], [ %113, %if.then326.i.i.do.body353.i.i_crit_edge ]
  %154 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool354.not.i.i = icmp eq i32 %154, 0
  br i1 %tobool354.not.i.i, label %do.body353.i.i.do.end369.i.i_crit_edge, label %do.end358.i.i

do.body353.i.i.do.end369.i.i_crit_edge:           ; preds = %do.body353.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end369.i.i

do.end358.i.i:                                    ; preds = %do.body353.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call360.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.48) #10
  %call366.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %sub.le.i.i, i64 noundef %F.2.i.i, i32 noundef %conv36.i.i) #10
  br label %do.end369.i.i

do.end369.i.i:                                    ; preds = %do.end358.i.i, %do.body353.i.i.do.end369.i.i_crit_edge
  %conv371.i.i = trunc i64 %F.2.i.i to i32
  %phi.cast.i = and i32 %sub.le.i.i, 65535
  br label %cx24113_calc_pll_nf.exit.i

cx24113_calc_pll_nf.exit.i:                       ; preds = %do.end369.i.i, %do.end59.i.i
  %n.0.i = phi i32 [ 6, %do.end59.i.i ], [ %phi.cast.i, %do.end369.i.i ]
  %f.0.i = phi i32 [ 0, %do.end59.i.i ], [ %conv371.i.i, %do.end369.i.i ]
  %155 = ptrtoint ptr %refdiv5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %refdiv5.i.i.i, align 4
  %157 = lshr i32 %n.0.i, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i51.i) #7
  %158 = getelementptr inbounds [2 x i8], ptr %buf.i.i51.i, i32 0, i32 1
  %159 = ptrtoint ptr %buf.i.i51.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 25, ptr %buf.i.i51.i, align 1
  %conv1.i.i54.i = trunc i32 %157 to i8
  %160 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv1.i.i54.i, ptr %158, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i52.i) #7
  %161 = getelementptr inbounds i8, ptr %msg.i.i52.i, i32 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 196607, ptr %161, align 4
  %163 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %config.i.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %164, align 4
  %conv2.i.i55.i = zext i8 %166 to i16
  %167 = ptrtoint ptr %msg.i.i52.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv2.i.i55.i, ptr %msg.i.i52.i, align 4
  %flags.i.i56.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i52.i, i32 0, i32 1
  %168 = ptrtoint ptr %flags.i.i56.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i.i56.i, align 2
  %buf3.i.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i52.i, i32 0, i32 3
  %169 = ptrtoint ptr %buf3.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %buf.i.i51.i, ptr %buf3.i.i57.i, align 4
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 4
  %call.i.i58.i = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %msg.i.i52.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i58.i)
  %cmp.not.i.i59.i = icmp eq i32 %call.i.i58.i, 1
  br i1 %cmp.not.i.i59.i, label %cx24113_calc_pll_nf.exit.i.cx24113_writereg.exit.i62.i_crit_edge, label %do.end.i.i61.i

cx24113_calc_pll_nf.exit.i.cx24113_writereg.exit.i62.i_crit_edge: ; preds = %cx24113_calc_pll_nf.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit.i62.i

do.end.i.i61.i:                                   ; preds = %cx24113_calc_pll_nf.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i32 %157, 255
  %call5.i.i60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i.i58.i, i32 noundef 25, i32 noundef %and.i.i) #10
  br label %cx24113_writereg.exit.i62.i

cx24113_writereg.exit.i62.i:                      ; preds = %do.end.i.i61.i, %cx24113_calc_pll_nf.exit.i.cx24113_writereg.exit.i62.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i52.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i51.i) #7
  %and2.i.i = shl nuw nsw i32 %n.0.i, 7
  %172 = lshr i32 %f.0.i, 11
  %and4.i.i = and i32 %172, 127
  %and2.masked.i.i = and i32 %and2.i.i, 128
  %conv6.i.i = or i32 %and4.i.i, %and2.masked.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i31.i.i) #7
  %173 = getelementptr inbounds [2 x i8], ptr %buf.i31.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %buf.i31.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 26, ptr %buf.i31.i.i, align 1
  %conv1.i33.i.i = trunc i32 %conv6.i.i to i8
  %175 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv1.i33.i.i, ptr %173, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i32.i.i) #7
  %176 = getelementptr inbounds i8, ptr %msg.i32.i.i, i32 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 196607, ptr %176, align 4
  %178 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %config.i.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %179, align 4
  %conv2.i35.i.i = zext i8 %181 to i16
  %182 = ptrtoint ptr %msg.i32.i.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv2.i35.i.i, ptr %msg.i32.i.i, align 4
  %flags.i36.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32.i.i, i32 0, i32 1
  %183 = ptrtoint ptr %flags.i36.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 0, ptr %flags.i36.i.i, align 2
  %buf3.i38.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32.i.i, i32 0, i32 3
  %184 = ptrtoint ptr %buf3.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %buf.i31.i.i, ptr %buf3.i38.i.i, align 4
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 4
  %call.i39.i.i = call i32 @i2c_transfer(ptr noundef %186, ptr noundef nonnull %msg.i32.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i39.i.i)
  %cmp.not.i40.i.i = icmp eq i32 %call.i39.i.i, 1
  br i1 %cmp.not.i40.i.i, label %cx24113_writereg.exit.i62.i.cx24113_writereg.exit44.i.i_crit_edge, label %do.end.i42.i.i

cx24113_writereg.exit.i62.i.cx24113_writereg.exit44.i.i_crit_edge: ; preds = %cx24113_writereg.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit44.i.i

do.end.i42.i.i:                                   ; preds = %cx24113_writereg.exit.i62.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i41.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i39.i.i, i32 noundef 26, i32 noundef %conv6.i.i) #10
  br label %cx24113_writereg.exit44.i.i

cx24113_writereg.exit44.i.i:                      ; preds = %do.end.i42.i.i, %cx24113_writereg.exit.i62.i.cx24113_writereg.exit44.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i32.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i31.i.i) #7
  %187 = lshr i32 %f.0.i, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i45.i.i) #7
  %188 = getelementptr inbounds [2 x i8], ptr %buf.i45.i.i, i32 0, i32 1
  %189 = ptrtoint ptr %buf.i45.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 27, ptr %buf.i45.i.i, align 1
  %conv1.i47.i.i = trunc i32 %187 to i8
  %190 = ptrtoint ptr %188 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv1.i47.i.i, ptr %188, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i46.i.i) #7
  %191 = getelementptr inbounds i8, ptr %msg.i46.i.i, i32 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 196607, ptr %191, align 4
  %193 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %config.i.i, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %194, align 4
  %conv2.i49.i.i = zext i8 %196 to i16
  %197 = ptrtoint ptr %msg.i46.i.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv2.i49.i.i, ptr %msg.i46.i.i, align 4
  %flags.i50.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46.i.i, i32 0, i32 1
  %198 = ptrtoint ptr %flags.i50.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 0, ptr %flags.i50.i.i, align 2
  %buf3.i52.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i46.i.i, i32 0, i32 3
  %199 = ptrtoint ptr %buf3.i52.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %buf.i45.i.i, ptr %buf3.i52.i.i, align 4
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 4
  %call.i53.i.i = call i32 @i2c_transfer(ptr noundef %201, ptr noundef nonnull %msg.i46.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i53.i.i)
  %cmp.not.i54.i.i = icmp eq i32 %call.i53.i.i, 1
  br i1 %cmp.not.i54.i.i, label %cx24113_writereg.exit44.i.i.cx24113_writereg.exit58.i.i_crit_edge, label %do.end.i56.i.i

cx24113_writereg.exit44.i.i.cx24113_writereg.exit58.i.i_crit_edge: ; preds = %cx24113_writereg.exit44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit58.i.i

do.end.i56.i.i:                                   ; preds = %cx24113_writereg.exit44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and9.i.i = and i32 %187, 255
  %call5.i55.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i53.i.i, i32 noundef 27, i32 noundef %and9.i.i) #10
  br label %cx24113_writereg.exit58.i.i

cx24113_writereg.exit58.i.i:                      ; preds = %do.end.i56.i.i, %cx24113_writereg.exit44.i.i.cx24113_writereg.exit58.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i46.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i45.i.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i49.i) #7
  %202 = ptrtoint ptr %reg.addr.i.i49.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 28, ptr %reg.addr.i.i49.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i.i50.i) #7
  %203 = ptrtoint ptr %b.i.i50.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 -1, ptr %b.i.i50.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i59.i.i) #7
  %204 = getelementptr inbounds i8, ptr %msg.i59.i.i, i32 4
  %205 = call ptr @memset(ptr %204, i32 255, i32 16)
  %206 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %config.i.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %207, align 4
  %conv.i.i63.i = zext i8 %209 to i16
  %210 = ptrtoint ptr %msg.i59.i.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 %conv.i.i63.i, ptr %msg.i59.i.i, align 4
  %flags.i61.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i.i, i32 0, i32 1
  %211 = ptrtoint ptr %flags.i61.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 0, ptr %flags.i61.i.i, align 2
  %212 = ptrtoint ptr %204 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 1, ptr %204, align 4
  %buf.i63.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i.i, i32 0, i32 3
  %213 = ptrtoint ptr %buf.i63.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %reg.addr.i.i49.i, ptr %buf.i63.i.i, align 4
  %arrayinit.element.i.i64.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i.i, i32 1
  %214 = load i8, ptr %207, align 4
  %conv4.i.i65.i = zext i8 %214 to i16
  %215 = ptrtoint ptr %arrayinit.element.i.i64.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv4.i.i65.i, ptr %arrayinit.element.i.i64.i, align 4
  %flags5.i.i66.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i.i, i32 1, i32 1
  %216 = ptrtoint ptr %flags5.i.i66.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 1, ptr %flags5.i.i66.i, align 2
  %len6.i.i67.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i.i, i32 1, i32 2
  %217 = ptrtoint ptr %len6.i.i67.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 1, ptr %len6.i.i67.i, align 4
  %buf7.i.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i59.i.i, i32 1, i32 3
  %218 = ptrtoint ptr %buf7.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %b.i.i50.i, ptr %buf7.i.i68.i, align 4
  %219 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %1, align 4
  %call.i64.i.i = call i32 @i2c_transfer(ptr noundef %220, ptr noundef nonnull %msg.i59.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i64.i.i)
  %cmp.not.i65.i.i = icmp eq i32 %call.i64.i.i, 2
  br i1 %cmp.not.i65.i.i, label %if.end.i.i72.i, label %do.end.i66.i.i

do.end.i66.i.i:                                   ; preds = %cx24113_writereg.exit58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %221 = ptrtoint ptr %reg.addr.i.i49.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %reg.addr.i.i49.i, align 1
  %conv9.i.i69.i = zext i8 %222 to i32
  %call10.i.i70.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i.i69.i, i32 noundef %call.i64.i.i) #10
  br label %cx24113_readreg.exit.i73.i

if.end.i.i72.i:                                   ; preds = %cx24113_writereg.exit58.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %223 = ptrtoint ptr %b.i.i50.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %b.i.i50.i, align 1
  %conv11.i.i71.i = zext i8 %224 to i32
  br label %cx24113_readreg.exit.i73.i

cx24113_readreg.exit.i73.i:                       ; preds = %if.end.i.i72.i, %do.end.i66.i.i
  %retval.0.i67.i.i = phi i32 [ %call.i64.i.i, %do.end.i66.i.i ], [ %conv11.i.i71.i, %if.end.i.i72.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i59.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i.i50.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i49.i) #7
  %conv13.i.i = and i32 %retval.0.i67.i.i, 31
  %and15.i.i = shl i32 %f.0.i, 5
  %shl16.i.i = and i32 %and15.i.i, 224
  %or17.i.i = or i32 %conv13.i.i, %shl16.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i68.i.i) #7
  %225 = getelementptr inbounds [2 x i8], ptr %buf.i68.i.i, i32 0, i32 1
  %226 = ptrtoint ptr %buf.i68.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 28, ptr %buf.i68.i.i, align 1
  %conv1.i70.i.i = trunc i32 %or17.i.i to i8
  %227 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv1.i70.i.i, ptr %225, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i69.i.i) #7
  %228 = getelementptr inbounds i8, ptr %msg.i69.i.i, i32 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 196607, ptr %228, align 4
  %230 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %config.i.i, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %231, align 4
  %conv2.i72.i.i = zext i8 %233 to i16
  %234 = ptrtoint ptr %msg.i69.i.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %conv2.i72.i.i, ptr %msg.i69.i.i, align 4
  %flags.i73.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69.i.i, i32 0, i32 1
  %235 = ptrtoint ptr %flags.i73.i.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 0, ptr %flags.i73.i.i, align 2
  %buf3.i75.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69.i.i, i32 0, i32 3
  %236 = ptrtoint ptr %buf3.i75.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %buf.i68.i.i, ptr %buf3.i75.i.i, align 4
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %1, align 4
  %call.i76.i.i = call i32 @i2c_transfer(ptr noundef %238, ptr noundef nonnull %msg.i69.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i76.i.i)
  %cmp.not.i77.i.i = icmp eq i32 %call.i76.i.i, 1
  br i1 %cmp.not.i77.i.i, label %cx24113_readreg.exit.i73.i.cx24113_set_nfr.exit.i_crit_edge, label %do.end.i79.i.i

cx24113_readreg.exit.i73.i.cx24113_set_nfr.exit.i_crit_edge: ; preds = %cx24113_readreg.exit.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_set_nfr.exit.i

do.end.i79.i.i:                                   ; preds = %cx24113_readreg.exit.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i78.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i76.i.i, i32 noundef 28, i32 noundef %or17.i.i) #10
  br label %cx24113_set_nfr.exit.i

cx24113_set_nfr.exit.i:                           ; preds = %do.end.i79.i.i, %cx24113_readreg.exit.i73.i.cx24113_set_nfr.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i69.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i68.i.i) #7
  %sub.i.i = add i8 %156, -1
  call fastcc void @cx24113_set_Fref(ptr noundef %1, i8 noundef zeroext %sub.i.i) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i74.i) #7
  %239 = ptrtoint ptr %reg.addr.i74.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 24, ptr %reg.addr.i74.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i75.i) #7
  %240 = ptrtoint ptr %b.i75.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 -1, ptr %b.i75.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i76.i) #7
  %241 = getelementptr inbounds i8, ptr %msg.i76.i, i32 4
  %242 = call ptr @memset(ptr %241, i32 255, i32 16)
  %243 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %config.i.i, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %244, align 4
  %conv.i78.i = zext i8 %246 to i16
  %247 = ptrtoint ptr %msg.i76.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv.i78.i, ptr %msg.i76.i, align 4
  %flags.i79.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76.i, i32 0, i32 1
  %248 = ptrtoint ptr %flags.i79.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %flags.i79.i, align 2
  %249 = ptrtoint ptr %241 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 1, ptr %241, align 4
  %buf.i81.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76.i, i32 0, i32 3
  %250 = ptrtoint ptr %buf.i81.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %reg.addr.i74.i, ptr %buf.i81.i, align 4
  %arrayinit.element.i82.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76.i, i32 1
  %251 = load i8, ptr %244, align 4
  %conv4.i83.i = zext i8 %251 to i16
  %252 = ptrtoint ptr %arrayinit.element.i82.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 %conv4.i83.i, ptr %arrayinit.element.i82.i, align 4
  %flags5.i84.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76.i, i32 1, i32 1
  %253 = ptrtoint ptr %flags5.i84.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 1, ptr %flags5.i84.i, align 2
  %len6.i85.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76.i, i32 1, i32 2
  %254 = ptrtoint ptr %len6.i85.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 1, ptr %len6.i85.i, align 4
  %buf7.i86.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i76.i, i32 1, i32 3
  %255 = ptrtoint ptr %buf7.i86.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %b.i75.i, ptr %buf7.i86.i, align 4
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %1, align 4
  %call.i87.i = call i32 @i2c_transfer(ptr noundef %257, ptr noundef nonnull %msg.i76.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i87.i)
  %cmp.not.i88.i = icmp eq i32 %call.i87.i, 2
  br i1 %cmp.not.i88.i, label %if.end.i93.i, label %do.end.i91.i

do.end.i91.i:                                     ; preds = %cx24113_set_nfr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %258 = ptrtoint ptr %reg.addr.i74.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %reg.addr.i74.i, align 1
  %conv9.i89.i = zext i8 %259 to i32
  %call10.i90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i89.i, i32 noundef %call.i87.i) #10
  br label %cx24113_readreg.exit95.i

if.end.i93.i:                                     ; preds = %cx24113_set_nfr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %260 = ptrtoint ptr %b.i75.i to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %b.i75.i, align 1
  %conv11.i92.i = zext i8 %261 to i32
  br label %cx24113_readreg.exit95.i

cx24113_readreg.exit95.i:                         ; preds = %if.end.i93.i, %do.end.i91.i
  %retval.0.i94.i = phi i32 [ %call.i87.i, %do.end.i91.i ], [ %conv11.i92.i, %if.end.i93.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i76.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i75.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i74.i) #7
  %conv20.i = and i32 %retval.0.i94.i, 191
  %262 = ptrtoint ptr %vcodiv18.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %vcodiv18.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %263)
  %cmp.not.i = icmp eq i8 %263, 2
  %conv25.i = or i32 %retval.0.i94.i, 64
  %spec.select.i = select i1 %cmp.not.i, i32 %conv20.i, i32 %conv25.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i96.i) #7
  %264 = getelementptr inbounds [2 x i8], ptr %buf.i96.i, i32 0, i32 1
  %265 = ptrtoint ptr %buf.i96.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 24, ptr %buf.i96.i, align 1
  %conv1.i98.i = trunc i32 %spec.select.i to i8
  %266 = ptrtoint ptr %264 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %conv1.i98.i, ptr %264, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i97.i) #7
  %267 = getelementptr inbounds i8, ptr %msg.i97.i, i32 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 196607, ptr %267, align 4
  %269 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %config.i.i, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %270, align 4
  %conv2.i100.i = zext i8 %272 to i16
  %273 = ptrtoint ptr %msg.i97.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %conv2.i100.i, ptr %msg.i97.i, align 4
  %flags.i101.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i97.i, i32 0, i32 1
  %274 = ptrtoint ptr %flags.i101.i to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 0, ptr %flags.i101.i, align 2
  %buf3.i103.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i97.i, i32 0, i32 3
  %275 = ptrtoint ptr %buf3.i103.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %buf.i96.i, ptr %buf3.i103.i, align 4
  %276 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %1, align 4
  %call.i104.i = call i32 @i2c_transfer(ptr noundef %277, ptr noundef nonnull %msg.i97.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i104.i)
  %cmp.not.i105.i = icmp eq i32 %call.i104.i, 1
  br i1 %cmp.not.i105.i, label %cx24113_readreg.exit95.i.cx24113_writereg.exit109.i_crit_edge, label %do.end.i107.i

cx24113_readreg.exit95.i.cx24113_writereg.exit109.i_crit_edge: ; preds = %cx24113_readreg.exit95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit109.i

do.end.i107.i:                                    ; preds = %cx24113_readreg.exit95.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv27.i = and i32 %spec.select.i, 255
  %call5.i106.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i104.i, i32 noundef 24, i32 noundef %conv27.i) #10
  br label %cx24113_writereg.exit109.i

cx24113_writereg.exit109.i:                       ; preds = %do.end.i107.i, %cx24113_readreg.exit95.i.cx24113_writereg.exit109.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i97.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i96.i) #7
  call void @msleep(i32 noundef 5) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i110.i) #7
  %278 = ptrtoint ptr %reg.addr.i110.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 28, ptr %reg.addr.i110.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i111.i) #7
  %279 = ptrtoint ptr %b.i111.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 -1, ptr %b.i111.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i112.i) #7
  %280 = getelementptr inbounds i8, ptr %msg.i112.i, i32 4
  %281 = call ptr @memset(ptr %280, i32 255, i32 16)
  %282 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %config.i.i, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %283, align 4
  %conv.i114.i = zext i8 %285 to i16
  %286 = ptrtoint ptr %msg.i112.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 %conv.i114.i, ptr %msg.i112.i, align 4
  %flags.i115.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112.i, i32 0, i32 1
  %287 = ptrtoint ptr %flags.i115.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 0, ptr %flags.i115.i, align 2
  %288 = ptrtoint ptr %280 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 1, ptr %280, align 4
  %buf.i117.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112.i, i32 0, i32 3
  %289 = ptrtoint ptr %buf.i117.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %reg.addr.i110.i, ptr %buf.i117.i, align 4
  %arrayinit.element.i118.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112.i, i32 1
  %290 = load i8, ptr %283, align 4
  %conv4.i119.i = zext i8 %290 to i16
  %291 = ptrtoint ptr %arrayinit.element.i118.i to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 %conv4.i119.i, ptr %arrayinit.element.i118.i, align 4
  %flags5.i120.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112.i, i32 1, i32 1
  %292 = ptrtoint ptr %flags5.i120.i to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 1, ptr %flags5.i120.i, align 2
  %len6.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112.i, i32 1, i32 2
  %293 = ptrtoint ptr %len6.i121.i to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 1, ptr %len6.i121.i, align 4
  %buf7.i122.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i112.i, i32 1, i32 3
  %294 = ptrtoint ptr %buf7.i122.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %b.i111.i, ptr %buf7.i122.i, align 4
  %295 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %1, align 4
  %call.i123.i = call i32 @i2c_transfer(ptr noundef %296, ptr noundef nonnull %msg.i112.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i123.i)
  %cmp.not.i124.i = icmp eq i32 %call.i123.i, 2
  br i1 %cmp.not.i124.i, label %if.end.i129.i, label %do.end.i127.i

do.end.i127.i:                                    ; preds = %cx24113_writereg.exit109.i
  call void @__sanitizer_cov_trace_pc() #9
  %297 = ptrtoint ptr %reg.addr.i110.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %reg.addr.i110.i, align 1
  %conv9.i125.i = zext i8 %298 to i32
  %call10.i126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i125.i, i32 noundef %call.i123.i) #10
  br label %cx24113_readreg.exit131.i

if.end.i129.i:                                    ; preds = %cx24113_writereg.exit109.i
  call void @__sanitizer_cov_trace_pc() #9
  %299 = ptrtoint ptr %b.i111.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %b.i111.i, align 1
  %conv11.i128.i = zext i8 %300 to i32
  br label %cx24113_readreg.exit131.i

cx24113_readreg.exit131.i:                        ; preds = %if.end.i129.i, %do.end.i127.i
  %retval.0.i130.i = phi i32 [ %call.i123.i, %do.end.i127.i ], [ %conv11.i128.i, %if.end.i129.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i112.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i111.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i110.i) #7
  %conv31.i = and i32 %retval.0.i130.i, 239
  %or33.i = or i32 %conv31.i, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i132.i) #7
  %301 = getelementptr inbounds [2 x i8], ptr %buf.i132.i, i32 0, i32 1
  %302 = ptrtoint ptr %buf.i132.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 28, ptr %buf.i132.i, align 1
  %conv1.i134.i = trunc i32 %or33.i to i8
  %303 = ptrtoint ptr %301 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %conv1.i134.i, ptr %301, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i133.i) #7
  %304 = getelementptr inbounds i8, ptr %msg.i133.i, i32 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 196607, ptr %304, align 4
  %306 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %config.i.i, align 4
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %307, align 4
  %conv2.i136.i = zext i8 %309 to i16
  %310 = ptrtoint ptr %msg.i133.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 %conv2.i136.i, ptr %msg.i133.i, align 4
  %flags.i137.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133.i, i32 0, i32 1
  %311 = ptrtoint ptr %flags.i137.i to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 0, ptr %flags.i137.i, align 2
  %buf3.i139.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i133.i, i32 0, i32 3
  %312 = ptrtoint ptr %buf3.i139.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %buf.i132.i, ptr %buf3.i139.i, align 4
  %313 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %1, align 4
  %call.i140.i = call i32 @i2c_transfer(ptr noundef %314, ptr noundef nonnull %msg.i133.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i140.i)
  %cmp.not.i141.i = icmp eq i32 %call.i140.i, 1
  br i1 %cmp.not.i141.i, label %cx24113_readreg.exit131.i.cx24113_set_frequency.exit_crit_edge, label %do.end.i143.i

cx24113_readreg.exit131.i.cx24113_set_frequency.exit_crit_edge: ; preds = %cx24113_readreg.exit131.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_set_frequency.exit

do.end.i143.i:                                    ; preds = %cx24113_readreg.exit131.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i142.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i140.i, i32 noundef 28, i32 noundef %or33.i) #10
  br label %cx24113_set_frequency.exit

cx24113_set_frequency.exit:                       ; preds = %do.end.i143.i, %cx24113_readreg.exit131.i.cx24113_set_frequency.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i133.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i132.i) #7
  call void @msleep(i32 noundef 5) #7
  %call5 = call i32 @cx24113_get_status(ptr noundef %fe, ptr noundef nonnull %bw)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bw) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24113_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24113_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %2 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #7
  %3 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %b.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24113_state, ptr %1, i32 0, i32 1
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 4
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
  store ptr %b.i, ptr %buf7.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv9.i = zext i8 %22 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i, i32 noundef %call.i) #10
  br label %cx24113_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b.i, align 1
  %conv11.i = zext i8 %24 to i32
  br label %cx24113_readreg.exit

cx24113_readreg.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv11.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %25 = trunc i32 %retval.0.i to i8
  %26 = lshr i8 %25, 1
  %conv = and i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  br i1 %tobool.not, label %cx24113_readreg.exit.do.body_crit_edge, label %if.then

cx24113_readreg.exit.do.body_crit_edge:           ; preds = %cx24113_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %cx24113_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %or = or i32 %28, 1
  store i32 %or, ptr %status, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %cx24113_readreg.exit.do.body_crit_edge
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not = icmp eq i32 %29, 0
  br i1 %tobool1.not, label %do.body.do.end13_crit_edge, label %do.end

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #10
  %conv9 = zext i8 %conv to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %conv9) #10
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24113_set_Fref(ptr nocapture noundef readonly %state, i8 noundef zeroext %high) unnamed_addr #0 align 64 {
entry:
  %buf.i1 = alloca [2 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %b.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #7
  %1 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %b.i, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.cx24113_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %2, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = load i8, ptr %5, align 4
  %conv4.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv4.i, ptr %arrayinit.element.i, align 4
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
  store ptr %b.i, ptr %buf7.i, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg.addr.i, align 1
  %conv9.i = zext i8 %20 to i32
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i, i32 noundef %call.i) #10
  br label %cx24113_readreg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b.i, align 1
  %conv11.i = zext i8 %22 to i32
  br label %cx24113_readreg.exit

cx24113_readreg.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv11.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %rev = getelementptr inbounds %struct.cx24113_state, ptr %state, i32 0, i32 2
  %23 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 67, i8 %24)
  %cmp = icmp eq i8 %24, 67
  br i1 %cmp, label %land.lhs.true, label %cx24113_readreg.exit.if.end_crit_edge

cx24113_readreg.exit.if.end_crit_edge:            ; preds = %cx24113_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %cx24113_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %vcodiv = getelementptr inbounds %struct.cx24113_state, ptr %state, i32 0, i32 9
  %25 = ptrtoint ptr %vcodiv to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vcodiv, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp4 = icmp eq i8 %26, 4
  %spec.select = select i1 %cmp4, i8 1, i8 %high
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %cx24113_readreg.exit.if.end_crit_edge
  %high.addr.0 = phi i8 [ %high, %cx24113_readreg.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %27 = trunc i32 %retval.0.i to i8
  %conv7 = and i8 %27, -3
  %shl = shl i8 %high.addr.0, 1
  %xtal.0 = or i8 %shl, %conv7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #7
  %28 = getelementptr inbounds [2 x i8], ptr %buf.i1, i32 0, i32 1
  %29 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %buf.i1, align 1
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %xtal.0, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #7
  %31 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %31, align 4
  %33 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %conv2.i = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv2.i, ptr %msg.i2, align 4
  %flags.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i4 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i4, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %39 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i1, ptr %buf3.i, align 4
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 4
  %call.i6 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6)
  %cmp.not.i7 = icmp eq i32 %call.i6, 1
  br i1 %cmp.not.i7, label %if.end.cx24113_writereg.exit_crit_edge, label %do.end.i8

if.end.cx24113_writereg.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit

do.end.i8:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv13 = zext i8 %xtal.0 to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i6, i32 noundef 2, i32 noundef %conv13) #10
  br label %cx24113_writereg.exit

cx24113_writereg.exit:                            ; preds = %do.end.i8, %if.end.cx24113_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24113_set_bandwidth(ptr nocapture noundef readonly %state, i32 noundef %bandwidth_khz) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 19001, i32 %bandwidth_khz)
  %cmp = icmp ult i32 %bandwidth_khz, 19001
  call void @__sanitizer_cov_trace_const_cmp4(i32 25001, i32 %bandwidth_khz)
  %cmp1 = icmp ult i32 %bandwidth_khz, 25001
  %. = select i1 %cmp1, i32 128, i32 64
  %r.0 = select i1 %cmp, i32 192, i32 %.
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end14.thread, label %do.end14

do.end14.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mul1 = mul i32 %bandwidth_khz, 10
  %sub2 = add i32 %mul1, -10000
  %div3 = udiv i32 %sub2, 1000
  %add4 = add nuw nsw i32 %div3, 5
  %div155 = udiv i32 %add4, 10
  br label %do.end31

do.end14:                                         ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.35) #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %bandwidth_khz) #10
  %.pr = load i32, ptr @debug, align 4
  %mul = mul i32 %bandwidth_khz, 10
  %sub = add i32 %mul, -10000
  %div = udiv i32 %sub, 1000
  %add = add nuw nsw i32 %div, 5
  %div15 = udiv i32 %add, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool17.not = icmp eq i32 %.pr, 0
  br i1 %tobool17.not, label %do.end14.do.end31_crit_edge, label %do.end21

do.end14.do.end31_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31

do.end21:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.35) #10
  %1 = lshr exact i32 %r.0, 6
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %1, i32 noundef %div15) #10
  br label %do.end31

do.end31:                                         ; preds = %do.end21, %do.end14.do.end31_crit_edge, %do.end14.thread
  %div157 = phi i32 [ %div155, %do.end14.thread ], [ %div15, %do.end21 ], [ %div15, %do.end14.do.end31_crit_edge ]
  %and = and i32 %div157, 63
  %or = or i32 %and, %r.0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 30, ptr %buf.i, align 1
  %conv1.i = trunc i32 %or to i8
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1.i, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.cx24113_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
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
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.end31.cx24113_writereg.exit_crit_edge, label %do.end.i

do.end31.cx24113_writereg.exit_crit_edge:         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cx24113_writereg.exit

do.end.i:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i, i32 noundef 30, i32 noundef %or) #10
  br label %cx24113_writereg.exit

cx24113_writereg.exit:                            ; preds = %do.end.i, %do.end31.cx24113_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !43, !45, !47, !49, !50, !52, !54, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !76, !77, !78, !79, !80, !82, !83, !84, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !98, !99, !100, !102, !103, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !134, !135, !137, !138, !139, !140, !141, !142}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 500, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx24113_agc_callback._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx24113_agc_callback._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cx24113_agc_callback._entry.3, !1, !"_entry", i1 false, i1 false}
!8 = !{ptr @cx24113_agc_callback._entry_ptr.5, !1, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_cx24113_agc_callback, !10, !"__ksymtab_cx24113_agc_callback", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 507, i32 1}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 555, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cx24113_attach._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @cx24113_attach._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 563, i32 3}
!18 = !{ptr @cx24113_attach._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cx24113_attach._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 570, i32 3}
!22 = !{ptr @cx24113_attach._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cx24113_attach._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 573, i32 3}
!26 = !{ptr @cx24113_attach._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cx24113_attach._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 576, i32 3}
!30 = !{ptr @cx24113_attach._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cx24113_attach._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 580, i32 2}
!34 = !{ptr @cx24113_attach._entry.20, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cx24113_attach._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @__ksymtab_cx24113_attach, !37, !"__ksymtab_cx24113_attach", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 593, i32 1}
!38 = !{ptr @__param_debug, !39, !"__param_debug", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 595, i32 1}
!40 = !{ptr @__UNIQUE_ID_debugtype290, !39, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_debug291, !42, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 596, i32 1}
!43 = !{ptr @__UNIQUE_ID_author292, !44, !"__UNIQUE_ID_author292", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 598, i32 1}
!45 = !{ptr @__UNIQUE_ID_description293, !46, !"__UNIQUE_ID_description293", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 599, i32 1}
!47 = !{ptr @__UNIQUE_ID_file294, !48, !"__UNIQUE_ID_file294", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 600, i32 1}
!49 = !{ptr @__UNIQUE_ID_license295, !48, !"__UNIQUE_ID_license295", i1 false, i1 false}
!50 = !{ptr @debug, !51, !"debug", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 18, i32 12}
!52 = !{ptr @cx24113_agc_table, !53, !"cx24113_agc_table", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 484, i32 11}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 195, i32 2}
!56 = !{ptr @cx24113_set_gain_settings._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cx24113_set_gain_settings._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cx24113_set_gain_settings._entry.24, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @cx24113_set_gain_settings._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 97, i32 3}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cx24113_writereg._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @cx24113_writereg._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 119, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @cx24113_readreg._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @cx24113_readreg._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @cx24113_tuner_ops, !72, !"cx24113_tuner_ops", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 524, i32 35}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 519, i32 2}
!75 = !{ptr @cx24113_release._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cx24113_release._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cx24113_release._entry.32, !74, !"_entry", i1 false, i1 false}
!79 = !{ptr @cx24113_release._entry_ptr.34, !74, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 251, i32 2}
!82 = !{ptr @cx24113_set_bandwidth._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @cx24113_set_bandwidth._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cx24113_set_bandwidth._entry.36, !81, !"_entry", i1 false, i1 false}
!86 = !{ptr @cx24113_set_bandwidth._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @cx24113_set_bandwidth._entry.39, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 258, i32 2}
!89 = !{ptr @cx24113_set_bandwidth._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cx24113_set_bandwidth._entry.41, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @cx24113_set_bandwidth._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 393, i32 2}
!95 = !{ptr @cx24113_set_frequency._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cx24113_set_frequency._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cx24113_set_frequency._entry.45, !94, !"_entry", i1 false, i1 false}
!99 = !{ptr @cx24113_set_frequency._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 316, i32 2}
!102 = !{ptr @cx24113_calc_pll_nf._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cx24113_calc_pll_nf._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @cx24113_calc_pll_nf._entry.49, !101, !"_entry", i1 false, i1 false}
!106 = !{ptr @cx24113_calc_pll_nf._entry_ptr.51, !101, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 330, i32 3}
!109 = !{ptr @cx24113_calc_pll_nf._entry.52, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cx24113_calc_pll_nf._entry_ptr.54, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @cx24113_calc_pll_nf._entry.55, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 335, i32 2}
!113 = !{ptr @cx24113_calc_pll_nf._entry_ptr.56, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @cx24113_calc_pll_nf._entry.57, !112, !"_entry", i1 false, i1 false}
!116 = !{ptr @cx24113_calc_pll_nf._entry_ptr.59, !112, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @cx24113_calc_pll_nf._entry.60, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 340, i32 2}
!119 = !{ptr @cx24113_calc_pll_nf._entry_ptr.61, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cx24113_calc_pll_nf._entry.62, !118, !"_entry", i1 false, i1 false}
!122 = !{ptr @cx24113_calc_pll_nf._entry_ptr.64, !118, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @cx24113_calc_pll_nf._entry.65, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 343, i32 2}
!125 = !{ptr @cx24113_calc_pll_nf._entry_ptr.66, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.68, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cx24113_calc_pll_nf._entry.67, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @cx24113_calc_pll_nf._entry_ptr.69, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @cx24113_calc_pll_nf._entry.70, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 356, i32 2}
!131 = !{ptr @cx24113_calc_pll_nf._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @cx24113_calc_pll_nf._entry.72, !130, !"_entry", i1 false, i1 false}
!134 = !{ptr @cx24113_calc_pll_nf._entry_ptr.74, !130, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/cx24113.c", i32 277, i32 2}
!137 = !{ptr @cx24113_get_status._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @cx24113_get_status._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @cx24113_get_status._entry.76, !136, !"_entry", i1 false, i1 false}
!141 = !{ptr @cx24113_get_status._entry_ptr.78, !136, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @__param_str_debug, !39, !"__param_str_debug", i1 false, i1 false}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 2148442404, i64 2148442684, i64 2148443018, i64 2148443352}
