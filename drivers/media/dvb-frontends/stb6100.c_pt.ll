; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stb6100.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stb6100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+stb6100_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stb6100_attach\09\09\09\09"
module asm "\09.long\09__crc_stb6100_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stb6100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stb6100_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stb6100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.stb6100_lkup = type { i32, i32, i8 }
%struct.stb6100_regmask = type { i8, i8 }
%struct.stb6100_state = type { ptr, ptr, %struct.dvb_tuner_ops, ptr, i32, i32, i32, i32 }
%struct.stb6100_config = type { i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_verbose = internal constant [16 x i8] c"stb6100.verbose\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose = internal constant %struct.kernel_param { ptr @__param_str_verbose, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @verbose } }, section "__param", align 4
@__UNIQUE_ID_verbosetype290 = internal constant [29 x i8] c"stb6100.parmtype=verbose:int\00", section ".modinfo", align 1
@stb6100_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"STB6100 Silicon Tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @stb6100_release, ptr @stb6100_init, ptr @stb6100_sleep, ptr null, ptr null, ptr @stb6100_set_params, ptr null, ptr null, ptr @stb6100_get_frequency, ptr @stb6100_get_bandwidth, ptr null, ptr @stb6100_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stb6100_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Attaching STB6100 \0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6100_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/stb6100.c\00", [58 x i8] zeroinitializer }, align 32
@stb6100_attach._entry_ptr = internal global ptr @stb6100_attach._entry, section ".printk_index", align 4
@__kstrtab_stb6100_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stb6100_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stb6100_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stb6100_attach to i32), ptr @__kstrtab_stb6100_attach, ptr @__kstrtabns_stb6100_attach }, section "___ksymtab+stb6100_attach", align 4
@__UNIQUE_ID_verbose291 = internal constant [41 x i8] c"stb6100.parm=verbose:Set Verbosity level\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [28 x i8] c"stb6100.author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [42 x i8] c"stb6100.description=STB6100 Silicon tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"stb6100.file=drivers/media/dvb-frontends/stb6100\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"stb6100.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@stb6100_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Version 2010-8-14 13:51\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr = internal global ptr @stb6100_set_frequency._entry, section ".printk_index", align 4
@stb6100_set_frequency._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s: Version 2010-8-14 13:51\0A\00", [33 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.7 = internal global ptr @stb6100_set_frequency._entry.5, section ".printk_index", align 4
@stb6100_set_frequency._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Version 2010-8-14 13:51\0A\00", [33 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.10 = internal global ptr @stb6100_set_frequency._entry.8, section ".printk_index", align 4
@stb6100_set_frequency._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Version 2010-8-14 13:51\0A\00", [33 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.13 = internal global ptr @stb6100_set_frequency._entry.11, section ".printk_index", align 4
@stb6100_set_frequency._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Get frontend parameters\0A\00", [33 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.16 = internal global ptr @stb6100_set_frequency._entry.14, section ".printk_index", align 4
@stb6100_set_frequency._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015%s: Get frontend parameters\0A\00", [33 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.19 = internal global ptr @stb6100_set_frequency._entry.17, section ".printk_index", align 4
@stb6100_set_frequency._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Get frontend parameters\0A\00", [33 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.22 = internal global ptr @stb6100_set_frequency._entry.20, section ".printk_index", align 4
@stb6100_set_frequency._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: Get frontend parameters\0A\00", [33 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.25 = internal global ptr @stb6100_set_frequency._entry.23, section ".printk_index", align 4
@lkup = internal constant { [14 x %struct.stb6100_lkup], [56 x i8] } { [14 x %struct.stb6100_lkup] [%struct.stb6100_lkup { i32 0, i32 950000, i8 10 }, %struct.stb6100_lkup { i32 950000, i32 1000000, i8 10 }, %struct.stb6100_lkup { i32 1000000, i32 1075000, i8 12 }, %struct.stb6100_lkup { i32 1075000, i32 1200000, i8 0 }, %struct.stb6100_lkup { i32 1200000, i32 1300000, i8 1 }, %struct.stb6100_lkup { i32 1300000, i32 1370000, i8 2 }, %struct.stb6100_lkup { i32 1370000, i32 1470000, i8 4 }, %struct.stb6100_lkup { i32 1470000, i32 1530000, i8 5 }, %struct.stb6100_lkup { i32 1530000, i32 1650000, i8 6 }, %struct.stb6100_lkup { i32 1650000, i32 1800000, i8 8 }, %struct.stb6100_lkup { i32 1800000, i32 1950000, i8 10 }, %struct.stb6100_lkup { i32 1950000, i32 2150000, i8 12 }, %struct.stb6100_lkup { i32 2150000, i32 9999999, i8 12 }, %struct.stb6100_lkup zeroinitializer], [56 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: frequency out of range: %u kHz\0A\00", [58 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.28 = internal global ptr @stb6100_set_frequency._entry.26, section ".printk_index", align 4
@stb6100_set_frequency._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"\013%s: frequency = %u, srate = %u, g = %u, odiv = %u, psd2 = %u, fxtal = %u, osm = %u, fvco = %u, N(I) = %u, N(F) = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.31 = internal global ptr @stb6100_set_frequency._entry.29, section ".printk_index", align 4
@stb6100_set_frequency._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"\015%s: frequency = %u, srate = %u, g = %u, odiv = %u, psd2 = %u, fxtal = %u, osm = %u, fvco = %u, N(I) = %u, N(F) = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.34 = internal global ptr @stb6100_set_frequency._entry.32, section ".printk_index", align 4
@stb6100_set_frequency._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"\016%s: frequency = %u, srate = %u, g = %u, odiv = %u, psd2 = %u, fxtal = %u, osm = %u, fvco = %u, N(I) = %u, N(F) = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.37 = internal global ptr @stb6100_set_frequency._entry.35, section ".printk_index", align 4
@stb6100_set_frequency._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.4, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"\017%s: frequency = %u, srate = %u, g = %u, odiv = %u, psd2 = %u, fxtal = %u, osm = %u, fvco = %u, N(I) = %u, N(F) = %u\0A\00", [41 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr.40 = internal global ptr @stb6100_set_frequency._entry.38, section ".printk_index", align 4
@stb6100_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Invalid register offset 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stb6100_write_reg\00", [46 x i8] zeroinitializer }, align 32
@stb6100_write_reg._entry_ptr = internal global ptr @stb6100_write_reg._entry, section ".printk_index", align 4
@stb6100_write_reg._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s: Invalid register offset 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@stb6100_write_reg._entry_ptr.45 = internal global ptr @stb6100_write_reg._entry.43, section ".printk_index", align 4
@stb6100_write_reg._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: Invalid register offset 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@stb6100_write_reg._entry_ptr.48 = internal global ptr @stb6100_write_reg._entry.46, section ".printk_index", align 4
@stb6100_write_reg._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Invalid register offset 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@stb6100_write_reg._entry_ptr.51 = internal global ptr @stb6100_write_reg._entry.49, section ".printk_index", align 4
@stb6100_template = internal constant { [12 x %struct.stb6100_regmask], [40 x i8] } { [12 x %struct.stb6100_regmask] [%struct.stb6100_regmask { i8 -1, i8 0 }, %struct.stb6100_regmask { i8 -1, i8 0 }, %struct.stb6100_regmask { i8 -1, i8 0 }, %struct.stb6100_regmask { i8 -1, i8 0 }, %struct.stb6100_regmask { i8 -57, i8 56 }, %struct.stb6100_regmask { i8 -17, i8 16 }, %struct.stb6100_regmask { i8 31, i8 -64 }, %struct.stb6100_regmask { i8 56, i8 -60 }, %struct.stb6100_regmask { i8 0, i8 -113 }, %struct.stb6100_regmask { i8 64, i8 13 }, %struct.stb6100_regmask { i8 -16, i8 11 }, %struct.stb6100_regmask { i8 0, i8 -34 }], [40 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: i2c wr: len=%d is too big!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stb6100_write_reg_range\00", [40 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr = internal global ptr @stb6100_write_reg_range._entry, section ".printk_index", align 4
@stb6100_write_reg_range._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.53, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Invalid register range %d:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.57 = internal global ptr @stb6100_write_reg_range._entry.55, section ".printk_index", align 4
@stb6100_write_reg_range._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.53, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015%s: Invalid register range %d:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.60 = internal global ptr @stb6100_write_reg_range._entry.58, section ".printk_index", align 4
@stb6100_write_reg_range._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.53, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: Invalid register range %d:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.63 = internal global ptr @stb6100_write_reg_range._entry.61, section ".printk_index", align 4
@stb6100_write_reg_range._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.53, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Invalid register range %d:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.66 = internal global ptr @stb6100_write_reg_range._entry.64, section ".printk_index", align 4
@stb6100_write_reg_range._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.53, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s:     Write @ 0x%02x: [%d:%d]\0A\00", [61 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.69 = internal global ptr @stb6100_write_reg_range._entry.67, section ".printk_index", align 4
@stb6100_write_reg_range._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.53, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015%s:     Write @ 0x%02x: [%d:%d]\0A\00", [61 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.72 = internal global ptr @stb6100_write_reg_range._entry.70, section ".printk_index", align 4
@stb6100_write_reg_range._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.53, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s:     Write @ 0x%02x: [%d:%d]\0A\00", [61 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.75 = internal global ptr @stb6100_write_reg_range._entry.73, section ".printk_index", align 4
@stb6100_write_reg_range._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.53, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s:     Write @ 0x%02x: [%d:%d]\0A\00", [61 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.78 = internal global ptr @stb6100_write_reg_range._entry.76, section ".printk_index", align 4
@stb6100_write_reg_range._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.53, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s:         %s: 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.81 = internal global ptr @stb6100_write_reg_range._entry.79, section ".printk_index", align 4
@stb6100_regnames = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], [48 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.53, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\015%s:         %s: 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.84 = internal global ptr @stb6100_write_reg_range._entry.82, section ".printk_index", align 4
@stb6100_write_reg_range._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.53, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:         %s: 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.87 = internal global ptr @stb6100_write_reg_range._entry.85, section ".printk_index", align 4
@stb6100_write_reg_range._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.53, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:         %s: 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.90 = internal global ptr @stb6100_write_reg_range._entry.88, section ".printk_index", align 4
@stb6100_write_reg_range._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.53, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: (0x%x) write err [%d:%d], rc=[%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.93 = internal global ptr @stb6100_write_reg_range._entry.91, section ".printk_index", align 4
@stb6100_write_reg_range._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.53, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015%s: (0x%x) write err [%d:%d], rc=[%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.96 = internal global ptr @stb6100_write_reg_range._entry.94, section ".printk_index", align 4
@stb6100_write_reg_range._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.53, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: (0x%x) write err [%d:%d], rc=[%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.99 = internal global ptr @stb6100_write_reg_range._entry.97, section ".printk_index", align 4
@stb6100_write_reg_range._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.53, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: (0x%x) write err [%d:%d], rc=[%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@stb6100_write_reg_range._entry_ptr.102 = internal global ptr @stb6100_write_reg_range._entry.100, section ".printk_index", align 4
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LD\00", [29 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCO\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NI\00", [29 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NF\00", [29 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"K\00", [30 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"G\00", [30 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"F\00", [30 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DLB\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TEST1\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FCCK\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LPEN\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TEST3\00", [26 x i8] zeroinitializer }, align 32
@stb6100_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: set bandwidth to %u Hz\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_set_bandwidth._entry_ptr = internal global ptr @stb6100_set_bandwidth._entry, section ".printk_index", align 4
@stb6100_set_bandwidth._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s: set bandwidth to %u Hz\0A\00", [34 x i8] zeroinitializer }, align 32
@stb6100_set_bandwidth._entry_ptr.119 = internal global ptr @stb6100_set_bandwidth._entry.117, section ".printk_index", align 4
@stb6100_set_bandwidth._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: set bandwidth to %u Hz\0A\00", [34 x i8] zeroinitializer }, align 32
@stb6100_set_bandwidth._entry_ptr.122 = internal global ptr @stb6100_set_bandwidth._entry.120, section ".printk_index", align 4
@stb6100_set_bandwidth._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: set bandwidth to %u Hz\0A\00", [34 x i8] zeroinitializer }, align 32
@stb6100_set_bandwidth._entry_ptr.125 = internal global ptr @stb6100_set_bandwidth._entry.123, section ".printk_index", align 4
@stb6100_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013%s: frequency = %u kHz, odiv = %u, psd2 = %u, fxtal = %u kHz, fvco = %u kHz, N(I) = %u, N(F) = %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_frequency\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_frequency._entry_ptr = internal global ptr @stb6100_get_frequency._entry, section ".printk_index", align 4
@stb6100_get_frequency._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\015%s: frequency = %u kHz, odiv = %u, psd2 = %u, fxtal = %u kHz, fvco = %u kHz, N(I) = %u, N(F) = %u\0A\00", [59 x i8] zeroinitializer }, align 32
@stb6100_get_frequency._entry_ptr.130 = internal global ptr @stb6100_get_frequency._entry.128, section ".printk_index", align 4
@stb6100_get_frequency._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.127, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\016%s: frequency = %u kHz, odiv = %u, psd2 = %u, fxtal = %u kHz, fvco = %u kHz, N(I) = %u, N(F) = %u\0A\00", [59 x i8] zeroinitializer }, align 32
@stb6100_get_frequency._entry_ptr.133 = internal global ptr @stb6100_get_frequency._entry.131, section ".printk_index", align 4
@stb6100_get_frequency._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.127, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\017%s: frequency = %u kHz, odiv = %u, psd2 = %u, fxtal = %u kHz, fvco = %u kHz, N(I) = %u, N(F) = %u\0A\00", [59 x i8] zeroinitializer }, align 32
@stb6100_get_frequency._entry_ptr.136 = internal global ptr @stb6100_get_frequency._entry.134, section ".printk_index", align 4
@stb6100_read_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: Read (0x%x) err, rc=[%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stb6100_read_regs\00", [46 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr = internal global ptr @stb6100_read_regs._entry, section ".printk_index", align 4
@stb6100_read_regs._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015%s: Read (0x%x) err, rc=[%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.141 = internal global ptr @stb6100_read_regs._entry.139, section ".printk_index", align 4
@stb6100_read_regs._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.138, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Read (0x%x) err, rc=[%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.144 = internal global ptr @stb6100_read_regs._entry.142, section ".printk_index", align 4
@stb6100_read_regs._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.138, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Read (0x%x) err, rc=[%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.147 = internal global ptr @stb6100_read_regs._entry.145, section ".printk_index", align 4
@stb6100_read_regs._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.138, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s:     Read from 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.150 = internal global ptr @stb6100_read_regs._entry.148, section ".printk_index", align 4
@stb6100_read_regs._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.138, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\015%s:     Read from 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.153 = internal global ptr @stb6100_read_regs._entry.151, section ".printk_index", align 4
@stb6100_read_regs._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.138, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s:     Read from 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.156 = internal global ptr @stb6100_read_regs._entry.154, section ".printk_index", align 4
@stb6100_read_regs._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.138, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s:     Read from 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.159 = internal global ptr @stb6100_read_regs._entry.157, section ".printk_index", align 4
@stb6100_read_regs._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.138, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.161 = internal global ptr @stb6100_read_regs._entry.160, section ".printk_index", align 4
@stb6100_read_regs._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.138, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.163 = internal global ptr @stb6100_read_regs._entry.162, section ".printk_index", align 4
@stb6100_read_regs._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.138, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.165 = internal global ptr @stb6100_read_regs._entry.164, section ".printk_index", align 4
@stb6100_read_regs._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.138, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_regs._entry_ptr.167 = internal global ptr @stb6100_read_regs._entry.166, section ".printk_index", align 4
@stb6100_get_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: bandwidth = %u Hz\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_bandwidth._entry_ptr = internal global ptr @stb6100_get_bandwidth._entry, section ".printk_index", align 4
@stb6100_get_bandwidth._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015%s: bandwidth = %u Hz\0A\00", [39 x i8] zeroinitializer }, align 32
@stb6100_get_bandwidth._entry_ptr.172 = internal global ptr @stb6100_get_bandwidth._entry.170, section ".printk_index", align 4
@stb6100_get_bandwidth._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.169, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: bandwidth = %u Hz\0A\00", [39 x i8] zeroinitializer }, align 32
@stb6100_get_bandwidth._entry_ptr.175 = internal global ptr @stb6100_get_bandwidth._entry.173, section ".printk_index", align 4
@stb6100_get_bandwidth._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.169, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: bandwidth = %u Hz\0A\00", [39 x i8] zeroinitializer }, align 32
@stb6100_get_bandwidth._entry_ptr.178 = internal global ptr @stb6100_get_bandwidth._entry.176, section ".printk_index", align 4
@stb6100_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.179, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stb6100_read_reg\00", [47 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr = internal global ptr @stb6100_read_reg._entry, section ".printk_index", align 4
@stb6100_read_reg._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.179, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.181 = internal global ptr @stb6100_read_reg._entry.180, section ".printk_index", align 4
@stb6100_read_reg._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.179, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.183 = internal global ptr @stb6100_read_reg._entry.182, section ".printk_index", align 4
@stb6100_read_reg._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.179, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.185 = internal global ptr @stb6100_read_reg._entry.184, section ".printk_index", align 4
@stb6100_read_reg._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.179, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.187 = internal global ptr @stb6100_read_reg._entry.186, section ".printk_index", align 4
@stb6100_read_reg._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.179, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.189 = internal global ptr @stb6100_read_reg._entry.188, section ".printk_index", align 4
@stb6100_read_reg._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.179, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.191 = internal global ptr @stb6100_read_reg._entry.190, section ".printk_index", align 4
@stb6100_read_reg._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.179, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.193 = internal global ptr @stb6100_read_reg._entry.192, section ".printk_index", align 4
@stb6100_read_reg._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.179, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.195 = internal global ptr @stb6100_read_reg._entry.194, section ".printk_index", align 4
@stb6100_read_reg._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.179, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.197 = internal global ptr @stb6100_read_reg._entry.196, section ".printk_index", align 4
@stb6100_read_reg._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.179, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.199 = internal global ptr @stb6100_read_reg._entry.198, section ".printk_index", align 4
@stb6100_read_reg._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.179, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@stb6100_read_reg._entry_ptr.201 = internal global ptr @stb6100_read_reg._entry.200, section ".printk_index", align 4
@stb6100_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: %s failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stb6100_get_status\00", [45 x i8] zeroinitializer }, align 32
@stb6100_get_status._entry_ptr = internal global ptr @stb6100_get_status._entry, section ".printk_index", align 4
@stb6100_get_status._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.203, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\015%s: %s failed\0A\00", [47 x i8] zeroinitializer }, align 32
@stb6100_get_status._entry_ptr.206 = internal global ptr @stb6100_get_status._entry.204, section ".printk_index", align 4
@stb6100_get_status._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.203, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: %s failed\0A\00", [47 x i8] zeroinitializer }, align 32
@stb6100_get_status._entry_ptr.209 = internal global ptr @stb6100_get_status._entry.207, section ".printk_index", align 4
@stb6100_get_status._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.203, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: %s failed\0A\00", [47 x i8] zeroinitializer }, align 32
@stb6100_get_status._entry_ptr.212 = internal global ptr @stb6100_get_status._entry.210, section ".printk_index", align 4
@___asan_gen_.213 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 19, i32 21 }
@___asan_gen_.216 = private unnamed_addr constant [12 x i8] c"stb6100_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 515, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 548, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 335, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 338, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [5 x i8] c"lkup\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 54, i32 34 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 371, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 433, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 220, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"stb6100_template\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 95, i32 37 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 185, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 192, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 202, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant [17 x i8] c"stb6100_regnames\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 72, i32 20 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 204, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 208, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 73, i32 18 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 74, i32 19 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 75, i32 18 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 76, i32 21 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 77, i32 17 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 78, i32 17 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 79, i32 17 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 80, i32 19 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 81, i32 21 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 82, i32 20 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 83, i32 20 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 84, i32 21 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 266, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 317, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 133, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 141, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 143, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 256, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 162, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 166, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 167, i32 3 }
@___asan_gen_.693 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.696 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.697 = private constant [41 x i8] c"../drivers/media/dvb-frontends/stb6100.c\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.697, i32 235, i32 3 }
@llvm.compiler.used = appending global [245 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__UNIQUE_ID_verbose291, ptr @__UNIQUE_ID_verbosetype290, ptr @__ksymtab_stb6100_attach, ptr @__param_verbose, ptr @stb6100_attach._entry, ptr @stb6100_attach._entry_ptr, ptr @stb6100_get_bandwidth._entry, ptr @stb6100_get_bandwidth._entry.170, ptr @stb6100_get_bandwidth._entry.173, ptr @stb6100_get_bandwidth._entry.176, ptr @stb6100_get_bandwidth._entry_ptr, ptr @stb6100_get_bandwidth._entry_ptr.172, ptr @stb6100_get_bandwidth._entry_ptr.175, ptr @stb6100_get_bandwidth._entry_ptr.178, ptr @stb6100_get_frequency._entry, ptr @stb6100_get_frequency._entry.128, ptr @stb6100_get_frequency._entry.131, ptr @stb6100_get_frequency._entry.134, ptr @stb6100_get_frequency._entry_ptr, ptr @stb6100_get_frequency._entry_ptr.130, ptr @stb6100_get_frequency._entry_ptr.133, ptr @stb6100_get_frequency._entry_ptr.136, ptr @stb6100_get_status._entry, ptr @stb6100_get_status._entry.204, ptr @stb6100_get_status._entry.207, ptr @stb6100_get_status._entry.210, ptr @stb6100_get_status._entry_ptr, ptr @stb6100_get_status._entry_ptr.206, ptr @stb6100_get_status._entry_ptr.209, ptr @stb6100_get_status._entry_ptr.212, ptr @stb6100_read_reg._entry, ptr @stb6100_read_reg._entry.180, ptr @stb6100_read_reg._entry.182, ptr @stb6100_read_reg._entry.184, ptr @stb6100_read_reg._entry.186, ptr @stb6100_read_reg._entry.188, ptr @stb6100_read_reg._entry.190, ptr @stb6100_read_reg._entry.192, ptr @stb6100_read_reg._entry.194, ptr @stb6100_read_reg._entry.196, ptr @stb6100_read_reg._entry.198, ptr @stb6100_read_reg._entry.200, ptr @stb6100_read_reg._entry_ptr, ptr @stb6100_read_reg._entry_ptr.181, ptr @stb6100_read_reg._entry_ptr.183, ptr @stb6100_read_reg._entry_ptr.185, ptr @stb6100_read_reg._entry_ptr.187, ptr @stb6100_read_reg._entry_ptr.189, ptr @stb6100_read_reg._entry_ptr.191, ptr @stb6100_read_reg._entry_ptr.193, ptr @stb6100_read_reg._entry_ptr.195, ptr @stb6100_read_reg._entry_ptr.197, ptr @stb6100_read_reg._entry_ptr.199, ptr @stb6100_read_reg._entry_ptr.201, ptr @stb6100_read_regs._entry, ptr @stb6100_read_regs._entry.139, ptr @stb6100_read_regs._entry.142, ptr @stb6100_read_regs._entry.145, ptr @stb6100_read_regs._entry.148, ptr @stb6100_read_regs._entry.151, ptr @stb6100_read_regs._entry.154, ptr @stb6100_read_regs._entry.157, ptr @stb6100_read_regs._entry.160, ptr @stb6100_read_regs._entry.162, ptr @stb6100_read_regs._entry.164, ptr @stb6100_read_regs._entry.166, ptr @stb6100_read_regs._entry_ptr, ptr @stb6100_read_regs._entry_ptr.141, ptr @stb6100_read_regs._entry_ptr.144, ptr @stb6100_read_regs._entry_ptr.147, ptr @stb6100_read_regs._entry_ptr.150, ptr @stb6100_read_regs._entry_ptr.153, ptr @stb6100_read_regs._entry_ptr.156, ptr @stb6100_read_regs._entry_ptr.159, ptr @stb6100_read_regs._entry_ptr.161, ptr @stb6100_read_regs._entry_ptr.163, ptr @stb6100_read_regs._entry_ptr.165, ptr @stb6100_read_regs._entry_ptr.167, ptr @stb6100_set_bandwidth._entry, ptr @stb6100_set_bandwidth._entry.117, ptr @stb6100_set_bandwidth._entry.120, ptr @stb6100_set_bandwidth._entry.123, ptr @stb6100_set_bandwidth._entry_ptr, ptr @stb6100_set_bandwidth._entry_ptr.119, ptr @stb6100_set_bandwidth._entry_ptr.122, ptr @stb6100_set_bandwidth._entry_ptr.125, ptr @stb6100_set_frequency._entry, ptr @stb6100_set_frequency._entry.11, ptr @stb6100_set_frequency._entry.14, ptr @stb6100_set_frequency._entry.17, ptr @stb6100_set_frequency._entry.20, ptr @stb6100_set_frequency._entry.23, ptr @stb6100_set_frequency._entry.26, ptr @stb6100_set_frequency._entry.29, ptr @stb6100_set_frequency._entry.32, ptr @stb6100_set_frequency._entry.35, ptr @stb6100_set_frequency._entry.38, ptr @stb6100_set_frequency._entry.5, ptr @stb6100_set_frequency._entry.8, ptr @stb6100_set_frequency._entry_ptr, ptr @stb6100_set_frequency._entry_ptr.10, ptr @stb6100_set_frequency._entry_ptr.13, ptr @stb6100_set_frequency._entry_ptr.16, ptr @stb6100_set_frequency._entry_ptr.19, ptr @stb6100_set_frequency._entry_ptr.22, ptr @stb6100_set_frequency._entry_ptr.25, ptr @stb6100_set_frequency._entry_ptr.28, ptr @stb6100_set_frequency._entry_ptr.31, ptr @stb6100_set_frequency._entry_ptr.34, ptr @stb6100_set_frequency._entry_ptr.37, ptr @stb6100_set_frequency._entry_ptr.40, ptr @stb6100_set_frequency._entry_ptr.7, ptr @stb6100_write_reg._entry, ptr @stb6100_write_reg._entry.43, ptr @stb6100_write_reg._entry.46, ptr @stb6100_write_reg._entry.49, ptr @stb6100_write_reg._entry_ptr, ptr @stb6100_write_reg._entry_ptr.45, ptr @stb6100_write_reg._entry_ptr.48, ptr @stb6100_write_reg._entry_ptr.51, ptr @stb6100_write_reg_range._entry, ptr @stb6100_write_reg_range._entry.100, ptr @stb6100_write_reg_range._entry.55, ptr @stb6100_write_reg_range._entry.58, ptr @stb6100_write_reg_range._entry.61, ptr @stb6100_write_reg_range._entry.64, ptr @stb6100_write_reg_range._entry.67, ptr @stb6100_write_reg_range._entry.70, ptr @stb6100_write_reg_range._entry.73, ptr @stb6100_write_reg_range._entry.76, ptr @stb6100_write_reg_range._entry.79, ptr @stb6100_write_reg_range._entry.82, ptr @stb6100_write_reg_range._entry.85, ptr @stb6100_write_reg_range._entry.88, ptr @stb6100_write_reg_range._entry.91, ptr @stb6100_write_reg_range._entry.94, ptr @stb6100_write_reg_range._entry.97, ptr @stb6100_write_reg_range._entry_ptr, ptr @stb6100_write_reg_range._entry_ptr.102, ptr @stb6100_write_reg_range._entry_ptr.57, ptr @stb6100_write_reg_range._entry_ptr.60, ptr @stb6100_write_reg_range._entry_ptr.63, ptr @stb6100_write_reg_range._entry_ptr.66, ptr @stb6100_write_reg_range._entry_ptr.69, ptr @stb6100_write_reg_range._entry_ptr.72, ptr @stb6100_write_reg_range._entry_ptr.75, ptr @stb6100_write_reg_range._entry_ptr.78, ptr @stb6100_write_reg_range._entry_ptr.81, ptr @stb6100_write_reg_range._entry_ptr.84, ptr @stb6100_write_reg_range._entry_ptr.87, ptr @stb6100_write_reg_range._entry_ptr.90, ptr @stb6100_write_reg_range._entry_ptr.93, ptr @stb6100_write_reg_range._entry_ptr.96, ptr @stb6100_write_reg_range._entry_ptr.99, ptr @verbose, ptr @stb6100_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @lkup, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @stb6100_template, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @stb6100_regnames, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.179, ptr @.str.202, ptr @.str.203, ptr @.str.205, ptr @.str.208, ptr @.str.211], section "llvm.metadata"
@0 = internal global [162 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkup to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_template to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_regnames to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_write_reg_range._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandwidth._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandwidth._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandwidth._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_frequency._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_frequency._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_frequency._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_regs._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandwidth._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandwidth._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandwidth._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_read_reg._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_status._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_status._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_status._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stb6100_attach(ptr noundef %fe, ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 248) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %config1 = getelementptr inbounds %struct.stb6100_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %frontend = getelementptr inbounds %struct.stb6100_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %frontend to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fe, ptr %frontend, align 4
  %refclock = getelementptr inbounds %struct.stb6100_config, ptr %config, i32 0, i32 1
  %4 = ptrtoint ptr %refclock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refclock, align 4
  %div = udiv i32 %5, 1000
  %reference = getelementptr inbounds %struct.stb6100_state, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %reference to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %reference, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %7 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %8 = call ptr @memcpy(ptr %tuner_ops, ptr @stb6100_ops, i32 220)
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stb6100_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stb6100_init(ptr nocapture noundef readonly %fe) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth = getelementptr inbounds %struct.stb6100_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 36000000, ptr %bandwidth, align 4
  %reference = getelementptr inbounds %struct.stb6100_state, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %reference to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 27000, ptr %reference, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stb6100_sleep(ptr nocapture noundef readnone %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_params(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv.i, align 4
  %4 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %switch.i = icmp ult i32 %4, 4
  br i1 %switch.i, label %if.then.do.end36.i_crit_edge, label %do.end.i

if.then.do.end36.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #11
  br label %do.end36.i

do.end36.i:                                       ; preds = %do.end.i, %if.then.do.end36.i_crit_edge
  %get_frontend.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 14
  %5 = ptrtoint ptr %get_frontend.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_frontend.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end36.i.if.end87.i_crit_edge, label %do.body38.i

do.end36.i.if.end87.i_crit_edge:                  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i

do.body38.i:                                      ; preds = %do.end36.i
  %7 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch14.i = icmp ult i32 %7, 4
  br i1 %switch14.i, label %do.body38.i.do.end83.i_crit_edge, label %do.end45.i

do.body38.i.do.end83.i_crit_edge:                 ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end83.i

do.end45.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #9
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4) #11
  br label %do.end83.i

do.end83.i:                                       ; preds = %do.end45.i, %do.body38.i.do.end83.i_crit_edge
  %8 = ptrtoint ptr %get_frontend.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_frontend.i, align 4
  %call86.i = tail call i32 %9(ptr noundef %fe, ptr noundef %dtv_property_cache) #7
  br label %if.end87.i

if.end87.i:                                       ; preds = %do.end83.i, %do.end36.i.if.end87.i_crit_edge
  %symbol_rate.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %10 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %symbol_rate.i, align 4
  %call88.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 9, i8 noundef zeroext 77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %cmp89.i = icmp slt i32 %call88.i, 0
  br i1 %cmp89.i, label %if.end87.i.if.end_crit_edge, label %if.end91.i

if.end87.i.if.end_crit_edge:                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end91.i:                                       ; preds = %if.end87.i
  %call93.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 10, i8 noundef zeroext -21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %cmp94.i = icmp slt i32 %call93.i, 0
  br i1 %cmp94.i, label %if.end91.i.if.end_crit_edge, label %if.end96.i

if.end91.i.if.end_crit_edge:                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end96.i:                                       ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1075001, i32 %1)
  %cmp97.i = icmp ult i32 %1, 1075001
  %..i = zext i1 %cmp97.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 950000, i32 %1)
  %cmp109.i = icmp ult i32 %1, 950000
  br i1 %cmp109.i, label %if.end96.i.if.end122.i_crit_edge, label %for.inc.i

if.end96.i.if.end122.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.i:                                        ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %1)
  %cmp109.1.i = icmp ult i32 %1, 1000000
  br i1 %cmp109.1.i, label %for.inc.i.if.end122.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end122.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1075000, i32 %1)
  %cmp109.2.i = icmp ult i32 %1, 1075000
  br i1 %cmp109.2.i, label %for.inc.1.i.if.end122.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end122.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %1)
  %cmp109.3.i = icmp ult i32 %1, 1200000
  br i1 %cmp109.3.i, label %for.inc.2.i.if.end122.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end122.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300000, i32 %1)
  %cmp109.4.i = icmp ult i32 %1, 1300000
  br i1 %cmp109.4.i, label %for.inc.3.i.if.end122.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end122.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1370000, i32 %1)
  %cmp109.5.i = icmp ult i32 %1, 1370000
  br i1 %cmp109.5.i, label %for.inc.4.i.if.end122.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end122.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1470000, i32 %1)
  %cmp109.6.i = icmp ult i32 %1, 1470000
  br i1 %cmp109.6.i, label %for.inc.5.i.if.end122.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end122.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1530000, i32 %1)
  %cmp109.7.i = icmp ult i32 %1, 1530000
  br i1 %cmp109.7.i, label %for.inc.6.i.if.end122.i_crit_edge, label %for.inc.7.i

for.inc.6.i.if.end122.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1650000, i32 %1)
  %cmp109.8.i = icmp ult i32 %1, 1650000
  br i1 %cmp109.8.i, label %for.inc.7.i.if.end122.i_crit_edge, label %for.inc.8.i

for.inc.7.i.if.end122.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.8.i:                                      ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %1)
  %cmp109.9.i = icmp ult i32 %1, 1800000
  br i1 %cmp109.9.i, label %for.inc.8.i.if.end122.i_crit_edge, label %for.inc.9.i

for.inc.8.i.if.end122.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.9.i:                                      ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950000, i32 %1)
  %cmp109.10.i = icmp ult i32 %1, 1950000
  br i1 %cmp109.10.i, label %for.inc.9.i.if.end122.i_crit_edge, label %for.inc.10.i

for.inc.9.i.if.end122.i_crit_edge:                ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.10.i:                                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2150000, i32 %1)
  %cmp109.11.i = icmp ult i32 %1, 2150000
  br i1 %cmp109.11.i, label %for.inc.10.i.if.end122.i_crit_edge, label %for.inc.11.i

