; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/s921.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/s921.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+s921_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_s921_attach\09\09\09\09"
module asm "\09.long\09__crc_s921_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s921_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22s921_attach\22\09\09\09\09\09"
module asm "__kstrtabns_s921_attach:\09\09\09\09\09"
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
%struct.regdata = type { i8, i8 }
%struct.s921_bandselect_val = type { i32, i8 }
%struct.s921_state = type { ptr, ptr, %struct.dvb_frontend, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [11 x i8] c"s921.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [24 x i8] c"s921.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [57 x i8] c"s921.parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1
@s921_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017s921: %s: \00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s921_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/dvb-frontends/s921.c\00", [61 x i8] zeroinitializer }, align 32
@s921_attach._entry_ptr = internal global ptr @s921_attach._entry, section ".printk_index", align 4
@s921_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@s921_attach._entry_ptr.5 = internal global ptr @s921_attach._entry.3, section ".printk_index", align 4
@s921_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013s921: Unable to kzalloc\0A\00", [37 x i8] zeroinitializer }, align 32
@s921_attach._entry_ptr.8 = internal global ptr @s921_attach._entry.6, section ".printk_index", align 4
@s921_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Sharp S921\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 806000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr null, ptr @s921_release, ptr null, ptr @s921_initfe, ptr null, ptr null, ptr null, ptr null, ptr @s921_tune, ptr @s921_get_algo, ptr @s921_set_frontend, ptr null, ptr @s921_get_frontend, ptr @s921_read_status, ptr null, ptr @s921_read_signal_strength, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_s921_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_s921_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_s921_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s921_attach to i32), ptr @__kstrtab_s921_attach, ptr @__kstrtabns_s921_attach }, section "___ksymtab+s921_attach", align 4
@__UNIQUE_ID_description292 = internal constant [61 x i8] c"s921.description=DVB Frontend module for Sharp S921 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [34 x i8] c"s921.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [52 x i8] c"s921.author=Douglas Landgraf <dougsland@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [43 x i8] c"s921.file=drivers/media/dvb-frontends/s921\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [17 x i8] c"s921.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@s921_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s921_release\00", [19 x i8] zeroinitializer }, align 32
@s921_release._entry_ptr = internal global ptr @s921_release._entry, section ".printk_index", align 4
@s921_release._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_release._entry_ptr.11 = internal global ptr @s921_release._entry.10, section ".printk_index", align 4
@s921_initfe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s921_initfe\00", [20 x i8] zeroinitializer }, align 32
@s921_initfe._entry_ptr = internal global ptr @s921_initfe._entry, section ".printk_index", align 4
@s921_initfe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_initfe._entry_ptr.14 = internal global ptr @s921_initfe._entry.13, section ".printk_index", align 4
@s921_init = internal constant { [104 x %struct.regdata], [48 x i8] } { [104 x %struct.regdata] [%struct.regdata { i8 1, i8 -128 }, %struct.regdata { i8 1, i8 64 }, %struct.regdata { i8 1, i8 -128 }, %struct.regdata { i8 1, i8 64 }, %struct.regdata { i8 2, i8 0 }, %struct.regdata { i8 3, i8 64 }, %struct.regdata { i8 4, i8 1 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 6, i8 0 }, %struct.regdata { i8 7, i8 0 }, %struct.regdata { i8 8, i8 0 }, %struct.regdata { i8 9, i8 0 }, %struct.regdata { i8 10, i8 0 }, %struct.regdata { i8 11, i8 90 }, %struct.regdata { i8 12, i8 0 }, %struct.regdata { i8 13, i8 0 }, %struct.regdata { i8 15, i8 0 }, %struct.regdata { i8 19, i8 27 }, %struct.regdata { i8 20, i8 -128 }, %struct.regdata { i8 21, i8 64 }, %struct.regdata { i8 23, i8 112 }, %struct.regdata { i8 24, i8 1 }, %struct.regdata { i8 25, i8 18 }, %struct.regdata { i8 26, i8 1 }, %struct.regdata { i8 27, i8 18 }, %struct.regdata { i8 28, i8 -96 }, %struct.regdata { i8 29, i8 0 }, %struct.regdata { i8 30, i8 10 }, %struct.regdata { i8 31, i8 8 }, %struct.regdata { i8 32, i8 64 }, %struct.regdata { i8 33, i8 -1 }, %struct.regdata { i8 34, i8 76 }, %struct.regdata { i8 35, i8 78 }, %struct.regdata { i8 36, i8 76 }, %struct.regdata { i8 37, i8 0 }, %struct.regdata { i8 38, i8 0 }, %struct.regdata { i8 39, i8 -12 }, %struct.regdata { i8 40, i8 96 }, %struct.regdata { i8 41, i8 -120 }, %struct.regdata { i8 42, i8 64 }, %struct.regdata { i8 43, i8 64 }, %struct.regdata { i8 44, i8 -1 }, %struct.regdata { i8 45, i8 0 }, %struct.regdata { i8 46, i8 -1 }, %struct.regdata { i8 47, i8 0 }, %struct.regdata { i8 48, i8 32 }, %struct.regdata { i8 49, i8 6 }, %struct.regdata { i8 50, i8 12 }, %struct.regdata { i8 52, i8 15 }, %struct.regdata { i8 55, i8 -2 }, %struct.regdata { i8 56, i8 0 }, %struct.regdata { i8 57, i8 99 }, %struct.regdata { i8 58, i8 16 }, %struct.regdata { i8 59, i8 16 }, %struct.regdata { i8 71, i8 0 }, %struct.regdata { i8 73, i8 -27 }, %struct.regdata { i8 75, i8 0 }, %struct.regdata { i8 80, i8 -64 }, %struct.regdata { i8 82, i8 32 }, %struct.regdata { i8 84, i8 90 }, %struct.regdata { i8 85, i8 91 }, %struct.regdata { i8 86, i8 64 }, %struct.regdata { i8 87, i8 112 }, %struct.regdata { i8 92, i8 80 }, %struct.regdata { i8 93, i8 0 }, %struct.regdata { i8 98, i8 23 }, %struct.regdata { i8 99, i8 47 }, %struct.regdata { i8 100, i8 111 }, %struct.regdata { i8 104, i8 0 }, %struct.regdata { i8 105, i8 -119 }, %struct.regdata { i8 106, i8 0 }, %struct.regdata { i8 107, i8 0 }, %struct.regdata { i8 108, i8 0 }, %struct.regdata { i8 109, i8 0 }, %struct.regdata { i8 110, i8 0 }, %struct.regdata { i8 112, i8 16 }, %struct.regdata { i8 113, i8 0 }, %struct.regdata { i8 117, i8 0 }, %struct.regdata { i8 118, i8 48 }, %struct.regdata { i8 119, i8 1 }, %struct.regdata { i8 -81, i8 0 }, %struct.regdata { i8 -80, i8 -96 }, %struct.regdata { i8 -78, i8 61 }, %struct.regdata { i8 -77, i8 37 }, %struct.regdata { i8 -76, i8 -117 }, %struct.regdata { i8 -75, i8 75 }, %struct.regdata { i8 -74, i8 63 }, %struct.regdata { i8 -73, i8 -1 }, %struct.regdata { i8 -72, i8 -1 }, %struct.regdata { i8 -71, i8 -4 }, %struct.regdata { i8 -70, i8 0 }, %struct.regdata { i8 -69, i8 0 }, %struct.regdata { i8 -68, i8 0 }, %struct.regdata { i8 -48, i8 48 }, %struct.regdata { i8 -28, i8 -124 }, %struct.regdata { i8 -16, i8 72 }, %struct.regdata { i8 -15, i8 25 }, %struct.regdata { i8 -14, i8 90 }, %struct.regdata { i8 -13, i8 -114 }, %struct.regdata { i8 -12, i8 45 }, %struct.regdata { i8 -11, i8 7 }, %struct.regdata { i8 -10, i8 90 }, %struct.regdata { i8 -9, i8 -70 }, %struct.regdata { i8 -8, i8 -41 }], [48 x i8] zeroinitializer }, align 32
@s921_i2c_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: writereg rcor(rc == %i, reg == 0x%02x, data == 0x%02x)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s921_i2c_writereg\00", [46 x i8] zeroinitializer }, align 32
@s921_i2c_writereg._entry_ptr = internal global ptr @s921_i2c_writereg._entry, section ".printk_index", align 4
@s921_tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"s921_tune\00", [22 x i8] zeroinitializer }, align 32
@s921_tune._entry_ptr = internal global ptr @s921_tune._entry, section ".printk_index", align 4
@s921_tune._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.17, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_tune._entry_ptr.19 = internal global ptr @s921_tune._entry.18, section ".printk_index", align 4
@s921_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s921_set_frontend\00", [46 x i8] zeroinitializer }, align 32
@s921_set_frontend._entry_ptr = internal global ptr @s921_set_frontend._entry, section ".printk_index", align 4
@s921_set_frontend._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.20, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_set_frontend._entry_ptr.22 = internal global ptr @s921_set_frontend._entry.21, section ".printk_index", align 4
@s921_pll_tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s921_pll_tune\00", [18 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr = internal global ptr @s921_pll_tune._entry, section ".printk_index", align 4
@s921_pll_tune._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"frequency=%i\0A\00", [18 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.26 = internal global ptr @s921_pll_tune._entry.24, section ".printk_index", align 4
@s921_bandselect = internal constant { [8 x %struct.s921_bandselect_val], [32 x i8] } { [8 x %struct.s921_bandselect_val] [%struct.s921_bandselect_val { i32 0, i8 123 }, %struct.s921_bandselect_val { i32 485140000, i8 91 }, %struct.s921_bandselect_val { i32 515140000, i8 59 }, %struct.s921_bandselect_val { i32 545140000, i8 27 }, %struct.s921_bandselect_val { i32 599140000, i8 -5 }, %struct.s921_bandselect_val { i32 623140000, i8 -37 }, %struct.s921_bandselect_val { i32 659140000, i8 -69 }, %struct.s921_bandselect_val { i32 713140000, i8 -101 }], [32 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013s921: %s: frequency out of range\0A\00", [60 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.29 = internal global ptr @s921_pll_tune._entry.27, section ".printk_index", align 4
@s921_pll_tune._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.31 = internal global ptr @s921_pll_tune._entry.30, section ".printk_index", align 4
@s921_pll_tune._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"status 0x80: %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.34 = internal global ptr @s921_pll_tune._entry.32, section ".printk_index", align 4
@s921_pll_tune._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.36 = internal global ptr @s921_pll_tune._entry.35, section ".printk_index", align 4
@s921_pll_tune._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.23, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"status 0x01: %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.39 = internal global ptr @s921_pll_tune._entry.37, section ".printk_index", align 4
@s921_pll_tune._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.41 = internal global ptr @s921_pll_tune._entry.40, section ".printk_index", align 4
@s921_pll_tune._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.43 = internal global ptr @s921_pll_tune._entry.42, section ".printk_index", align 4
@s921_pll_tune._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.45 = internal global ptr @s921_pll_tune._entry.44, section ".printk_index", align 4
@s921_pll_tune._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.47 = internal global ptr @s921_pll_tune._entry.46, section ".printk_index", align 4
@s921_pll_tune._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.49 = internal global ptr @s921_pll_tune._entry.48, section ".printk_index", align 4
@s921_pll_tune._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.23, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"status 0x32: %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.52 = internal global ptr @s921_pll_tune._entry.50, section ".printk_index", align 4
@s921_pll_tune._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.54 = internal global ptr @s921_pll_tune._entry.53, section ".printk_index", align 4
@s921_pll_tune._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.23, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pll tune band=%d, pll=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@s921_pll_tune._entry_ptr.57 = internal global ptr @s921_pll_tune._entry.55, section ".printk_index", align 4
@s921_i2c_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013s921: %s: reg=0x%x (rcor=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s921_i2c_readreg\00", [47 x i8] zeroinitializer }, align 32
@s921_i2c_readreg._entry_ptr = internal global ptr @s921_i2c_readreg._entry, section ".printk_index", align 4
@s921_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.60, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s921_read_status\00", [47 x i8] zeroinitializer }, align 32
@s921_read_status._entry_ptr = internal global ptr @s921_read_status._entry, section ".printk_index", align 4
@s921_read_status._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status = %04x\0A\00", [17 x i8] zeroinitializer }, align 32
@s921_read_status._entry_ptr.63 = internal global ptr @s921_read_status._entry.61, section ".printk_index", align 4
@s921_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.64, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s921_read_signal_strength\00", [38 x i8] zeroinitializer }, align 32
@s921_read_signal_strength._entry_ptr = internal global ptr @s921_read_signal_strength._entry, section ".printk_index", align 4
@s921_read_signal_strength._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"strength = 0x%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@s921_read_signal_strength._entry_ptr.67 = internal global ptr @s921_read_signal_strength._entry.65, section ".printk_index", align 4
@s921_read_signal_strength._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.64, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_read_signal_strength._entry_ptr.69 = internal global ptr @s921_read_signal_strength._entry.68, section ".printk_index", align 4
@s921_read_signal_strength._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.64, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_read_signal_strength._entry_ptr.71 = internal global ptr @s921_read_signal_strength._entry.70, section ".printk_index", align 4
@s921_read_signal_strength._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.64, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_read_signal_strength._entry_ptr.73 = internal global ptr @s921_read_signal_strength._entry.72, section ".printk_index", align 4
@s921_read_signal_strength._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.64, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_read_signal_strength._entry_ptr.75 = internal global ptr @s921_read_signal_strength._entry.74, section ".printk_index", align 4
@s921_read_signal_strength._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.64, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_read_signal_strength._entry_ptr.77 = internal global ptr @s921_read_signal_strength._entry.76, section ".printk_index", align 4
@s921_read_signal_strength._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.64, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s921_read_signal_strength._entry_ptr.79 = internal global ptr @s921_read_signal_strength._entry.78, section ".printk_index", align 4
@___asan_gen_.80 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 23, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 481, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 483, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [9 x i8] c"s921_ops\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 500, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 468, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 334, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [10 x i8] c"s921_init\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 73, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 209, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 448, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 415, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 266, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [16 x i8] c"s921_bandselect\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 57, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 274, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 306, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 313, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 316, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 319, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 322, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 324, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 242, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 362, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 395, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 398, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 401, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private constant [38 x i8] c"../drivers/media/dvb-frontends/s921.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 404, i32 2 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__ksymtab_s921_attach, ptr @__param_debug, ptr @s921_attach._entry, ptr @s921_attach._entry.3, ptr @s921_attach._entry.6, ptr @s921_attach._entry_ptr, ptr @s921_attach._entry_ptr.5, ptr @s921_attach._entry_ptr.8, ptr @s921_i2c_readreg._entry, ptr @s921_i2c_readreg._entry_ptr, ptr @s921_i2c_writereg._entry, ptr @s921_i2c_writereg._entry_ptr, ptr @s921_initfe._entry, ptr @s921_initfe._entry.13, ptr @s921_initfe._entry_ptr, ptr @s921_initfe._entry_ptr.14, ptr @s921_pll_tune._entry, ptr @s921_pll_tune._entry.24, ptr @s921_pll_tune._entry.27, ptr @s921_pll_tune._entry.30, ptr @s921_pll_tune._entry.32, ptr @s921_pll_tune._entry.35, ptr @s921_pll_tune._entry.37, ptr @s921_pll_tune._entry.40, ptr @s921_pll_tune._entry.42, ptr @s921_pll_tune._entry.44, ptr @s921_pll_tune._entry.46, ptr @s921_pll_tune._entry.48, ptr @s921_pll_tune._entry.50, ptr @s921_pll_tune._entry.53, ptr @s921_pll_tune._entry.55, ptr @s921_pll_tune._entry_ptr, ptr @s921_pll_tune._entry_ptr.26, ptr @s921_pll_tune._entry_ptr.29, ptr @s921_pll_tune._entry_ptr.31, ptr @s921_pll_tune._entry_ptr.34, ptr @s921_pll_tune._entry_ptr.36, ptr @s921_pll_tune._entry_ptr.39, ptr @s921_pll_tune._entry_ptr.41, ptr @s921_pll_tune._entry_ptr.43, ptr @s921_pll_tune._entry_ptr.45, ptr @s921_pll_tune._entry_ptr.47, ptr @s921_pll_tune._entry_ptr.49, ptr @s921_pll_tune._entry_ptr.52, ptr @s921_pll_tune._entry_ptr.54, ptr @s921_pll_tune._entry_ptr.57, ptr @s921_read_signal_strength._entry, ptr @s921_read_signal_strength._entry.65, ptr @s921_read_signal_strength._entry.68, ptr @s921_read_signal_strength._entry.70, ptr @s921_read_signal_strength._entry.72, ptr @s921_read_signal_strength._entry.74, ptr @s921_read_signal_strength._entry.76, ptr @s921_read_signal_strength._entry.78, ptr @s921_read_signal_strength._entry_ptr, ptr @s921_read_signal_strength._entry_ptr.67, ptr @s921_read_signal_strength._entry_ptr.69, ptr @s921_read_signal_strength._entry_ptr.71, ptr @s921_read_signal_strength._entry_ptr.73, ptr @s921_read_signal_strength._entry_ptr.75, ptr @s921_read_signal_strength._entry_ptr.77, ptr @s921_read_signal_strength._entry_ptr.79, ptr @s921_read_status._entry, ptr @s921_read_status._entry.61, ptr @s921_read_status._entry_ptr, ptr @s921_read_status._entry_ptr.63, ptr @s921_release._entry, ptr @s921_release._entry.10, ptr @s921_release._entry_ptr, ptr @s921_release._entry_ptr.11, ptr @s921_set_frontend._entry, ptr @s921_set_frontend._entry.21, ptr @s921_set_frontend._entry_ptr, ptr @s921_set_frontend._entry_ptr.22, ptr @s921_tune._entry, ptr @s921_tune._entry.18, ptr @s921_tune._entry_ptr, ptr @s921_tune._entry_ptr.19, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @s921_ops, ptr @.str.9, ptr @.str.12, ptr @s921_init, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @s921_bandselect, ptr @.str.28, ptr @.str.33, ptr @.str.38, ptr @.str.51, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_release._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_initfe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_initfe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_init to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_i2c_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_tune._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_set_frontend._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_bandselect to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_pll_tune._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_i2c_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_read_status._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_read_signal_strength._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_read_signal_strength._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_read_signal_strength._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_read_signal_strength._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_read_signal_strength._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_read_signal_strength._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s921_read_signal_strength._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s921_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1052) #10
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %do.end15, label %if.end20

do.end15:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end20:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  %config21 = getelementptr inbounds %struct.s921_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config21 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config21, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %frontend = getelementptr inbounds %struct.s921_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.s921_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = call ptr @memcpy(ptr %ops, ptr @s921_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.s921_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end15
  %retval.0 = phi ptr [ %frontend, %if.end20 ], [ null, %do.end15 ]
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
define internal void @s921_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s921_initfe(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %config = getelementptr inbounds %struct.s921_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %7 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %conv2.i.i = zext i8 %6 to i16
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end8
  %i.014.i = phi i32 [ 0, %do.end8 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.regdata, ptr @s921_init, i32 %i.014.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %data.i = getelementptr %struct.regdata, ptr @s921_init, i32 %i.014.i, i32 1
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %buf.i.i, align 1
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %12, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196607, ptr %8, align 4
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv2.i.i, ptr %msg.i.i, align 4
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i.i, align 2
  %18 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i.i, ptr %buf3.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %s921_i2c_writereg.exit.thread.i, label %s921_i2c_writereg.exit.i

s921_i2c_writereg.exit.thread.i:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %for.inc.i

s921_i2c_writereg.exit.i:                         ; preds = %for.body.i
  %conv2.i = zext i8 %12 to i32
  %conv.i = zext i8 %10 to i32
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i, i32 noundef %conv.i, i32 noundef %conv2.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i, label %s921_i2c_writereg.exit.i.s921_i2c_writeregdata.exit_crit_edge, label %s921_i2c_writereg.exit.i.for.inc.i_crit_edge

s921_i2c_writereg.exit.i.for.inc.i_crit_edge:     ; preds = %s921_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

s921_i2c_writereg.exit.i.s921_i2c_writeregdata.exit_crit_edge: ; preds = %s921_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s921_i2c_writeregdata.exit

for.inc.i:                                        ; preds = %s921_i2c_writereg.exit.i.for.inc.i_crit_edge, %s921_i2c_writereg.exit.thread.i
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 104
  br i1 %exitcond.not.i, label %for.inc.i.s921_i2c_writeregdata.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.s921_i2c_writeregdata.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s921_i2c_writeregdata.exit

s921_i2c_writeregdata.exit:                       ; preds = %for.inc.i.s921_i2c_writeregdata.exit_crit_edge, %s921_i2c_writereg.exit.i.s921_i2c_writeregdata.exit_crit_edge
  %21 = phi i32 [ 0, %for.inc.i.s921_i2c_writeregdata.exit_crit_edge ], [ %call.i.i, %s921_i2c_writereg.exit.i.s921_i2c_writeregdata.exit_crit_edge ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s921_tune(ptr nocapture noundef readonly %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef readnone %delay, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.17) #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  br i1 %re_tune, label %if.then10, label %do.end8.if.end12_crit_edge

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @s921_set_frontend(ptr noundef %fe)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end8.if.end12_crit_edge
  %rc.0 = phi i32 [ %call11, %if.then10 ], [ 0, %do.end8.if.end12_crit_edge ]
  %and = and i32 %mode_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then14, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 @s921_read_status(ptr noundef %fe, ptr noundef %status)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s921_get_algo(ptr nocapture noundef readnone %fe) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s921_set_frontend(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %reg.addr.i645.i = alloca i8, align 1
  %val.i646.i = alloca i8, align 1
  %msg.i647.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i625.i = alloca i8, align 1
  %val.i626.i = alloca i8, align 1
  %msg.i627.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i605.i = alloca i8, align 1
  %val.i606.i = alloca i8, align 1
  %msg.i607.i = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i585.i = alloca i8, align 1
  %val.i586.i = alloca i8, align 1
  %msg.i587.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i573.i = alloca [2 x i8], align 1
  %msg.i574.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %msg.i564.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i542.i = alloca [2 x i8], align 1
  %msg.i.i543.i = alloca %struct.i2c_msg, align 4
  %buf.i530.i = alloca [2 x i8], align 1
  %msg.i531.i = alloca %struct.i2c_msg, align 4
  %buf.i517.i = alloca [2 x i8], align 1
  %msg.i518.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [2 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
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
  br i1 %tobool.not, label %do.end8.thread, label %do.end8

do.end8.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demodulator_priv, align 4
  br label %for.inc.i

do.end8:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  %.pr = load i32, ptr @debug, align 4
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %do.end8.for.inc.i_crit_edge, label %do.end.i

do.end8.for.inc.i_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #11
  %7 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dtv_property_cache, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %8) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %do.end8.for.inc.i_crit_edge, %do.end8.thread
  %9 = phi ptr [ %4, %do.end8.thread ], [ %6, %do.end.i ], [ %6, %do.end8.for.inc.i_crit_edge ]
  %10 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 485140000, i32 %11)
  %cmp10.1.i = icmp ult i32 %11, 485140000
  br i1 %cmp10.1.i, label %for.inc.i.if.end23.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end23.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 515140000, i32 %11)
  %cmp10.2.i = icmp ult i32 %11, 515140000
  br i1 %cmp10.2.i, label %for.inc.1.i.if.end23.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end23.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 545140000, i32 %11)
  %cmp10.3.i = icmp ult i32 %11, 545140000
  br i1 %cmp10.3.i, label %for.inc.2.i.if.end23.i_crit_edge, label %for.inc.3.i

for.inc.2.i.if.end23.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 599140000, i32 %11)
  %cmp10.4.i = icmp ult i32 %11, 599140000
  br i1 %cmp10.4.i, label %for.inc.3.i.if.end23.i_crit_edge, label %for.inc.4.i

for.inc.3.i.if.end23.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 623140000, i32 %11)
  %cmp10.5.i = icmp ult i32 %11, 623140000
  br i1 %cmp10.5.i, label %for.inc.4.i.if.end23.i_crit_edge, label %for.inc.5.i

for.inc.4.i.if.end23.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 659140000, i32 %11)
  %cmp10.6.i = icmp ult i32 %11, 659140000
  br i1 %cmp10.6.i, label %for.inc.5.i.if.end23.i_crit_edge, label %for.inc.6.i

for.inc.5.i.if.end23.i_crit_edge:                 ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 713140000, i32 %11)
  %cmp10.7.i = icmp ult i32 %11, 713140000
  %spec.select.i = select i1 %cmp10.7.i, i32 6, i32 7
  br label %if.end23.i

if.end23.i:                                       ; preds = %for.inc.6.i, %for.inc.5.i.if.end23.i_crit_edge, %for.inc.4.i.if.end23.i_crit_edge, %for.inc.3.i.if.end23.i_crit_edge, %for.inc.2.i.if.end23.i_crit_edge, %for.inc.1.i.if.end23.i_crit_edge, %for.inc.i.if.end23.i_crit_edge
  %band.0.lcssa.i = phi i32 [ 0, %for.inc.i.if.end23.i_crit_edge ], [ 1, %for.inc.1.i.if.end23.i_crit_edge ], [ 2, %for.inc.2.i.if.end23.i_crit_edge ], [ 3, %for.inc.3.i.if.end23.i_crit_edge ], [ 4, %for.inc.4.i.if.end23.i_crit_edge ], [ 5, %for.inc.5.i.if.end23.i_crit_edge ], [ %spec.select.i, %for.inc.6.i ]
  %band_reg.i = getelementptr [8 x %struct.s921_bandselect_val], ptr @s921_bandselect, i32 0, i32 %band.0.lcssa.i, i32 1
  %12 = ptrtoint ptr %band_reg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %band_reg.i, align 4
  %conv.i = zext i32 %11 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 258
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -5551535331153507086, i64 %mul.i, i32 0) #12, !srcloc !159
  %asmresult.i.i = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %14, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -5551535331153507086, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #12, !srcloc !160
  %asmresult10.i.i = extractvalue { i64, i32 } %15, 0
  %div192514.i = lshr i64 %asmresult10.i.i, 22
  %conv214.i = trunc i64 %div192514.i to i32
  %add215.i = add i32 %conv214.i, 2321
  %config.i = getelementptr inbounds %struct.s921_state, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %20 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %conv2.i.i.i = zext i8 %19 to i16
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf3.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  %22 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 71, ptr %buf.i.i.i, align 1
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 96, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 196607, ptr %21, align 4
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv2.i.i.i, ptr %msg.i.i.i, align 4
  %26 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i.i.i, align 2
  %27 = ptrtoint ptr %buf3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i.i.i, ptr %buf3.i.i.i, align 4
  %28 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %9, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %s921_i2c_writereg.exit.thread.i.i, label %s921_i2c_writereg.exit.i.i

