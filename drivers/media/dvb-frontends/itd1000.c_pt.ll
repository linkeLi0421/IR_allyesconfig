; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/itd1000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/itd1000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+itd1000_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_itd1000_attach\09\09\09\09"
module asm "\09.long\09__crc_itd1000_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_itd1000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22itd1000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_itd1000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.91 = type { i32, [10 x i8] }
%struct.anon.92 = type { i8, i32 }
%struct.anon.93 = type { i32, i8 }
%struct.itd1000_state = type { ptr, ptr, i32, [256 x i8] }
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

@__param_str_debug = internal constant [14 x i8] c"itd1000.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"itd1000.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [56 x i8] c"itd1000.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@itd1000_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ITD1000: successfully identified (ID: %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"itd1000_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/itd1000.c\00", [58 x i8] zeroinitializer }, align 32
@itd1000_attach._entry_ptr = internal global ptr @itd1000_attach._entry, section ".printk_index", align 4
@itd1000_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Integrant ITD1000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 0, i32 0 }, ptr @itd1000_release, ptr @itd1000_init, ptr @itd1000_sleep, ptr null, ptr null, ptr @itd1000_set_parameters, ptr null, ptr null, ptr @itd1000_get_frequency, ptr @itd1000_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_itd1000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_itd1000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_itd1000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @itd1000_attach to i32), ptr @__kstrtab_itd1000_attach, ptr @__kstrtabns_itd1000_attach }, section "___ksymtab+itd1000_attach", align 4
@__UNIQUE_ID_author292 = internal constant [50 x i8] c"itd1000.author=Patrick Boettcher <pb@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [45 x i8] c"itd1000.description=Integrant ITD1000 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"itd1000.file=drivers/media/dvb-frontends/itd1000\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"itd1000.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@itd1000_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014ITD1000: itd1000 I2C read failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"itd1000_read_reg\00", [47 x i8] zeroinitializer }, align 32
@itd1000_read_reg._entry_ptr = internal global ptr @itd1000_read_reg._entry, section ".printk_index", align 4
@itd1000_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014itd1000: i2c wr reg=%04x: len=%d is too big!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"itd1000_write_regs\00", [45 x i8] zeroinitializer }, align 32
@itd1000_write_regs._entry_ptr = internal global ptr @itd1000_write_regs._entry, section ".printk_index", align 4
@itd1000_write_regs._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014itd1000 I2C write failed\0A\00", [36 x i8] zeroinitializer }, align 32
@itd1000_write_regs._entry_ptr.9 = internal global ptr @itd1000_write_regs._entry.7, section ".printk_index", align 4
@itd1000_init_tab = internal constant { [28 x [2 x i8]], [40 x i8] } { [28 x [2 x i8]] [[2 x i8] c"ge", [2 x i8] c"h\80", [2 x i8] c"m;", [2 x i8] c"o\12", [2 x i8] c"r\F9", [2 x i8] c"s\FF", [2 x i8] c"t\B2", [2 x i8] c"u\C7", [2 x i8] c"y\F0", [2 x i8] c"z\80", [2 x i8] c"{\A0", [2 x i8] c"~O", [2 x i8] c"\82\88", [2 x i8] c"\83\80", [2 x i8] c"\84\80", [2 x i8] c"\85t", [2 x i8] c"\86\FF", [2 x i8] c"\88\02", [2 x i8] c"\89\16", [2 x i8] c"\8A\1F", [2 x i8] c"\94f", [2 x i8] c"\95f", [2 x i8] c"\96w", [2 x i8] c"\97\99", [2 x i8] c"\98\FF", [2 x i8] c"\99\FC", [2 x i8] c"\9A\BA", [2 x i8] c"\9B\AA"], [40 x i8] zeroinitializer }, align 32
@itd1000_set_lo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017ITD1000: frequency: %dkHz (wanted) %dkHz (set), PLLF = %d, PLLN = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"itd1000_set_lo\00", [17 x i8] zeroinitializer }, align 32
@itd1000_set_lo._entry_ptr = internal global ptr @itd1000_set_lo._entry, section ".printk_index", align 4
@itd1000_fre_values = internal constant { [10 x %struct.anon.91], [32 x i8] } { [10 x %struct.anon.91] [%struct.anon.91 { i32 1075000, [10 x i8] c"Y\1D\1C\17\16\0F\0E\0C\0B\0A" }, %struct.anon.91 { i32 1250000, [10 x i8] c"\89\1E\1D\17\15\0F\0E\0C\0B\0A" }, %struct.anon.91 { i32 1450000, [10 x i8] c"\89\1E\1D\17\15\0F\0E\0C\0B\0A" }, %struct.anon.91 { i32 1650000, [10 x i8] c"i\1E\1D\17\15\0F\0E\0C\0B\0A" }, %struct.anon.91 { i32 1750000, [10 x i8] c"i\1E\17\15\14\0F\0E\0C\0B\0A" }, %struct.anon.91 { i32 1850000, [10 x i8] c"i\1D\17\16\14\0F\0E\0D\0B\0A" }, %struct.anon.91 { i32 1900000, [10 x i8] c"i\1D\17\15\14\0F\0E\0D\0B\0A" }, %struct.anon.91 { i32 1950000, [10 x i8] c"i\1D\17\16\14\13\0E\0D\0B\0A" }, %struct.anon.91 { i32 2050000, [10 x i8] c"i\1E\1D\17\16\14\13\0E\0B\0A" }, %struct.anon.91 { i32 2150000, [10 x i8] c"i\1D\1C\17\15\14\13\0F\0E\0B" }], [32 x i8] zeroinitializer }, align 32
@itd1000_set_lo._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017ITD1000: fre_values: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@itd1000_set_lo._entry_ptr.14 = internal global ptr @itd1000_set_lo._entry.12, section ".printk_index", align 4
@itd1000_vcorg = internal constant { [15 x %struct.anon.92], [40 x i8] } { [15 x %struct.anon.92] [%struct.anon.92 { i8 1, i32 920000 }, %struct.anon.92 { i8 2, i32 971000 }, %struct.anon.92 { i8 3, i32 1031000 }, %struct.anon.92 { i8 4, i32 1091000 }, %struct.anon.92 { i8 5, i32 1171000 }, %struct.anon.92 { i8 6, i32 1281000 }, %struct.anon.92 { i8 7, i32 1381000 }, %struct.anon.92 { i8 8, i32 500000 }, %struct.anon.92 { i8 9, i32 1451000 }, %struct.anon.92 { i8 10, i32 1531000 }, %struct.anon.92 { i8 11, i32 1631000 }, %struct.anon.92 { i8 12, i32 1741000 }, %struct.anon.92 { i8 13, i32 1891000 }, %struct.anon.92 { i8 14, i32 2071000 }, %struct.anon.92 { i8 15, i32 2250000 }], [40 x i8] zeroinitializer }, align 32
@itd1000_set_vco._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017ITD1000: VCO: %dkHz: %d -> ADCOUT: %d %02x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"itd1000_set_vco\00", [16 x i8] zeroinitializer }, align 32
@itd1000_set_vco._entry_ptr = internal global ptr @itd1000_set_vco._entry, section ".printk_index", align 4
@itd1000_set_lpf_bw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017ITD1000: symbol_rate = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"itd1000_set_lpf_bw\00", [45 x i8] zeroinitializer }, align 32
@itd1000_set_lpf_bw._entry_ptr = internal global ptr @itd1000_set_lpf_bw._entry, section ".printk_index", align 4
@itd1000_lpf_pga = internal constant { [15 x %struct.anon.93], [40 x i8] } { [15 x %struct.anon.93] [%struct.anon.93 { i32 0, i8 -125 }, %struct.anon.93 { i32 5200000, i8 -125 }, %struct.anon.93 { i32 12200000, i8 67 }, %struct.anon.93 { i32 15400000, i8 35 }, %struct.anon.93 { i32 19800000, i8 35 }, %struct.anon.93 { i32 21500000, i8 35 }, %struct.anon.93 { i32 24500000, i8 35 }, %struct.anon.93 { i32 28400000, i8 35 }, %struct.anon.93 { i32 33400000, i8 35 }, %struct.anon.93 { i32 34400000, i8 20 }, %struct.anon.93 { i32 34400000, i8 20 }, %struct.anon.93 { i32 38400000, i8 20 }, %struct.anon.93 { i32 38400000, i8 20 }, %struct.anon.93 { i32 40400000, i8 20 }, %struct.anon.93 { i32 45400000, i8 20 }], [40 x i8] zeroinitializer }, align 32
@itd1000_set_lpf_bw._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017ITD1000: symrate: index: %d pgaext: %x, bbgvmin: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@itd1000_set_lpf_bw._entry_ptr.21 = internal global ptr @itd1000_set_lpf_bw._entry.19, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 15]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 9]
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 23, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 380, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"itd1000_tuner_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 344, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 80, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 50, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 62, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"itd1000_init_tab\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 279, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 230, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"itd1000_fre_values\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 197, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 240, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"itd1000_vcorg\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 145, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 180, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 125, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"itd1000_lpf_pga\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 99, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [41 x i8] c"../drivers/media/dvb-frontends/itd1000.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 132, i32 4 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_itd1000_attach, ptr @__param_debug, ptr @itd1000_attach._entry, ptr @itd1000_attach._entry_ptr, ptr @itd1000_read_reg._entry, ptr @itd1000_read_reg._entry_ptr, ptr @itd1000_set_lo._entry, ptr @itd1000_set_lo._entry.12, ptr @itd1000_set_lo._entry_ptr, ptr @itd1000_set_lo._entry_ptr.14, ptr @itd1000_set_lpf_bw._entry, ptr @itd1000_set_lpf_bw._entry.19, ptr @itd1000_set_lpf_bw._entry_ptr, ptr @itd1000_set_lpf_bw._entry_ptr.21, ptr @itd1000_set_vco._entry, ptr @itd1000_set_vco._entry_ptr, ptr @itd1000_write_regs._entry, ptr @itd1000_write_regs._entry.7, ptr @itd1000_write_regs._entry_ptr, ptr @itd1000_write_regs._entry_ptr.9, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @itd1000_tuner_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @itd1000_init_tab, ptr @.str.10, ptr @.str.11, ptr @itd1000_fre_values, ptr @.str.13, ptr @itd1000_vcorg, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @itd1000_lpf_pga, ptr @.str.20], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_write_regs._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_init_tab to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_set_lo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_fre_values to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_set_lo._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_vcorg to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_set_vco._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_set_lpf_bw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_lpf_pga to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @itd1000_set_lpf_bw._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @itd1000_attach(ptr noundef writeonly %fe, ptr noundef %i2c, ptr noundef %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 268) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cfg, ptr %call7.i.i, align 8
  %i2c2 = getelementptr inbounds %struct.itd1000_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c2, align 4
  %call3 = tail call fastcc i32 @itd1000_read_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0)
  %conv4 = and i32 %call3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv4)
  %cmp5.not = icmp eq i32 %conv4, 0
  br i1 %cmp5.not, label %do.end, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 0) #11
  %shadow = getelementptr inbounds %struct.itd1000_state, ptr %call7.i.i, i32 0, i32 3
  %3 = call ptr @memset(ptr %shadow, i32 255, i32 256)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end
  %indvars.iv = phi i32 [ 101, %do.end ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %4 = trunc i32 %indvars.iv to i8
  %call17 = tail call fastcc i32 @itd1000_read_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext %4)
  %conv18 = trunc i32 %call17 to i8
  %arrayidx = getelementptr %struct.itd1000_state, ptr %call7.i.i, i32 0, i32 3, i32 %indvars.iv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv18, ptr %arrayidx, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 156
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %6 = call ptr @memcpy(ptr %tuner_ops, ptr @itd1000_tuner_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %7 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then7 ], [ %fe, %for.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @itd1000_read_reg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [64 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %reg.addr = alloca i8, align 1
  %val = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !81
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = load i8, ptr %5, align 1
  %conv4 = zext i8 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv4, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %15 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %val, ptr %buf7, align 4
  %17 = add i8 %reg, -1
  %and = zext i8 %17 to i32
  %arrayidx = getelementptr %struct.itd1000_state, ptr %state, i32 0, i32 3, i32 %and
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #7
  %18 = getelementptr inbounds i8, ptr %buf.i, i32 2
  %19 = call ptr @memset(ptr %18, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %20 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %5, align 1
  %conv.i = zext i8 %23 to i16
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i, ptr %buf4.i, align 4
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %17, ptr %buf.i, align 1
  %arrayidx10.i = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx, align 1
  %30 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx10.i, align 1
  %i2c.i = getelementptr inbounds %struct.itd1000_state, ptr %state, i32 0, i32 1
  %31 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c.i, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %entry.itd1000_write_regs.exit_crit_edge, label %do.end18.i

entry.itd1000_write_regs.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_regs.exit

do.end18.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_regs.exit

itd1000_write_regs.exit:                          ; preds = %do.end18.i, %entry.itd1000_write_regs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #7
  %33 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c.i, align 4
  %call13 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %itd1000_write_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end:                                           ; preds = %itd1000_write_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val, align 1
  %conv19 = zext i8 %36 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -121, %do.end ], [ %conv19, %if.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @itd1000_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itd1000_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i.i23 = alloca [64 x i8], align 1
  %msg.i.i24 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %arrayidx10.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i, i32 0, i32 1
  %i2c.i.i = getelementptr inbounds %struct.itd1000_state, ptr %1, i32 0, i32 1
  br label %for.body

for.cond4.preheader:                              ; preds = %itd1000_write_reg.exit
  %4 = getelementptr inbounds i8, ptr %buf.i.i23, i32 2
  %5 = getelementptr inbounds i8, ptr %msg.i.i24, i32 4
  %flags.i.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i24, i32 0, i32 1
  %buf4.i.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i24, i32 0, i32 3
  %arrayidx10.i.i28 = getelementptr inbounds [64 x i8], ptr %buf.i.i23, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i23) #7
  %6 = call ptr @memset(ptr %4, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i24) #7
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %5, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i.i25 = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i.i24 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i25, ptr %msg.i.i24, align 4
  %13 = ptrtoint ptr %flags.i.i26 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i26, align 2
  %14 = ptrtoint ptr %buf4.i.i27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i.i23, ptr %buf4.i.i27, align 4
  %15 = ptrtoint ptr %buf.i.i23 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 112, ptr %buf.i.i23, align 1
  %16 = ptrtoint ptr %arrayidx10.i.i28 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -118, ptr %arrayidx10.i.i28, align 1
  %17 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c.i.i, align 4
  %call12.i.i30 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i.i24, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i30)
  %cmp13.not.i.i31 = icmp eq i32 %call12.i.i30, 1
  br i1 %cmp13.not.i.i31, label %for.cond4.preheader.itd1000_write_reg.exit36_crit_edge, label %do.end18.i.i33

for.cond4.preheader.itd1000_write_reg.exit36_crit_edge: ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit36

for.body:                                         ; preds = %itd1000_write_reg.exit.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %inc, %itd1000_write_reg.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [28 x [2 x i8]], ptr @itd1000_init_tab, i32 0, i32 %i.037
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr [28 x [2 x i8]], ptr @itd1000_init_tab, i32 0, i32 %i.037, i32 1
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx3, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #7
  %23 = call ptr @memset(ptr %2, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 196607, ptr %3, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %conv.i.i = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i.i, align 2
  %31 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf.i.i, ptr %buf4.i.i, align 4
  %32 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %20, ptr %buf.i.i, align 1
  %33 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %22, ptr %arrayidx10.i.i, align 1
  %34 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i.i, align 4
  %call12.i.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i)
  %cmp13.not.i.i = icmp eq i32 %call12.i.i, 1
  br i1 %cmp13.not.i.i, label %for.body.itd1000_write_reg.exit_crit_edge, label %do.end18.i.i

for.body.itd1000_write_reg.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit

do.end18.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit

itd1000_write_reg.exit:                           ; preds = %do.end18.i.i, %for.body.itd1000_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #7
  %idxprom.i = zext i8 %20 to i32
  %arrayidx.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 %idxprom.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %22, ptr %arrayidx.i, align 1
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.cond4.preheader, label %itd1000_write_reg.exit.for.body_crit_edge

itd1000_write_reg.exit.for.body_crit_edge:        ; preds = %itd1000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end18.i.i33:                                   ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit36

itd1000_write_reg.exit36:                         ; preds = %do.end18.i.i33, %for.cond4.preheader.itd1000_write_reg.exit36_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i24) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i23) #7
  %arrayidx.i35 = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 112
  %37 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -118, ptr %arrayidx.i35, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i23) #7
  %38 = call ptr @memset(ptr %4, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i24) #7
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 196607, ptr %5, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 1
  %conv.i.i25.1 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i.i24 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i.i25.1, ptr %msg.i.i24, align 4
  %45 = ptrtoint ptr %flags.i.i26 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i.i26, align 2
  %46 = ptrtoint ptr %buf4.i.i27 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf.i.i23, ptr %buf4.i.i27, align 4
  %47 = ptrtoint ptr %buf.i.i23 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 113, ptr %buf.i.i23, align 1
  %48 = ptrtoint ptr %arrayidx10.i.i28 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 -121, ptr %arrayidx10.i.i28, align 1
  %49 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c.i.i, align 4
  %call12.i.i30.1 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i.i24, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i30.1)
  %cmp13.not.i.i31.1 = icmp eq i32 %call12.i.i30.1, 1
  br i1 %cmp13.not.i.i31.1, label %itd1000_write_reg.exit36.itd1000_write_reg.exit36.1_crit_edge, label %do.end18.i.i33.1