for.inc.10.i.if.end122.i_crit_edge:               ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.11.i:                                     ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999999, i32 %1)
  %cmp109.12.i = icmp ult i32 %1, 9999999
  br i1 %cmp109.12.i, label %for.inc.11.i.if.end122.i_crit_edge, label %for.inc.12.i

for.inc.11.i.if.end122.i_crit_edge:               ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

for.inc.12.i:                                     ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call121.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.4, i32 noundef %1) #11
  br label %if.end

if.end122.i:                                      ; preds = %for.inc.11.i.if.end122.i_crit_edge, %for.inc.10.i.if.end122.i_crit_edge, %for.inc.9.i.if.end122.i_crit_edge, %for.inc.8.i.if.end122.i_crit_edge, %for.inc.7.i.if.end122.i_crit_edge, %for.inc.6.i.if.end122.i_crit_edge, %for.inc.5.i.if.end122.i_crit_edge, %for.inc.4.i.if.end122.i_crit_edge, %for.inc.3.i.if.end122.i_crit_edge, %for.inc.2.i.if.end122.i_crit_edge, %for.inc.1.i.if.end122.i_crit_edge, %for.inc.i.if.end122.i_crit_edge, %if.end96.i.if.end122.i_crit_edge
  %ptr.021.lcssa.i = phi ptr [ @lkup, %if.end96.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 1), %for.inc.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 2), %for.inc.1.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 3), %for.inc.2.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 4), %for.inc.3.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 5), %for.inc.4.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 6), %for.inc.5.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 7), %for.inc.6.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 8), %for.inc.7.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 9), %for.inc.8.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 10), %for.inc.9.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 11), %for.inc.10.i.if.end122.i_crit_edge ], [ getelementptr inbounds ([14 x %struct.stb6100_lkup], ptr @lkup, i32 0, i32 12), %for.inc.11.i.if.end122.i_crit_edge ]
  %reg.i = getelementptr inbounds %struct.stb6100_lkup, ptr %ptr.021.lcssa.i, i32 0, i32 2
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg.i, align 4
  %14 = select i1 %cmp97.i, i8 16, i8 0
  %15 = or i8 %13, %14
  %conv127.i = or i8 %15, -32
  %call130.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %conv127.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i)
  %cmp131.i = icmp slt i32 %call130.i, 0
  br i1 %cmp131.i, label %if.end122.i.if.end_crit_edge, label %if.end134.i