s921_i2c_writereg.exit.thread.i.i:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  br label %for.inc.i.i

s921_i2c_writereg.exit.i.i:                       ; preds = %if.end23.i
  %call5.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i.i, i32 noundef 71, i32 noundef 96) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i, label %s921_i2c_writereg.exit.i.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i.i.for.inc.i.i_crit_edge

s921_i2c_writereg.exit.i.i.for.inc.i.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

s921_i2c_writereg.exit.i.i.cleanup_crit_edge:     ; preds = %s921_i2c_writereg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.i:                                      ; preds = %s921_i2c_writereg.exit.i.i.for.inc.i.i_crit_edge, %s921_i2c_writereg.exit.thread.i.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  %30 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 104, ptr %buf.i.i.i, align 1
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %21, align 4
  %33 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv2.i.i.i, ptr %msg.i.i.i, align 4
  %34 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i.i.i, align 2
  %35 = ptrtoint ptr %buf3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i.i.i, ptr %buf3.i.i.i, align 4
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %9, align 4
  %call.i.i.1.i = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.1.i)
  %cmp.not.i.i.1.i = icmp eq i32 %call.i.i.1.i, 1
  br i1 %cmp.not.i.i.1.i, label %s921_i2c_writereg.exit.thread.i.1.i, label %s921_i2c_writereg.exit.i.1.i

