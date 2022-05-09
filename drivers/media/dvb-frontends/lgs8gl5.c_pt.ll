; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/lgs8gl5.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lgs8gl5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lgs8gl5_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_lgs8gl5_attach\09\09\09\09"
module asm "\09.long\09__crc_lgs8gl5_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lgs8gl5_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lgs8gl5_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lgs8gl5_attach:\09\09\09\09\09"
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.lgs8gl5_state = type { ptr, ptr, %struct.dvb_frontend }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lgs8gl5_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017lgs8gl5: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lgs8gl5_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/lgs8gl5.c\00", [58 x i8] zeroinitializer }, align 32
@lgs8gl5_attach._entry_ptr = internal global ptr @lgs8gl5_attach._entry, section ".printk_index", align 4
@lgs8gl5_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Legend Silicon LGS-8GL5 DMB-TH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 474000000, i32 858000000, i32 10000, i32 0, i32 0, i32 0, i32 0, i32 1075789312 }, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr null, ptr @lgs8gl5_release, ptr null, ptr @lgs8gl5_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgs8gl5_set_frontend, ptr @lgs8gl5_get_tune_settings, ptr @lgs8gl5_get_frontend, ptr @lgs8gl5_read_status, ptr @lgs8gl5_read_ber, ptr @lgs8gl5_read_signal_strength, ptr @lgs8gl5_read_snr, ptr @lgs8gl5_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_lgs8gl5_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lgs8gl5_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lgs8gl5_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lgs8gl5_attach to i32), ptr @__kstrtab_lgs8gl5_attach, ptr @__kstrtabns_lgs8gl5_attach }, section "___ksymtab+lgs8gl5_attach", align 4
@__param_str_debug = internal constant [14 x i8] c"lgs8gl5.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"lgs8gl5.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [65 x i8] c"lgs8gl5.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [70 x i8] c"lgs8gl5.description=Legend Silicon LGS-8GL5 DMB-TH Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [27 x i8] c"lgs8gl5.author=Timothy Lee\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"lgs8gl5.file=drivers/media/dvb-frontends/lgs8gl5\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"lgs8gl5.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lgs8gl5_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lgs8gl5_init\00", [19 x i8] zeroinitializer }, align 32
@lgs8gl5_init._entry_ptr = internal global ptr @lgs8gl5_init._entry, section ".printk_index", align 4
@lgs8gl5_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lgs8gl5_soft_reset\00", [45 x i8] zeroinitializer }, align 32
@lgs8gl5_soft_reset._entry_ptr = internal global ptr @lgs8gl5_soft_reset._entry, section ".printk_index", align 4
@lgs8gl5_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017lgs8gl5: %s: error (reg=0x%02x, val=0x%02x, ret=%i)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lgs8gl5_write_reg\00", [46 x i8] zeroinitializer }, align 32
@lgs8gl5_write_reg._entry_ptr = internal global ptr @lgs8gl5_write_reg._entry, section ".printk_index", align 4
@lgs8gl5_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lgs8gl5_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@lgs8gl5_set_frontend._entry_ptr = internal global ptr @lgs8gl5_set_frontend._entry, section ".printk_index", align 4
@lgs8gl5_start_demod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lgs8gl5_start_demod\00", [44 x i8] zeroinitializer }, align 32
@lgs8gl5_start_demod._entry_ptr = internal global ptr @lgs8gl5_start_demod._entry, section ".printk_index", align 4
@lgs8gl5_start_demod._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017lgs8gl5: Wait for carrier[%d] 0x%02X\0A\00", [56 x i8] zeroinitializer }, align 32
@lgs8gl5_start_demod._entry_ptr.11 = internal global ptr @lgs8gl5_start_demod._entry.9, section ".printk_index", align 4
@lgs8gl5_start_demod._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017lgs8gl5: Wait for lock[%d] 0x%02X\0A\00", [59 x i8] zeroinitializer }, align 32
@lgs8gl5_start_demod._entry_ptr.14 = internal global ptr @lgs8gl5_start_demod._entry.12, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 50, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 375, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"lgs8gl5_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 403, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 224, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 158, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 73, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 307, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 174, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 195, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [41 x i8] c"../drivers/media/dvb-frontends/lgs8gl5.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 206, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_lgs8gl5_attach, ptr @__param_debug, ptr @lgs8gl5_attach._entry, ptr @lgs8gl5_attach._entry_ptr, ptr @lgs8gl5_init._entry, ptr @lgs8gl5_init._entry_ptr, ptr @lgs8gl5_set_frontend._entry, ptr @lgs8gl5_set_frontend._entry_ptr, ptr @lgs8gl5_soft_reset._entry, ptr @lgs8gl5_soft_reset._entry_ptr, ptr @lgs8gl5_start_demod._entry, ptr @lgs8gl5_start_demod._entry.12, ptr @lgs8gl5_start_demod._entry.9, ptr @lgs8gl5_start_demod._entry_ptr, ptr @lgs8gl5_start_demod._entry_ptr.11, ptr @lgs8gl5_start_demod._entry_ptr.14, ptr @lgs8gl5_write_reg._entry, ptr @lgs8gl5_write_reg._entry_ptr, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @lgs8gl5_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gl5_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gl5_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gl5_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gl5_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gl5_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gl5_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gl5_start_demod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gl5_start_demod._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgs8gl5_start_demod._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @lgs8gl5_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1048) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end3.error_crit_edge, label %if.end6

do.end3.error_crit_edge:                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end6:                                          ; preds = %do.end3
  %config7 = getelementptr inbounds %struct.lgs8gl5_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config7, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %4 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %5 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b1.i, ptr %buf8.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  br i1 %cmp.not.i, label %lgs8gl5_read_reg.exit, label %if.end6.error_crit_edge

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