if.end122.i.if.end_crit_edge:                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end134.i:                                      ; preds = %if.end122.i
  %16 = add nsw i32 %1, -1325001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -250000, i32 %16)
  %17 = icmp ult i32 %16, -250000
  %psd2.0.i = zext i1 %17 to i32
  %add.i = select i1 %cmp97.i, i32 2, i32 1
  %shl144.i = shl nuw nsw i32 %1, %add.i
  %reference.i = getelementptr inbounds %struct.stb6100_state, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %reference.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reference.i, align 4
  %shl146.i = shl i32 %19, %psd2.0.i
  %div.i = udiv i32 %shl144.i, %shl146.i
  %mul.i = mul i32 %div.i, %19
  %shl149.i = shl i32 %mul.i, %psd2.0.i
  %sub.i = sub i32 %shl144.i, %shl149.i
  %sub151.i = select i1 %17, i32 8, i32 9
  %shl152.i = shl i32 %sub.i, %sub151.i
  %div1551.i = lshr i32 %19, 1
  %add156.i = add i32 %shl152.i, %div1551.i
  %div157.i = udiv i32 %add156.i, %19
  %conv158.i = trunc i32 %div.i to i8
  %call161.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext %conv158.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %cmp162.i = icmp slt i32 %call161.i, 0
  br i1 %cmp162.i, label %if.end134.i.if.end_crit_edge, label %if.end165.i

