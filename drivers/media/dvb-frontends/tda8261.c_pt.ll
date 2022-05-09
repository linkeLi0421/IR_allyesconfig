; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda8261.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda8261.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tda8261_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda8261_attach\09\09\09\09"
module asm "\09.long\09__crc_tda8261_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda8261_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda8261_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda8261_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tda8261_state = type { ptr, ptr, ptr, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.tda8261_config = type { i8, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@tda8261_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"TDA8261\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @tda8261_release, ptr null, ptr null, ptr null, ptr null, ptr @tda8261_set_params, ptr null, ptr null, ptr @tda8261_get_frequency, ptr null, ptr null, ptr @tda8261_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@div_tab = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 2000, i32 1000, i32 500, i32 250, i32 125], [44 x i8] zeroinitializer }, align 32
@tda8261_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Attaching TDA8261 8PSK/QPSK tuner\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda8261_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/tda8261.c\00", [58 x i8] zeroinitializer }, align 32
@tda8261_attach._entry_ptr = internal global ptr @tda8261_attach._entry, section ".printk_index", align 4
@__kstrtab_tda8261_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda8261_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda8261_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda8261_attach to i32), ptr @__kstrtab_tda8261_attach, ptr @__kstrtabns_tda8261_attach }, section "___ksymtab+tda8261_attach", align 4
@__UNIQUE_ID_author295 = internal constant [28 x i8] c"tda8261.author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [44 x i8] c"tda8261.description=TDA8261 8PSK/QPSK Tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [49 x i8] c"tda8261.file=drivers/media/dvb-frontends/tda8261\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [20 x i8] c"tda8261.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda8261_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: Frequency beyond limits, frequency=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda8261_set_params\00", [45 x i8] zeroinitializer }, align 32
@tda8261_set_params._entry_ptr = internal global ptr @tda8261_set_params._entry, section ".printk_index", align 4
@tda8261_set_params.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tda8261\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Step size=%d, Divider=%d, PG=0x%02x (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@ref_div = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\01\02\05\07", [27 x i8] zeroinitializer }, align 32
@tda8261_set_params._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: I/O Error\0A\00", [47 x i8] zeroinitializer }, align 32
@tda8261_set_params._entry_ptr.9 = internal global ptr @tda8261_set_params._entry.7, section ".printk_index", align 4
@tda8261_set_params.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Waiting to Phase LOCK\0A\00", [37 x i8] zeroinitializer }, align 32
@tda8261_set_params._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tda8261_set_params._entry_ptr.12 = internal global ptr @tda8261_set_params._entry.11, section ".printk_index", align 4
@tda8261_set_params.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.4, ptr @.str.2, ptr @.str.13, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Tuner Phase locked: status=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@tda8261_set_params.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.4, ptr @.str.2, ptr @.str.14, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: No Phase lock: status=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@tda8261_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: write error, err=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda8261_write\00", [18 x i8] zeroinitializer }, align 32
@tda8261_write._entry_ptr = internal global ptr @tda8261_write._entry, section ".printk_index", align 4
@tda8261_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.17, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda8261_get_status\00", [45 x i8] zeroinitializer }, align 32
@tda8261_get_status._entry_ptr = internal global ptr @tda8261_get_status._entry, section ".printk_index", align 4
@tda8261_get_status.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Tuner Phase Locked\0A\00", [40 x i8] zeroinitializer }, align 32
@tda8261_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: read error, err=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tda8261_read\00", [19 x i8] zeroinitializer }, align 32
@tda8261_read._entry_ptr = internal global ptr @tda8261_read._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"tda8261_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 151, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [8 x i8] c"div_tab\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 71, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 182, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 99, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 104, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [8 x i8] c"ref_div\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 72, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 121, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 125, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 129, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 133, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 137, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 46, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 60, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 64, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [41 x i8] c"../drivers/media/dvb-frontends/tda8261.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 34, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__ksymtab_tda8261_attach, ptr @tda8261_attach._entry, ptr @tda8261_attach._entry_ptr, ptr @tda8261_get_status._entry, ptr @tda8261_get_status._entry_ptr, ptr @tda8261_read._entry, ptr @tda8261_read._entry_ptr, ptr @tda8261_set_params._entry, ptr @tda8261_set_params._entry.11, ptr @tda8261_set_params._entry.7, ptr @tda8261_set_params._entry_ptr, ptr @tda8261_set_params._entry_ptr.12, ptr @tda8261_set_params._entry_ptr.9, ptr @tda8261_write._entry, ptr @tda8261_write._entry_ptr, ptr @tda8261_ops, ptr @div_tab, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ref_div, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8261_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @div_tab to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8261_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8261_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref_div to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8261_set_params._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8261_set_params._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8261_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8261_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda8261_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda8261_attach(ptr noundef %fe, ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %exit, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %config1 = getelementptr inbounds %struct.tda8261_state, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 8
  %i2c2 = getelementptr inbounds %struct.tda8261_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c2, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fe, ptr %call7.i.i, align 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %5 = call ptr @memcpy(ptr %tuner_ops, ptr @tda8261_ops, i32 220)
  %step_size = getelementptr inbounds %struct.tda8261_config, ptr %config, i32 0, i32 1
  %6 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %step_size, align 4
  %arrayidx = getelementptr [5 x i32], ptr @div_tab, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %9, 1000
  %frequency_step_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 0, i32 3
  %10 = ptrtoint ptr %frequency_step_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul, ptr %frequency_step_hz, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

exit:                                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end
  %retval.0 = phi ptr [ null, %exit ], [ %fe, %if.end ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda8261_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8261_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %status = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %config1 = getelementptr inbounds %struct.tda8261_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #6
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %8 = getelementptr inbounds i8, ptr %buf, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1
  %10 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dtv_property_cache, align 4
  %12 = add i32 %11, -2150001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1200001, i32 %12)
  %13 = icmp ult i32 %12, -1200001
  br i1 %13, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %11) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %step_size = getelementptr inbounds %struct.tda8261_config, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %step_size, align 4
  %arrayidx = getelementptr [5 x i32], ptr @div_tab, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %sub = add nsw i32 %11, -1
  %add = add i32 %sub, %17
  %div = udiv i32 %add, %17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda8261_set_params.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda8261_set_params, %if.then11)) #6
          to label %do.end17 [label %if.then11], !srcloc !72

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %step_size, align 4
  %arrayidx14 = getelementptr [5 x i32], ptr @div_tab, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tda8261_set_params.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef %19, i32 noundef %21, i32 noundef %div, i32 noundef %div) #6
  br label %do.end17