s921_i2c_writereg.exit.i.1.i:                     ; preds = %for.inc.i.i
  %call5.i.i.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i.1.i, i32 noundef 104, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %cmp3.i.1.i = icmp slt i32 %call.i.i.1.i, 0
  br i1 %cmp3.i.1.i, label %s921_i2c_writereg.exit.i.1.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i.1.i.for.inc.i.1.i_crit_edge

s921_i2c_writereg.exit.i.1.i.for.inc.i.1.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1.i

s921_i2c_writereg.exit.i.1.i.cleanup_crit_edge:   ; preds = %s921_i2c_writereg.exit.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s921_i2c_writereg.exit.thread.i.1.i:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  br label %for.inc.i.1.i

for.inc.i.1.i:                                    ; preds = %s921_i2c_writereg.exit.thread.i.1.i, %s921_i2c_writereg.exit.i.1.i.for.inc.i.1.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  %38 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 105, ptr %buf.i.i.i, align 1
  %39 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -119, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %40 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 196607, ptr %21, align 4
  %41 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv2.i.i.i, ptr %msg.i.i.i, align 4
  %42 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %flags.i.i.i, align 2
  %43 = ptrtoint ptr %buf3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %buf.i.i.i, ptr %buf3.i.i.i, align 4
  %44 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %9, align 4
  %call.i.i.2.i = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.2.i)
  %cmp.not.i.i.2.i = icmp eq i32 %call.i.i.2.i, 1
  br i1 %cmp.not.i.i.2.i, label %s921_i2c_writereg.exit.thread.i.2.i, label %s921_i2c_writereg.exit.i.2.i

s921_i2c_writereg.exit.i.2.i:                     ; preds = %for.inc.i.1.i
  %call5.i.i.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i.2.i, i32 noundef 105, i32 noundef 137) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2.i)
  %cmp3.i.2.i = icmp slt i32 %call.i.i.2.i, 0
  br i1 %cmp3.i.2.i, label %s921_i2c_writereg.exit.i.2.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i.2.i.for.inc.i.2.i_crit_edge

s921_i2c_writereg.exit.i.2.i.for.inc.i.2.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2.i

s921_i2c_writereg.exit.i.2.i.cleanup_crit_edge:   ; preds = %s921_i2c_writereg.exit.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s921_i2c_writereg.exit.thread.i.2.i:              ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  br label %for.inc.i.2.i

for.inc.i.2.i:                                    ; preds = %s921_i2c_writereg.exit.thread.i.2.i, %s921_i2c_writereg.exit.i.2.i.for.inc.i.2.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  %46 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -16, ptr %buf.i.i.i, align 1
  %47 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 72, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 196607, ptr %21, align 4
  %49 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv2.i.i.i, ptr %msg.i.i.i, align 4
  %50 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i.i.i, align 2
  %51 = ptrtoint ptr %buf3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i.i.i, ptr %buf3.i.i.i, align 4
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %9, align 4
  %call.i.i.3.i = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.3.i)
  %cmp.not.i.i.3.i = icmp eq i32 %call.i.i.3.i, 1
  br i1 %cmp.not.i.i.3.i, label %s921_i2c_writereg.exit.thread.i.3.i, label %s921_i2c_writereg.exit.i.3.i

s921_i2c_writereg.exit.i.3.i:                     ; preds = %for.inc.i.2.i
  %call5.i.i.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i.3.i, i32 noundef 240, i32 noundef 72) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3.i)
  %cmp3.i.3.i = icmp slt i32 %call.i.i.3.i, 0
  br i1 %cmp3.i.3.i, label %s921_i2c_writereg.exit.i.3.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i.3.i.for.inc.i.3.i_crit_edge

s921_i2c_writereg.exit.i.3.i.for.inc.i.3.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3.i

s921_i2c_writereg.exit.i.3.i.cleanup_crit_edge:   ; preds = %s921_i2c_writereg.exit.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s921_i2c_writereg.exit.thread.i.3.i:              ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  br label %for.inc.i.3.i

for.inc.i.3.i:                                    ; preds = %s921_i2c_writereg.exit.thread.i.3.i, %s921_i2c_writereg.exit.i.3.i.for.inc.i.3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  %54 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -15, ptr %buf.i.i.i, align 1
  %55 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 25, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %56 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 196607, ptr %21, align 4
  %57 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv2.i.i.i, ptr %msg.i.i.i, align 4
  %58 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %flags.i.i.i, align 2
  %59 = ptrtoint ptr %buf3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %buf.i.i.i, ptr %buf3.i.i.i, align 4
  %60 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %9, align 4
  %call.i.i.4.i = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.4.i)
  %cmp.not.i.i.4.i = icmp eq i32 %call.i.i.4.i, 1
  br i1 %cmp.not.i.i.4.i, label %s921_i2c_writereg.exit.thread.i.4.i, label %s921_i2c_writereg.exit.i.4.i

s921_i2c_writereg.exit.i.4.i:                     ; preds = %for.inc.i.3.i
  %call5.i.i.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i.4.i, i32 noundef 241, i32 noundef 25) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4.i)
  %cmp3.i.4.i = icmp slt i32 %call.i.i.4.i, 0
  br i1 %cmp3.i.4.i, label %s921_i2c_writereg.exit.i.4.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i.4.i.for.inc.i.4.i_crit_edge

s921_i2c_writereg.exit.i.4.i.for.inc.i.4.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.4.i

s921_i2c_writereg.exit.i.4.i.cleanup_crit_edge:   ; preds = %s921_i2c_writereg.exit.i.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s921_i2c_writereg.exit.thread.i.4.i:              ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  br label %for.inc.i.4.i

for.inc.i.4.i:                                    ; preds = %s921_i2c_writereg.exit.thread.i.4.i, %s921_i2c_writereg.exit.i.4.i.for.inc.i.4.i_crit_edge
  %62 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 1
  %shr223.i = lshr i32 %add215.i, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %66 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -14, ptr %buf.i.i, align 1
  %conv1.i.i = trunc i32 %shr223.i to i8
  %68 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv1.i.i, ptr %66, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %69 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %conv2.i515.i = zext i8 %65 to i16
  %71 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv2.i515.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i.i, align 2
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %buf.i.i, ptr %buf3.i.i, align 4
  %74 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %9, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %s921_i2c_writereg.exit.thread.i, label %s921_i2c_writereg.exit.i

s921_i2c_writereg.exit.thread.i:                  ; preds = %for.inc.i.4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %if.end229.i

s921_i2c_writereg.exit.i:                         ; preds = %for.inc.i.4.i
  %and224.i = and i32 %shr223.i, 255
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i, i32 noundef 242, i32 noundef %and224.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp226.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp226.i, label %s921_i2c_writereg.exit.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i.if.end229.i_crit_edge