itd1000_write_reg.exit36.itd1000_write_reg.exit36.1_crit_edge: ; preds = %itd1000_write_reg.exit36
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit36.1

do.end18.i.i33.1:                                 ; preds = %itd1000_write_reg.exit36
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i32.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit36.1

itd1000_write_reg.exit36.1:                       ; preds = %do.end18.i.i33.1, %itd1000_write_reg.exit36.itd1000_write_reg.exit36.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i24) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i23) #7
  %arrayidx.i35.1 = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 113
  %51 = ptrtoint ptr %arrayidx.i35.1 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -121, ptr %arrayidx.i35.1, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i23) #7
  %52 = call ptr @memset(ptr %4, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i24) #7
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 196607, ptr %5, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 1
  %conv.i.i25.2 = zext i8 %57 to i16
  %58 = ptrtoint ptr %msg.i.i24 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i.i25.2, ptr %msg.i.i24, align 4
  %59 = ptrtoint ptr %flags.i.i26 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i.i26, align 2
  %60 = ptrtoint ptr %buf4.i.i27 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %buf.i.i23, ptr %buf4.i.i27, align 4
  %61 = ptrtoint ptr %buf.i.i23 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 120, ptr %buf.i.i23, align 1
  %62 = ptrtoint ptr %arrayidx10.i.i28 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %arrayidx10.i.i28, align 1
  %63 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c.i.i, align 4
  %call12.i.i30.2 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i.i24, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i30.2)
  %cmp13.not.i.i31.2 = icmp eq i32 %call12.i.i30.2, 1
  br i1 %cmp13.not.i.i31.2, label %itd1000_write_reg.exit36.1.itd1000_write_reg.exit36.2_crit_edge, label %do.end18.i.i33.2

itd1000_write_reg.exit36.1.itd1000_write_reg.exit36.2_crit_edge: ; preds = %itd1000_write_reg.exit36.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit36.2

do.end18.i.i33.2:                                 ; preds = %itd1000_write_reg.exit36.1
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i32.2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit36.2

itd1000_write_reg.exit36.2:                       ; preds = %do.end18.i.i33.2, %itd1000_write_reg.exit36.1.itd1000_write_reg.exit36.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i24) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i23) #7
  %arrayidx.i35.2 = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 120
  %65 = ptrtoint ptr %arrayidx.i35.2 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 3, ptr %arrayidx.i35.2, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i23) #7
  %66 = call ptr @memset(ptr %4, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i24) #7
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 196607, ptr %5, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 1
  %conv.i.i25.3 = zext i8 %71 to i16
  %72 = ptrtoint ptr %msg.i.i24 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i.i25.3, ptr %msg.i.i24, align 4
  %73 = ptrtoint ptr %flags.i.i26 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i.i26, align 2
  %74 = ptrtoint ptr %buf4.i.i27 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %buf.i.i23, ptr %buf4.i.i27, align 4
  %75 = ptrtoint ptr %buf.i.i23 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 125, ptr %buf.i.i23, align 1
  %76 = ptrtoint ptr %arrayidx10.i.i28 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 3, ptr %arrayidx10.i.i28, align 1
  %77 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c.i.i, align 4
  %call12.i.i30.3 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i.i24, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i30.3)
  %cmp13.not.i.i31.3 = icmp eq i32 %call12.i.i30.3, 1
  br i1 %cmp13.not.i.i31.3, label %itd1000_write_reg.exit36.2.itd1000_write_reg.exit36.3_crit_edge, label %do.end18.i.i33.3

itd1000_write_reg.exit36.2.itd1000_write_reg.exit36.3_crit_edge: ; preds = %itd1000_write_reg.exit36.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit36.3

do.end18.i.i33.3:                                 ; preds = %itd1000_write_reg.exit36.2
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i32.3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit36.3

itd1000_write_reg.exit36.3:                       ; preds = %do.end18.i.i33.3, %itd1000_write_reg.exit36.2.itd1000_write_reg.exit36.3_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i24) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i23) #7
  %arrayidx.i35.3 = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 125
  %79 = ptrtoint ptr %arrayidx.i35.3 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %arrayidx.i35.3, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i23) #7
  %80 = call ptr @memset(ptr %4, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i24) #7
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 196607, ptr %5, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 1
  %conv.i.i25.4 = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i.i24 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i.i25.4, ptr %msg.i.i24, align 4
  %87 = ptrtoint ptr %flags.i.i26 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i.i26, align 2
  %88 = ptrtoint ptr %buf4.i.i27 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %buf.i.i23, ptr %buf4.i.i27, align 4
  %89 = ptrtoint ptr %buf.i.i23 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -121, ptr %buf.i.i23, align 1
  %90 = ptrtoint ptr %arrayidx10.i.i28 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 46, ptr %arrayidx10.i.i28, align 1
  %91 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i2c.i.i, align 4
  %call12.i.i30.4 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %msg.i.i24, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i30.4)
  %cmp13.not.i.i31.4 = icmp eq i32 %call12.i.i30.4, 1
  br i1 %cmp13.not.i.i31.4, label %itd1000_write_reg.exit36.3.itd1000_write_reg.exit36.4_crit_edge, label %do.end18.i.i33.4

itd1000_write_reg.exit36.3.itd1000_write_reg.exit36.4_crit_edge: ; preds = %itd1000_write_reg.exit36.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit36.4

do.end18.i.i33.4:                                 ; preds = %itd1000_write_reg.exit36.3
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i32.4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit36.4