lgs8gl5_read_reg.exit:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %frontend = getelementptr inbounds %struct.lgs8gl5_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.lgs8gl5_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %18 = call ptr @memcpy(ptr %ops, ptr @lgs8gl5_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.lgs8gl5_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %if.end6.error_crit_edge, %do.end3.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %lgs8gl5_read_reg.exit
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %lgs8gl5_read_reg.exit ]
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
define internal void @lgs8gl5_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @lgs8gl5_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i53 = alloca [2 x i8], align 1
  %msg.i54 = alloca %struct.i2c_msg, align 4
  %buf.i39 = alloca [2 x i8], align 1
  %msg.i40 = alloca %struct.i2c_msg, align 4
  %buf.i25 = alloca [2 x i8], align 1
  %msg.i26 = alloca %struct.i2c_msg, align 4
  %buf.i18 = alloca [2 x i8], align 1
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %b2.i = alloca [2 x i8], align 1
  %msg.i = alloca [3 x %struct.i2c_msg], align 4
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -62, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b2.i) #6
  %5 = getelementptr inbounds [2 x i8], ptr %b2.i, i32 0, i32 1
  %6 = ptrtoint ptr %b2.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -62, ptr %b2.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 40, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 28)
  %config.i = getelementptr inbounds %struct.lgs8gl5_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i16
  %add.i = add nuw nsw i16 %conv.i, 2
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %add.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = load i8, ptr %11, align 1
  %conv8.i = zext i8 %18 to i16
  %add9.i = add nuw nsw i16 %conv8.i, 2
  %19 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %add9.i, ptr %arrayinit.element4.i, align 4
  %flags11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags11.i, align 2
  %len12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %21 = ptrtoint ptr %len12.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %len12.i, align 4
  %buf13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %b1.i, ptr %buf13.i, align 4
  %arrayinit.element15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 2
  %23 = load i8, ptr %11, align 1
  %conv19.i = zext i8 %23 to i16
  %add20.i = add nuw nsw i16 %conv19.i, 2
  %24 = ptrtoint ptr %arrayinit.element15.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %add20.i, ptr %arrayinit.element15.i, align 4
  %flags22.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 2, i32 1
  %25 = ptrtoint ptr %flags22.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags22.i, align 2
  %len23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 2, i32 2
  %26 = ptrtoint ptr %len23.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %len23.i, align 4
  %buf24.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 2, i32 3
  %27 = ptrtoint ptr %buf24.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %b2.i, ptr %buf24.i, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b2.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call fastcc void @lgs8gl5_soft_reset(ptr noundef %1)
  call fastcc void @lgs8gl5_update_reg(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext 16)
  call fastcc void @lgs8gl5_update_reg(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i18) #6
  %30 = getelementptr inbounds [2 x i8], ptr %buf.i18, i32 0, i32 1
  %31 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 9, ptr %buf.i18, align 1
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 14, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #6
  %33 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 196607, ptr %33, align 4
  %35 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %conv.i21 = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i21, ptr %msg.i19, align 4
  %flags.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i22 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i22, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %41 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf.i18, ptr %buf1.i, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i24 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i19, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i24)
  %cmp.not.i = icmp eq i32 %call.i24, 1
  br i1 %cmp.not.i, label %do.end3.lgs8gl5_write_reg.exit_crit_edge, label %do.body.i

do.end3.lgs8gl5_write_reg.exit_crit_edge:         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit

do.body.i:                                        ; preds = %do.end3
  %44 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %do.body.i.lgs8gl5_write_reg.exit_crit_edge, label %do.end.i

do.body.i.lgs8gl5_write_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 14, i32 noundef %call.i24) #9
  br label %lgs8gl5_write_reg.exit

lgs8gl5_write_reg.exit:                           ; preds = %do.end.i, %do.body.i.lgs8gl5_write_reg.exit_crit_edge, %do.end3.lgs8gl5_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i18) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i25) #6
  %45 = getelementptr inbounds [2 x i8], ptr %buf.i25, i32 0, i32 1
  %46 = ptrtoint ptr %buf.i25 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %buf.i25, align 1
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -27, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26) #6
  %48 = getelementptr inbounds i8, ptr %msg.i26, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 196607, ptr %48, align 4
  %50 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %51, align 1
  %conv.i28 = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i26 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i28, ptr %msg.i26, align 4
  %flags.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i29, align 2
  %buf1.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 3
  %56 = ptrtoint ptr %buf1.i31 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %buf.i25, ptr %buf1.i31, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call.i32 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i26, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i32)
  %cmp.not.i33 = icmp eq i32 %call.i32, 1
  br i1 %cmp.not.i33, label %lgs8gl5_write_reg.exit.lgs8gl5_write_reg.exit38_crit_edge, label %do.body.i35

lgs8gl5_write_reg.exit.lgs8gl5_write_reg.exit38_crit_edge: ; preds = %lgs8gl5_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit38

do.body.i35:                                      ; preds = %lgs8gl5_write_reg.exit
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i34 = icmp eq i32 %59, 0
  br i1 %tobool.not.i34, label %do.body.i35.lgs8gl5_write_reg.exit38_crit_edge, label %do.end.i37

do.body.i35.lgs8gl5_write_reg.exit38_crit_edge:   ; preds = %do.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit38

do.end.i37:                                       ; preds = %do.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 10, i32 noundef 229, i32 noundef %call.i32) #9
  br label %lgs8gl5_write_reg.exit38

lgs8gl5_write_reg.exit38:                         ; preds = %do.end.i37, %do.body.i35.lgs8gl5_write_reg.exit38_crit_edge, %lgs8gl5_write_reg.exit.lgs8gl5_write_reg.exit38_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i25) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i39) #6
  %60 = getelementptr inbounds [2 x i8], ptr %buf.i39, i32 0, i32 1
  %61 = ptrtoint ptr %buf.i39 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 11, ptr %buf.i39, align 1
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 53, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i40) #6
  %63 = getelementptr inbounds i8, ptr %msg.i40, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 196607, ptr %63, align 4
  %65 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 1
  %conv.i42 = zext i8 %68 to i16
  %69 = ptrtoint ptr %msg.i40 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i42, ptr %msg.i40, align 4
  %flags.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %flags.i43, align 2
  %buf1.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 0, i32 3
  %71 = ptrtoint ptr %buf1.i45 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buf.i39, ptr %buf1.i45, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call.i46 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i40, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i46)
  %cmp.not.i47 = icmp eq i32 %call.i46, 1
  br i1 %cmp.not.i47, label %lgs8gl5_write_reg.exit38.lgs8gl5_write_reg.exit52_crit_edge, label %do.body.i49

lgs8gl5_write_reg.exit38.lgs8gl5_write_reg.exit52_crit_edge: ; preds = %lgs8gl5_write_reg.exit38
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit52

do.body.i49:                                      ; preds = %lgs8gl5_write_reg.exit38
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i48 = icmp eq i32 %74, 0
  br i1 %tobool.not.i48, label %do.body.i49.lgs8gl5_write_reg.exit52_crit_edge, label %do.end.i51

do.body.i49.lgs8gl5_write_reg.exit52_crit_edge:   ; preds = %do.body.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit52

do.end.i51:                                       ; preds = %do.body.i49
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 11, i32 noundef 53, i32 noundef %call.i46) #9
  br label %lgs8gl5_write_reg.exit52

lgs8gl5_write_reg.exit52:                         ; preds = %do.end.i51, %do.body.i49.lgs8gl5_write_reg.exit52_crit_edge, %lgs8gl5_write_reg.exit38.lgs8gl5_write_reg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i40) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i39) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #6
  %75 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %76 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 12, ptr %buf.i53, align 1
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 48, ptr %75, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i54) #6
  %78 = getelementptr inbounds i8, ptr %msg.i54, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 196607, ptr %78, align 4
  %80 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %config.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 1
  %conv.i56 = zext i8 %83 to i16
  %84 = ptrtoint ptr %msg.i54 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i56, ptr %msg.i54, align 4
  %flags.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i57 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i57, align 2
  %buf1.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 3
  %86 = ptrtoint ptr %buf1.i59 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %buf.i53, ptr %buf1.i59, align 4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %call.i60 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i54, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i60)
  %cmp.not.i61 = icmp eq i32 %call.i60, 1
  br i1 %cmp.not.i61, label %lgs8gl5_write_reg.exit52.lgs8gl5_write_reg.exit66_crit_edge, label %do.body.i63

lgs8gl5_write_reg.exit52.lgs8gl5_write_reg.exit66_crit_edge: ; preds = %lgs8gl5_write_reg.exit52
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit66