s921_i2c_writereg.exit.i.if.end229.i_crit_edge:   ; preds = %s921_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end229.i

s921_i2c_writereg.exit.i.cleanup_crit_edge:       ; preds = %s921_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end229.i:                                      ; preds = %s921_i2c_writereg.exit.i.if.end229.i_crit_edge, %s921_i2c_writereg.exit.thread.i
  %76 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %config.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i517.i) #7
  %80 = getelementptr inbounds [2 x i8], ptr %buf.i517.i, i32 0, i32 1
  %81 = ptrtoint ptr %buf.i517.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -13, ptr %buf.i517.i, align 1
  %conv1.i519.i = trunc i32 %add215.i to i8
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv1.i519.i, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i518.i) #7
  %83 = getelementptr inbounds i8, ptr %msg.i518.i, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 196607, ptr %83, align 4
  %conv2.i520.i = zext i8 %79 to i16
  %85 = ptrtoint ptr %msg.i518.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv2.i520.i, ptr %msg.i518.i, align 4
  %flags.i521.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i518.i, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i521.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i521.i, align 2
  %buf3.i523.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i518.i, i32 0, i32 3
  %87 = ptrtoint ptr %buf3.i523.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %buf.i517.i, ptr %buf3.i523.i, align 4
  %88 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %9, align 4
  %call.i524.i = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i518.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i524.i)
  %cmp.not.i525.i = icmp eq i32 %call.i524.i, 1
  br i1 %cmp.not.i525.i, label %s921_i2c_writereg.exit529.thread.i, label %s921_i2c_writereg.exit529.i

s921_i2c_writereg.exit529.thread.i:               ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i518.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i517.i) #7
  br label %if.end237.i

s921_i2c_writereg.exit529.i:                      ; preds = %if.end229.i
  %and232.i = and i32 %add215.i, 255
  %call5.i526.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i524.i, i32 noundef 243, i32 noundef %and232.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i518.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i517.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i524.i)
  %cmp234.i = icmp slt i32 %call.i524.i, 0
  br i1 %cmp234.i, label %s921_i2c_writereg.exit529.i.cleanup_crit_edge, label %s921_i2c_writereg.exit529.i.if.end237.i_crit_edge

s921_i2c_writereg.exit529.i.if.end237.i_crit_edge: ; preds = %s921_i2c_writereg.exit529.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237.i

s921_i2c_writereg.exit529.i.cleanup_crit_edge:    ; preds = %s921_i2c_writereg.exit529.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end237.i:                                      ; preds = %s921_i2c_writereg.exit529.i.if.end237.i_crit_edge, %s921_i2c_writereg.exit529.thread.i
  %90 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %config.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 1
  %conv240.i = zext i8 %13 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i530.i) #7
  %94 = getelementptr inbounds [2 x i8], ptr %buf.i530.i, i32 0, i32 1
  %95 = ptrtoint ptr %buf.i530.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -12, ptr %buf.i530.i, align 1
  %96 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %13, ptr %94, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i531.i) #7
  %97 = getelementptr inbounds i8, ptr %msg.i531.i, i32 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 196607, ptr %97, align 4
  %conv2.i532.i = zext i8 %93 to i16
  %99 = ptrtoint ptr %msg.i531.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv2.i532.i, ptr %msg.i531.i, align 4
  %flags.i533.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i531.i, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i533.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i533.i, align 2
  %buf3.i535.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i531.i, i32 0, i32 3
  %101 = ptrtoint ptr %buf3.i535.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %buf.i530.i, ptr %buf3.i535.i, align 4
  %102 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %9, align 4
  %call.i536.i = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msg.i531.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i536.i)
  %cmp.not.i537.i = icmp eq i32 %call.i536.i, 1
  br i1 %cmp.not.i537.i, label %s921_i2c_writereg.exit541.thread.i, label %s921_i2c_writereg.exit541.i

s921_i2c_writereg.exit541.thread.i:               ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i531.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i530.i) #7
  br label %if.end245.i

s921_i2c_writereg.exit541.i:                      ; preds = %if.end237.i
  %call5.i538.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i536.i, i32 noundef 244, i32 noundef %conv240.i) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i531.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i530.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i536.i)
  %cmp242.i = icmp slt i32 %call.i536.i, 0
  br i1 %cmp242.i, label %s921_i2c_writereg.exit541.i.cleanup_crit_edge, label %s921_i2c_writereg.exit541.i.if.end245.i_crit_edge

s921_i2c_writereg.exit541.i.if.end245.i_crit_edge: ; preds = %s921_i2c_writereg.exit541.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end245.i

s921_i2c_writereg.exit541.i.cleanup_crit_edge:    ; preds = %s921_i2c_writereg.exit541.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end245.i:                                      ; preds = %s921_i2c_writereg.exit541.i.if.end245.i_crit_edge, %s921_i2c_writereg.exit541.thread.i
  %104 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 1
  %108 = getelementptr inbounds [2 x i8], ptr %buf.i.i542.i, i32 0, i32 1
  %109 = getelementptr inbounds i8, ptr %msg.i.i543.i, i32 4
  %conv2.i.i544.i = zext i8 %107 to i16
  %flags.i.i545.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i543.i, i32 0, i32 1
  %buf3.i.i546.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i543.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  %110 = ptrtoint ptr %buf.i.i542.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -11, ptr %buf.i.i542.i, align 1
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -82, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 196607, ptr %109, align 4
  %113 = ptrtoint ptr %msg.i.i543.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv2.i.i544.i, ptr %msg.i.i543.i, align 4
  %114 = ptrtoint ptr %flags.i.i545.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %flags.i.i545.i, align 2
  %115 = ptrtoint ptr %buf3.i.i546.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %buf.i.i542.i, ptr %buf3.i.i546.i, align 4
  %116 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %9, align 4
  %call.i.i550.i = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %msg.i.i543.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i550.i)
  %cmp.not.i.i551.i = icmp eq i32 %call.i.i550.i, 1
  br i1 %cmp.not.i.i551.i, label %s921_i2c_writereg.exit.thread.i553.i, label %s921_i2c_writereg.exit.i558.i

s921_i2c_writereg.exit.thread.i553.i:             ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  br label %for.inc.i561.i

s921_i2c_writereg.exit.i558.i:                    ; preds = %if.end245.i
  %call5.i.i556.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i550.i, i32 noundef 245, i32 noundef 174) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i550.i)
  %cmp3.i557.i = icmp slt i32 %call.i.i550.i, 0
  br i1 %cmp3.i557.i, label %s921_i2c_writereg.exit.i558.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i558.i.for.inc.i561.i_crit_edge

s921_i2c_writereg.exit.i558.i.for.inc.i561.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i561.i

s921_i2c_writereg.exit.i558.i.cleanup_crit_edge:  ; preds = %s921_i2c_writereg.exit.i558.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i561.i:                                   ; preds = %s921_i2c_writereg.exit.i558.i.for.inc.i561.i_crit_edge, %s921_i2c_writereg.exit.thread.i553.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  %118 = ptrtoint ptr %buf.i.i542.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 -10, ptr %buf.i.i542.i, align 1
  %119 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -73, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  %120 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 196607, ptr %109, align 4
  %121 = ptrtoint ptr %msg.i.i543.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv2.i.i544.i, ptr %msg.i.i543.i, align 4
  %122 = ptrtoint ptr %flags.i.i545.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %flags.i.i545.i, align 2
  %123 = ptrtoint ptr %buf3.i.i546.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %buf.i.i542.i, ptr %buf3.i.i546.i, align 4
  %124 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %9, align 4
  %call.i.i550.1.i = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %msg.i.i543.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i550.1.i)
  %cmp.not.i.i551.1.i = icmp eq i32 %call.i.i550.1.i, 1
  br i1 %cmp.not.i.i551.1.i, label %s921_i2c_writereg.exit.thread.i553.1.i, label %s921_i2c_writereg.exit.i558.1.i

s921_i2c_writereg.exit.i558.1.i:                  ; preds = %for.inc.i561.i
  %call5.i.i556.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i550.1.i, i32 noundef 246, i32 noundef 183) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i550.1.i)
  %cmp3.i557.1.i = icmp slt i32 %call.i.i550.1.i, 0
  br i1 %cmp3.i557.1.i, label %s921_i2c_writereg.exit.i558.1.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i558.1.i.for.inc.i561.1.i_crit_edge

s921_i2c_writereg.exit.i558.1.i.for.inc.i561.1.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i561.1.i

s921_i2c_writereg.exit.i558.1.i.cleanup_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s921_i2c_writereg.exit.thread.i553.1.i:           ; preds = %for.inc.i561.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  br label %for.inc.i561.1.i

for.inc.i561.1.i:                                 ; preds = %s921_i2c_writereg.exit.thread.i553.1.i, %s921_i2c_writereg.exit.i558.1.i.for.inc.i561.1.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  %126 = ptrtoint ptr %buf.i.i542.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -9, ptr %buf.i.i542.i, align 1
  %127 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -70, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  %128 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 196607, ptr %109, align 4
  %129 = ptrtoint ptr %msg.i.i543.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv2.i.i544.i, ptr %msg.i.i543.i, align 4
  %130 = ptrtoint ptr %flags.i.i545.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i.i545.i, align 2
  %131 = ptrtoint ptr %buf3.i.i546.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %buf.i.i542.i, ptr %buf3.i.i546.i, align 4
  %132 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %9, align 4
  %call.i.i550.2.i = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %msg.i.i543.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i550.2.i)
  %cmp.not.i.i551.2.i = icmp eq i32 %call.i.i550.2.i, 1
  br i1 %cmp.not.i.i551.2.i, label %s921_i2c_writereg.exit.thread.i553.2.i, label %s921_i2c_writereg.exit.i558.2.i

s921_i2c_writereg.exit.i558.2.i:                  ; preds = %for.inc.i561.1.i
  %call5.i.i556.2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i550.2.i, i32 noundef 247, i32 noundef 186) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i550.2.i)
  %cmp3.i557.2.i = icmp slt i32 %call.i.i550.2.i, 0
  br i1 %cmp3.i557.2.i, label %s921_i2c_writereg.exit.i558.2.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i558.2.i.for.inc.i561.2.i_crit_edge

s921_i2c_writereg.exit.i558.2.i.for.inc.i561.2.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i561.2.i

s921_i2c_writereg.exit.i558.2.i.cleanup_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s921_i2c_writereg.exit.thread.i553.2.i:           ; preds = %for.inc.i561.1.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  br label %for.inc.i561.2.i

for.inc.i561.2.i:                                 ; preds = %s921_i2c_writereg.exit.thread.i553.2.i, %s921_i2c_writereg.exit.i558.2.i.for.inc.i561.2.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  %134 = ptrtoint ptr %buf.i.i542.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -8, ptr %buf.i.i542.i, align 1
  %135 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -41, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  %136 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 196607, ptr %109, align 4
  %137 = ptrtoint ptr %msg.i.i543.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv2.i.i544.i, ptr %msg.i.i543.i, align 4
  %138 = ptrtoint ptr %flags.i.i545.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i.i545.i, align 2
  %139 = ptrtoint ptr %buf3.i.i546.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %buf.i.i542.i, ptr %buf3.i.i546.i, align 4
  %140 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %9, align 4
  %call.i.i550.3.i = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %msg.i.i543.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i550.3.i)
  %cmp.not.i.i551.3.i = icmp eq i32 %call.i.i550.3.i, 1
  br i1 %cmp.not.i.i551.3.i, label %s921_i2c_writereg.exit.thread.i553.3.i, label %s921_i2c_writereg.exit.i558.3.i