itd1000_write_reg.exit36.4:                       ; preds = %do.end18.i.i33.4, %itd1000_write_reg.exit36.3.itd1000_write_reg.exit36.4_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i24) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i23) #7
  %arrayidx.i35.4 = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 135
  %93 = ptrtoint ptr %arrayidx.i35.4 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 46, ptr %arrayidx.i35.4, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @itd1000_sleep(ptr nocapture noundef readnone %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @itd1000_set_parameters(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i.i26 = alloca [64 x i8], align 1
  %msg.i.i27 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i131.i = alloca [64 x i8], align 1
  %msg.i.i132.i = alloca %struct.i2c_msg, align 4
  %buf.i.i118.i = alloca [64 x i8], align 1
  %msg.i.i119.i = alloca %struct.i2c_msg, align 4
  %buf.i.i105.i = alloca [64 x i8], align 1
  %msg.i.i106.i = alloca %struct.i2c_msg, align 4
  %buf.i.i92.i = alloca [64 x i8], align 1
  %msg.i.i93.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i12 = alloca [64 x i8], align 1
  %msg.i.i.i13 = alloca %struct.i2c_msg, align 4
  %buf.i.i138.i.i = alloca [64 x i8], align 1
  %msg.i.i139.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i125.i.i = alloca [64 x i8], align 1
  %msg.i.i126.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i112.i.i = alloca [64 x i8], align 1
  %msg.i.i113.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i.i = alloca [64 x i8], align 1
  %msg.i.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i436.i = alloca [64 x i8], align 1
  %msg.i.i437.i = alloca %struct.i2c_msg, align 4
  %buf.i.i423.i = alloca [64 x i8], align 1
  %msg.i.i424.i = alloca %struct.i2c_msg, align 4
  %buf.i.i410.i = alloca [64 x i8], align 1
  %msg.i.i411.i = alloca %struct.i2c_msg, align 4
  %buf.i.i397.i = alloca [64 x i8], align 1
  %msg.i.i398.i = alloca %struct.i2c_msg, align 4
  %buf.i.i384.i = alloca [64 x i8], align 1
  %msg.i.i385.i = alloca %struct.i2c_msg, align 4
  %buf.i.i371.i = alloca [64 x i8], align 1
  %msg.i.i372.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [64 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %mul.i = mul i32 %3, 1000
  %div1367.i = lshr i32 %mul.i, 5
  %rem.i = urem i32 %div1367.i, 1000000
  %conv.i = zext i32 %rem.i to i64
  %div2.i = udiv i32 %mul.i, 32000000
  %mul3.i = shl nuw nsw i64 %conv.i, 20
  %4 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul3.i) #12, !srcloc !82
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul3.i, i64 %4, i32 0) #12, !srcloc !83
  %asmresult10.i.i = extractvalue { i64, i32 } %5, 0
  %div167368.i = lshr i64 %asmresult10.i.i, 18
  %conv189.i = trunc i64 %div167368.i to i32
  %mul190.i = mul nuw nsw i32 %div2.i, 1000
  %mul191.i = mul i32 %conv189.i, 1000
  %div192369.i = lshr i32 %mul191.i, 20
  %add193.i = add nuw nsw i32 %div192369.i, %mul190.i
  %mul195.i = shl nuw nsw i32 %add193.i, 5
  %frequency.i = getelementptr inbounds %struct.itd1000_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul195.i, ptr %frequency.i, align 4
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool196.not.i = icmp eq i32 %7, 0
  br i1 %tobool196.not.i, label %entry.do.end204.i_crit_edge, label %do.end.i

entry.do.end204.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end204.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call201.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %3, i32 noundef %mul195.i, i32 noundef %conv189.i, i32 noundef %div2.i) #11
  br label %do.end204.i

do.end204.i:                                      ; preds = %do.end.i, %entry.do.end204.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i.i) #7
  %8 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 2
  %9 = call ptr @memset(ptr %8, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 196607, ptr %10, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv.i.i.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i.i.i, ptr %buf4.i.i.i, align 4
  %19 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 104, ptr %buf.i.i.i, align 1
  %arrayidx10.i.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -128, ptr %arrayidx10.i.i.i, align 1
  %i2c.i.i.i = getelementptr inbounds %struct.itd1000_state, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i.i)
  %cmp13.not.i.i.i = icmp eq i32 %call12.i.i.i, 1
  br i1 %cmp13.not.i.i.i, label %do.end204.i.itd1000_write_reg.exit.i_crit_edge, label %do.end18.i.i.i

do.end204.i.itd1000_write_reg.exit.i_crit_edge:   ; preds = %do.end204.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit.i

do.end18.i.i.i:                                   ; preds = %do.end204.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit.i

itd1000_write_reg.exit.i:                         ; preds = %do.end18.i.i.i, %do.end204.i.itd1000_write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i.i) #7
  %arrayidx.i.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 104
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -128, ptr %arrayidx.i.i, align 1
  %conv207.i = trunc i32 %div2.i to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i371.i) #7
  %24 = getelementptr inbounds i8, ptr %buf.i.i371.i, i32 2
  %25 = call ptr @memset(ptr %24, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i372.i) #7
  %26 = getelementptr inbounds i8, ptr %msg.i.i372.i, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i.i373.i = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i.i372.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i373.i, ptr %msg.i.i372.i, align 4
  %flags.i.i374.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i372.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i.i374.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i.i374.i, align 2
  %buf4.i.i375.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i372.i, i32 0, i32 3
  %34 = ptrtoint ptr %buf4.i.i375.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i.i371.i, ptr %buf4.i.i375.i, align 4
  %35 = ptrtoint ptr %buf.i.i371.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 105, ptr %buf.i.i371.i, align 1
  %arrayidx10.i.i376.i = getelementptr inbounds [64 x i8], ptr %buf.i.i371.i, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx10.i.i376.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv207.i, ptr %arrayidx10.i.i376.i, align 1
  %37 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i378.i = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i.i372.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i378.i)
  %cmp13.not.i.i379.i = icmp eq i32 %call12.i.i378.i, 1
  br i1 %cmp13.not.i.i379.i, label %itd1000_write_reg.exit.i.itd1000_write_reg.exit383.i_crit_edge, label %do.end18.i.i381.i

itd1000_write_reg.exit.i.itd1000_write_reg.exit383.i_crit_edge: ; preds = %itd1000_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit383.i

do.end18.i.i381.i:                                ; preds = %itd1000_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i380.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit383.i

itd1000_write_reg.exit383.i:                      ; preds = %do.end18.i.i381.i, %itd1000_write_reg.exit.i.itd1000_write_reg.exit383.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i372.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i371.i) #7
  %arrayidx.i382.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 105
  %39 = ptrtoint ptr %arrayidx.i382.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv207.i, ptr %arrayidx.i382.i, align 1
  %call209.i = call fastcc i32 @itd1000_read_reg(ptr noundef %1, i8 noundef zeroext 106) #7
  %and210.i = and i32 %call209.i, 240
  %shr211.i = lshr i32 %conv189.i, 16
  %and212.i = and i32 %shr211.i, 15
  %or213.i = or i32 %and210.i, %and212.i
  %conv214.i = trunc i32 %or213.i to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i384.i) #7
  %40 = getelementptr inbounds i8, ptr %buf.i.i384.i, i32 2
  %41 = call ptr @memset(ptr %40, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i385.i) #7
  %42 = getelementptr inbounds i8, ptr %msg.i.i385.i, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 196607, ptr %42, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %conv.i.i386.i = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i.i385.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i.i386.i, ptr %msg.i.i385.i, align 4
  %flags.i.i387.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i385.i, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i.i387.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i.i387.i, align 2
  %buf4.i.i388.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i385.i, i32 0, i32 3
  %50 = ptrtoint ptr %buf4.i.i388.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf.i.i384.i, ptr %buf4.i.i388.i, align 4
  %51 = ptrtoint ptr %buf.i.i384.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 106, ptr %buf.i.i384.i, align 1
  %arrayidx10.i.i389.i = getelementptr inbounds [64 x i8], ptr %buf.i.i384.i, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx10.i.i389.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv214.i, ptr %arrayidx10.i.i389.i, align 1
  %53 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i391.i = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i.i385.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i391.i)
  %cmp13.not.i.i392.i = icmp eq i32 %call12.i.i391.i, 1
  br i1 %cmp13.not.i.i392.i, label %itd1000_write_reg.exit383.i.itd1000_write_reg.exit396.i_crit_edge, label %do.end18.i.i394.i

itd1000_write_reg.exit383.i.itd1000_write_reg.exit396.i_crit_edge: ; preds = %itd1000_write_reg.exit383.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit396.i

do.end18.i.i394.i:                                ; preds = %itd1000_write_reg.exit383.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i393.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit396.i

itd1000_write_reg.exit396.i:                      ; preds = %do.end18.i.i394.i, %itd1000_write_reg.exit383.i.itd1000_write_reg.exit396.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i385.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i384.i) #7
  %arrayidx.i395.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 106
  %55 = ptrtoint ptr %arrayidx.i395.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv214.i, ptr %arrayidx.i395.i, align 1
  %shr216370.i = lshr i64 %asmresult10.i.i, 26
  %conv218.i = trunc i64 %shr216370.i to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i397.i) #7
  %56 = getelementptr inbounds i8, ptr %buf.i.i397.i, i32 2
  %57 = call ptr @memset(ptr %56, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i398.i) #7
  %58 = getelementptr inbounds i8, ptr %msg.i.i398.i, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 196607, ptr %58, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv.i.i399.i = zext i8 %63 to i16
  %64 = ptrtoint ptr %msg.i.i398.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i.i399.i, ptr %msg.i.i398.i, align 4
  %flags.i.i400.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i398.i, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i.i400.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i.i400.i, align 2
  %buf4.i.i401.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i398.i, i32 0, i32 3
  %66 = ptrtoint ptr %buf4.i.i401.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf.i.i397.i, ptr %buf4.i.i401.i, align 4
  %67 = ptrtoint ptr %buf.i.i397.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 107, ptr %buf.i.i397.i, align 1
  %arrayidx10.i.i402.i = getelementptr inbounds [64 x i8], ptr %buf.i.i397.i, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx10.i.i402.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv218.i, ptr %arrayidx10.i.i402.i, align 1
  %69 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i404.i = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i.i398.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i404.i)
  %cmp13.not.i.i405.i = icmp eq i32 %call12.i.i404.i, 1
  br i1 %cmp13.not.i.i405.i, label %itd1000_write_reg.exit396.i.itd1000_write_reg.exit409.i_crit_edge, label %do.end18.i.i407.i

itd1000_write_reg.exit396.i.itd1000_write_reg.exit409.i_crit_edge: ; preds = %itd1000_write_reg.exit396.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit409.i

do.end18.i.i407.i:                                ; preds = %itd1000_write_reg.exit396.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i406.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit409.i