if.end134.i.if.end_crit_edge:                     ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end165.i:                                      ; preds = %if.end134.i
  %conv166.i = trunc i32 %div157.i to i8
  %call169.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext %conv166.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169.i)
  %cmp170.i = icmp slt i32 %call169.i, 0
  br i1 %cmp170.i, label %if.end165.i.if.end_crit_edge, label %if.end173.i

if.end165.i.if.end_crit_edge:                     ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end173.i:                                      ; preds = %if.end165.i
  %20 = select i1 %17, i32 4, i32 0
  %shr.i = lshr i32 %div157.i, 8
  %and182.i = and i32 %shr.i, 3
  %conv177.i = or i32 %and182.i, %20
  %21 = trunc i32 %conv177.i to i8
  %conv184.i = or i8 %21, 56
  %call187.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext %conv184.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187.i)
  %cmp188.i = icmp slt i32 %call187.i, 0
  br i1 %cmp188.i, label %if.end173.i.if.end_crit_edge, label %if.end191.i

if.end173.i.if.end_crit_edge:                     ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end191.i:                                      ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14999999, i32 %11)
  %cmp192.i = icmp ugt i32 %11, 14999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999999, i32 %11)
  %cmp196.i = icmp ugt i32 %11, 4999999
  %.8.i = select i1 %cmp196.i, i32 11, i32 14
  %g.0.i = select i1 %cmp192.i, i32 9, i32 %.8.i
  %22 = trunc i32 %g.0.i to i8
  %conv213.i = or i8 %22, 48
  %call215.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 5, i8 noundef zeroext %conv213.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215.i)
  %cmp216.i = icmp slt i32 %call215.i, 0
  br i1 %cmp216.i, label %if.end191.i.if.end_crit_edge, label %if.end219.i