s921_i2c_writereg.exit.i558.3.i:                  ; preds = %for.inc.i561.2.i
  %call5.i.i556.3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i550.3.i, i32 noundef 248, i32 noundef 215) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i550.3.i)
  %cmp3.i557.3.i = icmp slt i32 %call.i.i550.3.i, 0
  br i1 %cmp3.i557.3.i, label %s921_i2c_writereg.exit.i558.3.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i558.3.i.for.inc.i561.3.i_crit_edge

s921_i2c_writereg.exit.i558.3.i.for.inc.i561.3.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i561.3.i

s921_i2c_writereg.exit.i558.3.i.cleanup_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s921_i2c_writereg.exit.thread.i553.3.i:           ; preds = %for.inc.i561.2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  br label %for.inc.i561.3.i

for.inc.i561.3.i:                                 ; preds = %s921_i2c_writereg.exit.thread.i553.3.i, %s921_i2c_writereg.exit.i558.3.i.for.inc.i561.3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  %142 = ptrtoint ptr %buf.i.i542.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 104, ptr %buf.i.i542.i, align 1
  %143 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 10, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  %144 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 196607, ptr %109, align 4
  %145 = ptrtoint ptr %msg.i.i543.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv2.i.i544.i, ptr %msg.i.i543.i, align 4
  %146 = ptrtoint ptr %flags.i.i545.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %flags.i.i545.i, align 2
  %147 = ptrtoint ptr %buf3.i.i546.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %buf.i.i542.i, ptr %buf3.i.i546.i, align 4
  %148 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %9, align 4
  %call.i.i550.4.i = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msg.i.i543.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i550.4.i)
  %cmp.not.i.i551.4.i = icmp eq i32 %call.i.i550.4.i, 1
  br i1 %cmp.not.i.i551.4.i, label %s921_i2c_writereg.exit.thread.i553.4.i, label %s921_i2c_writereg.exit.i558.4.i

s921_i2c_writereg.exit.i558.4.i:                  ; preds = %for.inc.i561.3.i
  %call5.i.i556.4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i550.4.i, i32 noundef 104, i32 noundef 10) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i550.4.i)
  %cmp3.i557.4.i = icmp slt i32 %call.i.i550.4.i, 0
  br i1 %cmp3.i557.4.i, label %s921_i2c_writereg.exit.i558.4.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i558.4.i.for.inc.i561.4.i_crit_edge

s921_i2c_writereg.exit.i558.4.i.for.inc.i561.4.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i561.4.i

s921_i2c_writereg.exit.i558.4.i.cleanup_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s921_i2c_writereg.exit.thread.i553.4.i:           ; preds = %for.inc.i561.3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  br label %for.inc.i561.4.i

for.inc.i561.4.i:                                 ; preds = %s921_i2c_writereg.exit.thread.i553.4.i, %s921_i2c_writereg.exit.i558.4.i.for.inc.i561.4.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  %150 = ptrtoint ptr %buf.i.i542.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 105, ptr %buf.i.i542.i, align 1
  %151 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 9, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  %152 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 196607, ptr %109, align 4
  %153 = ptrtoint ptr %msg.i.i543.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %conv2.i.i544.i, ptr %msg.i.i543.i, align 4
  %154 = ptrtoint ptr %flags.i.i545.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 0, ptr %flags.i.i545.i, align 2
  %155 = ptrtoint ptr %buf3.i.i546.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %buf.i.i542.i, ptr %buf3.i.i546.i, align 4
  %156 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %9, align 4
  %call.i.i550.5.i = call i32 @i2c_transfer(ptr noundef %157, ptr noundef nonnull %msg.i.i543.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i550.5.i)
  %cmp.not.i.i551.5.i = icmp eq i32 %call.i.i550.5.i, 1
  br i1 %cmp.not.i.i551.5.i, label %s921_i2c_writereg.exit.thread.i553.5.i, label %s921_i2c_writereg.exit.i558.5.i

s921_i2c_writereg.exit.i558.5.i:                  ; preds = %for.inc.i561.4.i
  %call5.i.i556.5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i.i550.5.i, i32 noundef 105, i32 noundef 9) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i550.5.i)
  %cmp3.i557.5.i = icmp slt i32 %call.i.i550.5.i, 0
  br i1 %cmp3.i557.5.i, label %s921_i2c_writereg.exit.i558.5.i.cleanup_crit_edge, label %s921_i2c_writereg.exit.i558.5.i.for.inc.i561.5.i_crit_edge

s921_i2c_writereg.exit.i558.5.i.for.inc.i561.5.i_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i561.5.i

s921_i2c_writereg.exit.i558.5.i.cleanup_crit_edge: ; preds = %s921_i2c_writereg.exit.i558.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

s921_i2c_writereg.exit.thread.i553.5.i:           ; preds = %for.inc.i561.4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i543.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i542.i) #7
  br label %for.inc.i561.5.i

for.inc.i561.5.i:                                 ; preds = %s921_i2c_writereg.exit.thread.i553.5.i, %s921_i2c_writereg.exit.i558.5.i.for.inc.i561.5.i_crit_edge
  %158 = getelementptr inbounds i8, ptr %msg.i564.i, i32 4
  %flags.i566.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564.i, i32 0, i32 1
  %buf.i568.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564.i, i32 1
  %flags3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564.i, i32 1, i32 1
  %len4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564.i, i32 1, i32 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564.i, i32 1, i32 3
  br label %for.body256.i

for.body256.i:                                    ; preds = %for.inc276.i.for.body256.i_crit_edge, %for.inc.i561.5.i
  %i.0682.i = phi i32 [ 0, %for.inc.i561.5.i ], [ %inc277.i, %for.inc276.i.for.body256.i_crit_edge ]
  %159 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %config.i, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %160, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  %163 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -128, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #7
  %164 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -1, ptr %val.i.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i564.i) #7
  %165 = call ptr @memset(ptr %158, i32 255, i32 16)
  %conv.i565.i = zext i8 %162 to i16
  %166 = ptrtoint ptr %msg.i564.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv.i565.i, ptr %msg.i564.i, align 4
  %167 = ptrtoint ptr %flags.i566.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 0, ptr %flags.i566.i, align 2
  %168 = ptrtoint ptr %158 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 1, ptr %158, align 4
  %169 = ptrtoint ptr %buf.i568.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %reg.addr.i.i, ptr %buf.i568.i, align 4
  %170 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv.i565.i, ptr %arrayinit.element.i.i, align 4
  %171 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 1, ptr %flags3.i.i, align 2
  %172 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 1, ptr %len4.i.i, align 4
  %173 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %val.i.i, ptr %buf5.i.i, align 4
  %174 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %9, align 4
  %call.i569.i = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %msg.i564.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i569.i)
  %cmp.not.i570.i = icmp eq i32 %call.i569.i, 2
  br i1 %cmp.not.i570.i, label %if.end.i.i, label %do.end.i571.i

do.end.i571.i:                                    ; preds = %for.body256.i
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %reg.addr.i.i, align 1
  %conv8.i.i = zext i8 %177 to i32
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv8.i.i, i32 noundef %call.i569.i) #11
  br label %s921_i2c_readreg.exit.i

if.end.i.i:                                       ; preds = %for.body256.i
  call void @__sanitizer_cov_trace_pc() #9
  %178 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %val.i.i, align 1
  %conv12.i.i = zext i8 %179 to i32
  br label %s921_i2c_readreg.exit.i

s921_i2c_readreg.exit.i:                          ; preds = %if.end.i.i, %do.end.i571.i
  %retval.0.i572.i = phi i32 [ %call.i569.i, %do.end.i571.i ], [ %conv12.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i564.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #7
  %180 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool261.not.i = icmp eq i32 %180, 0
  br i1 %tobool261.not.i, label %s921_i2c_readreg.exit.i.for.inc276.i_crit_edge, label %do.end265.i

s921_i2c_readreg.exit.i.for.inc276.i_crit_edge:   ; preds = %s921_i2c_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc276.i

do.end265.i:                                      ; preds = %s921_i2c_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call267.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #11
  %call272.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %retval.0.i572.i) #11
  br label %for.inc276.i

for.inc276.i:                                     ; preds = %do.end265.i, %s921_i2c_readreg.exit.i.for.inc276.i_crit_edge
  %inc277.i = add nuw nsw i32 %i.0682.i, 1
  %exitcond.not.i = icmp eq i32 %inc277.i, 6
  br i1 %exitcond.not.i, label %for.end278.i, label %for.inc276.i.for.body256.i_crit_edge

for.inc276.i.for.body256.i_crit_edge:             ; preds = %for.inc276.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body256.i

for.end278.i:                                     ; preds = %for.inc276.i
  %181 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %config.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %182, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i573.i) #7
  %185 = getelementptr inbounds [2 x i8], ptr %buf.i573.i, i32 0, i32 1
  %186 = ptrtoint ptr %buf.i573.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %buf.i573.i, align 1
  %187 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 64, ptr %185, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i574.i) #7
  %188 = getelementptr inbounds i8, ptr %msg.i574.i, i32 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 196607, ptr %188, align 4
  %conv2.i575.i = zext i8 %184 to i16
  %190 = ptrtoint ptr %msg.i574.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv2.i575.i, ptr %msg.i574.i, align 4
  %flags.i576.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i574.i, i32 0, i32 1
  %191 = ptrtoint ptr %flags.i576.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %flags.i576.i, align 2
  %buf3.i578.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i574.i, i32 0, i32 3
  %192 = ptrtoint ptr %buf3.i578.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %buf.i573.i, ptr %buf3.i578.i, align 4
  %193 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %9, align 4
  %call.i579.i = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %msg.i574.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i579.i)
  %cmp.not.i580.i = icmp eq i32 %call.i579.i, 1
  br i1 %cmp.not.i580.i, label %s921_i2c_writereg.exit584.thread.i, label %s921_i2c_writereg.exit584.i

s921_i2c_writereg.exit584.thread.i:               ; preds = %for.end278.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i574.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i573.i) #7
  br label %if.end285.i

s921_i2c_writereg.exit584.i:                      ; preds = %for.end278.i
  %call5.i581.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i579.i, i32 noundef 1, i32 noundef 64) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i574.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i573.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i579.i)
  %cmp282.i = icmp slt i32 %call.i579.i, 0
  br i1 %cmp282.i, label %s921_i2c_writereg.exit584.i.cleanup_crit_edge, label %s921_i2c_writereg.exit584.i.if.end285.i_crit_edge

s921_i2c_writereg.exit584.i.if.end285.i_crit_edge: ; preds = %s921_i2c_writereg.exit584.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end285.i

s921_i2c_writereg.exit584.i.cleanup_crit_edge:    ; preds = %s921_i2c_writereg.exit584.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end285.i:                                      ; preds = %s921_i2c_writereg.exit584.i.if.end285.i_crit_edge, %s921_i2c_writereg.exit584.thread.i
  %195 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %config.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %196, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i585.i) #7
  %199 = ptrtoint ptr %reg.addr.i585.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %reg.addr.i585.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i586.i) #7
  %200 = ptrtoint ptr %val.i586.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 -1, ptr %val.i586.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i587.i) #7
  %201 = getelementptr inbounds i8, ptr %msg.i587.i, i32 4
  %202 = call ptr @memset(ptr %201, i32 255, i32 16)
  %conv.i588.i = zext i8 %198 to i16
  %203 = ptrtoint ptr %msg.i587.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv.i588.i, ptr %msg.i587.i, align 4
  %flags.i589.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i587.i, i32 0, i32 1
  %204 = ptrtoint ptr %flags.i589.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 0, ptr %flags.i589.i, align 2
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 1, ptr %201, align 4
  %buf.i591.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i587.i, i32 0, i32 3
  %206 = ptrtoint ptr %buf.i591.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %reg.addr.i585.i, ptr %buf.i591.i, align 4
  %arrayinit.element.i592.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i587.i, i32 1
  %207 = ptrtoint ptr %arrayinit.element.i592.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %conv.i588.i, ptr %arrayinit.element.i592.i, align 4
  %flags3.i593.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i587.i, i32 1, i32 1
  %208 = ptrtoint ptr %flags3.i593.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 1, ptr %flags3.i593.i, align 2
  %len4.i594.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i587.i, i32 1, i32 2
  %209 = ptrtoint ptr %len4.i594.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 1, ptr %len4.i594.i, align 4
  %buf5.i595.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i587.i, i32 1, i32 3
  %210 = ptrtoint ptr %buf5.i595.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %val.i586.i, ptr %buf5.i595.i, align 4
  %211 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %9, align 4
  %call.i596.i = call i32 @i2c_transfer(ptr noundef %212, ptr noundef nonnull %msg.i587.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i596.i)
  %cmp.not.i597.i = icmp eq i32 %call.i596.i, 2
  br i1 %cmp.not.i597.i, label %if.end.i602.i, label %do.end.i600.i