itd1000_write_reg.exit409.i:                      ; preds = %do.end18.i.i407.i, %itd1000_write_reg.exit396.i.itd1000_write_reg.exit409.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i398.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i397.i) #7
  %arrayidx.i408.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 107
  %71 = ptrtoint ptr %arrayidx.i408.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv218.i, ptr %arrayidx.i408.i, align 1
  %conv222.i = trunc i64 %div167368.i to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i410.i) #7
  %72 = getelementptr inbounds i8, ptr %buf.i.i410.i, i32 2
  %73 = call ptr @memset(ptr %72, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i411.i) #7
  %74 = getelementptr inbounds i8, ptr %msg.i.i411.i, i32 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 196607, ptr %74, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1
  %conv.i.i412.i = zext i8 %79 to i16
  %80 = ptrtoint ptr %msg.i.i411.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i.i412.i, ptr %msg.i.i411.i, align 4
  %flags.i.i413.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i411.i, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i.i413.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i.i413.i, align 2
  %buf4.i.i414.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i411.i, i32 0, i32 3
  %82 = ptrtoint ptr %buf4.i.i414.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %buf.i.i410.i, ptr %buf4.i.i414.i, align 4
  %83 = ptrtoint ptr %buf.i.i410.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 108, ptr %buf.i.i410.i, align 1
  %arrayidx10.i.i415.i = getelementptr inbounds [64 x i8], ptr %buf.i.i410.i, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx10.i.i415.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv222.i, ptr %arrayidx10.i.i415.i, align 1
  %85 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i417.i = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %msg.i.i411.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i417.i)
  %cmp13.not.i.i418.i = icmp eq i32 %call12.i.i417.i, 1
  br i1 %cmp13.not.i.i418.i, label %itd1000_write_reg.exit409.i.itd1000_write_reg.exit422.i_crit_edge, label %do.end18.i.i420.i

itd1000_write_reg.exit409.i.itd1000_write_reg.exit422.i_crit_edge: ; preds = %itd1000_write_reg.exit409.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit422.i

do.end18.i.i420.i:                                ; preds = %itd1000_write_reg.exit409.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i419.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit422.i

itd1000_write_reg.exit422.i:                      ; preds = %do.end18.i.i420.i, %itd1000_write_reg.exit409.i.itd1000_write_reg.exit422.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i411.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i410.i) #7
  %arrayidx.i421.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 108
  %87 = ptrtoint ptr %arrayidx.i421.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv222.i, ptr %arrayidx.i421.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1075000, i32 %3)
  %cmp226.not.i = icmp ugt i32 %3, 1075000
  br i1 %cmp226.not.i, label %for.inc255.i, label %itd1000_write_reg.exit422.i.do.body229.i_crit_edge

itd1000_write_reg.exit422.i.do.body229.i_crit_edge: ; preds = %itd1000_write_reg.exit422.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i

do.body229.i:                                     ; preds = %for.inc255.8.i.do.body229.i_crit_edge, %for.inc255.7.i.do.body229.i_crit_edge, %for.inc255.6.i.do.body229.i_crit_edge, %for.inc255.5.i.do.body229.i_crit_edge, %for.inc255.4.i.do.body229.i_crit_edge, %for.inc255.3.i.do.body229.i_crit_edge, %for.inc255.2.i.do.body229.i_crit_edge, %for.inc255.1.i.do.body229.i_crit_edge, %for.inc255.i.do.body229.i_crit_edge, %itd1000_write_reg.exit422.i.do.body229.i_crit_edge
  %i.0452.lcssa.i = phi i32 [ 0, %itd1000_write_reg.exit422.i.do.body229.i_crit_edge ], [ 1, %for.inc255.i.do.body229.i_crit_edge ], [ 2, %for.inc255.1.i.do.body229.i_crit_edge ], [ 3, %for.inc255.2.i.do.body229.i_crit_edge ], [ 4, %for.inc255.3.i.do.body229.i_crit_edge ], [ 5, %for.inc255.4.i.do.body229.i_crit_edge ], [ 6, %for.inc255.5.i.do.body229.i_crit_edge ], [ 7, %for.inc255.6.i.do.body229.i_crit_edge ], [ 8, %for.inc255.7.i.do.body229.i_crit_edge ], [ 9, %for.inc255.8.i.do.body229.i_crit_edge ]
  %88 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool230.not.i = icmp eq i32 %88, 0
  br i1 %tobool230.not.i, label %do.body229.i.do.end239.i_crit_edge, label %do.end234.i

do.body229.i.do.end239.i_crit_edge:               ; preds = %do.body229.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end239.i

do.end234.i:                                      ; preds = %do.body229.i
  call void @__sanitizer_cov_trace_pc() #9
  %call236.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %i.0452.lcssa.i) #11
  br label %do.end239.i

do.end239.i:                                      ; preds = %do.end234.i, %do.body229.i.do.end239.i_crit_edge
  %values.i = getelementptr [10 x %struct.anon.91], ptr @itd1000_fre_values, i32 0, i32 %i.0452.lcssa.i, i32 1
  %89 = ptrtoint ptr %values.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %values.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i423.i) #7
  %91 = getelementptr inbounds i8, ptr %buf.i.i423.i, i32 2
  %92 = call ptr @memset(ptr %91, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i424.i) #7
  %93 = getelementptr inbounds i8, ptr %msg.i.i424.i, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 196607, ptr %93, align 4
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 1
  %conv.i.i425.i = zext i8 %98 to i16
  %99 = ptrtoint ptr %msg.i.i424.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i.i425.i, ptr %msg.i.i424.i, align 4
  %flags.i.i426.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i424.i, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i.i426.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i.i426.i, align 2
  %buf4.i.i427.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i424.i, i32 0, i32 3
  %101 = ptrtoint ptr %buf4.i.i427.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %buf.i.i423.i, ptr %buf4.i.i427.i, align 4
  %102 = ptrtoint ptr %buf.i.i423.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 124, ptr %buf.i.i423.i, align 1
  %arrayidx10.i.i428.i = getelementptr inbounds [64 x i8], ptr %buf.i.i423.i, i32 0, i32 1
  %103 = ptrtoint ptr %arrayidx10.i.i428.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %90, ptr %arrayidx10.i.i428.i, align 1
  %104 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i430.i = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %msg.i.i424.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i430.i)
  %cmp13.not.i.i431.i = icmp eq i32 %call12.i.i430.i, 1
  br i1 %cmp13.not.i.i431.i, label %do.end239.i.itd1000_write_reg.exit435.i_crit_edge, label %do.end18.i.i433.i

do.end239.i.itd1000_write_reg.exit435.i_crit_edge: ; preds = %do.end239.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit435.i

do.end18.i.i433.i:                                ; preds = %do.end239.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i432.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit435.i

itd1000_write_reg.exit435.i:                      ; preds = %do.end18.i.i433.i, %do.end239.i.itd1000_write_reg.exit435.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i424.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i423.i) #7
  %arrayidx.i434.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 124
  %106 = ptrtoint ptr %arrayidx.i434.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %90, ptr %arrayidx.i434.i, align 1
  %107 = getelementptr inbounds i8, ptr %buf.i.i436.i, i32 2
  %108 = getelementptr inbounds i8, ptr %msg.i.i437.i, i32 4
  %flags.i.i439.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i437.i, i32 0, i32 1
  %buf4.i.i440.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i437.i, i32 0, i32 3
  %arrayidx10.i.i441.i = getelementptr inbounds [64 x i8], ptr %buf.i.i436.i, i32 0, i32 1
  br label %for.body246.i

for.body246.i:                                    ; preds = %itd1000_write_reg.exit448.i.for.body246.i_crit_edge, %itd1000_write_reg.exit435.i
  %j.0453.i = phi i32 [ 0, %itd1000_write_reg.exit435.i ], [ %add251.i, %itd1000_write_reg.exit448.i.for.body246.i_crit_edge ]
  %109 = trunc i32 %j.0453.i to i8
  %conv248.i = add i8 %109, -117
  %add251.i = add nuw nsw i32 %j.0453.i, 1
  %arrayidx252.i = getelementptr [10 x %struct.anon.91], ptr @itd1000_fre_values, i32 0, i32 %i.0452.lcssa.i, i32 1, i32 %add251.i
  %110 = ptrtoint ptr %arrayidx252.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx252.i, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i436.i) #7
  %112 = call ptr @memset(ptr %107, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i437.i) #7
  %113 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 196607, ptr %108, align 4
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %115, align 1
  %conv.i.i438.i = zext i8 %117 to i16
  %118 = ptrtoint ptr %msg.i.i437.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i.i438.i, ptr %msg.i.i437.i, align 4
  %119 = ptrtoint ptr %flags.i.i439.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %flags.i.i439.i, align 2
  %120 = ptrtoint ptr %buf4.i.i440.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %buf.i.i436.i, ptr %buf4.i.i440.i, align 4
  %121 = ptrtoint ptr %buf.i.i436.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv248.i, ptr %buf.i.i436.i, align 1
  %122 = ptrtoint ptr %arrayidx10.i.i441.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %111, ptr %arrayidx10.i.i441.i, align 1
  %123 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i443.i = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %msg.i.i437.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i443.i)
  %cmp13.not.i.i444.i = icmp eq i32 %call12.i.i443.i, 1
  br i1 %cmp13.not.i.i444.i, label %for.body246.i.itd1000_write_reg.exit448.i_crit_edge, label %do.end18.i.i446.i

for.body246.i.itd1000_write_reg.exit448.i_crit_edge: ; preds = %for.body246.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit448.i

do.end18.i.i446.i:                                ; preds = %for.body246.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i445.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit448.i

itd1000_write_reg.exit448.i:                      ; preds = %do.end18.i.i446.i, %for.body246.i.itd1000_write_reg.exit448.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i437.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i436.i) #7
  %idxprom.i.i = zext i8 %conv248.i to i32
  %arrayidx.i447.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 %idxprom.i.i
  %125 = ptrtoint ptr %arrayidx.i447.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %111, ptr %arrayidx.i447.i, align 1
  %exitcond.not.i = icmp eq i32 %add251.i, 9
  br i1 %exitcond.not.i, label %itd1000_write_reg.exit448.i.for.end257.i_crit_edge, label %itd1000_write_reg.exit448.i.for.body246.i_crit_edge

itd1000_write_reg.exit448.i.for.body246.i_crit_edge: ; preds = %itd1000_write_reg.exit448.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body246.i

itd1000_write_reg.exit448.i.for.end257.i_crit_edge: ; preds = %itd1000_write_reg.exit448.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end257.i

for.inc255.i:                                     ; preds = %itd1000_write_reg.exit422.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250000, i32 %3)
  %cmp226.not.1.i = icmp ugt i32 %3, 1250000
  br i1 %cmp226.not.1.i, label %for.inc255.1.i, label %for.inc255.i.do.body229.i_crit_edge

for.inc255.i.do.body229.i_crit_edge:              ; preds = %for.inc255.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i

for.inc255.1.i:                                   ; preds = %for.inc255.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1450000, i32 %3)
  %cmp226.not.2.i = icmp ugt i32 %3, 1450000
  br i1 %cmp226.not.2.i, label %for.inc255.2.i, label %for.inc255.1.i.do.body229.i_crit_edge

for.inc255.1.i.do.body229.i_crit_edge:            ; preds = %for.inc255.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i

for.inc255.2.i:                                   ; preds = %for.inc255.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1650000, i32 %3)
  %cmp226.not.3.i = icmp ugt i32 %3, 1650000
  br i1 %cmp226.not.3.i, label %for.inc255.3.i, label %for.inc255.2.i.do.body229.i_crit_edge

for.inc255.2.i.do.body229.i_crit_edge:            ; preds = %for.inc255.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i

for.inc255.3.i:                                   ; preds = %for.inc255.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1750000, i32 %3)
  %cmp226.not.4.i = icmp ugt i32 %3, 1750000
  br i1 %cmp226.not.4.i, label %for.inc255.4.i, label %for.inc255.3.i.do.body229.i_crit_edge

for.inc255.3.i.do.body229.i_crit_edge:            ; preds = %for.inc255.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i