if.end191.i.if.end_crit_edge:                     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end219.i:                                      ; preds = %if.end191.i
  %call222.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 7, i8 noundef zeroext -52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222.i)
  %cmp223.i = icmp slt i32 %call222.i, 0
  br i1 %cmp223.i, label %if.end219.i.if.end_crit_edge, label %do.body227.i

if.end219.i.if.end_crit_edge:                     ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body227.i:                                     ; preds = %if.end219.i
  %23 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %switch17.i = icmp ult i32 %23, 4
  br i1 %switch17.i, label %do.body227.i.do.end304.i_crit_edge, label %do.end236.i

do.body227.i.do.end304.i_crit_edge:               ; preds = %do.body227.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end304.i

do.end236.i:                                      ; preds = %do.body227.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %reference.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reference.i, align 4
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg.i, align 4
  %conv243.i = zext i8 %27 to i32
  %call244.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4, i32 noundef %1, i32 noundef %11, i32 noundef %g.0.i, i32 noundef %..i, i32 noundef %psd2.0.i, i32 noundef %25, i32 noundef %conv243.i, i32 noundef %shl144.i, i32 noundef %div.i, i32 noundef %div157.i) #11
  br label %do.end304.i

do.end304.i:                                      ; preds = %do.end236.i, %do.body227.i.do.end304.i_crit_edge
  %call307.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 8, i8 noundef zeroext -113) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307.i)
  %cmp308.i = icmp slt i32 %call307.i, 0
  br i1 %cmp308.i, label %do.end304.i.if.end_crit_edge, label %if.end311.i

do.end304.i.if.end_crit_edge:                     ; preds = %do.end304.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end311.i:                                      ; preds = %do.end304.i
  %call314.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 11, i8 noundef zeroext -34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314.i)
  %cmp315.i = icmp slt i32 %call314.i, 0
  br i1 %cmp315.i, label %if.end311.i.if.end_crit_edge, label %if.end318.i

if.end311.i.if.end_crit_edge:                     ; preds = %if.end311.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end318.i:                                      ; preds = %if.end311.i
  %call321.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 10, i8 noundef zeroext -5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321.i)
  %cmp322.i = icmp slt i32 %call321.i, 0
  br i1 %cmp322.i, label %if.end318.i.if.end_crit_edge, label %if.end325.i

if.end318.i.if.end_crit_edge:                     ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end325.i:                                      ; preds = %if.end318.i
  tail call void @msleep(i32 noundef 2) #7
  %28 = and i8 %conv127.i, -97
  %call331.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331.i)
  %cmp332.i = icmp slt i32 %call331.i, 0
  br i1 %cmp332.i, label %if.end325.i.if.end_crit_edge, label %if.end335.i

if.end325.i.if.end_crit_edge:                     ; preds = %if.end325.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end335.i:                                      ; preds = %if.end325.i
  tail call void @msleep(i32 noundef 10) #7
  %29 = and i8 %15, 31
  %30 = or i8 %29, 96
  %call345.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345.i)
  %cmp346.i = icmp slt i32 %call345.i, 0
  br i1 %cmp346.i, label %if.end335.i.if.end_crit_edge, label %if.end349.i

if.end335.i.if.end_crit_edge:                     ; preds = %if.end335.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end349.i:                                      ; preds = %if.end335.i
  %call350.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %3, i8 noundef zeroext 9, i8 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350.i)
  %cmp351.i = icmp slt i32 %call350.i, 0
  br i1 %cmp351.i, label %if.end349.i.if.end_crit_edge, label %if.end354.i

if.end349.i.if.end_crit_edge:                     ; preds = %if.end349.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end354.i:                                      ; preds = %if.end349.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 10) #7
  br label %if.end

if.end:                                           ; preds = %if.end354.i, %if.end349.i.if.end_crit_edge, %if.end335.i.if.end_crit_edge, %if.end325.i.if.end_crit_edge, %if.end318.i.if.end_crit_edge, %if.end311.i.if.end_crit_edge, %do.end304.i.if.end_crit_edge, %if.end219.i.if.end_crit_edge, %if.end191.i.if.end_crit_edge, %if.end173.i.if.end_crit_edge, %if.end165.i.if.end_crit_edge, %if.end134.i.if.end_crit_edge, %if.end122.i.if.end_crit_edge, %for.inc.12.i, %if.end91.i.if.end_crit_edge, %if.end87.i.if.end_crit_edge, %entry.if.end_crit_edge
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %31 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp2.not = icmp eq i32 %32, 0
  br i1 %cmp2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then3:                                         ; preds = %if.end
  %tuner_priv.i13 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %33 = ptrtoint ptr %tuner_priv.i13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tuner_priv.i13, align 4
  %35 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %switch.i14 = icmp ult i32 %35, 4
  br i1 %switch.i14, label %if.then3.do.end37.i_crit_edge, label %do.end.i16

if.then3.do.end37.i_crit_edge:                    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

do.end.i16:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, i32 noundef %32) #11
  br label %do.end37.i

do.end37.i:                                       ; preds = %do.end.i16, %if.then3.do.end37.i_crit_edge
  %div1.i = lshr i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 71999999, i32 %32)
  %cmp38.i = icmp ugt i32 %32, 71999999
  br i1 %cmp38.i, label %do.end37.i.if.end46.i_crit_edge, label %if.else40.i

do.end37.i.if.end46.i_crit_edge:                  ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.else40.i:                                      ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000002, i32 %32)
  %cmp41.i = icmp ult i32 %32, 10000002
  br i1 %cmp41.i, label %if.else40.i.if.end46.i_crit_edge, label %if.else43.i

if.else40.i.if.end46.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.else43.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i17 = add nuw i32 %div1.i, 500000
  %div44.i = udiv i32 %add.i17, 1000000
  %36 = trunc i32 %div44.i to i8
  %37 = add i8 %36, 59
  %phi.cast.i = or i8 %37, -64
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.else43.i, %if.else40.i.if.end46.i_crit_edge, %do.end37.i.if.end46.i_crit_edge
  %tmp.0.i = phi i8 [ %phi.cast.i, %if.else43.i ], [ -33, %do.end37.i.if.end46.i_crit_edge ], [ -64, %if.else40.i.if.end46.i_crit_edge ]
  %call47.i18 = tail call fastcc i32 @stb6100_write_reg(ptr noundef %34, i8 noundef zeroext 9, i8 noundef zeroext 77) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i18)
  %cmp48.i = icmp slt i32 %call47.i18, 0
  br i1 %cmp48.i, label %if.end46.i.if.end6_crit_edge, label %if.end50.i

if.end46.i.if.end6_crit_edge:                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end50.i:                                       ; preds = %if.end46.i
  %call51.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %34, i8 noundef zeroext 6, i8 noundef zeroext %tmp.0.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.end50.i.if.end6_crit_edge, label %if.end55.i

if.end50.i.if.end6_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end55.i:                                       ; preds = %if.end50.i
  tail call void @msleep(i32 noundef 5) #7
  %call56.i = tail call fastcc i32 @stb6100_write_reg(ptr noundef %34, i8 noundef zeroext 9, i8 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %cmp57.i = icmp slt i32 %call56.i, 0
  br i1 %cmp57.i, label %if.end55.i.if.end6_crit_edge, label %if.end60.i

if.end55.i.if.end6_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end60.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 10) #7
  br label %if.end6

if.end6:                                          ; preds = %if.end60.i, %if.end55.i.if.end6_crit_edge, %if.end50.i.if.end6_crit_edge, %if.end46.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %regs = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %regs) #7
  %2 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 1
  %3 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 2
  %4 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 3
  %5 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 4
  %6 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 5
  %7 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 6
  %8 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 7
  %9 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 8
  %10 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 9
  %11 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 10
  %12 = getelementptr inbounds [12 x i8], ptr %regs, i32 0, i32 11
  %13 = call ptr @memset(ptr %regs, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 851967, ptr %14, align 4
  %config.i = getelementptr inbounds %struct.stb6100_state, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config.i, align 4
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
  store i16 1, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %regs, ptr %buf.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  %25 = load i32, ptr @verbose, align 4
  br i1 %cmp.not.i, label %if.end62.i, label %do.body.i, !prof !300

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp3.not.i = icmp eq i32 %25, 0
  br i1 %cmp3.not.i, label %do.body.i.stb6100_read_regs.exit_crit_edge, label %do.end.i

do.body.i.stb6100_read_regs.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb6100_read_regs.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv11.i = zext i8 %29 to i32
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138, i32 noundef %conv11.i, i32 noundef %call.i) #11
  br label %stb6100_read_regs.exit

if.end62.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp63.i = icmp ugt i32 %25, 3
  br i1 %cmp63.i, label %do.end81.i, label %if.end62.i.if.end_crit_edge, !prof !301

if.end62.i.if.end_crit_edge:                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end81.i:                                       ; preds = %if.end62.i
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv85.i = zext i8 %33 to i32
  %call86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.138, i32 noundef %conv85.i) #11
  %34 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %switch.i = icmp ult i32 %34, 4
  br i1 %switch.i, label %do.end81.i.if.end_crit_edge, label %for.inc.i