do.body.i63:                                      ; preds = %lgs8gl5_write_reg.exit52
  %89 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i62 = icmp eq i32 %89, 0
  br i1 %tobool.not.i62, label %do.body.i63.lgs8gl5_write_reg.exit66_crit_edge, label %do.end.i65

do.body.i63.lgs8gl5_write_reg.exit66_crit_edge:   ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit66

do.end.i65:                                       ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 12, i32 noundef 48, i32 noundef %call.i60) #9
  br label %lgs8gl5_write_reg.exit66

lgs8gl5_write_reg.exit66:                         ; preds = %do.end.i65, %do.body.i63.lgs8gl5_write_reg.exit66_crit_edge, %lgs8gl5_write_reg.exit52.lgs8gl5_write_reg.exit66_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gl5_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i221.i = alloca [2 x i8], align 1
  %msg.i222.i = alloca %struct.i2c_msg, align 4
  %b0.i202.i = alloca [1 x i8], align 1
  %b1.i203.i = alloca [1 x i8], align 1
  %msg.i204.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i183.i = alloca [1 x i8], align 1
  %b1.i184.i = alloca [1 x i8], align 1
  %msg.i185.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i173.i = alloca [1 x i8], align 1
  %b1.i174.i = alloca [1 x i8], align 1
  %msg.i175.i = alloca [2 x %struct.i2c_msg], align 4
  %b0.i150.i = alloca [1 x i8], align 1
  %b1.i151.i = alloca [1 x i8], align 1
  %b2.i152.i = alloca [2 x i8], align 1
  %msg.i153.i = alloca [3 x %struct.i2c_msg], align 4
  %buf.i136.i = alloca [2 x i8], align 1
  %msg.i137.i = alloca %struct.i2c_msg, align 4
  %buf.i122.i = alloca [2 x i8], align 1
  %msg.i123.i = alloca %struct.i2c_msg, align 4
  %buf.i108.i = alloca [2 x i8], align 1
  %msg.i109.i = alloca %struct.i2c_msg, align 4
  %buf.i101.i = alloca [2 x i8], align 1
  %msg.i102.i = alloca %struct.i2c_msg, align 4
  %b0.i.i = alloca [1 x i8], align 1
  %b1.i.i = alloca [1 x i8], align 1
  %b2.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca [3 x %struct.i2c_msg], align 4
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %3 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %4)
  %cmp.not = icmp eq i32 %4, 8000000
  br i1 %cmp.not, label %if.end5, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %5 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_params, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end5.if.end19_crit_edge, label %if.then7

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then7:                                         ; preds = %if.end5
  %call11 = tail call i32 %6(ptr noundef %fe) #6
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %7 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.then7.if.end19_crit_edge, label %if.then14

if.then7.if.end19_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then14:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 %8(ptr noundef %fe, i32 noundef 0) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.then7.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end19.do.end3.i_crit_edge, label %do.end.i

if.end19.do.end3.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end19.do.end3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i.i) #6
  %10 = ptrtoint ptr %b0.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -62, ptr %b0.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i.i) #6
  %11 = ptrtoint ptr %b1.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %b1.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b2.i.i) #6
  %12 = getelementptr inbounds [2 x i8], ptr %b2.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %b2.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -62, ptr %b2.i.i, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 40, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %msg.i.i) #6
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 28)
  %config.i.i = getelementptr inbounds %struct.lgs8gl5_state, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv.i.i = zext i8 %20 to i16
  %add.i.i = add nuw nsw i16 %conv.i.i, 2
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %add.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i.i, align 2
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %15, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %b0.i.i, ptr %buf.i.i, align 4
  %arrayinit.element4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %25 = load i8, ptr %18, align 1
  %conv8.i.i = zext i8 %25 to i16
  %add9.i.i = add nuw nsw i16 %conv8.i.i, 2
  %26 = ptrtoint ptr %arrayinit.element4.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %add9.i.i, ptr %arrayinit.element4.i.i, align 4
  %flags11.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %27 = ptrtoint ptr %flags11.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags11.i.i, align 2
  %len12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %28 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %len12.i.i, align 4
  %buf13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %29 = ptrtoint ptr %buf13.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %b1.i.i, ptr %buf13.i.i, align 4
  %arrayinit.element15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 2
  %30 = load i8, ptr %18, align 1
  %conv19.i.i = zext i8 %30 to i16
  %add20.i.i = add nuw nsw i16 %conv19.i.i, 2
  %31 = ptrtoint ptr %arrayinit.element15.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %add20.i.i, ptr %arrayinit.element15.i.i, align 4
  %flags22.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 2, i32 1
  %32 = ptrtoint ptr %flags22.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags22.i.i, align 2
  %len23.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 2, i32 2
  %33 = ptrtoint ptr %len23.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 2, ptr %len23.i.i, align 4
  %buf24.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 2, i32 3
  %34 = ptrtoint ptr %buf24.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b2.i.i, ptr %buf24.i.i, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b2.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i.i) #6
  call fastcc void @lgs8gl5_soft_reset(ptr noundef %1) #6
  call fastcc void @lgs8gl5_update_reg(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext 16) #6
  call fastcc void @lgs8gl5_update_reg(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext 16) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i101.i) #6
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i101.i, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i101.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 9, ptr %buf.i101.i, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 14, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i102.i) #6
  %40 = getelementptr inbounds i8, ptr %msg.i102.i, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %42 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv.i104.i = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i102.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i104.i, ptr %msg.i102.i, align 4
  %flags.i105.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102.i, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i105.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i105.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102.i, i32 0, i32 3
  %48 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i101.i, ptr %buf1.i.i, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %call.i107.i = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i102.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i107.i)
  %cmp.not.i.i = icmp eq i32 %call.i107.i, 1
  br i1 %cmp.not.i.i, label %do.end3.i.lgs8gl5_write_reg.exit.i_crit_edge, label %do.body.i.i

do.end3.i.lgs8gl5_write_reg.exit.i_crit_edge:     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit.i

do.body.i.i:                                      ; preds = %do.end3.i
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.lgs8gl5_write_reg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.lgs8gl5_write_reg.exit.i_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 9, i32 noundef 14, i32 noundef %call.i107.i) #9
  br label %lgs8gl5_write_reg.exit.i

lgs8gl5_write_reg.exit.i:                         ; preds = %do.end.i.i, %do.body.i.i.lgs8gl5_write_reg.exit.i_crit_edge, %do.end3.i.lgs8gl5_write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i102.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i101.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i108.i) #6
  %52 = getelementptr inbounds [2 x i8], ptr %buf.i108.i, i32 0, i32 1
  %53 = ptrtoint ptr %buf.i108.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 10, ptr %buf.i108.i, align 1
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -27, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i109.i) #6
  %55 = getelementptr inbounds i8, ptr %msg.i109.i, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 196607, ptr %55, align 4
  %57 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %config.i.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  %conv.i111.i = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i109.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i111.i, ptr %msg.i109.i, align 4
  %flags.i112.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109.i, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i112.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i112.i, align 2
  %buf1.i114.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109.i, i32 0, i32 3
  %63 = ptrtoint ptr %buf1.i114.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buf.i108.i, ptr %buf1.i114.i, align 4
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %call.i115.i = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i109.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i115.i)
  %cmp.not.i116.i = icmp eq i32 %call.i115.i, 1
  br i1 %cmp.not.i116.i, label %lgs8gl5_write_reg.exit.i.lgs8gl5_write_reg.exit121.i_crit_edge, label %do.body.i118.i