for.inc255.4.i:                                   ; preds = %for.inc255.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1850000, i32 %3)
  %cmp226.not.5.i = icmp ugt i32 %3, 1850000
  br i1 %cmp226.not.5.i, label %for.inc255.5.i, label %for.inc255.4.i.do.body229.i_crit_edge

for.inc255.4.i.do.body229.i_crit_edge:            ; preds = %for.inc255.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i

for.inc255.5.i:                                   ; preds = %for.inc255.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1900000, i32 %3)
  %cmp226.not.6.i = icmp ugt i32 %3, 1900000
  br i1 %cmp226.not.6.i, label %for.inc255.6.i, label %for.inc255.5.i.do.body229.i_crit_edge

for.inc255.5.i.do.body229.i_crit_edge:            ; preds = %for.inc255.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i

for.inc255.6.i:                                   ; preds = %for.inc255.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950000, i32 %3)
  %cmp226.not.7.i = icmp ugt i32 %3, 1950000
  br i1 %cmp226.not.7.i, label %for.inc255.7.i, label %for.inc255.6.i.do.body229.i_crit_edge

for.inc255.6.i.do.body229.i_crit_edge:            ; preds = %for.inc255.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i

for.inc255.7.i:                                   ; preds = %for.inc255.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2050000, i32 %3)
  %cmp226.not.8.i = icmp ugt i32 %3, 2050000
  br i1 %cmp226.not.8.i, label %for.inc255.8.i, label %for.inc255.7.i.do.body229.i_crit_edge

for.inc255.7.i.do.body229.i_crit_edge:            ; preds = %for.inc255.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i

for.inc255.8.i:                                   ; preds = %for.inc255.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2150000, i32 %3)
  %cmp226.not.9.i = icmp ugt i32 %3, 2150000
  br i1 %cmp226.not.9.i, label %for.inc255.8.i.for.end257.i_crit_edge, label %for.inc255.8.i.do.body229.i_crit_edge

for.inc255.8.i.do.body229.i_crit_edge:            ; preds = %for.inc255.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body229.i

for.inc255.8.i.for.end257.i_crit_edge:            ; preds = %for.inc255.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end257.i

for.end257.i:                                     ; preds = %for.inc255.8.i.for.end257.i_crit_edge, %itd1000_write_reg.exit448.i.for.end257.i_crit_edge
  %call.i.i = call fastcc i32 @itd1000_read_reg(ptr noundef %1, i8 noundef zeroext 120) #7
  %call1.i.i = call fastcc i32 @itd1000_read_reg(ptr noundef %1, i8 noundef zeroext 112) #7
  %conv3.i.i = and i32 %call1.i.i, 15
  %126 = trunc i32 %call.i.i to i8
  %conv5.i.i = or i8 %126, 64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i.i.i) #7
  %127 = getelementptr inbounds i8, ptr %buf.i.i.i.i, i32 2
  %128 = call ptr @memset(ptr %127, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i) #7
  %129 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 196607, ptr %129, align 4
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %132, align 1
  %conv.i.i.i.i = zext i8 %134 to i16
  %135 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %buf4.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 3
  %137 = ptrtoint ptr %buf4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %buf.i.i.i.i, ptr %buf4.i.i.i.i, align 4
  %138 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 120, ptr %buf.i.i.i.i, align 1
  %arrayidx10.i.i.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %arrayidx10.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv5.i.i, ptr %arrayidx10.i.i.i.i, align 1
  %140 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i.i.i = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %msg.i.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i.i.i)
  %cmp13.not.i.i.i.i = icmp eq i32 %call12.i.i.i.i, 1
  br i1 %cmp13.not.i.i.i.i, label %for.end257.i.itd1000_write_reg.exit.i.i_crit_edge, label %do.end18.i.i.i.i

for.end257.i.itd1000_write_reg.exit.i.i_crit_edge: ; preds = %for.end257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit.i.i

do.end18.i.i.i.i:                                 ; preds = %for.end257.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit.i.i

itd1000_write_reg.exit.i.i:                       ; preds = %do.end18.i.i.i.i, %for.end257.i.itd1000_write_reg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i.i.i) #7
  %arrayidx.i.i.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 120
  %142 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv5.i.i, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 920000, i32 %3)
  %cmp9.i.i = icmp ult i32 %3, 920000
  br i1 %cmp9.i.i, label %itd1000_write_reg.exit.i.i.if.then.i.i_crit_edge, label %for.cond.i.i

itd1000_write_reg.exit.i.i.if.then.i.i_crit_edge: ; preds = %itd1000_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.i.i:                                     ; preds = %itd1000_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 971000, i32 %3)
  %cmp9.1.i.i = icmp ult i32 %3, 971000
  br i1 %cmp9.1.i.i, label %for.cond.i.i.if.then.i.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.then.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1031000, i32 %3)
  %cmp9.2.i.i = icmp ult i32 %3, 1031000
  br i1 %cmp9.2.i.i, label %for.cond.1.i.i.if.then.i.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1091000, i32 %3)
  %cmp9.3.i.i = icmp ult i32 %3, 1091000
  br i1 %cmp9.3.i.i, label %for.cond.2.i.i.if.then.i.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1171000, i32 %3)
  %cmp9.4.i.i = icmp ult i32 %3, 1171000
  br i1 %cmp9.4.i.i, label %for.cond.3.i.i.if.then.i.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1281000, i32 %3)
  %cmp9.5.i.i = icmp ult i32 %3, 1281000
  br i1 %cmp9.5.i.i, label %for.cond.4.i.i.if.then.i.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1381000, i32 %3)
  %cmp9.6.i.i = icmp ult i32 %3, 1381000
  br i1 %cmp9.6.i.i, label %for.cond.5.i.i.if.then.i.i_crit_edge, label %for.cond.7.i.i

for.cond.5.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.7.i.i:                                   ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1451000, i32 %3)
  %cmp9.8.i.i = icmp ult i32 %3, 1451000
  br i1 %cmp9.8.i.i, label %for.cond.7.i.i.if.then.i.i_crit_edge, label %for.cond.8.i.i

for.cond.7.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1531000, i32 %3)
  %cmp9.9.i.i = icmp ult i32 %3, 1531000
  br i1 %cmp9.9.i.i, label %for.cond.8.i.i.if.then.i.i_crit_edge, label %for.cond.9.i.i

for.cond.8.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.9.i.i:                                   ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1631000, i32 %3)
  %cmp9.10.i.i = icmp ult i32 %3, 1631000
  br i1 %cmp9.10.i.i, label %for.cond.9.i.i.if.then.i.i_crit_edge, label %for.cond.10.i.i

for.cond.9.i.i.if.then.i.i_crit_edge:             ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.10.i.i:                                  ; preds = %for.cond.9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1741000, i32 %3)
  %cmp9.11.i.i = icmp ult i32 %3, 1741000
  br i1 %cmp9.11.i.i, label %for.cond.10.i.i.if.then.i.i_crit_edge, label %for.cond.11.i.i

for.cond.10.i.i.if.then.i.i_crit_edge:            ; preds = %for.cond.10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.11.i.i:                                  ; preds = %for.cond.10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1891000, i32 %3)
  %cmp9.12.i.i = icmp ult i32 %3, 1891000
  br i1 %cmp9.12.i.i, label %for.cond.11.i.i.if.then.i.i_crit_edge, label %for.cond.12.i.i

for.cond.11.i.i.if.then.i.i_crit_edge:            ; preds = %for.cond.11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.12.i.i:                                  ; preds = %for.cond.11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2071000, i32 %3)
  %cmp9.13.i.i = icmp ult i32 %3, 2071000
  br i1 %cmp9.13.i.i, label %for.cond.12.i.i.if.then.i.i_crit_edge, label %for.cond.13.i.i

for.cond.12.i.i.if.then.i.i_crit_edge:            ; preds = %for.cond.12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.cond.13.i.i:                                  ; preds = %for.cond.12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2250000, i32 %3)
  %cmp9.14.i.i = icmp ult i32 %3, 2250000
  br i1 %cmp9.14.i.i, label %for.cond.13.i.i.if.then.i.i_crit_edge, label %for.cond.13.i.i.itd1000_set_lo.exit_crit_edge

for.cond.13.i.i.itd1000_set_lo.exit_crit_edge:    ; preds = %for.cond.13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_set_lo.exit

for.cond.13.i.i.if.then.i.i_crit_edge:            ; preds = %for.cond.13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.cond.13.i.i.if.then.i.i_crit_edge, %for.cond.12.i.i.if.then.i.i_crit_edge, %for.cond.11.i.i.if.then.i.i_crit_edge, %for.cond.10.i.i.if.then.i.i_crit_edge, %for.cond.9.i.i.if.then.i.i_crit_edge, %for.cond.8.i.i.if.then.i.i_crit_edge, %for.cond.7.i.i.if.then.i.i_crit_edge, %for.cond.5.i.i.if.then.i.i_crit_edge, %for.cond.4.i.i.if.then.i.i_crit_edge, %for.cond.3.i.i.if.then.i.i_crit_edge, %for.cond.2.i.i.if.then.i.i_crit_edge, %for.cond.1.i.i.if.then.i.i_crit_edge, %for.cond.i.i.if.then.i.i_crit_edge, %itd1000_write_reg.exit.i.i.if.then.i.i_crit_edge
  %conv7.lcssa.i.i = phi i32 [ 0, %itd1000_write_reg.exit.i.i.if.then.i.i_crit_edge ], [ 1, %for.cond.i.i.if.then.i.i_crit_edge ], [ 2, %for.cond.1.i.i.if.then.i.i_crit_edge ], [ 3, %for.cond.2.i.i.if.then.i.i_crit_edge ], [ 4, %for.cond.3.i.i.if.then.i.i_crit_edge ], [ 5, %for.cond.4.i.i.if.then.i.i_crit_edge ], [ 6, %for.cond.5.i.i.if.then.i.i_crit_edge ], [ 8, %for.cond.7.i.i.if.then.i.i_crit_edge ], [ 9, %for.cond.8.i.i.if.then.i.i_crit_edge ], [ 10, %for.cond.9.i.i.if.then.i.i_crit_edge ], [ 11, %for.cond.10.i.i.if.then.i.i_crit_edge ], [ 12, %for.cond.11.i.i.if.then.i.i_crit_edge ], [ 13, %for.cond.12.i.i.if.then.i.i_crit_edge ], [ 14, %for.cond.13.i.i.if.then.i.i_crit_edge ]
  %arrayidx.i449.i = getelementptr [15 x %struct.anon.92], ptr @itd1000_vcorg, i32 0, i32 %conv7.lcssa.i.i
  %143 = ptrtoint ptr %arrayidx.i449.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i449.i, align 4
  %conv14.i.i = zext i8 %144 to i32
  %shl.i.i = shl nuw nsw i32 %conv14.i.i, 4
  %or15.i.i = or i32 %shl.i.i, %conv3.i.i
  %conv16.i.i = trunc i32 %or15.i.i to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i112.i.i) #7
  %145 = getelementptr inbounds i8, ptr %buf.i.i112.i.i, i32 2
  %146 = call ptr @memset(ptr %145, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i113.i.i) #7
  %147 = getelementptr inbounds i8, ptr %msg.i.i113.i.i, i32 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 196607, ptr %147, align 4
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 1
  %conv.i.i114.i.i = zext i8 %152 to i16
  %153 = ptrtoint ptr %msg.i.i113.i.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv.i.i114.i.i, ptr %msg.i.i113.i.i, align 4
  %flags.i.i115.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i113.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %flags.i.i115.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %flags.i.i115.i.i, align 2
  %buf4.i.i116.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i113.i.i, i32 0, i32 3
  %155 = ptrtoint ptr %buf4.i.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %buf.i.i112.i.i, ptr %buf4.i.i116.i.i, align 4
  %156 = ptrtoint ptr %buf.i.i112.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 112, ptr %buf.i.i112.i.i, align 1
  %arrayidx10.i.i117.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i112.i.i, i32 0, i32 1
  %157 = ptrtoint ptr %arrayidx10.i.i117.i.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv16.i.i, ptr %arrayidx10.i.i117.i.i, align 1
  %158 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i119.i.i = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %msg.i.i113.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i119.i.i)
  %cmp13.not.i.i120.i.i = icmp eq i32 %call12.i.i119.i.i, 1
  br i1 %cmp13.not.i.i120.i.i, label %if.then.i.i.itd1000_write_reg.exit124.i.i_crit_edge, label %do.end18.i.i122.i.i