do.end17:                                         ; preds = %if.then11, %if.end
  %shr = lshr i32 %div, 8
  %conv = trunc i32 %shr to i8
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %buf, align 1
  %conv20 = trunc i32 %div to i8
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv20, ptr %5, align 1
  %24 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %step_size, align 4
  %arrayidx23 = getelementptr [5 x i8], ptr @ref_div, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx23, align 1
  %28 = shl i8 %27, 1
  %29 = and i8 %28, 14
  %30 = or i8 %29, -128
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1450000, i32 %11)
  %cmp28 = icmp ult i32 %11, 1450000
  br i1 %cmp28, label %do.end17.if.end43.sink.split_crit_edge, label %if.else

do.end17.if.end43.sink.split_crit_edge:           ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.sink.split

if.else:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %11)
  %cmp32 = icmp ult i32 %11, 2000000
  br i1 %cmp32, label %if.else.if.end43.sink.split_crit_edge, label %if.else36

if.else.if.end43.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.sink.split

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 2150000, i32 %11)
  %cmp37 = icmp ult i32 %11, 2150000
  br i1 %cmp37, label %if.else36.if.end43.sink.split_crit_edge, label %if.else36.if.end43_crit_edge

if.else36.if.end43_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.else36.if.end43.sink.split_crit_edge:          ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.else36.if.end43.sink.split_crit_edge, %if.else.if.end43.sink.split_crit_edge, %do.end17.if.end43.sink.split_crit_edge
  %.sink = phi i8 [ 0, %do.end17.if.end43.sink.split_crit_edge ], [ 64, %if.else.if.end43.sink.split_crit_edge ], [ -128, %if.else36.if.end43.sink.split_crit_edge ]
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink, ptr %7, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else36.if.end43_crit_edge
  %33 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %35 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 327679, ptr %35, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %34, align 4
  %conv.i = zext i8 %38 to i16
  %39 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %41 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf, ptr %buf3.i, align 4
  %i2c.i = getelementptr inbounds %struct.tda8261_state, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %tda8261_write.exit.thread, label %tda8261_write.exit

tda8261_write.exit.thread:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %do.body54

tda8261_write.exit:                               ; preds = %if.end43
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp45 = icmp slt i32 %call.i, 0
  br i1 %cmp45, label %do.end50, label %tda8261_write.exit.do.body54_crit_edge

tda8261_write.exit.do.body54_crit_edge:           ; preds = %tda8261_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

do.end50:                                         ; preds = %tda8261_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4) #10
  br label %cleanup