lgs8gl5_write_reg.exit.i.lgs8gl5_write_reg.exit121.i_crit_edge: ; preds = %lgs8gl5_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit121.i

do.body.i118.i:                                   ; preds = %lgs8gl5_write_reg.exit.i
  %66 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i117.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i117.i, label %do.body.i118.i.lgs8gl5_write_reg.exit121.i_crit_edge, label %do.end.i120.i

do.body.i118.i.lgs8gl5_write_reg.exit121.i_crit_edge: ; preds = %do.body.i118.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit121.i

do.end.i120.i:                                    ; preds = %do.body.i118.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 10, i32 noundef 229, i32 noundef %call.i115.i) #9
  br label %lgs8gl5_write_reg.exit121.i

lgs8gl5_write_reg.exit121.i:                      ; preds = %do.end.i120.i, %do.body.i118.i.lgs8gl5_write_reg.exit121.i_crit_edge, %lgs8gl5_write_reg.exit.i.lgs8gl5_write_reg.exit121.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i108.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i122.i) #6
  %67 = getelementptr inbounds [2 x i8], ptr %buf.i122.i, i32 0, i32 1
  %68 = ptrtoint ptr %buf.i122.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 11, ptr %buf.i122.i, align 1
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 53, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i123.i) #6
  %70 = getelementptr inbounds i8, ptr %msg.i123.i, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %72 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %config.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %conv.i125.i = zext i8 %75 to i16
  %76 = ptrtoint ptr %msg.i123.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i125.i, ptr %msg.i123.i, align 4
  %flags.i126.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123.i, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i126.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i126.i, align 2
  %buf1.i128.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i123.i, i32 0, i32 3
  %78 = ptrtoint ptr %buf1.i128.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %buf.i122.i, ptr %buf1.i128.i, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call.i129.i = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i123.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i129.i)
  %cmp.not.i130.i = icmp eq i32 %call.i129.i, 1
  br i1 %cmp.not.i130.i, label %lgs8gl5_write_reg.exit121.i.lgs8gl5_write_reg.exit135.i_crit_edge, label %do.body.i132.i

lgs8gl5_write_reg.exit121.i.lgs8gl5_write_reg.exit135.i_crit_edge: ; preds = %lgs8gl5_write_reg.exit121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit135.i

do.body.i132.i:                                   ; preds = %lgs8gl5_write_reg.exit121.i
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i131.i = icmp eq i32 %81, 0
  br i1 %tobool.not.i131.i, label %do.body.i132.i.lgs8gl5_write_reg.exit135.i_crit_edge, label %do.end.i134.i

do.body.i132.i.lgs8gl5_write_reg.exit135.i_crit_edge: ; preds = %do.body.i132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit135.i

do.end.i134.i:                                    ; preds = %do.body.i132.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i133.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 11, i32 noundef 53, i32 noundef %call.i129.i) #9
  br label %lgs8gl5_write_reg.exit135.i

lgs8gl5_write_reg.exit135.i:                      ; preds = %do.end.i134.i, %do.body.i132.i.lgs8gl5_write_reg.exit135.i_crit_edge, %lgs8gl5_write_reg.exit121.i.lgs8gl5_write_reg.exit135.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i123.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i122.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i136.i) #6
  %82 = getelementptr inbounds [2 x i8], ptr %buf.i136.i, i32 0, i32 1
  %83 = ptrtoint ptr %buf.i136.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 12, ptr %buf.i136.i, align 1
  %84 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 48, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i137.i) #6
  %85 = getelementptr inbounds i8, ptr %msg.i137.i, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 196607, ptr %85, align 4
  %87 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %config.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 1
  %conv.i139.i = zext i8 %90 to i16
  %91 = ptrtoint ptr %msg.i137.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.i139.i, ptr %msg.i137.i, align 4
  %flags.i140.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i137.i, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i140.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags.i140.i, align 2
  %buf1.i142.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i137.i, i32 0, i32 3
  %93 = ptrtoint ptr %buf1.i142.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %buf.i136.i, ptr %buf1.i142.i, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %call.i143.i = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i137.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i143.i)
  %cmp.not.i144.i = icmp eq i32 %call.i143.i, 1
  br i1 %cmp.not.i144.i, label %lgs8gl5_write_reg.exit135.i.lgs8gl5_write_reg.exit149.i_crit_edge, label %do.body.i146.i

lgs8gl5_write_reg.exit135.i.lgs8gl5_write_reg.exit149.i_crit_edge: ; preds = %lgs8gl5_write_reg.exit135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit149.i

do.body.i146.i:                                   ; preds = %lgs8gl5_write_reg.exit135.i
  %96 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i145.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i145.i, label %do.body.i146.i.lgs8gl5_write_reg.exit149.i_crit_edge, label %do.end.i148.i

do.body.i146.i.lgs8gl5_write_reg.exit149.i_crit_edge: ; preds = %do.body.i146.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit149.i

do.end.i148.i:                                    ; preds = %do.body.i146.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i147.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 12, i32 noundef 48, i32 noundef %call.i143.i) #9
  br label %lgs8gl5_write_reg.exit149.i