if.then.i.i.itd1000_write_reg.exit124.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit124.i.i

do.end18.i.i122.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i121.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit124.i.i

itd1000_write_reg.exit124.i.i:                    ; preds = %do.end18.i.i122.i.i, %if.then.i.i.itd1000_write_reg.exit124.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i113.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i112.i.i) #7
  %arrayidx.i123.i.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 112
  %160 = ptrtoint ptr %arrayidx.i123.i.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv16.i.i, ptr %arrayidx.i123.i.i, align 1
  call void @msleep(i32 noundef 1) #7
  %call18.i.i = call fastcc i32 @itd1000_read_reg(ptr noundef %1, i8 noundef zeroext 110) #7
  %161 = trunc i32 %call18.i.i to i8
  %conv20.i.i = and i8 %161, 15
  %162 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i.i = icmp eq i32 %162, 0
  br i1 %tobool.not.i.i, label %itd1000_write_reg.exit124.i.i.do.end31.i.i_crit_edge, label %do.end.i.i

itd1000_write_reg.exit124.i.i.do.end31.i.i_crit_edge: ; preds = %itd1000_write_reg.exit124.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end31.i.i

do.end.i.i:                                       ; preds = %itd1000_write_reg.exit124.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv27.i.i = zext i8 %conv20.i.i to i32
  %call29.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %3, i32 noundef %conv14.i.i, i32 noundef %conv27.i.i, i32 noundef %conv3.i.i) #11
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %do.end.i.i, %itd1000_write_reg.exit124.i.i.do.end31.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %conv20.i.i)
  %cmp33.i.i = icmp ugt i8 %conv20.i.i, 13
  br i1 %cmp33.i.i, label %if.then35.i.i, label %if.else.i.i

if.then35.i.i:                                    ; preds = %do.end31.i.i
  %163 = zext i8 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values)
  switch i8 %144, label %if.then48.i.i [
    i8 7, label %if.then35.i.i.itd1000_set_lo.exit_crit_edge
    i8 15, label %if.then35.i.i.itd1000_set_lo.exit_crit_edge39
  ]

if.then35.i.i.itd1000_set_lo.exit_crit_edge39:    ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_set_lo.exit

if.then35.i.i.itd1000_set_lo.exit_crit_edge:      ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_set_lo.exit

if.then48.i.i:                                    ; preds = %if.then35.i.i
  %shl54.i.i = add nuw nsw i32 %shl.i.i, 16
  %or55.i.i = or i32 %shl54.i.i, %conv3.i.i
  %conv56.i.i = trunc i32 %or55.i.i to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i125.i.i) #7
  %164 = getelementptr inbounds i8, ptr %buf.i.i125.i.i, i32 2
  %165 = call ptr @memset(ptr %164, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i126.i.i) #7
  %166 = getelementptr inbounds i8, ptr %msg.i.i126.i.i, i32 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 196607, ptr %166, align 4
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %169, align 1
  %conv.i.i127.i.i = zext i8 %171 to i16
  %172 = ptrtoint ptr %msg.i.i126.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv.i.i127.i.i, ptr %msg.i.i126.i.i, align 4
  %flags.i.i128.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i126.i.i, i32 0, i32 1
  %173 = ptrtoint ptr %flags.i.i128.i.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %flags.i.i128.i.i, align 2
  %buf4.i.i129.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i126.i.i, i32 0, i32 3
  %174 = ptrtoint ptr %buf4.i.i129.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %buf.i.i125.i.i, ptr %buf4.i.i129.i.i, align 4
  %175 = ptrtoint ptr %buf.i.i125.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 112, ptr %buf.i.i125.i.i, align 1
  %arrayidx10.i.i130.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i125.i.i, i32 0, i32 1
  %176 = ptrtoint ptr %arrayidx10.i.i130.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv56.i.i, ptr %arrayidx10.i.i130.i.i, align 1
  %177 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i132.i.i = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %msg.i.i126.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i132.i.i)
  %cmp13.not.i.i133.i.i = icmp eq i32 %call12.i.i132.i.i, 1
  br i1 %cmp13.not.i.i133.i.i, label %if.then48.i.i.itd1000_write_reg.exit137.i.i_crit_edge, label %do.end18.i.i135.i.i

if.then48.i.i.itd1000_write_reg.exit137.i.i_crit_edge: ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit137.i.i

do.end18.i.i135.i.i:                              ; preds = %if.then48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i134.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit137.i.i

itd1000_write_reg.exit137.i.i:                    ; preds = %do.end18.i.i135.i.i, %if.then48.i.i.itd1000_write_reg.exit137.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i126.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i125.i.i) #7
  br label %for.end.sink.split.i.i

if.else.i.i:                                      ; preds = %do.end31.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %conv20.i.i)
  %cmp60.i.i = icmp ult i8 %conv20.i.i, 2
  br i1 %cmp60.i.i, label %if.then62.i.i, label %if.else.i.i.itd1000_set_lo.exit_crit_edge

if.else.i.i.itd1000_set_lo.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_set_lo.exit

if.then62.i.i:                                    ; preds = %if.else.i.i
  %179 = zext i8 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %144, label %if.then76.i.i [
    i8 1, label %if.then62.i.i.itd1000_set_lo.exit_crit_edge
    i8 9, label %if.then62.i.i.itd1000_set_lo.exit_crit_edge40
  ]

if.then62.i.i.itd1000_set_lo.exit_crit_edge40:    ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_set_lo.exit

if.then62.i.i.itd1000_set_lo.exit_crit_edge:      ; preds = %if.then62.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_set_lo.exit

if.then76.i.i:                                    ; preds = %if.then62.i.i
  %shl82.i.i = add nuw nsw i32 %shl.i.i, 240
  %or83.i.i = or i32 %shl82.i.i, %conv3.i.i
  %conv84.i.i = trunc i32 %or83.i.i to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i138.i.i) #7
  %180 = getelementptr inbounds i8, ptr %buf.i.i138.i.i, i32 2
  %181 = call ptr @memset(ptr %180, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i139.i.i) #7
  %182 = getelementptr inbounds i8, ptr %msg.i.i139.i.i, i32 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 196607, ptr %182, align 4
  %184 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %1, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %185, align 1
  %conv.i.i140.i.i = zext i8 %187 to i16
  %188 = ptrtoint ptr %msg.i.i139.i.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv.i.i140.i.i, ptr %msg.i.i139.i.i, align 4
  %flags.i.i141.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i139.i.i, i32 0, i32 1
  %189 = ptrtoint ptr %flags.i.i141.i.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 0, ptr %flags.i.i141.i.i, align 2
  %buf4.i.i142.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i139.i.i, i32 0, i32 3
  %190 = ptrtoint ptr %buf4.i.i142.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %buf.i.i138.i.i, ptr %buf4.i.i142.i.i, align 4
  %191 = ptrtoint ptr %buf.i.i138.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 112, ptr %buf.i.i138.i.i, align 1
  %arrayidx10.i.i143.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i138.i.i, i32 0, i32 1
  %192 = ptrtoint ptr %arrayidx10.i.i143.i.i to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv84.i.i, ptr %arrayidx10.i.i143.i.i, align 1
  %193 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i145.i.i = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %msg.i.i139.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i145.i.i)
  %cmp13.not.i.i146.i.i = icmp eq i32 %call12.i.i145.i.i, 1
  br i1 %cmp13.not.i.i146.i.i, label %if.then76.i.i.itd1000_write_reg.exit150.i.i_crit_edge, label %do.end18.i.i148.i.i

if.then76.i.i.itd1000_write_reg.exit150.i.i_crit_edge: ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit150.i.i

do.end18.i.i148.i.i:                              ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i147.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit150.i.i

itd1000_write_reg.exit150.i.i:                    ; preds = %do.end18.i.i148.i.i, %if.then76.i.i.itd1000_write_reg.exit150.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i139.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i138.i.i) #7
  br label %for.end.sink.split.i.i

for.end.sink.split.i.i:                           ; preds = %itd1000_write_reg.exit150.i.i, %itd1000_write_reg.exit137.i.i
  %conv56.sink.i.i = phi i8 [ %conv56.i.i, %itd1000_write_reg.exit137.i.i ], [ %conv84.i.i, %itd1000_write_reg.exit150.i.i ]
  %195 = ptrtoint ptr %arrayidx.i123.i.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv56.sink.i.i, ptr %arrayidx.i123.i.i, align 1
  br label %itd1000_set_lo.exit

itd1000_set_lo.exit:                              ; preds = %for.end.sink.split.i.i, %if.then62.i.i.itd1000_set_lo.exit_crit_edge, %if.then62.i.i.itd1000_set_lo.exit_crit_edge40, %if.else.i.i.itd1000_set_lo.exit_crit_edge, %if.then35.i.i.itd1000_set_lo.exit_crit_edge, %if.then35.i.i.itd1000_set_lo.exit_crit_edge39, %for.cond.13.i.i.itd1000_set_lo.exit_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %196 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %symbol_rate, align 4
  %call.i = call fastcc i32 @itd1000_read_reg(ptr noundef %1, i8 noundef zeroext -121) #7
  %call1.i = call fastcc i32 @itd1000_read_reg(ptr noundef %1, i8 noundef zeroext 106) #7
  %call4.i = call fastcc i32 @itd1000_read_reg(ptr noundef %1, i8 noundef zeroext 125) #7
  %call7.i = call fastcc i32 @itd1000_read_reg(ptr noundef %1, i8 noundef zeroext 113) #7
  %conv9.i = and i32 %call7.i, 240
  %198 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.i = icmp eq i32 %198, 0
  br i1 %tobool.not.i, label %itd1000_set_lo.exit.do.end13.i_crit_edge, label %do.end.i14

itd1000_set_lo.exit.do.end13.i_crit_edge:         ; preds = %itd1000_set_lo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

do.end.i14:                                       ; preds = %itd1000_set_lo.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %197) #11
  br label %do.end13.i