do.end.i600.i:                                    ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #9
  %213 = ptrtoint ptr %reg.addr.i585.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %reg.addr.i585.i, align 1
  %conv8.i598.i = zext i8 %214 to i32
  %call9.i599.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv8.i598.i, i32 noundef %call.i596.i) #11
  br label %s921_i2c_readreg.exit604.i

if.end.i602.i:                                    ; preds = %if.end285.i
  call void @__sanitizer_cov_trace_pc() #9
  %215 = ptrtoint ptr %val.i586.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %val.i586.i, align 1
  %conv12.i601.i = zext i8 %216 to i32
  br label %s921_i2c_readreg.exit604.i

s921_i2c_readreg.exit604.i:                       ; preds = %if.end.i602.i, %do.end.i600.i
  %retval.0.i603.i = phi i32 [ %call.i596.i, %do.end.i600.i ], [ %conv12.i601.i, %if.end.i602.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i587.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i586.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i585.i) #7
  %217 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool290.not.i = icmp eq i32 %217, 0
  br i1 %tobool290.not.i, label %s921_i2c_readreg.exit604.i.do.end304.i_crit_edge, label %do.end294.i

s921_i2c_readreg.exit604.i.do.end304.i_crit_edge: ; preds = %s921_i2c_readreg.exit604.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end304.i

do.end294.i:                                      ; preds = %s921_i2c_readreg.exit604.i
  call void @__sanitizer_cov_trace_pc() #9
  %call296.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #11
  %call301.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %retval.0.i603.i) #11
  br label %do.end304.i

do.end304.i:                                      ; preds = %do.end294.i, %s921_i2c_readreg.exit604.i.do.end304.i_crit_edge
  %218 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %config.i, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %219, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i605.i) #7
  %222 = ptrtoint ptr %reg.addr.i605.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 -128, ptr %reg.addr.i605.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i606.i) #7
  %223 = ptrtoint ptr %val.i606.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 -1, ptr %val.i606.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i607.i) #7
  %224 = getelementptr inbounds i8, ptr %msg.i607.i, i32 4
  %225 = call ptr @memset(ptr %224, i32 255, i32 16)
  %conv.i608.i = zext i8 %221 to i16
  %226 = ptrtoint ptr %msg.i607.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv.i608.i, ptr %msg.i607.i, align 4
  %flags.i609.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i607.i, i32 0, i32 1
  %227 = ptrtoint ptr %flags.i609.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %flags.i609.i, align 2
  %228 = ptrtoint ptr %224 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 1, ptr %224, align 4
  %buf.i611.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i607.i, i32 0, i32 3
  %229 = ptrtoint ptr %buf.i611.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %reg.addr.i605.i, ptr %buf.i611.i, align 4
  %arrayinit.element.i612.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i607.i, i32 1
  %230 = ptrtoint ptr %arrayinit.element.i612.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %conv.i608.i, ptr %arrayinit.element.i612.i, align 4
  %flags3.i613.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i607.i, i32 1, i32 1
  %231 = ptrtoint ptr %flags3.i613.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 1, ptr %flags3.i613.i, align 2
  %len4.i614.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i607.i, i32 1, i32 2
  %232 = ptrtoint ptr %len4.i614.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 1, ptr %len4.i614.i, align 4
  %buf5.i615.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i607.i, i32 1, i32 3
  %233 = ptrtoint ptr %buf5.i615.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %val.i606.i, ptr %buf5.i615.i, align 4
  %234 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %9, align 4
  %call.i616.i = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %msg.i607.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i616.i)
  %cmp.not.i617.i = icmp eq i32 %call.i616.i, 2
  br i1 %cmp.not.i617.i, label %if.end.i622.i, label %do.end.i620.i

do.end.i620.i:                                    ; preds = %do.end304.i
  call void @__sanitizer_cov_trace_pc() #9
  %236 = ptrtoint ptr %reg.addr.i605.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %reg.addr.i605.i, align 1
  %conv8.i618.i = zext i8 %237 to i32
  %call9.i619.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv8.i618.i, i32 noundef %call.i616.i) #11
  br label %s921_i2c_readreg.exit624.i

if.end.i622.i:                                    ; preds = %do.end304.i
  call void @__sanitizer_cov_trace_pc() #9
  %238 = ptrtoint ptr %val.i606.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %val.i606.i, align 1
  %conv12.i621.i = zext i8 %239 to i32
  br label %s921_i2c_readreg.exit624.i

s921_i2c_readreg.exit624.i:                       ; preds = %if.end.i622.i, %do.end.i620.i
  %retval.0.i623.i = phi i32 [ %call.i616.i, %do.end.i620.i ], [ %conv12.i621.i, %if.end.i622.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i607.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i606.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i605.i) #7
  %240 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool309.not.i = icmp eq i32 %240, 0
  br i1 %tobool309.not.i, label %s921_i2c_readreg.exit624.i.do.end323.i_crit_edge, label %do.end313.i

s921_i2c_readreg.exit624.i.do.end323.i_crit_edge: ; preds = %s921_i2c_readreg.exit624.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end323.i

do.end313.i:                                      ; preds = %s921_i2c_readreg.exit624.i
  call void @__sanitizer_cov_trace_pc() #9
  %call315.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #11
  %call320.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %retval.0.i623.i) #11
  br label %do.end323.i

do.end323.i:                                      ; preds = %do.end313.i, %s921_i2c_readreg.exit624.i.do.end323.i_crit_edge
  %241 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %config.i, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %242, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i625.i) #7
  %245 = ptrtoint ptr %reg.addr.i625.i to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 -128, ptr %reg.addr.i625.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i626.i) #7
  %246 = ptrtoint ptr %val.i626.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 -1, ptr %val.i626.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i627.i) #7
  %247 = getelementptr inbounds i8, ptr %msg.i627.i, i32 4
  %248 = call ptr @memset(ptr %247, i32 255, i32 16)
  %conv.i628.i = zext i8 %244 to i16
  %249 = ptrtoint ptr %msg.i627.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 %conv.i628.i, ptr %msg.i627.i, align 4
  %flags.i629.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627.i, i32 0, i32 1
  %250 = ptrtoint ptr %flags.i629.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 0, ptr %flags.i629.i, align 2
  %251 = ptrtoint ptr %247 to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 1, ptr %247, align 4
  %buf.i631.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627.i, i32 0, i32 3
  %252 = ptrtoint ptr %buf.i631.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %reg.addr.i625.i, ptr %buf.i631.i, align 4
  %arrayinit.element.i632.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627.i, i32 1
  %253 = ptrtoint ptr %arrayinit.element.i632.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %conv.i628.i, ptr %arrayinit.element.i632.i, align 4
  %flags3.i633.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627.i, i32 1, i32 1
  %254 = ptrtoint ptr %flags3.i633.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 1, ptr %flags3.i633.i, align 2
  %len4.i634.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627.i, i32 1, i32 2
  %255 = ptrtoint ptr %len4.i634.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 1, ptr %len4.i634.i, align 4
  %buf5.i635.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i627.i, i32 1, i32 3
  %256 = ptrtoint ptr %buf5.i635.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %val.i626.i, ptr %buf5.i635.i, align 4
  %257 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %9, align 4
  %call.i636.i = call i32 @i2c_transfer(ptr noundef %258, ptr noundef nonnull %msg.i627.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i636.i)
  %cmp.not.i637.i = icmp eq i32 %call.i636.i, 2
  br i1 %cmp.not.i637.i, label %if.end.i642.i, label %do.end.i640.i

do.end.i640.i:                                    ; preds = %do.end323.i
  call void @__sanitizer_cov_trace_pc() #9
  %259 = ptrtoint ptr %reg.addr.i625.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %reg.addr.i625.i, align 1
  %conv8.i638.i = zext i8 %260 to i32
  %call9.i639.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv8.i638.i, i32 noundef %call.i636.i) #11
  br label %s921_i2c_readreg.exit644.i

if.end.i642.i:                                    ; preds = %do.end323.i
  call void @__sanitizer_cov_trace_pc() #9
  %261 = ptrtoint ptr %val.i626.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %val.i626.i, align 1
  %conv12.i641.i = zext i8 %262 to i32
  br label %s921_i2c_readreg.exit644.i

s921_i2c_readreg.exit644.i:                       ; preds = %if.end.i642.i, %do.end.i640.i
  %retval.0.i643.i = phi i32 [ %call.i636.i, %do.end.i640.i ], [ %conv12.i641.i, %if.end.i642.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i627.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i626.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i625.i) #7
  %263 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %tobool328.not.i = icmp eq i32 %263, 0
  br i1 %tobool328.not.i, label %s921_i2c_readreg.exit644.i.do.end342.i_crit_edge, label %do.end332.i

s921_i2c_readreg.exit644.i.do.end342.i_crit_edge: ; preds = %s921_i2c_readreg.exit644.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end342.i

do.end332.i:                                      ; preds = %s921_i2c_readreg.exit644.i
  call void @__sanitizer_cov_trace_pc() #9
  %call334.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #11
  %call339.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %retval.0.i643.i) #11
  br label %do.end342.i

do.end342.i:                                      ; preds = %do.end332.i, %s921_i2c_readreg.exit644.i.do.end342.i_crit_edge
  %264 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %config.i, align 4
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %265, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i645.i) #7
  %268 = ptrtoint ptr %reg.addr.i645.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 50, ptr %reg.addr.i645.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i646.i) #7
  %269 = ptrtoint ptr %val.i646.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 -1, ptr %val.i646.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i647.i) #7
  %270 = getelementptr inbounds i8, ptr %msg.i647.i, i32 4
  %271 = call ptr @memset(ptr %270, i32 255, i32 16)
  %conv.i648.i = zext i8 %267 to i16
  %272 = ptrtoint ptr %msg.i647.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 %conv.i648.i, ptr %msg.i647.i, align 4
  %flags.i649.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i647.i, i32 0, i32 1
  %273 = ptrtoint ptr %flags.i649.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 0, ptr %flags.i649.i, align 2
  %274 = ptrtoint ptr %270 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 1, ptr %270, align 4
  %buf.i651.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i647.i, i32 0, i32 3
  %275 = ptrtoint ptr %buf.i651.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %reg.addr.i645.i, ptr %buf.i651.i, align 4
  %arrayinit.element.i652.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i647.i, i32 1
  %276 = ptrtoint ptr %arrayinit.element.i652.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %conv.i648.i, ptr %arrayinit.element.i652.i, align 4
  %flags3.i653.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i647.i, i32 1, i32 1
  %277 = ptrtoint ptr %flags3.i653.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 1, ptr %flags3.i653.i, align 2
  %len4.i654.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i647.i, i32 1, i32 2
  %278 = ptrtoint ptr %len4.i654.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 1, ptr %len4.i654.i, align 4
  %buf5.i655.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i647.i, i32 1, i32 3
  %279 = ptrtoint ptr %buf5.i655.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %val.i646.i, ptr %buf5.i655.i, align 4
  %280 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %9, align 4
  %call.i656.i = call i32 @i2c_transfer(ptr noundef %281, ptr noundef nonnull %msg.i647.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i656.i)
  %cmp.not.i657.i = icmp eq i32 %call.i656.i, 2
  br i1 %cmp.not.i657.i, label %if.end.i662.i, label %do.end.i660.i