lgs8gl5_write_reg.exit149.i:                      ; preds = %do.end.i148.i, %do.body.i146.i.lgs8gl5_write_reg.exit149.i_crit_edge, %lgs8gl5_write_reg.exit135.i.lgs8gl5_write_reg.exit149.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i137.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i136.i) #6
  call fastcc void @lgs8gl5_update_reg(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0) #6
  call fastcc void @lgs8gl5_update_reg(ptr noundef %1, i8 noundef zeroext 126, i8 noundef zeroext 1) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i150.i) #6
  %97 = ptrtoint ptr %b0.i150.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -59, ptr %b0.i150.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i151.i) #6
  %98 = ptrtoint ptr %b1.i151.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %b1.i151.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b2.i152.i) #6
  %99 = getelementptr inbounds [2 x i8], ptr %b2.i152.i, i32 0, i32 1
  %100 = ptrtoint ptr %b2.i152.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -59, ptr %b2.i152.i, align 1
  %101 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %99, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %msg.i153.i) #6
  %102 = getelementptr inbounds i8, ptr %msg.i153.i, i32 4
  %103 = call ptr @memset(ptr %102, i32 255, i32 28)
  %104 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config.i.i, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %105, align 1
  %conv.i155.i = zext i8 %107 to i16
  %add.i156.i = add nuw nsw i16 %conv.i155.i, 2
  %108 = ptrtoint ptr %msg.i153.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %add.i156.i, ptr %msg.i153.i, align 4
  %flags.i157.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 0, i32 1
  %109 = ptrtoint ptr %flags.i157.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %flags.i157.i, align 2
  %110 = ptrtoint ptr %102 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 1, ptr %102, align 4
  %buf.i159.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 0, i32 3
  %111 = ptrtoint ptr %buf.i159.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %b0.i150.i, ptr %buf.i159.i, align 4
  %arrayinit.element4.i160.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 1
  %112 = load i8, ptr %105, align 1
  %conv8.i161.i = zext i8 %112 to i16
  %add9.i162.i = add nuw nsw i16 %conv8.i161.i, 2
  %113 = ptrtoint ptr %arrayinit.element4.i160.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %add9.i162.i, ptr %arrayinit.element4.i160.i, align 4
  %flags11.i163.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 1, i32 1
  %114 = ptrtoint ptr %flags11.i163.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 1, ptr %flags11.i163.i, align 2
  %len12.i164.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 1, i32 2
  %115 = ptrtoint ptr %len12.i164.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %len12.i164.i, align 4
  %buf13.i165.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 1, i32 3
  %116 = ptrtoint ptr %buf13.i165.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %b1.i151.i, ptr %buf13.i165.i, align 4
  %arrayinit.element15.i166.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 2
  %117 = load i8, ptr %105, align 1
  %conv19.i167.i = zext i8 %117 to i16
  %add20.i168.i = add nuw nsw i16 %conv19.i167.i, 2
  %118 = ptrtoint ptr %arrayinit.element15.i166.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %add20.i168.i, ptr %arrayinit.element15.i166.i, align 4
  %flags22.i169.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 2, i32 1
  %119 = ptrtoint ptr %flags22.i169.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %flags22.i169.i, align 2
  %len23.i170.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 2, i32 2
  %120 = ptrtoint ptr %len23.i170.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 2, ptr %len23.i170.i, align 4
  %buf24.i171.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i153.i, i32 2, i32 3
  %121 = ptrtoint ptr %buf24.i171.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %b2.i152.i, ptr %buf24.i171.i, align 4
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 4
  %call.i172.i = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %msg.i153.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %msg.i153.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b2.i152.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i151.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i150.i) #6
  call fastcc void @lgs8gl5_update_reg(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 2) #6
  call fastcc void @lgs8gl5_update_reg(ptr noundef %1, i8 noundef zeroext 55, i8 noundef zeroext 1) #6
  call fastcc void @lgs8gl5_soft_reset(ptr noundef %1) #6
  %124 = getelementptr inbounds i8, ptr %msg.i175.i, i32 4
  %flags.i178.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 0, i32 1
  %buf.i180.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 1
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 1, i32 1
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 1, i32 2
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i175.i, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end32.i.for.body.i_crit_edge, %lgs8gl5_write_reg.exit149.i
  %n.0237.i = phi i32 [ 0, %lgs8gl5_write_reg.exit149.i ], [ %inc.i, %if.end32.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i173.i) #6
  %125 = ptrtoint ptr %b0.i173.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 75, ptr %b0.i173.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i174.i) #6
  %126 = ptrtoint ptr %b1.i174.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %b1.i174.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i175.i) #6
  %127 = call ptr @memset(ptr %124, i32 255, i32 16)
  %128 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %config.i.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %129, align 1
  %conv.i177.i = zext i8 %131 to i16
  %132 = ptrtoint ptr %msg.i175.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %conv.i177.i, ptr %msg.i175.i, align 4
  %133 = ptrtoint ptr %flags.i178.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %flags.i178.i, align 2
  %134 = ptrtoint ptr %124 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 1, ptr %124, align 4
  %135 = ptrtoint ptr %buf.i180.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %b0.i173.i, ptr %buf.i180.i, align 4
  %136 = load i8, ptr %129, align 1
  %conv5.i.i = zext i8 %136 to i16
  %137 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %138 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %flags6.i.i, align 2
  %139 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 1, ptr %len7.i.i, align 4
  %140 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %b1.i174.i, ptr %buf8.i.i, align 4
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %call.i181.i = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %msg.i175.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i181.i)
  %cmp.not.i182.i = icmp eq i32 %call.i181.i, 2
  br i1 %cmp.not.i182.i, label %if.end.i.i, label %for.body.i.lgs8gl5_read_reg.exit.i_crit_edge

for.body.i.lgs8gl5_read_reg.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_read_reg.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %b1.i174.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %b1.i174.i, align 1
  %conv12.i.i = zext i8 %144 to i32
  br label %lgs8gl5_read_reg.exit.i

lgs8gl5_read_reg.exit.i:                          ; preds = %if.end.i.i, %for.body.i.lgs8gl5_read_reg.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv12.i.i, %if.end.i.i ], [ -5, %for.body.i.lgs8gl5_read_reg.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i175.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i174.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i173.i) #6
  %145 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool18.not.i = icmp eq i32 %145, 0
  br i1 %tobool18.not.i, label %lgs8gl5_read_reg.exit.i.do.end28.i_crit_edge, label %do.end22.i

lgs8gl5_read_reg.exit.i.do.end28.i_crit_edge:     ; preds = %lgs8gl5_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end28.i

do.end22.i:                                       ; preds = %lgs8gl5_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv24.i = and i32 %retval.0.i.i, 255
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %n.0237.i, i32 noundef %conv24.i) #9
  br label %do.end28.i

do.end28.i:                                       ; preds = %do.end22.i, %lgs8gl5_read_reg.exit.i.do.end28.i_crit_edge
  %and.i = and i32 %retval.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool30.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %for.cond38.preheader.i

if.end32.i:                                       ; preds = %do.end28.i
  call void @msleep(i32 noundef 4) #6
  %inc.i = add nuw nsw i32 %n.0237.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %if.end32.i.cleanup_crit_edge, label %if.end32.i.for.body.i_crit_edge

if.end32.i.for.body.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond38.preheader.i:                           ; preds = %do.end28.i
  %146 = getelementptr inbounds i8, ptr %msg.i185.i, i32 4
  %flags.i188.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i185.i, i32 0, i32 1
  %buf.i190.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i185.i, i32 0, i32 3
  %arrayinit.element.i191.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i185.i, i32 1
  %flags6.i193.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i185.i, i32 1, i32 1
  %len7.i194.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i185.i, i32 1, i32 2
  %buf8.i195.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i185.i, i32 1, i32 3
  br label %for.body41.i

for.body41.i:                                     ; preds = %if.end60.i.for.body41.i_crit_edge, %for.cond38.preheader.i
  %n.1243.i = phi i32 [ 0, %for.cond38.preheader.i ], [ %inc62.i, %if.end60.i.for.body41.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i183.i) #6
  %147 = ptrtoint ptr %b0.i183.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 -92, ptr %b0.i183.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i184.i) #6
  %148 = ptrtoint ptr %b1.i184.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %b1.i184.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i185.i) #6
  %149 = call ptr @memset(ptr %146, i32 255, i32 16)
  %150 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %config.i.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %151, align 1
  %conv.i187.i = zext i8 %153 to i16
  %154 = ptrtoint ptr %msg.i185.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv.i187.i, ptr %msg.i185.i, align 4
  %155 = ptrtoint ptr %flags.i188.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %flags.i188.i, align 2
  %156 = ptrtoint ptr %146 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 1, ptr %146, align 4
  %157 = ptrtoint ptr %buf.i190.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %b0.i183.i, ptr %buf.i190.i, align 4
  %158 = load i8, ptr %151, align 1
  %conv5.i192.i = zext i8 %158 to i16
  %159 = ptrtoint ptr %arrayinit.element.i191.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv5.i192.i, ptr %arrayinit.element.i191.i, align 4
  %160 = ptrtoint ptr %flags6.i193.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 1, ptr %flags6.i193.i, align 2
  %161 = ptrtoint ptr %len7.i194.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 1, ptr %len7.i194.i, align 4
  %162 = ptrtoint ptr %buf8.i195.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %b1.i184.i, ptr %buf8.i195.i, align 4
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %call.i196.i = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %msg.i185.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i196.i)
  %cmp.not.i197.i = icmp eq i32 %call.i196.i, 2
  br i1 %cmp.not.i197.i, label %if.end.i199.i, label %for.body41.i.lgs8gl5_read_reg.exit201.i_crit_edge