do.end13.i:                                       ; preds = %do.end.i14, %itd1000_set_lo.exit.do.end13.i_crit_edge
  %199 = trunc i32 %call.i to i8
  %conv15.i = or i8 %199, 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i.i12) #7
  %200 = getelementptr inbounds i8, ptr %buf.i.i.i12, i32 2
  %201 = call ptr @memset(ptr %200, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i13) #7
  %202 = getelementptr inbounds i8, ptr %msg.i.i.i13, i32 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 196607, ptr %202, align 4
  %204 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %1, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %205, align 1
  %conv.i.i.i15 = zext i8 %207 to i16
  %208 = ptrtoint ptr %msg.i.i.i13 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %conv.i.i.i15, ptr %msg.i.i.i13, align 4
  %flags.i.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i13, i32 0, i32 1
  %209 = ptrtoint ptr %flags.i.i.i16 to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 0, ptr %flags.i.i.i16, align 2
  %buf4.i.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i13, i32 0, i32 3
  %210 = ptrtoint ptr %buf4.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %buf.i.i.i12, ptr %buf4.i.i.i17, align 4
  %211 = ptrtoint ptr %buf.i.i.i12 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 -121, ptr %buf.i.i.i12, align 1
  %arrayidx10.i.i.i18 = getelementptr inbounds [64 x i8], ptr %buf.i.i.i12, i32 0, i32 1
  %212 = ptrtoint ptr %arrayidx10.i.i.i18 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %conv15.i, ptr %arrayidx10.i.i.i18, align 1
  %213 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i.i20 = call i32 @i2c_transfer(ptr noundef %214, ptr noundef nonnull %msg.i.i.i13, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i.i20)
  %cmp13.not.i.i.i21 = icmp eq i32 %call12.i.i.i20, 1
  br i1 %cmp13.not.i.i.i21, label %do.end13.i.for.cond.i_crit_edge, label %do.end18.i.i.i23

do.end13.i.for.cond.i_crit_edge:                  ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

do.end18.i.i.i23:                                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %do.end18.i.i.i23, %do.end13.i.for.cond.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i13) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i.i12) #7
  %arrayidx.i.i24 = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 135
  %215 = ptrtoint ptr %arrayidx.i.i24 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv15.i, ptr %arrayidx.i.i24, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5200000, i32 %197)
  %cmp20.1.i = icmp ult i32 %197, 5200000
  br i1 %cmp20.1.i, label %for.cond.i.do.body23.i_crit_edge, label %for.cond.1.i

for.cond.i.do.body23.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12200000, i32 %197)
  %cmp20.2.i = icmp ult i32 %197, 12200000
  br i1 %cmp20.2.i, label %for.cond.1.i.do.body23.i_crit_edge, label %for.cond.2.i

for.cond.1.i.do.body23.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15400000, i32 %197)
  %cmp20.3.i = icmp ult i32 %197, 15400000
  br i1 %cmp20.3.i, label %for.cond.2.i.do.body23.i_crit_edge, label %for.cond.3.i

for.cond.2.i.do.body23.i_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 19800000, i32 %197)
  %cmp20.4.i = icmp ult i32 %197, 19800000
  br i1 %cmp20.4.i, label %for.cond.3.i.do.body23.i_crit_edge, label %for.cond.4.i

for.cond.3.i.do.body23.i_crit_edge:               ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21500000, i32 %197)
  %cmp20.5.i = icmp ult i32 %197, 21500000
  br i1 %cmp20.5.i, label %for.cond.4.i.do.body23.i_crit_edge, label %for.cond.5.i

for.cond.4.i.do.body23.i_crit_edge:               ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24500000, i32 %197)
  %cmp20.6.i = icmp ult i32 %197, 24500000
  br i1 %cmp20.6.i, label %for.cond.5.i.do.body23.i_crit_edge, label %for.cond.6.i

for.cond.5.i.do.body23.i_crit_edge:               ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28400000, i32 %197)
  %cmp20.7.i = icmp ult i32 %197, 28400000
  br i1 %cmp20.7.i, label %for.cond.6.i.do.body23.i_crit_edge, label %for.cond.7.i

for.cond.6.i.do.body23.i_crit_edge:               ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33400000, i32 %197)
  %cmp20.8.i = icmp ult i32 %197, 33400000
  br i1 %cmp20.8.i, label %for.cond.7.i.do.body23.i_crit_edge, label %for.cond.8.i

for.cond.7.i.do.body23.i_crit_edge:               ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 34400000, i32 %197)
  %cmp20.9.i = icmp ult i32 %197, 34400000
  br i1 %cmp20.9.i, label %for.cond.8.i.do.body23.i_crit_edge, label %for.cond.10.i

for.cond.8.i.do.body23.i_crit_edge:               ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.10.i:                                    ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 38400000, i32 %197)
  %cmp20.11.i = icmp ult i32 %197, 38400000
  br i1 %cmp20.11.i, label %for.cond.10.i.do.body23.i_crit_edge, label %for.cond.12.i

for.cond.10.i.do.body23.i_crit_edge:              ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.12.i:                                    ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40400000, i32 %197)
  %cmp20.13.i = icmp ult i32 %197, 40400000
  br i1 %cmp20.13.i, label %for.cond.12.i.do.body23.i_crit_edge, label %for.cond.13.i

for.cond.12.i.do.body23.i_crit_edge:              ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

for.cond.13.i:                                    ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 45400000, i32 %197)
  %cmp20.14.i = icmp ult i32 %197, 45400000
  br i1 %cmp20.14.i, label %for.cond.13.i.do.body23.i_crit_edge, label %for.cond.13.i.for.end.i_crit_edge

for.cond.13.i.for.end.i_crit_edge:                ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.cond.13.i.do.body23.i_crit_edge:              ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23.i

do.body23.i:                                      ; preds = %for.cond.13.i.do.body23.i_crit_edge, %for.cond.12.i.do.body23.i_crit_edge, %for.cond.10.i.do.body23.i_crit_edge, %for.cond.8.i.do.body23.i_crit_edge, %for.cond.7.i.do.body23.i_crit_edge, %for.cond.6.i.do.body23.i_crit_edge, %for.cond.5.i.do.body23.i_crit_edge, %for.cond.4.i.do.body23.i_crit_edge, %for.cond.3.i.do.body23.i_crit_edge, %for.cond.2.i.do.body23.i_crit_edge, %for.cond.1.i.do.body23.i_crit_edge, %for.cond.i.do.body23.i_crit_edge
  %conv17147.lcssa.i = phi i32 [ 1, %for.cond.i.do.body23.i_crit_edge ], [ 2, %for.cond.1.i.do.body23.i_crit_edge ], [ 3, %for.cond.2.i.do.body23.i_crit_edge ], [ 4, %for.cond.3.i.do.body23.i_crit_edge ], [ 5, %for.cond.4.i.do.body23.i_crit_edge ], [ 6, %for.cond.5.i.do.body23.i_crit_edge ], [ 7, %for.cond.6.i.do.body23.i_crit_edge ], [ 8, %for.cond.7.i.do.body23.i_crit_edge ], [ 9, %for.cond.8.i.do.body23.i_crit_edge ], [ 11, %for.cond.10.i.do.body23.i_crit_edge ], [ 13, %for.cond.12.i.do.body23.i_crit_edge ], [ 14, %for.cond.13.i.do.body23.i_crit_edge ]
  %216 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %tobool24.not.i = icmp eq i32 %216, 0
  br i1 %tobool24.not.i, label %do.body23.i.do.end42.i_crit_edge, label %do.end28.i

do.body23.i.do.end42.i_crit_edge:                 ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42.i

do.end28.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  %pgaext.i = getelementptr [15 x %struct.anon.93], ptr @itd1000_lpf_pga, i32 0, i32 %conv17147.lcssa.i, i32 1
  %217 = ptrtoint ptr %pgaext.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %bf.load.i = load i8, ptr %pgaext.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %conv33.i = zext i8 %bf.lshr.i to i32
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv38.i = zext i8 %bf.clear.i to i32
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv17147.lcssa.i, i32 noundef %conv33.i, i32 noundef %conv38.i) #11
  br label %do.end42.i

do.end42.i:                                       ; preds = %do.end28.i, %do.body23.i.do.end42.i_crit_edge
  %pgaext46.i = getelementptr [15 x %struct.anon.93], ptr @itd1000_lpf_pga, i32 0, i32 %conv17147.lcssa.i, i32 1
  %218 = ptrtoint ptr %pgaext46.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %bf.load47.i = load i8, ptr %pgaext46.i, align 4
  %bf.lshr48.i = and i8 %bf.load47.i, -16
  %219 = trunc i32 %call1.i to i8
  %220 = and i8 %219, 15
  %conv51.i = or i8 %bf.lshr48.i, %220
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i92.i) #7
  %221 = getelementptr inbounds i8, ptr %buf.i.i92.i, i32 2
  %222 = call ptr @memset(ptr %221, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i93.i) #7
  %223 = getelementptr inbounds i8, ptr %msg.i.i93.i, i32 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 196607, ptr %223, align 4
  %225 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %1, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %226, align 1
  %conv.i.i94.i = zext i8 %228 to i16
  %229 = ptrtoint ptr %msg.i.i93.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv.i.i94.i, ptr %msg.i.i93.i, align 4
  %flags.i.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i93.i, i32 0, i32 1
  %230 = ptrtoint ptr %flags.i.i95.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 0, ptr %flags.i.i95.i, align 2
  %buf4.i.i96.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i93.i, i32 0, i32 3
  %231 = ptrtoint ptr %buf4.i.i96.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %buf.i.i92.i, ptr %buf4.i.i96.i, align 4
  %232 = ptrtoint ptr %buf.i.i92.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 106, ptr %buf.i.i92.i, align 1
  %arrayidx10.i.i97.i = getelementptr inbounds [64 x i8], ptr %buf.i.i92.i, i32 0, i32 1
  %233 = ptrtoint ptr %arrayidx10.i.i97.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv51.i, ptr %arrayidx10.i.i97.i, align 1
  %234 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i99.i = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %msg.i.i93.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i99.i)
  %cmp13.not.i.i100.i = icmp eq i32 %call12.i.i99.i, 1
  br i1 %cmp13.not.i.i100.i, label %do.end42.i.itd1000_write_reg.exit104.i_crit_edge, label %do.end18.i.i102.i

do.end42.i.itd1000_write_reg.exit104.i_crit_edge: ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit104.i

do.end18.i.i102.i:                                ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit104.i

itd1000_write_reg.exit104.i:                      ; preds = %do.end18.i.i102.i, %do.end42.i.itd1000_write_reg.exit104.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i93.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i92.i) #7
  %236 = ptrtoint ptr %arrayidx.i395.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %conv51.i, ptr %arrayidx.i395.i, align 1
  %bf.clear58.i = and i8 %bf.load47.i, 15
  %237 = trunc i32 %call4.i to i8
  %238 = and i8 %237, -16
  %conv61.i = or i8 %bf.clear58.i, %238
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i105.i) #7
  %239 = getelementptr inbounds i8, ptr %buf.i.i105.i, i32 2
  %240 = call ptr @memset(ptr %239, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i106.i) #7
  %241 = getelementptr inbounds i8, ptr %msg.i.i106.i, i32 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 196607, ptr %241, align 4
  %243 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %1, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %244, align 1
  %conv.i.i107.i = zext i8 %246 to i16
  %247 = ptrtoint ptr %msg.i.i106.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv.i.i107.i, ptr %msg.i.i106.i, align 4
  %flags.i.i108.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i106.i, i32 0, i32 1
  %248 = ptrtoint ptr %flags.i.i108.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %flags.i.i108.i, align 2
  %buf4.i.i109.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i106.i, i32 0, i32 3
  %249 = ptrtoint ptr %buf4.i.i109.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %buf.i.i105.i, ptr %buf4.i.i109.i, align 4
  %250 = ptrtoint ptr %buf.i.i105.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 125, ptr %buf.i.i105.i, align 1
  %arrayidx10.i.i110.i = getelementptr inbounds [64 x i8], ptr %buf.i.i105.i, i32 0, i32 1
  %251 = ptrtoint ptr %arrayidx10.i.i110.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %conv61.i, ptr %arrayidx10.i.i110.i, align 1
  %252 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i112.i = call i32 @i2c_transfer(ptr noundef %253, ptr noundef nonnull %msg.i.i106.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i112.i)
  %cmp13.not.i.i113.i = icmp eq i32 %call12.i.i112.i, 1
  br i1 %cmp13.not.i.i113.i, label %itd1000_write_reg.exit104.i.itd1000_write_reg.exit117.i_crit_edge, label %do.end18.i.i115.i