do.end.i660.i:                                    ; preds = %do.end342.i
  call void @__sanitizer_cov_trace_pc() #9
  %282 = ptrtoint ptr %reg.addr.i645.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %reg.addr.i645.i, align 1
  %conv8.i658.i = zext i8 %283 to i32
  %call9.i659.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv8.i658.i, i32 noundef %call.i656.i) #11
  br label %s921_i2c_readreg.exit664.i

if.end.i662.i:                                    ; preds = %do.end342.i
  call void @__sanitizer_cov_trace_pc() #9
  %284 = ptrtoint ptr %val.i646.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %val.i646.i, align 1
  %conv12.i661.i = zext i8 %285 to i32
  br label %s921_i2c_readreg.exit664.i

s921_i2c_readreg.exit664.i:                       ; preds = %if.end.i662.i, %do.end.i660.i
  %retval.0.i663.i = phi i32 [ %call.i656.i, %do.end.i660.i ], [ %conv12.i661.i, %if.end.i662.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i647.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i646.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i645.i) #7
  %286 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %tobool347.not.i = icmp eq i32 %286, 0
  br i1 %tobool347.not.i, label %s921_i2c_readreg.exit664.i.if.end11_crit_edge, label %do.body362.i

s921_i2c_readreg.exit664.i.if.end11_crit_edge:    ; preds = %s921_i2c_readreg.exit664.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.body362.i:                                     ; preds = %s921_i2c_readreg.exit664.i
  %call353.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #11
  %call358.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %retval.0.i663.i) #11
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool363.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool363.not.i, label %do.body362.i.if.end11_crit_edge, label %do.end367.i

do.body362.i.if.end11_crit_edge:                  ; preds = %do.body362.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end367.i:                                      ; preds = %do.body362.i
  call void @__sanitizer_cov_trace_pc() #9
  %call369.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #11
  %call375.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv240.i, i32 noundef %add215.i) #11
  br label %if.end11

if.end11:                                         ; preds = %do.end367.i, %do.body362.i.if.end11_crit_edge, %s921_i2c_readreg.exit664.i.if.end11_crit_edge
  %287 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %dtv_property_cache, align 4
  %currentfreq = getelementptr inbounds %struct.s921_state, ptr %1, i32 0, i32 3
  %289 = ptrtoint ptr %currentfreq to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %currentfreq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %s921_i2c_writereg.exit584.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i558.5.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i558.4.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i558.3.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i558.2.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i558.1.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i558.i.cleanup_crit_edge, %s921_i2c_writereg.exit541.i.cleanup_crit_edge, %s921_i2c_writereg.exit529.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i.4.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i.3.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i.2.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i.1.i.cleanup_crit_edge, %s921_i2c_writereg.exit.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call.i.i.4.i, %s921_i2c_writereg.exit.i.4.i.cleanup_crit_edge ], [ %call.i.i.3.i, %s921_i2c_writereg.exit.i.3.i.cleanup_crit_edge ], [ %call.i.i.2.i, %s921_i2c_writereg.exit.i.2.i.cleanup_crit_edge ], [ %call.i.i.1.i, %s921_i2c_writereg.exit.i.1.i.cleanup_crit_edge ], [ %call.i.i.i, %s921_i2c_writereg.exit.i.i.cleanup_crit_edge ], [ %call.i.i550.5.i, %s921_i2c_writereg.exit.i558.5.i.cleanup_crit_edge ], [ %call.i.i550.4.i, %s921_i2c_writereg.exit.i558.4.i.cleanup_crit_edge ], [ %call.i.i550.3.i, %s921_i2c_writereg.exit.i558.3.i.cleanup_crit_edge ], [ %call.i.i550.2.i, %s921_i2c_writereg.exit.i558.2.i.cleanup_crit_edge ], [ %call.i.i550.1.i, %s921_i2c_writereg.exit.i558.1.i.cleanup_crit_edge ], [ %call.i.i550.i, %s921_i2c_writereg.exit.i558.i.cleanup_crit_edge ], [ %call.i579.i, %s921_i2c_writereg.exit584.i.cleanup_crit_edge ], [ %call.i536.i, %s921_i2c_writereg.exit541.i.cleanup_crit_edge ], [ %call.i524.i, %s921_i2c_writereg.exit529.i.cleanup_crit_edge ], [ %call.i.i, %s921_i2c_writereg.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s921_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %currentfreq = getelementptr inbounds %struct.s921_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %currentfreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentfreq, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %p, align 4
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 15
  %5 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %delivery_system, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s921_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %reg.addr.i40 = alloca i8, align 1
  %val.i41 = alloca i8, align 1
  %msg.i42 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  %config = getelementptr inbounds %struct.s921_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %7 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -127, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %conv.i = zext i8 %6 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.i, ptr %buf5.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %s921_i2c_readreg.exit.thread, label %s921_i2c_readreg.exit

s921_i2c_readreg.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %val.i, align 1
  %conv12.i = zext i8 %22 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %if.end

s921_i2c_readreg.exit:                            ; preds = %entry
  %23 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %24 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv8.i, i32 noundef %call.i) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %s921_i2c_readreg.exit.cleanup_crit_edge, label %s921_i2c_readreg.exit.if.end_crit_edge

s921_i2c_readreg.exit.if.end_crit_edge:           ; preds = %s921_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

s921_i2c_readreg.exit.cleanup_crit_edge:          ; preds = %s921_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %s921_i2c_readreg.exit.if.end_crit_edge, %s921_i2c_readreg.exit.thread
  %retval.0.i62 = phi i32 [ %conv12.i, %s921_i2c_readreg.exit.thread ], [ %call.i, %s921_i2c_readreg.exit.if.end_crit_edge ]
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i40)
  %29 = ptrtoint ptr %reg.addr.i40 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -126, ptr %reg.addr.i40, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i41) #7
  %30 = ptrtoint ptr %val.i41 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %val.i41, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i42) #7
  %31 = getelementptr inbounds i8, ptr %msg.i42, i32 4
  %32 = call ptr @memset(ptr %31, i32 255, i32 16)
  %conv.i43 = zext i8 %28 to i16
  %33 = ptrtoint ptr %msg.i42 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i43, ptr %msg.i42, align 4
  %flags.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i44, align 2
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %31, align 4
  %buf.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 3
  %36 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %reg.addr.i40, ptr %buf.i46, align 4
  %arrayinit.element.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1
  %37 = ptrtoint ptr %arrayinit.element.i47 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i43, ptr %arrayinit.element.i47, align 4
  %flags3.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1, i32 1
  %38 = ptrtoint ptr %flags3.i48 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags3.i48, align 2
  %len4.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1, i32 2
  %39 = ptrtoint ptr %len4.i49 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len4.i49, align 4
  %buf5.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 1, i32 3
  %40 = ptrtoint ptr %buf5.i50 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %val.i41, ptr %buf5.i50, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i51 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i42, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i51)
  %cmp.not.i52 = icmp eq i32 %call.i51, 2
  br i1 %cmp.not.i52, label %s921_i2c_readreg.exit59.thread, label %s921_i2c_readreg.exit59

s921_i2c_readreg.exit59.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %val.i41 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val.i41, align 1
  %conv12.i56 = zext i8 %44 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i42) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i41) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i40)
  br label %if.end6

s921_i2c_readreg.exit59:                          ; preds = %if.end
  %45 = ptrtoint ptr %reg.addr.i40 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reg.addr.i40, align 1
  %conv8.i53 = zext i8 %46 to i32
  %call9.i54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv8.i53, i32 noundef %call.i51) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i42) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i41) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp4 = icmp slt i32 %call.i51, 0
  br i1 %cmp4, label %s921_i2c_readreg.exit59.cleanup_crit_edge, label %s921_i2c_readreg.exit59.if.end6_crit_edge

s921_i2c_readreg.exit59.if.end6_crit_edge:        ; preds = %s921_i2c_readreg.exit59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

s921_i2c_readreg.exit59.cleanup_crit_edge:        ; preds = %s921_i2c_readreg.exit59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %s921_i2c_readreg.exit59.if.end6_crit_edge, %s921_i2c_readreg.exit59.thread
  %retval.0.i5865 = phi i32 [ %conv12.i56, %s921_i2c_readreg.exit59.thread ], [ %call.i51, %s921_i2c_readreg.exit59.if.end6_crit_edge ]
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not = icmp eq i32 %47, 0
  br i1 %tobool.not, label %if.end6.do.end17_crit_edge, label %do.end

if.end6.do.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %retval.0.i62, 8
  %or = or i32 %retval.0.i5865, %shl
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.60) #11
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %or) #11
  br label %do.end17

do.end17:                                         ; preds = %do.end, %if.end6.do.end17_crit_edge
  %and = and i32 %retval.0.i5865, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and)
  %cmp18 = icmp eq i32 %and, 64
  br i1 %cmp18, label %do.end17.cleanup.sink.split_crit_edge, label %if.else

do.end17.cleanup.sink.split_crit_edge:            ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else:                                          ; preds = %do.end17
  %and20 = and i32 %retval.0.i5865, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %do.end17.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 31, %do.end17.cleanup.sink.split_crit_edge ], [ 15, %if.else.cleanup.sink.split_crit_edge ]
  %48 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %s921_i2c_readreg.exit59.cleanup_crit_edge, %s921_i2c_readreg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %s921_i2c_readreg.exit.cleanup_crit_edge ], [ %call.i51, %s921_i2c_readreg.exit59.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s921_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef %strength) #0 align 64 {
entry:
  %reg.addr.i102 = alloca i8, align 1
  %val.i103 = alloca i8, align 1
  %msg.i104 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i82 = alloca i8, align 1
  %val.i83 = alloca i8, align 1
  %msg.i84 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !161
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %demodulator_priv, align 4
  %call = call i32 @s921_read_status(ptr noundef %fe, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %and = shl i32 %4, 27
  %sext = ashr i32 %and, 31
  %conv = trunc i32 %sext to i16
  %5 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %strength, align 2
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.end.do.end13_crit_edge, label %do.end

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.64) #11
  %7 = ptrtoint ptr %strength to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %strength, align 2
  %conv9 = zext i16 %8 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %conv9) #11
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end.do.end13_crit_edge
  %config = getelementptr inbounds %struct.s921_state, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %13 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #7
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %val.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %15 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 16)
  %conv.i = zext i8 %12 to i16
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i, align 2
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %15, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %21 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %22 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %23 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %24 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %val.i, ptr %buf5.i, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %28 to i32
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv8.i, i32 noundef %call.i) #11
  br label %s921_i2c_readreg.exit

if.end.i:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val.i, align 1
  %conv12.i = zext i8 %30 to i32
  br label %s921_i2c_readreg.exit

s921_i2c_readreg.exit:                            ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %conv12.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool16.not = icmp eq i32 %31, 0
  br i1 %tobool16.not, label %s921_i2c_readreg.exit.do.end30_crit_edge, label %do.end20

s921_i2c_readreg.exit.do.end30_crit_edge:         ; preds = %s921_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end20:                                         ; preds = %s921_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.64) #11
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %retval.0.i) #11
  br label %do.end30