for.body41.i.lgs8gl5_read_reg.exit201.i_crit_edge: ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_read_reg.exit201.i

if.end.i199.i:                                    ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  %165 = ptrtoint ptr %b1.i184.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %b1.i184.i, align 1
  %conv12.i198.i = zext i8 %166 to i32
  br label %lgs8gl5_read_reg.exit201.i

lgs8gl5_read_reg.exit201.i:                       ; preds = %if.end.i199.i, %for.body41.i.lgs8gl5_read_reg.exit201.i_crit_edge
  %retval.0.i200.i = phi i32 [ %conv12.i198.i, %if.end.i199.i ], [ -5, %for.body41.i.lgs8gl5_read_reg.exit201.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i185.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i184.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i183.i) #6
  %167 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool45.not.i = icmp eq i32 %167, 0
  br i1 %tobool45.not.i, label %lgs8gl5_read_reg.exit201.i.do.end55.i_crit_edge, label %do.end49.i

lgs8gl5_read_reg.exit201.i.do.end55.i_crit_edge:  ; preds = %lgs8gl5_read_reg.exit201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end55.i

do.end49.i:                                       ; preds = %lgs8gl5_read_reg.exit201.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv51.i = and i32 %retval.0.i200.i, 255
  %call52.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %n.1243.i, i32 noundef %conv51.i) #9
  br label %do.end55.i

do.end55.i:                                       ; preds = %do.end49.i, %lgs8gl5_read_reg.exit201.i.do.end55.i_crit_edge
  %and57.i = and i32 %retval.0.i200.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.end68.i

if.end60.i:                                       ; preds = %do.end55.i
  call void @msleep(i32 noundef 12) #6
  %inc62.i = add nuw nsw i32 %n.1243.i, 1
  %exitcond251.not.i = icmp eq i32 %inc62.i, 20
  br i1 %exitcond251.not.i, label %if.end60.i.cleanup_crit_edge, label %if.end60.i.for.body41.i_crit_edge

if.end60.i.for.body41.i_crit_edge:                ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body41.i

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end68.i:                                       ; preds = %do.end55.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i202.i) #6
  %168 = ptrtoint ptr %b0.i202.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -94, ptr %b0.i202.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i203.i) #6
  %169 = ptrtoint ptr %b1.i203.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %b1.i203.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i204.i) #6
  %170 = getelementptr inbounds i8, ptr %msg.i204.i, i32 4
  %171 = call ptr @memset(ptr %170, i32 255, i32 16)
  %172 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %config.i.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %173, align 1
  %conv.i206.i = zext i8 %175 to i16
  %176 = ptrtoint ptr %msg.i204.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv.i206.i, ptr %msg.i204.i, align 4
  %flags.i207.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204.i, i32 0, i32 1
  %177 = ptrtoint ptr %flags.i207.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 0, ptr %flags.i207.i, align 2
  %178 = ptrtoint ptr %170 to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 1, ptr %170, align 4
  %buf.i209.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204.i, i32 0, i32 3
  %179 = ptrtoint ptr %buf.i209.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %b0.i202.i, ptr %buf.i209.i, align 4
  %arrayinit.element.i210.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204.i, i32 1
  %180 = load i8, ptr %173, align 1
  %conv5.i211.i = zext i8 %180 to i16
  %181 = ptrtoint ptr %arrayinit.element.i210.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv5.i211.i, ptr %arrayinit.element.i210.i, align 4
  %flags6.i212.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204.i, i32 1, i32 1
  %182 = ptrtoint ptr %flags6.i212.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 1, ptr %flags6.i212.i, align 2
  %len7.i213.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204.i, i32 1, i32 2
  %183 = ptrtoint ptr %len7.i213.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 1, ptr %len7.i213.i, align 4
  %buf8.i214.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i204.i, i32 1, i32 3
  %184 = ptrtoint ptr %buf8.i214.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %b1.i203.i, ptr %buf8.i214.i, align 4
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 4
  %call.i215.i = call i32 @i2c_transfer(ptr noundef %186, ptr noundef nonnull %msg.i204.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i215.i)
  %cmp.not.i216.i = icmp eq i32 %call.i215.i, 2
  br i1 %cmp.not.i216.i, label %if.end.i218.i, label %if.end68.i.lgs8gl5_read_reg.exit220.i_crit_edge

if.end68.i.lgs8gl5_read_reg.exit220.i_crit_edge:  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_read_reg.exit220.i

if.end.i218.i:                                    ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  %187 = ptrtoint ptr %b1.i203.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %b1.i203.i, align 1
  br label %lgs8gl5_read_reg.exit220.i

lgs8gl5_read_reg.exit220.i:                       ; preds = %if.end.i218.i, %if.end68.i.lgs8gl5_read_reg.exit220.i_crit_edge
  %retval.0.i219.i = phi i8 [ %188, %if.end.i218.i ], [ -5, %if.end68.i.lgs8gl5_read_reg.exit220.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i204.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i203.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i202.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i221.i) #6
  %189 = getelementptr inbounds [2 x i8], ptr %buf.i221.i, i32 0, i32 1
  %190 = ptrtoint ptr %buf.i221.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 125, ptr %buf.i221.i, align 1
  %191 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %retval.0.i219.i, ptr %189, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i222.i) #6
  %192 = getelementptr inbounds i8, ptr %msg.i222.i, i32 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 196607, ptr %192, align 4
  %194 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %config.i.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %195, align 1
  %conv.i224.i = zext i8 %197 to i16
  %198 = ptrtoint ptr %msg.i222.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv.i224.i, ptr %msg.i222.i, align 4
  %flags.i225.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i222.i, i32 0, i32 1
  %199 = ptrtoint ptr %flags.i225.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %flags.i225.i, align 2
  %buf1.i227.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i222.i, i32 0, i32 3
  %200 = ptrtoint ptr %buf1.i227.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %buf.i221.i, ptr %buf1.i227.i, align 4
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %1, align 4
  %call.i228.i = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %msg.i222.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i228.i)
  %cmp.not.i229.i = icmp eq i32 %call.i228.i, 1
  br i1 %cmp.not.i229.i, label %lgs8gl5_read_reg.exit220.i.lgs8gl5_write_reg.exit234.i_crit_edge, label %do.body.i231.i

lgs8gl5_read_reg.exit220.i.lgs8gl5_write_reg.exit234.i_crit_edge: ; preds = %lgs8gl5_read_reg.exit220.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit234.i