do.end81.i.if.end_crit_edge:                      ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i:                                        ; preds = %do.end81.i
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %regs, align 1
  %conv152.i = zext i8 %36 to i32
  %call153.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.103, i32 noundef %conv152.i) #11
  %.pr.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr.i)
  %switch.1.i = icmp ult i32 %.pr.i, 4
  br i1 %switch.1.i, label %for.inc.i.if.end_crit_edge, label %for.inc.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.1.i:                                      ; preds = %for.inc.i
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %2, align 1
  %conv152.1.i = zext i8 %38 to i32
  %call153.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.104, i32 noundef %conv152.1.i) #11
  %.pr244.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr244.i)
  %switch.2.i = icmp ult i32 %.pr244.i, 4
  br i1 %switch.2.i, label %for.inc.1.i.if.end_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %3, align 1
  %conv152.2.i = zext i8 %40 to i32
  %call153.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.105, i32 noundef %conv152.2.i) #11
  %.pr246.pr.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr246.pr.i)
  %switch.3.i = icmp ult i32 %.pr246.pr.i, 4
  br i1 %switch.3.i, label %for.inc.2.i.if.end_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %41 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %4, align 1
  %conv152.3.i = zext i8 %42 to i32
  %call153.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.106, i32 noundef %conv152.3.i) #11
  %.pr248.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr248.i)
  %switch.4.i = icmp ult i32 %.pr248.i, 4
  br i1 %switch.4.i, label %for.inc.3.i.if.end_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %5, align 1
  %conv152.4.i = zext i8 %44 to i32
  %call153.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.107, i32 noundef %conv152.4.i) #11
  %.pr250.pr.pr.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr250.pr.pr.i)
  %switch.5.i = icmp ult i32 %.pr250.pr.pr.i, 4
  br i1 %switch.5.i, label %for.inc.4.i.if.end_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end_crit_edge:                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %6, align 1
  %conv152.5.i = zext i8 %46 to i32
  %call153.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.108, i32 noundef %conv152.5.i) #11
  %.pr252.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr252.i)
  %switch.6.i = icmp ult i32 %.pr252.i, 4
  br i1 %switch.6.i, label %for.inc.5.i.if.end_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end_crit_edge:                     ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %7, align 1
  %conv152.6.i = zext i8 %48 to i32
  %call153.6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.109, i32 noundef %conv152.6.i) #11
  %.pr254.pr.pr.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr254.pr.pr.i)
  %switch.7.i = icmp ult i32 %.pr254.pr.pr.i, 4
  br i1 %switch.7.i, label %for.inc.6.i.if.end_crit_edge, label %for.inc.7.i

for.inc.6.i.if.end_crit_edge:                     ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %8, align 1
  %conv152.7.i = zext i8 %50 to i32
  %call153.7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.110, i32 noundef %conv152.7.i) #11
  %.pr256.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr256.i)
  %switch.8.i = icmp ult i32 %.pr256.i, 4
  br i1 %switch.8.i, label %for.inc.7.i.if.end_crit_edge, label %for.inc.8.i

for.inc.7.i.if.end_crit_edge:                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %51 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %9, align 1
  %conv152.8.i = zext i8 %52 to i32
  %call153.8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.111, i32 noundef %conv152.8.i) #11
  %.pr258.pr.pr.pr.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr258.pr.pr.pr.i)
  %switch.9.i = icmp ult i32 %.pr258.pr.pr.pr.i, 4
  br i1 %switch.9.i, label %for.inc.8.i.if.end_crit_edge, label %for.inc.9.i

for.inc.8.i.if.end_crit_edge:                     ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.9.i:                                      ; preds = %for.inc.8.i
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %10, align 1
  %conv152.9.i = zext i8 %54 to i32
  %call153.9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.112, i32 noundef %conv152.9.i) #11
  %.pr260.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr260.i)
  %switch.10.i = icmp ult i32 %.pr260.i, 4
  br i1 %switch.10.i, label %for.inc.9.i.if.end_crit_edge, label %for.inc.10.i

for.inc.9.i.if.end_crit_edge:                     ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.10.i:                                     ; preds = %for.inc.9.i
  %55 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %11, align 1
  %conv152.10.i = zext i8 %56 to i32
  %call153.10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.113, i32 noundef %conv152.10.i) #11
  %.pr262.pr.pr.pr.i = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.pr262.pr.pr.pr.i)
  %switch.11.i = icmp ult i32 %.pr262.pr.pr.pr.i, 4
  br i1 %switch.11.i, label %for.inc.10.i.if.end_crit_edge, label %do.end149.11.i

for.inc.10.i.if.end_crit_edge:                    ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end149.11.i:                                   ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %12, align 1
  %conv152.11.i = zext i8 %58 to i32
  %call153.11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.114, i32 noundef %conv152.11.i) #11
  br label %if.end

stb6100_read_regs.exit:                           ; preds = %do.end.i, %do.body.i.stb6100_read_regs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  br label %cleanup

if.end:                                           ; preds = %do.end149.11.i, %for.inc.10.i.if.end_crit_edge, %for.inc.9.i.if.end_crit_edge, %for.inc.8.i.if.end_crit_edge, %for.inc.7.i.if.end_crit_edge, %for.inc.6.i.if.end_crit_edge, %for.inc.5.i.if.end_crit_edge, %for.inc.4.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge, %for.inc.2.i.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %do.end81.i.if.end_crit_edge, %if.end62.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %2, align 1
  %61 = lshr i8 %60, 4
  %62 = and i8 %61, 1
  %63 = zext i8 %62 to i32
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %5, align 1
  %conv2 = zext i8 %65 to i32
  %and3 = lshr i32 %conv2, 2
  %66 = and i32 %and3, 1
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %3, align 1
  %conv6 = zext i8 %68 to i32
  %and9 = shl nuw nsw i32 %conv2, 8
  %shl = and i32 %and9, 768
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %4, align 1
  %conv11 = zext i8 %70 to i32
  %or = or i32 %shl, %conv11
  %reference = getelementptr inbounds %struct.stb6100_state, ptr %1, i32 0, i32 7
  %71 = ptrtoint ptr %reference to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reference, align 4
  %mul = mul i32 %or, %72
  %sub = sub nuw nsw i32 9, %66
  %shr12 = lshr i32 %mul, %sub
  %mul14 = mul i32 %72, %conv6
  %shl15 = shl i32 %mul14, %66
  %add = add i32 %shr12, %shl15
  %add16 = add nuw nsw i32 %63, 1
  %shr17 = lshr i32 %add, %add16
  %frequency18 = getelementptr inbounds %struct.stb6100_state, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %frequency18 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %shr17, ptr %frequency18, align 4
  %74 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %shr17, ptr %frequency, align 4
  %75 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %75)
  %switch = icmp ult i32 %75, 4
  br i1 %switch, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %frequency18 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %frequency18, align 4
  %78 = ptrtoint ptr %reference to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reference, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.127, i32 noundef %77, i32 noundef %63, i32 noundef %66, i32 noundef %79, i32 noundef %add, i32 noundef %conv6, i32 noundef %or) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %stb6100_read_regs.exit
  %retval.0 = phi i32 [ -121, %stb6100_read_regs.exit ], [ 0, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %regs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #0 align 64 {
entry:
  %regs.i = alloca [12 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %regs.i) #7
  %2 = call ptr @memset(ptr %regs.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 131071, ptr %3, align 4
  %config.i = getelementptr inbounds %struct.stb6100_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %conv.i = zext i8 %8 to i16
  %add.i = add nuw nsw i16 %conv.i, 6
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %add.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %regs.i, ptr %buf.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  %14 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp58.i = icmp ugt i32 %14, 3
  br i1 %cmp58.i, label %do.end76.i, label %entry.stb6100_read_reg.exit_crit_edge, !prof !301

entry.stb6100_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb6100_read_reg.exit

do.end76.i:                                       ; preds = %entry
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %conv80.i = zext i8 %18 to i32
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.179, i32 noundef %conv80.i) #11
  %19 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %switch.i = icmp ult i32 %19, 4
  br i1 %switch.i, label %do.end76.i.stb6100_read_reg.exit_crit_edge, label %do.end142.i

do.end76.i.stb6100_read_reg.exit_crit_edge:       ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb6100_read_reg.exit

do.end142.i:                                      ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %regs.i, align 1
  %conv145.i = zext i8 %21 to i32
  %call146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.109, i32 noundef %conv145.i) #11
  br label %stb6100_read_reg.exit

stb6100_read_reg.exit:                            ; preds = %do.end142.i, %do.end76.i.stb6100_read_reg.exit_crit_edge, %entry.stb6100_read_reg.exit_crit_edge
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %regs.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %regs.i) #7
  %24 = and i8 %23, 31
  %conv = zext i8 %24 to i32
  %25 = mul nuw nsw i32 %conv, 2000000
  %mul2 = add nuw nsw i32 %25, 10000000
  %bandwidth3 = getelementptr inbounds %struct.stb6100_state, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %bandwidth3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul2, ptr %bandwidth3, align 4
  %27 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul2, ptr %bandwidth, align 4
  %28 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %switch = icmp ult i32 %28, 4
  br i1 %switch, label %stb6100_read_reg.exit.cleanup_crit_edge, label %do.end

stb6100_read_reg.exit.cleanup_crit_edge:          ; preds = %stb6100_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %stb6100_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %bandwidth3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bandwidth3, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, i32 noundef %30) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %stb6100_read_reg.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef readnone %status) #0 align 64 {
entry:
  %regs.i = alloca [12 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %regs.i) #7
  %2 = call ptr @memset(ptr %regs.i, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 131071, ptr %3, align 4
  %config.i = getelementptr inbounds %struct.stb6100_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %conv2.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv2.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %regs.i, ptr %buf.i, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  %14 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp58.i = icmp ugt i32 %14, 3
  br i1 %cmp58.i, label %do.end76.i, label %entry.stb6100_read_reg.exit_crit_edge, !prof !301

entry.stb6100_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb6100_read_reg.exit

do.end76.i:                                       ; preds = %entry
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %conv80.i = zext i8 %18 to i32
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.179, i32 noundef %conv80.i) #11
  %19 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %switch.i = icmp ult i32 %19, 4
  br i1 %switch.i, label %do.end76.i.stb6100_read_reg.exit_crit_edge, label %do.end142.i