do.end30:                                         ; preds = %do.end20, %s921_i2c_readreg.exit.do.end30_crit_edge
  %32 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i82)
  %36 = ptrtoint ptr %reg.addr.i82 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -128, ptr %reg.addr.i82, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i83) #7
  %37 = ptrtoint ptr %val.i83 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %val.i83, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i84) #7
  %38 = getelementptr inbounds i8, ptr %msg.i84, i32 4
  %39 = call ptr @memset(ptr %38, i32 255, i32 16)
  %conv.i85 = zext i8 %35 to i16
  %40 = ptrtoint ptr %msg.i84 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i85, ptr %msg.i84, align 4
  %flags.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i86 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i86, align 2
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %38, align 4
  %buf.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %reg.addr.i82, ptr %buf.i88, align 4
  %arrayinit.element.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1
  %44 = ptrtoint ptr %arrayinit.element.i89 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i85, ptr %arrayinit.element.i89, align 4
  %flags3.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1, i32 1
  %45 = ptrtoint ptr %flags3.i90 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %flags3.i90, align 2
  %len4.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1, i32 2
  %46 = ptrtoint ptr %len4.i91 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %len4.i91, align 4
  %buf5.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84, i32 1, i32 3
  %47 = ptrtoint ptr %buf5.i92 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %val.i83, ptr %buf5.i92, align 4
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %2, align 4
  %call.i93 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i84, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i93)
  %cmp.not.i94 = icmp eq i32 %call.i93, 2
  br i1 %cmp.not.i94, label %if.end.i99, label %do.end.i97

do.end.i97:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %reg.addr.i82 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg.addr.i82, align 1
  %conv8.i95 = zext i8 %51 to i32
  %call9.i96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv8.i95, i32 noundef %call.i93) #11
  br label %s921_i2c_readreg.exit101

if.end.i99:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %val.i83 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %val.i83, align 1
  %conv12.i98 = zext i8 %53 to i32
  br label %s921_i2c_readreg.exit101

s921_i2c_readreg.exit101:                         ; preds = %if.end.i99, %do.end.i97
  %retval.0.i100 = phi i32 [ %call.i93, %do.end.i97 ], [ %conv12.i98, %if.end.i99 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i84) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i83) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i82)
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool35.not = icmp eq i32 %54, 0
  br i1 %tobool35.not, label %s921_i2c_readreg.exit101.do.end49_crit_edge, label %do.end39

s921_i2c_readreg.exit101.do.end49_crit_edge:      ; preds = %s921_i2c_readreg.exit101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

do.end39:                                         ; preds = %s921_i2c_readreg.exit101
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.64) #11
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %retval.0.i100) #11
  br label %do.end49

do.end49:                                         ; preds = %do.end39, %s921_i2c_readreg.exit101.do.end49_crit_edge
  %55 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i102)
  %59 = ptrtoint ptr %reg.addr.i102 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 50, ptr %reg.addr.i102, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i103) #7
  %60 = ptrtoint ptr %val.i103 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %val.i103, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i104) #7
  %61 = getelementptr inbounds i8, ptr %msg.i104, i32 4
  %62 = call ptr @memset(ptr %61, i32 255, i32 16)
  %conv.i105 = zext i8 %58 to i16
  %63 = ptrtoint ptr %msg.i104 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i105, ptr %msg.i104, align 4
  %flags.i106 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i106 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i106, align 2
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %61, align 4
  %buf.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 0, i32 3
  %66 = ptrtoint ptr %buf.i108 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %reg.addr.i102, ptr %buf.i108, align 4
  %arrayinit.element.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1
  %67 = ptrtoint ptr %arrayinit.element.i109 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i105, ptr %arrayinit.element.i109, align 4
  %flags3.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 1
  %68 = ptrtoint ptr %flags3.i110 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %flags3.i110, align 2
  %len4.i111 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 2
  %69 = ptrtoint ptr %len4.i111 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %len4.i111, align 4
  %buf5.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i104, i32 1, i32 3
  %70 = ptrtoint ptr %buf5.i112 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %val.i103, ptr %buf5.i112, align 4
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %2, align 4
  %call.i113 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i104, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i113)
  %cmp.not.i114 = icmp eq i32 %call.i113, 2
  br i1 %cmp.not.i114, label %if.end.i119, label %do.end.i117

do.end.i117:                                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %reg.addr.i102 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %reg.addr.i102, align 1
  %conv8.i115 = zext i8 %74 to i32
  %call9.i116 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %conv8.i115, i32 noundef %call.i113) #11
  br label %s921_i2c_readreg.exit121

if.end.i119:                                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %val.i103 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %val.i103, align 1
  %conv12.i118 = zext i8 %76 to i32
  br label %s921_i2c_readreg.exit121

s921_i2c_readreg.exit121:                         ; preds = %if.end.i119, %do.end.i117
  %retval.0.i120 = phi i32 [ %call.i113, %do.end.i117 ], [ %conv12.i118, %if.end.i119 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i104) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i103) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i102)
  %77 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool54.not = icmp eq i32 %77, 0
  br i1 %tobool54.not, label %s921_i2c_readreg.exit121.cleanup_crit_edge, label %do.end58

s921_i2c_readreg.exit121.cleanup_crit_edge:       ; preds = %s921_i2c_readreg.exit121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end58:                                         ; preds = %s921_i2c_readreg.exit121
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.64) #11
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %retval.0.i120) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %s921_i2c_readreg.exit121.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end58 ], [ 0, %s921_i2c_readreg.exit121.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !82, !84, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !126, !127, !128, !130, !131, !132, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/s921.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/s921.c", i32 25, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/s921.c", i32 481, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @s921_attach._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @s921_attach._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @s921_attach._entry.3, !6, !"_entry", i1 false, i1 false}
!13 = !{ptr @s921_attach._entry_ptr.5, !6, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/s921.c", i32 483, i32 3}
!16 = !{ptr @s921_attach._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @s921_attach._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_s921_attach, !19, !"__ksymtab_s921_attach", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/s921.c", i32 498, i32 1}
!20 = !{ptr @__UNIQUE_ID_description292, !21, !"__UNIQUE_ID_description292", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/s921.c", i32 532, i32 1}
!22 = !{ptr @__UNIQUE_ID_author293, !23, !"__UNIQUE_ID_author293", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/s921.c", i32 533, i32 1}
!24 = !{ptr @__UNIQUE_ID_author294, !25, !"__UNIQUE_ID_author294", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/s921.c", i32 534, i32 1}
!26 = !{ptr @__UNIQUE_ID_file295, !27, !"__UNIQUE_ID_file295", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/s921.c", i32 535, i32 1}
!28 = !{ptr @__UNIQUE_ID_license296, !27, !"__UNIQUE_ID_license296", i1 false, i1 false}
!29 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!30 = !{ptr @debug, !31, !"debug", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/s921.c", i32 23, i32 12}
!32 = !{ptr @s921_ops, !33, !"s921_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/s921.c", i32 500, i32 38}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/s921.c", i32 468, i32 2}
!36 = !{ptr @s921_release._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @s921_release._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @s921_release._entry.10, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @s921_release._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/s921.c", i32 334, i32 2}
!42 = !{ptr @s921_initfe._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @s921_initfe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @s921_initfe._entry.13, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @s921_initfe._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/s921.c", i32 209, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @s921_i2c_writereg._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @s921_i2c_writereg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @s921_init, !52, !"s921_init", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/s921.c", i32 73, i32 23}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/s921.c", i32 448, i32 2}
!55 = !{ptr @s921_tune._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @s921_tune._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @s921_tune._entry.18, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @s921_tune._entry_ptr.19, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/s921.c", i32 415, i32 2}
!61 = !{ptr @s921_set_frontend._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @s921_set_frontend._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @s921_set_frontend._entry.21, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @s921_set_frontend._entry_ptr.22, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/s921.c", i32 266, i32 2}
!67 = !{ptr @s921_pll_tune._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @s921_pll_tune._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @s921_pll_tune._entry.24, !66, !"_entry", i1 false, i1 false}
!71 = !{ptr @s921_pll_tune._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/s921.c", i32 274, i32 3}
!74 = !{ptr @s921_pll_tune._entry.27, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @s921_pll_tune._entry_ptr.29, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @s921_pll_tune._entry.30, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/s921.c", i32 306, i32 3}
!78 = !{ptr @s921_pll_tune._entry_ptr.31, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @s921_pll_tune._entry.32, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @s921_pll_tune._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @s921_pll_tune._entry.35, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/s921.c", i32 313, i32 2}
!84 = !{ptr @s921_pll_tune._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @s921_pll_tune._entry.37, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @s921_pll_tune._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @s921_pll_tune._entry.40, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/s921.c", i32 316, i32 2}
!90 = !{ptr @s921_pll_tune._entry_ptr.41, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @s921_pll_tune._entry.42, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @s921_pll_tune._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @s921_pll_tune._entry.44, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/s921.c", i32 319, i32 2}
!95 = !{ptr @s921_pll_tune._entry_ptr.45, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @s921_pll_tune._entry.46, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @s921_pll_tune._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @s921_pll_tune._entry.48, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/s921.c", i32 322, i32 2}
!100 = !{ptr @s921_pll_tune._entry_ptr.49, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @s921_pll_tune._entry.50, !99, !"_entry", i1 false, i1 false}
!103 = !{ptr @s921_pll_tune._entry_ptr.52, !99, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @s921_pll_tune._entry.53, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/s921.c", i32 324, i32 2}
!106 = !{ptr @s921_pll_tune._entry_ptr.54, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @s921_pll_tune._entry.55, !105, !"_entry", i1 false, i1 false}
!109 = !{ptr @s921_pll_tune._entry_ptr.57, !105, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @s921_bandselect, !111, !"s921_bandselect", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/s921.c", i32 57, i32 3}
!112 = distinct !{null, !113, !"s921_prefreq", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/s921.c", i32 181, i32 23}
!114 = distinct !{null, !115, !"s921_postfreq", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/s921.c", i32 189, i32 23}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/s921.c", i32 242, i32 3}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @s921_i2c_readreg._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @s921_i2c_readreg._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/s921.c", i32 362, i32 2}
!123 = !{ptr @s921_read_status._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @s921_read_status._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @s921_read_status._entry.61, !122, !"_entry", i1 false, i1 false}
!127 = !{ptr @s921_read_status._entry_ptr.63, !122, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/s921.c", i32 395, i32 2}
!130 = !{ptr @s921_read_signal_strength._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @s921_read_signal_strength._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @s921_read_signal_strength._entry.65, !129, !"_entry", i1 false, i1 false}
!134 = !{ptr @s921_read_signal_strength._entry_ptr.67, !129, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @s921_read_signal_strength._entry.68, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/s921.c", i32 398, i32 2}
!137 = !{ptr @s921_read_signal_strength._entry_ptr.69, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @s921_read_signal_strength._entry.70, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @s921_read_signal_strength._entry_ptr.71, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @s921_read_signal_strength._entry.72, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/s921.c", i32 401, i32 2}
!142 = !{ptr @s921_read_signal_strength._entry_ptr.73, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @s921_read_signal_strength._entry.74, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @s921_read_signal_strength._entry_ptr.75, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @s921_read_signal_strength._entry.76, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/s921.c", i32 404, i32 2}
!147 = !{ptr @s921_read_signal_strength._entry_ptr.77, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @s921_read_signal_strength._entry.78, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @s921_read_signal_strength._entry_ptr.79, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i64 1124190, i64 1124217, i64 1124239, i64 1124267}
!160 = !{i64 1124598, i64 1124625, i64 1124658, i64 1124679, i64 1124706, i64 1124732}
!161 = !{!"auto-init"}