do.body.i231.i:                                   ; preds = %lgs8gl5_read_reg.exit220.i
  %203 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool.not.i230.i = icmp eq i32 %203, 0
  br i1 %tobool.not.i230.i, label %do.body.i231.i.lgs8gl5_write_reg.exit234.i_crit_edge, label %do.end.i233.i

do.body.i231.i.lgs8gl5_write_reg.exit234.i_crit_edge: ; preds = %do.body.i231.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit234.i

do.end.i233.i:                                    ; preds = %do.body.i231.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i.i = zext i8 %retval.0.i219.i to i32
  %call7.i232.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 125, i32 noundef %conv6.i.i, i32 noundef %call.i228.i) #9
  br label %lgs8gl5_write_reg.exit234.i

lgs8gl5_write_reg.exit234.i:                      ; preds = %do.end.i233.i, %do.body.i231.i.lgs8gl5_write_reg.exit234.i_crit_edge, %lgs8gl5_read_reg.exit220.i.lgs8gl5_write_reg.exit234.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i222.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i221.i) #6
  call fastcc void @lgs8gl5_soft_reset(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %lgs8gl5_write_reg.exit234.i, %if.end60.i.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup_crit_edge ], [ 0, %lgs8gl5_write_reg.exit234.i ], [ 0, %if.end60.i.cleanup_crit_edge ], [ 0, %if.end32.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgs8gl5_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 240, ptr %fesettings, align 4
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
define internal i32 @lgs8gl5_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #0 align 64 {
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
  store i8 124, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.lgs8gl5_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.lgs8gl5_read_reg.exit_crit_edge

entry.lgs8gl5_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_read_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %23 = lshr i8 %22, 7
  %phi.bo = zext i8 %23 to i32
  br label %lgs8gl5_read_reg.exit

lgs8gl5_read_reg.exit:                            ; preds = %if.end.i, %entry.lgs8gl5_read_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.end.i ], [ 1, %entry.lgs8gl5_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %24 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %inversion, align 4
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 11
  %25 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %code_rate_HP, align 4
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 12
  %26 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7, ptr %code_rate_LP, align 4
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 8
  %27 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %guard_interval, align 4
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 6
  %28 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %transmission_mode, align 4
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %29 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %modulation, align 4
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 9
  %30 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %hierarchy, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 7
  %31 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8000000, ptr %bandwidth_hz, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gl5_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %b0.i29 = alloca [1 x i8], align 1
  %b1.i30 = alloca [1 x i8], align 1
  %msg.i31 = alloca [2 x %struct.i2c_msg], align 4
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
  store i8 75, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.lgs8gl5_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.lgs8gl5_read_reg.exit_crit_edge

entry.lgs8gl5_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_read_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %conv12.i = zext i8 %22 to i32
  br label %lgs8gl5_read_reg.exit

lgs8gl5_read_reg.exit:                            ; preds = %if.end.i, %entry.lgs8gl5_read_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %conv12.i, %if.end.i ], [ -5, %entry.lgs8gl5_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i29) #6
  %23 = ptrtoint ptr %b0.i29 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -92, ptr %b0.i29, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i30) #6
  %24 = ptrtoint ptr %b1.i30 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %b1.i30, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i31) #6
  %25 = getelementptr inbounds i8, ptr %msg.i31, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i33 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i31 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i33, ptr %msg.i31, align 4
  %flags.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i34, align 2
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %25, align 4
  %buf.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %b0.i29, ptr %buf.i36, align 4
  %arrayinit.element.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1
  %35 = load i8, ptr %28, align 1
  %conv5.i38 = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayinit.element.i37 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv5.i38, ptr %arrayinit.element.i37, align 4
  %flags6.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1, i32 1
  %37 = ptrtoint ptr %flags6.i39 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags6.i39, align 2
  %len7.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1, i32 2
  %38 = ptrtoint ptr %len7.i40 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len7.i40, align 4
  %buf8.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 1, i32 3
  %39 = ptrtoint ptr %buf8.i41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b1.i30, ptr %buf8.i41, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i31, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i42)
  %cmp.not.i43 = icmp eq i32 %call.i42, 2
  br i1 %cmp.not.i43, label %if.end.i45, label %lgs8gl5_read_reg.exit.lgs8gl5_read_reg.exit47_crit_edge

lgs8gl5_read_reg.exit.lgs8gl5_read_reg.exit47_crit_edge: ; preds = %lgs8gl5_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_read_reg.exit47

if.end.i45:                                       ; preds = %lgs8gl5_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %b1.i30 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %b1.i30, align 1
  %conv12.i44 = zext i8 %43 to i32
  br label %lgs8gl5_read_reg.exit47

lgs8gl5_read_reg.exit47:                          ; preds = %if.end.i45, %lgs8gl5_read_reg.exit.lgs8gl5_read_reg.exit47_crit_edge
  %retval.0.i46 = phi i32 [ %conv12.i44, %if.end.i45 ], [ -5, %lgs8gl5_read_reg.exit.lgs8gl5_read_reg.exit47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i31) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i30) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i29) #6
  %and = and i32 %retval.0.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp ne i32 %and, 0
  %spec.select = zext i1 %cmp.not to i32
  %and6 = lshr i32 %retval.0.i, 6
  %44 = and i32 %and6, 2
  %45 = or i32 %44, %spec.select
  %46 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %status, align 4
  %and11 = and i32 %retval.0.i46, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %lgs8gl5_read_reg.exit47.if.end15_crit_edge, label %if.then13

lgs8gl5_read_reg.exit47.if.end15_crit_edge:       ; preds = %lgs8gl5_read_reg.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %lgs8gl5_read_reg.exit47
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status, align 4
  %or14 = or i32 %48, 8
  store i32 %or14, ptr %status, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %lgs8gl5_read_reg.exit47.if.end15_crit_edge
  %and17 = and i32 %retval.0.i46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end21_crit_edge, label %if.then19

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or20 = or i32 %50, 16
  store i32 %or20, ptr %status, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end15.if.end21_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgs8gl5_read_ber(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ber) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gl5_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #0 align 64 {
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
  store i8 75, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.lgs8gl5_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.lgs8gl5_read_reg.exit_crit_edge

entry.lgs8gl5_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_read_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %phi.cast = zext i8 %22 to i16
  %phi.bo = shl nuw i16 %phi.cast, 8
  %phi.bo3 = and i16 %phi.bo, 32512
  br label %lgs8gl5_read_reg.exit