do.body54:                                        ; preds = %tda8261_write.exit.do.body54_crit_edge, %tda8261_write.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda8261_set_params.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda8261_set_params, %if.then66)) #6
          to label %do.end69 [label %if.then66], !srcloc !72

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tda8261_set_params.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4) #6
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %do.body54
  call void @msleep(i32 noundef 20) #6
  %call70 = call i32 @tda8261_get_status(ptr noundef %fe, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end76, label %if.end79

do.end76:                                         ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #8
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end79:                                         ; preds = %do.end69
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp80 = icmp eq i32 %45, 1
  br i1 %cmp80, label %do.body83, label %do.body101

do.body83:                                        ; preds = %if.end79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda8261_set_params.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda8261_set_params, %if.then95)) #6
          to label %do.end98 [label %if.then95], !srcloc !72

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tda8261_set_params.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4, i32 noundef 1) #6
  br label %do.end98

do.end98:                                         ; preds = %if.then95, %do.body83
  %frequency99 = getelementptr inbounds %struct.tda8261_state, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %frequency99 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %11, ptr %frequency99, align 4
  br label %cleanup

do.body101:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda8261_set_params.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda8261_set_params, %if.then113)) #6
          to label %cleanup [label %if.then113], !srcloc !72

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tda8261_set_params.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4, i32 noundef %45) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %do.body101, %do.end98, %do.end76, %do.end50, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end50 ], [ %call70, %do.end76 ], [ 0, %if.then113 ], [ 0, %do.end98 ], [ 0, %do.body101 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda8261_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.tda8261_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda8261_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %result = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result) #6
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %result, align 1
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status, align 4
  %config1.i = getelementptr inbounds %struct.tda8261_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config1.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 131071, ptr %6, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags.i, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %result, ptr %buf3.i, align 4
  %i2c.i = getelementptr inbounds %struct.tda8261_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %tda8261_read.exit.thread, label %tda8261_read.exit

tda8261_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %if.end

tda8261_read.exit:                                ; preds = %entry
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %tda8261_read.exit.if.end_crit_edge

tda8261_read.exit.if.end_crit_edge:               ; preds = %tda8261_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %tda8261_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end:                                           ; preds = %tda8261_read.exit.if.end_crit_edge, %tda8261_read.exit.thread
  %15 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %result, align 1
  %17 = and i8 %16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body3:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda8261_get_status.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda8261_get_status, %if.then9)) #6
          to label %do.end12 [label %if.then9], !srcloc !72

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tda8261_get_status.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17) #6
  br label %do.end12

do.end12:                                         ; preds = %if.then9, %do.body3
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 182, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tda8261_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tda8261_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_tda8261_attach, !7, !"__ksymtab_tda8261_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 191, i32 1}
!8 = !{ptr @__UNIQUE_ID_author295, !9, !"__UNIQUE_ID_author295", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 193, i32 1}
!10 = !{ptr @__UNIQUE_ID_description296, !11, !"__UNIQUE_ID_description296", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 194, i32 1}
!12 = !{ptr @__UNIQUE_ID_file297, !13, !"__UNIQUE_ID_file297", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 195, i32 1}
!14 = !{ptr @__UNIQUE_ID_license298, !13, !"__UNIQUE_ID_license298", i1 false, i1 false}
!15 = !{ptr @tda8261_ops, !16, !"tda8261_ops", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 151, i32 35}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 99, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tda8261_set_params._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @tda8261_set_params._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 104, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tda8261_set_params.__UNIQUE_ID_ddebug291, !23, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 121, i32 3}
!28 = !{ptr @tda8261_set_params._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tda8261_set_params._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 125, i32 2}
!32 = !{ptr @tda8261_set_params.__UNIQUE_ID_ddebug292, !31, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!33 = !{ptr @tda8261_set_params._entry.11, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 129, i32 3}
!35 = !{ptr @tda8261_set_params._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 133, i32 3}
!38 = !{ptr @tda8261_set_params.__UNIQUE_ID_ddebug293, !37, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 137, i32 3}
!41 = !{ptr @tda8261_set_params.__UNIQUE_ID_ddebug294, !40, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!42 = !{ptr @ref_div, !43, !"ref_div", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 72, i32 18}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 46, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tda8261_write._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @tda8261_write._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 60, i32 3}
!51 = !{ptr @tda8261_get_status._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tda8261_get_status._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 64, i32 3}
!55 = !{ptr @tda8261_get_status.__UNIQUE_ID_ddebug290, !54, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 34, i32 3}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tda8261_read._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @tda8261_read._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @div_tab, !62, !"div_tab", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/tda8261.c", i32 71, i32 18}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148694299, i64 2148694304, i64 2148694317, i64 2148694361, i64 2148694395, i64 2148694416}