itd1000_write_reg.exit104.i.itd1000_write_reg.exit117.i_crit_edge: ; preds = %itd1000_write_reg.exit104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit117.i

do.end18.i.i115.i:                                ; preds = %itd1000_write_reg.exit104.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit117.i

itd1000_write_reg.exit117.i:                      ; preds = %do.end18.i.i115.i, %itd1000_write_reg.exit104.i.itd1000_write_reg.exit117.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i106.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i105.i) #7
  %arrayidx.i116.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 125
  %254 = ptrtoint ptr %arrayidx.i116.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 %conv61.i, ptr %arrayidx.i116.i, align 1
  %or66.i = or i32 %conv17147.lcssa.i, %conv9.i
  %conv67.i = trunc i32 %or66.i to i8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i118.i) #7
  %255 = getelementptr inbounds i8, ptr %buf.i.i118.i, i32 2
  %256 = call ptr @memset(ptr %255, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i119.i) #7
  %257 = getelementptr inbounds i8, ptr %msg.i.i119.i, i32 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 196607, ptr %257, align 4
  %259 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %1, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %260, align 1
  %conv.i.i120.i = zext i8 %262 to i16
  %263 = ptrtoint ptr %msg.i.i119.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %conv.i.i120.i, ptr %msg.i.i119.i, align 4
  %flags.i.i121.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i119.i, i32 0, i32 1
  %264 = ptrtoint ptr %flags.i.i121.i to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 0, ptr %flags.i.i121.i, align 2
  %buf4.i.i122.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i119.i, i32 0, i32 3
  %265 = ptrtoint ptr %buf4.i.i122.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %buf.i.i118.i, ptr %buf4.i.i122.i, align 4
  %266 = ptrtoint ptr %buf.i.i118.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 113, ptr %buf.i.i118.i, align 1
  %arrayidx10.i.i123.i = getelementptr inbounds [64 x i8], ptr %buf.i.i118.i, i32 0, i32 1
  %267 = ptrtoint ptr %arrayidx10.i.i123.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 %conv67.i, ptr %arrayidx10.i.i123.i, align 1
  %268 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i125.i = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %msg.i.i119.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i125.i)
  %cmp13.not.i.i126.i = icmp eq i32 %call12.i.i125.i, 1
  br i1 %cmp13.not.i.i126.i, label %itd1000_write_reg.exit117.i.itd1000_write_reg.exit130.i_crit_edge, label %do.end18.i.i128.i

itd1000_write_reg.exit117.i.itd1000_write_reg.exit130.i_crit_edge: ; preds = %itd1000_write_reg.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit130.i

do.end18.i.i128.i:                                ; preds = %itd1000_write_reg.exit117.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit130.i

itd1000_write_reg.exit130.i:                      ; preds = %do.end18.i.i128.i, %itd1000_write_reg.exit117.i.itd1000_write_reg.exit130.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i119.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i118.i) #7
  %arrayidx.i129.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 113
  %270 = ptrtoint ptr %arrayidx.i129.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %conv67.i, ptr %arrayidx.i129.i, align 1
  br label %for.end.i

for.end.i:                                        ; preds = %itd1000_write_reg.exit130.i, %for.cond.13.i.for.end.i_crit_edge
  %conv.i25 = and i8 %199, -3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i131.i) #7
  %271 = getelementptr inbounds i8, ptr %buf.i.i131.i, i32 2
  %272 = call ptr @memset(ptr %271, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i132.i) #7
  %273 = getelementptr inbounds i8, ptr %msg.i.i132.i, i32 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 196607, ptr %273, align 4
  %275 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %1, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %276, align 1
  %conv.i.i133.i = zext i8 %278 to i16
  %279 = ptrtoint ptr %msg.i.i132.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %conv.i.i133.i, ptr %msg.i.i132.i, align 4
  %flags.i.i134.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i132.i, i32 0, i32 1
  %280 = ptrtoint ptr %flags.i.i134.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 0, ptr %flags.i.i134.i, align 2
  %buf4.i.i135.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i132.i, i32 0, i32 3
  %281 = ptrtoint ptr %buf4.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %buf.i.i131.i, ptr %buf4.i.i135.i, align 4
  %282 = ptrtoint ptr %buf.i.i131.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 -121, ptr %buf.i.i131.i, align 1
  %arrayidx10.i.i136.i = getelementptr inbounds [64 x i8], ptr %buf.i.i131.i, i32 0, i32 1
  %283 = ptrtoint ptr %arrayidx10.i.i136.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 %conv.i25, ptr %arrayidx10.i.i136.i, align 1
  %284 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i138.i = call i32 @i2c_transfer(ptr noundef %285, ptr noundef nonnull %msg.i.i132.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i138.i)
  %cmp13.not.i.i139.i = icmp eq i32 %call12.i.i138.i, 1
  br i1 %cmp13.not.i.i139.i, label %for.end.i.itd1000_set_lpf_bw.exit_crit_edge, label %do.end18.i.i141.i

for.end.i.itd1000_set_lpf_bw.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_set_lpf_bw.exit

do.end18.i.i141.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_set_lpf_bw.exit

itd1000_set_lpf_bw.exit:                          ; preds = %do.end18.i.i141.i, %for.end.i.itd1000_set_lpf_bw.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i132.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i131.i) #7
  %286 = ptrtoint ptr %arrayidx.i.i24 to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 %conv.i25, ptr %arrayidx.i.i24, align 1
  %call = call fastcc i32 @itd1000_read_reg(ptr noundef %1, i8 noundef zeroext 103)
  %287 = trunc i32 %call to i8
  %conv = and i8 %287, 127
  %conv2 = or i8 %287, -128
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #7
  %288 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %289 = call ptr @memset(ptr %288, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %290 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 196607, ptr %290, align 4
  %292 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %1, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %293, align 1
  %conv.i.i = zext i8 %295 to i16
  %296 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %297 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %298 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %buf.i.i, ptr %buf4.i.i, align 4
  %299 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 103, ptr %buf.i.i, align 1
  %arrayidx10.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i, i32 0, i32 1
  %300 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 %conv2, ptr %arrayidx10.i.i, align 1
  %301 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i = call i32 @i2c_transfer(ptr noundef %302, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i)
  %cmp13.not.i.i = icmp eq i32 %call12.i.i, 1
  br i1 %cmp13.not.i.i, label %itd1000_set_lpf_bw.exit.itd1000_write_reg.exit_crit_edge, label %do.end18.i.i

itd1000_set_lpf_bw.exit.itd1000_write_reg.exit_crit_edge: ; preds = %itd1000_set_lpf_bw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit

do.end18.i.i:                                     ; preds = %itd1000_set_lpf_bw.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit

itd1000_write_reg.exit:                           ; preds = %do.end18.i.i, %itd1000_set_lpf_bw.exit.itd1000_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #7
  %arrayidx.i = getelementptr %struct.itd1000_state, ptr %1, i32 0, i32 3, i32 103
  %303 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 %conv2, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i26) #7
  %304 = getelementptr inbounds i8, ptr %buf.i.i26, i32 2
  %305 = call ptr @memset(ptr %304, i32 255, i32 62)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i27) #7
  %306 = getelementptr inbounds i8, ptr %msg.i.i27, i32 4
  %307 = ptrtoint ptr %306 to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 196607, ptr %306, align 4
  %308 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %1, align 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %309, align 1
  %conv.i.i28 = zext i8 %311 to i16
  %312 = ptrtoint ptr %msg.i.i27 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 %conv.i.i28, ptr %msg.i.i27, align 4
  %flags.i.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i27, i32 0, i32 1
  %313 = ptrtoint ptr %flags.i.i29 to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 0, ptr %flags.i.i29, align 2
  %buf4.i.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i27, i32 0, i32 3
  %314 = ptrtoint ptr %buf4.i.i30 to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %buf.i.i26, ptr %buf4.i.i30, align 4
  %315 = ptrtoint ptr %buf.i.i26 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 103, ptr %buf.i.i26, align 1
  %arrayidx10.i.i31 = getelementptr inbounds [64 x i8], ptr %buf.i.i26, i32 0, i32 1
  %316 = ptrtoint ptr %arrayidx10.i.i31 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 %conv, ptr %arrayidx10.i.i31, align 1
  %317 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %i2c.i.i.i, align 4
  %call12.i.i33 = call i32 @i2c_transfer(ptr noundef %318, ptr noundef nonnull %msg.i.i27, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i33)
  %cmp13.not.i.i34 = icmp eq i32 %call12.i.i33, 1
  br i1 %cmp13.not.i.i34, label %itd1000_write_reg.exit.itd1000_write_reg.exit38_crit_edge, label %do.end18.i.i36

itd1000_write_reg.exit.itd1000_write_reg.exit38_crit_edge: ; preds = %itd1000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %itd1000_write_reg.exit38

do.end18.i.i36:                                   ; preds = %itd1000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i.i35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %itd1000_write_reg.exit38

itd1000_write_reg.exit38:                         ; preds = %do.end18.i.i36, %itd1000_write_reg.exit.itd1000_write_reg.exit38_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i27) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i26) #7
  %319 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 %conv, ptr %arrayidx.i, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @itd1000_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.itd1000_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @itd1000_get_bandwidth(ptr nocapture noundef readnone %fe, ptr nocapture noundef readnone %bandwidth) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !56, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 25, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 380, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @itd1000_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @itd1000_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_itd1000_attach, !12, !"__ksymtab_itd1000_attach", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 392, i32 1}
!13 = !{ptr @__UNIQUE_ID_author292, !14, !"__UNIQUE_ID_author292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 394, i32 1}
!15 = !{ptr @__UNIQUE_ID_description293, !16, !"__UNIQUE_ID_description293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 395, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 396, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 23, i32 12}
!22 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 80, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @itd1000_read_reg._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @itd1000_read_reg._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 50, i32 3}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @itd1000_write_regs._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @itd1000_write_regs._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 62, i32 3}
!35 = !{ptr @itd1000_write_regs._entry.7, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @itd1000_write_regs._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @itd1000_tuner_ops, !38, !"itd1000_tuner_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 344, i32 35}
!39 = !{ptr @itd1000_init_tab, !40, !"itd1000_init_tab", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 279, i32 11}
!41 = distinct !{null, !42, !"itd1000_reinit_tab", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 310, i32 11}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 230, i32 2}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @itd1000_set_lo._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @itd1000_set_lo._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 240, i32 4}
!50 = !{ptr @itd1000_set_lo._entry.12, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @itd1000_set_lo._entry_ptr.14, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @itd1000_fre_values, !53, !"itd1000_fre_values", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 197, i32 3}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 180, i32 4}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @itd1000_set_vco._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @itd1000_set_vco._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @itd1000_vcorg, !60, !"itd1000_vcorg", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 145, i32 3}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 125, i32 2}
!63 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @itd1000_set_lpf_bw._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @itd1000_set_lpf_bw._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 132, i32 4}
!68 = !{ptr @itd1000_set_lpf_bw._entry.19, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @itd1000_set_lpf_bw._entry_ptr.21, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @itd1000_lpf_pga, !71, !"itd1000_lpf_pga", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/itd1000.c", i32 99, i32 3}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
!82 = !{i64 709667, i64 709694}
!83 = !{i64 710362, i64 710389, i64 710422, i64 710443, i64 710470, i64 710496}