lgs8gl5_read_reg.exit:                            ; preds = %if.end.i, %entry.lgs8gl5_read_reg.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.bo3, %if.end.i ], [ 31488, %entry.lgs8gl5_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %23 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %retval.0.i, ptr %signal_strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lgs8gl5_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
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
  store i8 75, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.lgs8gl5_state, ptr %1, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.end.i, label %entry.lgs8gl5_read_reg.exit_crit_edge

entry.lgs8gl5_read_reg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_read_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  %phi.cast = zext i8 %22 to i16
  %phi.bo = shl nuw i16 %phi.cast, 8
  %phi.bo3 = and i16 %phi.bo, 32512
  br label %lgs8gl5_read_reg.exit

lgs8gl5_read_reg.exit:                            ; preds = %if.end.i, %entry.lgs8gl5_read_reg.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.bo3, %if.end.i ], [ 31488, %entry.lgs8gl5_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %23 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %retval.0.i, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgs8gl5_read_ucblocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ucblocks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lgs8gl5_soft_reset(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %buf.i22 = alloca [2 x i8], align 1
  %msg.i23 = alloca %struct.i2c_msg, align 4
  %buf.i14 = alloca [2 x i8], align 1
  %msg.i15 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %1 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %2 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.lgs8gl5_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 1
  %conv.i = zext i8 %8 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %3, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %13 = load i8, ptr %6, align 1
  %conv5.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b1.i, ptr %buf8.i, align 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end3.lgs8gl5_read_reg.exit_crit_edge

do.end3.lgs8gl5_read_reg.exit_crit_edge:          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_read_reg.exit

if.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b1.i, align 1
  br label %lgs8gl5_read_reg.exit

lgs8gl5_read_reg.exit:                            ; preds = %if.end.i, %do.end3.lgs8gl5_read_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %21, %if.end.i ], [ -5, %do.end3.lgs8gl5_read_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %conv6 = and i8 %retval.0.i, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i14) #6
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i14, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i14 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %buf.i14, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv6, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i15) #6
  %25 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i17 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i17, ptr %msg.i15, align 4
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i18, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  %33 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i14, ptr %buf1.i, align 4
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state, align 4
  %call.i20 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i15, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i20)
  %cmp.not.i21 = icmp eq i32 %call.i20, 1
  br i1 %cmp.not.i21, label %lgs8gl5_read_reg.exit.lgs8gl5_write_reg.exit_crit_edge, label %do.body.i

lgs8gl5_read_reg.exit.lgs8gl5_write_reg.exit_crit_edge: ; preds = %lgs8gl5_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit

do.body.i:                                        ; preds = %lgs8gl5_read_reg.exit
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %do.body.i.lgs8gl5_write_reg.exit_crit_edge, label %do.end.i

do.body.i.lgs8gl5_write_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %conv6 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef %conv6.i, i32 noundef %call.i20) #9
  br label %lgs8gl5_write_reg.exit

lgs8gl5_write_reg.exit:                           ; preds = %do.end.i, %do.body.i.lgs8gl5_write_reg.exit_crit_edge, %lgs8gl5_read_reg.exit.lgs8gl5_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i15) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i14) #6
  %conv9 = or i8 %retval.0.i, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i22) #6
  %37 = getelementptr inbounds [2 x i8], ptr %buf.i22, i32 0, i32 1
  %38 = ptrtoint ptr %buf.i22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %buf.i22, align 1
  %39 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv9, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23) #6
  %40 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 196607, ptr %40, align 4
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv.i25 = zext i8 %45 to i16
  %46 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i25, ptr %msg.i23, align 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i26, align 2
  %buf1.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %48 = ptrtoint ptr %buf1.i28 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.i22, ptr %buf1.i28, align 4
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state, align 4
  %call.i29 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %msg.i23, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i29)
  %cmp.not.i30 = icmp eq i32 %call.i29, 1
  br i1 %cmp.not.i30, label %lgs8gl5_write_reg.exit.lgs8gl5_write_reg.exit36_crit_edge, label %do.body.i32

lgs8gl5_write_reg.exit.lgs8gl5_write_reg.exit36_crit_edge: ; preds = %lgs8gl5_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit36

do.body.i32:                                      ; preds = %lgs8gl5_write_reg.exit
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i31 = icmp eq i32 %51, 0
  br i1 %tobool.not.i31, label %do.body.i32.lgs8gl5_write_reg.exit36_crit_edge, label %do.end.i35

do.body.i32.lgs8gl5_write_reg.exit36_crit_edge:   ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit36

do.end.i35:                                       ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i33 = zext i8 %conv9 to i32
  %call7.i34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 2, i32 noundef %conv6.i33, i32 noundef %call.i29) #9
  br label %lgs8gl5_write_reg.exit36

lgs8gl5_write_reg.exit36:                         ; preds = %do.end.i35, %do.body.i32.lgs8gl5_write_reg.exit36_crit_edge, %lgs8gl5_write_reg.exit.lgs8gl5_write_reg.exit36_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i22) #6
  call void @msleep(i32 noundef 5) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lgs8gl5_update_reg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %buf.i1 = alloca [2 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %0 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %1 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.lgs8gl5_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
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
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = load i8, ptr %5, align 1
  %conv5.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %14 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %15 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b1.i, ptr %buf8.i, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #6
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i1, i32 0, i32 1
  %20 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %reg, ptr %buf.i1, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %data, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #6
  %22 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 196607, ptr %22, align 4
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv.i4 = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i4, ptr %msg.i2, align 4
  %flags.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i5, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %30 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i1, ptr %buf1.i, align 4
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state, align 4
  %call.i7 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i7)
  %cmp.not.i8 = icmp eq i32 %call.i7, 1
  br i1 %cmp.not.i8, label %entry.lgs8gl5_write_reg.exit_crit_edge, label %do.body.i

entry.lgs8gl5_write_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit

do.body.i:                                        ; preds = %entry
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i, label %do.body.i.lgs8gl5_write_reg.exit_crit_edge, label %do.end.i

do.body.i.lgs8gl5_write_reg.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lgs8gl5_write_reg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i9 = zext i8 %reg to i32
  %conv6.i = zext i8 %data to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv5.i9, i32 noundef %conv6.i, i32 noundef %call.i7) #9
  br label %lgs8gl5_write_reg.exit

lgs8gl5_write_reg.exit:                           ; preds = %do.end.i, %do.body.i.lgs8gl5_write_reg.exit_crit_edge, %entry.lgs8gl5_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 375, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lgs8gl5_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lgs8gl5_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_lgs8gl5_attach, !7, !"__ksymtab_lgs8gl5_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 400, i32 1}
!8 = !{ptr @__param_debug, !9, !"__param_debug", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 436, i32 1}
!10 = !{ptr @__UNIQUE_ID_debugtype290, !9, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_debug291, !12, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 437, i32 1}
!13 = !{ptr @__UNIQUE_ID_description292, !14, !"__UNIQUE_ID_description292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 439, i32 1}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 440, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 441, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 50, i32 12}
!22 = !{ptr @lgs8gl5_ops, !23, !"lgs8gl5_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 403, i32 38}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 224, i32 2}
!26 = !{ptr @lgs8gl5_init._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lgs8gl5_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 158, i32 2}
!30 = !{ptr @lgs8gl5_soft_reset._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lgs8gl5_soft_reset._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 73, i32 3}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lgs8gl5_write_reg._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @lgs8gl5_write_reg._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 307, i32 2}
!39 = !{ptr @lgs8gl5_set_frontend._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @lgs8gl5_set_frontend._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 174, i32 2}
!43 = !{ptr @lgs8gl5_start_demod._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @lgs8gl5_start_demod._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 195, i32 3}
!47 = !{ptr @lgs8gl5_start_demod._entry.9, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @lgs8gl5_start_demod._entry_ptr.11, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/lgs8gl5.c", i32 206, i32 3}
!51 = !{ptr @lgs8gl5_start_demod._entry.12, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @lgs8gl5_start_demod._entry_ptr.14, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @__param_str_debug, !9, !"__param_str_debug", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