do.end76.i.stb6100_read_reg.exit_crit_edge:       ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb6100_read_reg.exit

do.end142.i:                                      ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %regs.i, align 1
  %conv145.i = zext i8 %21 to i32
  %call146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.103, i32 noundef %conv145.i) #11
  br label %stb6100_read_reg.exit

stb6100_read_reg.exit:                            ; preds = %do.end142.i, %do.end76.i.stb6100_read_reg.exit_crit_edge, %entry.stb6100_read_reg.exit_crit_edge
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %regs.i, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %regs.i) #7
  %24 = and i8 %23, 1
  %and = zext i8 %24 to i32
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stb6100_write_reg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %cmdbuf.i = alloca [64 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %reg to i32
  %arrayidx = getelementptr [12 x %struct.stb6100_regmask], ptr @stb6100_template, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %and70 = and i8 %1, %data
  %set = getelementptr [12 x %struct.stb6100_regmask], ptr @stb6100_template, i32 0, i32 %conv, i32 1
  %2 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %set, align 1
  %or71 = or i8 %and70, %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %cmdbuf.i) #7
  %4 = getelementptr inbounds i8, ptr %cmdbuf.i, i32 2
  %5 = call ptr @memset(ptr %4, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.stb6100_state, ptr %state, i32 0, i32 1
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
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmdbuf.i, ptr %buf3.i, align 4
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr %cmdbuf.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or71, ptr %arrayidx.i, align 1
  %16 = ptrtoint ptr %cmdbuf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %reg, ptr %cmdbuf.i, align 1
  %17 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp68.i = icmp ugt i32 %17, 3
  br i1 %cmp68.i, label %do.end86.i, label %entry.if.end215.i_crit_edge, !prof !301

entry.if.end215.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215.i

do.end86.i:                                       ; preds = %entry
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %9, align 4
  %conv90.i = zext i8 %19 to i32
  %call91.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.53, i32 noundef %conv90.i, i32 noundef %conv, i32 noundef 1) #11
  %20 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %switch.i = icmp ult i32 %20, 4
  br i1 %switch.i, label %do.end86.i.if.end215.i_crit_edge, label %do.end154.i

do.end86.i.if.end215.i_crit_edge:                 ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215.i

do.end154.i:                                      ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx157.i = getelementptr [12 x ptr], ptr @stb6100_regnames, i32 0, i32 %conv
  %21 = ptrtoint ptr %arrayidx157.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx157.i, align 4
  %conv159.i = zext i8 %or71 to i32
  %call160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.53, ptr noundef %22, i32 noundef %conv159.i) #11
  br label %if.end215.i

if.end215.i:                                      ; preds = %do.end154.i, %do.end86.i.if.end215.i_crit_edge, %entry.if.end215.i_crit_edge
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state, align 4
  %call216.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call216.i)
  %cmp217.not.i = icmp eq i32 %call216.i, 1
  br i1 %cmp217.not.i, label %if.end215.i.stb6100_write_reg_range.exit_crit_edge, label %do.body226.i, !prof !300

if.end215.i.stb6100_write_reg_range.exit_crit_edge: ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb6100_write_reg_range.exit

do.body226.i:                                     ; preds = %if.end215.i
  %25 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp227.not.i = icmp eq i32 %25, 0
  br i1 %cmp227.not.i, label %do.body226.i.stb6100_write_reg_range.exit_crit_edge, label %do.end235.i

do.body226.i.stb6100_write_reg_range.exit_crit_edge: ; preds = %do.body226.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stb6100_write_reg_range.exit

do.end235.i:                                      ; preds = %do.body226.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv239.i = zext i8 %29 to i32
  %call240.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.53, i32 noundef %conv239.i, i32 noundef %conv, i32 noundef 1, i32 noundef %call216.i) #11
  br label %stb6100_write_reg_range.exit

stb6100_write_reg_range.exit:                     ; preds = %do.end235.i, %do.body226.i.stb6100_write_reg_range.exit_crit_edge, %if.end215.i.stb6100_write_reg_range.exit_crit_edge
  %retval.0.i = phi i32 [ -121, %do.end235.i ], [ 0, %if.end215.i.stb6100_write_reg_range.exit_crit_edge ], [ -121, %do.body226.i.stb6100_write_reg_range.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %cmdbuf.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 162)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !20, !22, !23, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !87, !88, !89, !90, !91, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !228, !229, !230, !231, !232, !233, !234, !235, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !251, !252, !253, !254, !255, !256, !257, !258, !259, !261, !262, !263, !264, !265, !266, !267, !268, !270, !271, !272, !273, !274, !275, !276, !277, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!llvm.module.flags = !{!291, !292, !293, !294, !295, !296, !297, !298}
!llvm.ident = !{!299}

!0 = !{ptr @__param_verbose, !1, !"__param_verbose", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_verbosetype290, !1, !"__UNIQUE_ID_verbosetype290", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 548, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @stb6100_attach._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @stb6100_attach._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_stb6100_attach, !10, !"__ksymtab_stb6100_attach", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 560, i32 1}
!11 = !{ptr @__UNIQUE_ID_verbose291, !12, !"__UNIQUE_ID_verbose291", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 561, i32 1}
!13 = !{ptr @__UNIQUE_ID_author292, !14, !"__UNIQUE_ID_author292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 563, i32 1}
!15 = !{ptr @__UNIQUE_ID_description293, !16, !"__UNIQUE_ID_description293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 564, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 565, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @verbose, !21, !"verbose", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 19, i32 21}
!22 = !{ptr @__param_str_verbose, !1, !"__param_str_verbose", i1 false, i1 false}
!23 = !{ptr @stb6100_ops, !24, !"stb6100_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 515, i32 35}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 335, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @stb6100_set_frequency._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @stb6100_set_frequency._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @stb6100_set_frequency._entry.5, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @stb6100_set_frequency._entry_ptr.7, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @stb6100_set_frequency._entry.8, !26, !"_entry", i1 false, i1 false}
!35 = !{ptr @stb6100_set_frequency._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @stb6100_set_frequency._entry.11, !26, !"_entry", i1 false, i1 false}
!38 = !{ptr @stb6100_set_frequency._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 338, i32 3}
!41 = !{ptr @stb6100_set_frequency._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @stb6100_set_frequency._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @stb6100_set_frequency._entry.17, !40, !"_entry", i1 false, i1 false}
!45 = !{ptr @stb6100_set_frequency._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @stb6100_set_frequency._entry.20, !40, !"_entry", i1 false, i1 false}
!48 = !{ptr @stb6100_set_frequency._entry_ptr.22, !40, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @stb6100_set_frequency._entry.23, !40, !"_entry", i1 false, i1 false}
!51 = !{ptr @stb6100_set_frequency._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 371, i32 3}
!54 = !{ptr @stb6100_set_frequency._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @stb6100_set_frequency._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 433, i32 2}
!58 = !{ptr @stb6100_set_frequency._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @stb6100_set_frequency._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @stb6100_set_frequency._entry.32, !57, !"_entry", i1 false, i1 false}
!62 = !{ptr @stb6100_set_frequency._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @stb6100_set_frequency._entry.35, !57, !"_entry", i1 false, i1 false}
!65 = !{ptr @stb6100_set_frequency._entry_ptr.37, !57, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.39, !57, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @stb6100_set_frequency._entry.38, !57, !"_entry", i1 false, i1 false}
!68 = !{ptr @stb6100_set_frequency._entry_ptr.40, !57, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 220, i32 3}
!71 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @stb6100_write_reg._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @stb6100_write_reg._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @stb6100_write_reg._entry.43, !70, !"_entry", i1 false, i1 false}
!76 = !{ptr @stb6100_write_reg._entry_ptr.45, !70, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.47, !70, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @stb6100_write_reg._entry.46, !70, !"_entry", i1 false, i1 false}
!79 = !{ptr @stb6100_write_reg._entry_ptr.48, !70, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.50, !70, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @stb6100_write_reg._entry.49, !70, !"_entry", i1 false, i1 false}
!82 = !{ptr @stb6100_write_reg._entry_ptr.51, !70, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @stb6100_template, !84, !"stb6100_template", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 95, i32 37}
!85 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 185, i32 3}
!87 = !{ptr @.str.53, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @stb6100_write_reg_range._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @stb6100_write_reg_range._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.56, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 192, i32 3}
!93 = !{ptr @stb6100_write_reg_range._entry.55, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @stb6100_write_reg_range._entry_ptr.57, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.59, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @stb6100_write_reg_range._entry.58, !92, !"_entry", i1 false, i1 false}
!97 = !{ptr @stb6100_write_reg_range._entry_ptr.60, !92, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.62, !92, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @stb6100_write_reg_range._entry.61, !92, !"_entry", i1 false, i1 false}
!100 = !{ptr @stb6100_write_reg_range._entry_ptr.63, !92, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.65, !92, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @stb6100_write_reg_range._entry.64, !92, !"_entry", i1 false, i1 false}
!103 = !{ptr @stb6100_write_reg_range._entry_ptr.66, !92, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.68, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 202, i32 3}
!106 = !{ptr @stb6100_write_reg_range._entry.67, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @stb6100_write_reg_range._entry_ptr.69, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.71, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @stb6100_write_reg_range._entry.70, !105, !"_entry", i1 false, i1 false}
!110 = !{ptr @stb6100_write_reg_range._entry_ptr.72, !105, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.74, !105, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @stb6100_write_reg_range._entry.73, !105, !"_entry", i1 false, i1 false}
!113 = !{ptr @stb6100_write_reg_range._entry_ptr.75, !105, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.77, !105, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @stb6100_write_reg_range._entry.76, !105, !"_entry", i1 false, i1 false}
!116 = !{ptr @stb6100_write_reg_range._entry_ptr.78, !105, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.80, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 204, i32 4}
!119 = !{ptr @stb6100_write_reg_range._entry.79, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @stb6100_write_reg_range._entry_ptr.81, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.83, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @stb6100_write_reg_range._entry.82, !118, !"_entry", i1 false, i1 false}
!123 = !{ptr @stb6100_write_reg_range._entry_ptr.84, !118, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.86, !118, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @stb6100_write_reg_range._entry.85, !118, !"_entry", i1 false, i1 false}
!126 = !{ptr @stb6100_write_reg_range._entry_ptr.87, !118, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.89, !118, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @stb6100_write_reg_range._entry.88, !118, !"_entry", i1 false, i1 false}
!129 = !{ptr @stb6100_write_reg_range._entry_ptr.90, !118, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.92, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 208, i32 3}
!132 = !{ptr @stb6100_write_reg_range._entry.91, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @stb6100_write_reg_range._entry_ptr.93, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.95, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @stb6100_write_reg_range._entry.94, !131, !"_entry", i1 false, i1 false}
!136 = !{ptr @stb6100_write_reg_range._entry_ptr.96, !131, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.98, !131, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @stb6100_write_reg_range._entry.97, !131, !"_entry", i1 false, i1 false}
!139 = !{ptr @stb6100_write_reg_range._entry_ptr.99, !131, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.101, !131, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @stb6100_write_reg_range._entry.100, !131, !"_entry", i1 false, i1 false}
!142 = !{ptr @stb6100_write_reg_range._entry_ptr.102, !131, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.103, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 73, i32 18}
!145 = !{ptr @.str.104, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 74, i32 19}
!147 = !{ptr @.str.105, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 75, i32 18}
!149 = !{ptr @.str.106, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 76, i32 21}
!151 = !{ptr @.str.107, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 77, i32 17}
!153 = !{ptr @.str.108, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 78, i32 17}
!155 = !{ptr @.str.109, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 79, i32 17}
!157 = !{ptr @.str.110, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 80, i32 19}
!159 = !{ptr @.str.111, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 81, i32 21}
!161 = !{ptr @.str.112, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 82, i32 20}
!163 = !{ptr @.str.113, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 83, i32 20}
!165 = !{ptr @.str.114, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 84, i32 21}
!167 = !{ptr @stb6100_regnames, !168, !"stb6100_regnames", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 72, i32 20}
!169 = !{ptr @lkup, !170, !"lkup", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 54, i32 34}
!171 = !{ptr @.str.115, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 266, i32 2}
!173 = !{ptr @.str.116, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @stb6100_set_bandwidth._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @stb6100_set_bandwidth._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.118, !172, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @stb6100_set_bandwidth._entry.117, !172, !"_entry", i1 false, i1 false}
!178 = !{ptr @stb6100_set_bandwidth._entry_ptr.119, !172, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.121, !172, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @stb6100_set_bandwidth._entry.120, !172, !"_entry", i1 false, i1 false}
!181 = !{ptr @stb6100_set_bandwidth._entry_ptr.122, !172, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.124, !172, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @stb6100_set_bandwidth._entry.123, !172, !"_entry", i1 false, i1 false}
!184 = !{ptr @stb6100_set_bandwidth._entry_ptr.125, !172, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.126, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 317, i32 2}
!187 = !{ptr @.str.127, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @stb6100_get_frequency._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @stb6100_get_frequency._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.129, !186, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @stb6100_get_frequency._entry.128, !186, !"_entry", i1 false, i1 false}
!192 = !{ptr @stb6100_get_frequency._entry_ptr.130, !186, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.132, !186, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @stb6100_get_frequency._entry.131, !186, !"_entry", i1 false, i1 false}
!195 = !{ptr @stb6100_get_frequency._entry_ptr.133, !186, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.135, !186, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @stb6100_get_frequency._entry.134, !186, !"_entry", i1 false, i1 false}
!198 = !{ptr @stb6100_get_frequency._entry_ptr.136, !186, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.137, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 133, i32 3}
!201 = !{ptr @.str.138, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @stb6100_read_regs._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @stb6100_read_regs._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.140, !200, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @stb6100_read_regs._entry.139, !200, !"_entry", i1 false, i1 false}
!206 = !{ptr @stb6100_read_regs._entry_ptr.141, !200, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.143, !200, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @stb6100_read_regs._entry.142, !200, !"_entry", i1 false, i1 false}
!209 = !{ptr @stb6100_read_regs._entry_ptr.144, !200, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.146, !200, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @stb6100_read_regs._entry.145, !200, !"_entry", i1 false, i1 false}
!212 = !{ptr @stb6100_read_regs._entry_ptr.147, !200, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.149, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 141, i32 3}
!215 = !{ptr @stb6100_read_regs._entry.148, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @stb6100_read_regs._entry_ptr.150, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.152, !214, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @stb6100_read_regs._entry.151, !214, !"_entry", i1 false, i1 false}
!219 = !{ptr @stb6100_read_regs._entry_ptr.153, !214, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.155, !214, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @stb6100_read_regs._entry.154, !214, !"_entry", i1 false, i1 false}
!222 = !{ptr @stb6100_read_regs._entry_ptr.156, !214, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.158, !214, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @stb6100_read_regs._entry.157, !214, !"_entry", i1 false, i1 false}
!225 = !{ptr @stb6100_read_regs._entry_ptr.159, !214, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @stb6100_read_regs._entry.160, !227, !"_entry", i1 false, i1 false}
!227 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 143, i32 4}
!228 = !{ptr @stb6100_read_regs._entry_ptr.161, !227, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @stb6100_read_regs._entry.162, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @stb6100_read_regs._entry_ptr.163, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @stb6100_read_regs._entry.164, !227, !"_entry", i1 false, i1 false}
!232 = !{ptr @stb6100_read_regs._entry_ptr.165, !227, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @stb6100_read_regs._entry.166, !227, !"_entry", i1 false, i1 false}
!234 = !{ptr @stb6100_read_regs._entry_ptr.167, !227, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.168, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 256, i32 2}
!237 = !{ptr @.str.169, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @stb6100_get_bandwidth._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @stb6100_get_bandwidth._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.171, !236, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @stb6100_get_bandwidth._entry.170, !236, !"_entry", i1 false, i1 false}
!242 = !{ptr @stb6100_get_bandwidth._entry_ptr.172, !236, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.174, !236, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @stb6100_get_bandwidth._entry.173, !236, !"_entry", i1 false, i1 false}
!245 = !{ptr @stb6100_get_bandwidth._entry_ptr.175, !236, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.177, !236, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @stb6100_get_bandwidth._entry.176, !236, !"_entry", i1 false, i1 false}
!248 = !{ptr @stb6100_get_bandwidth._entry_ptr.178, !236, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.179, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 162, i32 3}
!251 = !{ptr @stb6100_read_reg._entry, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @stb6100_read_reg._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @stb6100_read_reg._entry.180, !250, !"_entry", i1 false, i1 false}
!254 = !{ptr @stb6100_read_reg._entry_ptr.181, !250, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @stb6100_read_reg._entry.182, !250, !"_entry", i1 false, i1 false}
!256 = !{ptr @stb6100_read_reg._entry_ptr.183, !250, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @stb6100_read_reg._entry.184, !250, !"_entry", i1 false, i1 false}
!258 = !{ptr @stb6100_read_reg._entry_ptr.185, !250, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @stb6100_read_reg._entry.186, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 166, i32 3}
!261 = !{ptr @stb6100_read_reg._entry_ptr.187, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @stb6100_read_reg._entry.188, !260, !"_entry", i1 false, i1 false}
!263 = !{ptr @stb6100_read_reg._entry_ptr.189, !260, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @stb6100_read_reg._entry.190, !260, !"_entry", i1 false, i1 false}
!265 = !{ptr @stb6100_read_reg._entry_ptr.191, !260, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @stb6100_read_reg._entry.192, !260, !"_entry", i1 false, i1 false}
!267 = !{ptr @stb6100_read_reg._entry_ptr.193, !260, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @stb6100_read_reg._entry.194, !269, !"_entry", i1 false, i1 false}
!269 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 167, i32 3}
!270 = !{ptr @stb6100_read_reg._entry_ptr.195, !269, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @stb6100_read_reg._entry.196, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @stb6100_read_reg._entry_ptr.197, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @stb6100_read_reg._entry.198, !269, !"_entry", i1 false, i1 false}
!274 = !{ptr @stb6100_read_reg._entry_ptr.199, !269, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @stb6100_read_reg._entry.200, !269, !"_entry", i1 false, i1 false}
!276 = !{ptr @stb6100_read_reg._entry_ptr.201, !269, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.202, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/dvb-frontends/stb6100.c", i32 235, i32 3}
!279 = !{ptr @.str.203, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @stb6100_get_status._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @stb6100_get_status._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.205, !278, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @stb6100_get_status._entry.204, !278, !"_entry", i1 false, i1 false}
!284 = !{ptr @stb6100_get_status._entry_ptr.206, !278, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.208, !278, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @stb6100_get_status._entry.207, !278, !"_entry", i1 false, i1 false}
!287 = !{ptr @stb6100_get_status._entry_ptr.209, !278, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.211, !278, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @stb6100_get_status._entry.210, !278, !"_entry", i1 false, i1 false}
!290 = !{ptr @stb6100_get_status._entry_ptr.212, !278, !"_entry_ptr", i1 false, i1 false}
!291 = !{i32 1, !"wchar_size", i32 2}
!292 = !{i32 1, !"min_enum_size", i32 4}
!293 = !{i32 8, !"branch-target-enforcement", i32 0}
!294 = !{i32 8, !"sign-return-address", i32 0}
!295 = !{i32 8, !"sign-return-address-all", i32 0}
!296 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!297 = !{i32 7, !"uwtable", i32 1}
!298 = !{i32 7, !"frame-pointer", i32 2}
!299 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!300 = !{!"branch_weights", i32 2000, i32 1}
!301 = !{!"branch_weights", i32 1, i32 2000}
