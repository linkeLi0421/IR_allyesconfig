; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda665x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda665x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tda665x_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda665x_attach\09\09\09\09"
module asm "\09.long\09__crc_tda665x_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda665x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda665x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda665x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tda665x_state = type { ptr, ptr, ptr, i32, i32 }
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
%struct.tda665x_config = type { [128 x i8], i8, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@tda665x_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @tda665x_release, ptr null, ptr null, ptr null, ptr null, ptr @tda665x_set_params, ptr null, ptr null, ptr @tda665x_get_frequency, ptr null, ptr null, ptr @tda665x_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tda665x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: Attaching TDA665x (%s) tuner\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda665x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/tda665x.c\00", [58 x i8] zeroinitializer }, align 32
@tda665x_attach._entry_ptr = internal global ptr @tda665x_attach._entry, section ".printk_index", align 4
@__kstrtab_tda665x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda665x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda665x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda665x_attach to i32), ptr @__kstrtab_tda665x_attach, ptr @__kstrtabns_tda665x_attach }, section "___ksymtab+tda665x_attach", align 4
@__UNIQUE_ID_description290 = internal constant [35 x i8] c"tda665x.description=TDA665x driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [28 x i8] c"tda665x.author=Manu Abraham\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"tda665x.file=drivers/media/dvb-frontends/tda665x\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"tda665x.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda665x_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: Frequency beyond limits, frequency=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda665x_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@tda665x_set_frequency._entry_ptr = internal global ptr @tda665x_set_frequency._entry, section ".printk_index", align 4
@tda665x_set_frequency._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Waiting to Phase LOCK\0A\00", [35 x i8] zeroinitializer }, align 32
@tda665x_set_frequency._entry_ptr.7 = internal global ptr @tda665x_set_frequency._entry.5, section ".printk_index", align 4
@tda665x_set_frequency._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Tuner Phase locked: status=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@tda665x_set_frequency._entry_ptr.10 = internal global ptr @tda665x_set_frequency._entry.8, section ".printk_index", align 4
@tda665x_set_frequency._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: No Phase lock: status=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@tda665x_set_frequency._entry_ptr.13 = internal global ptr @tda665x_set_frequency._entry.11, section ".printk_index", align 4
@tda665x_set_frequency._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: I/O Error\0A\00", [47 x i8] zeroinitializer }, align 32
@tda665x_set_frequency._entry_ptr.16 = internal global ptr @tda665x_set_frequency._entry.14, section ".printk_index", align 4
@tda665x_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: I/O Error err=<%d>\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda665x_write\00", [18 x i8] zeroinitializer }, align 32
@tda665x_write._entry_ptr = internal global ptr @tda665x_write._entry, section ".printk_index", align 4
@tda665x_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Tuner Phase Locked\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda665x_get_status\00", [45 x i8] zeroinitializer }, align 32
@tda665x_get_status._entry_ptr = internal global ptr @tda665x_get_status._entry, section ".printk_index", align 4
@tda665x_get_status._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.20, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tda665x_get_status._entry_ptr.22 = internal global ptr @tda665x_get_status._entry.21, section ".printk_index", align 4
@tda665x_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.23, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tda665x_read\00", [19 x i8] zeroinitializer }, align 32
@tda665x_read._entry_ptr = internal global ptr @tda665x_read._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"tda665x_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 196, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 226, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 100, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 157, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 165, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 169, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 175, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 53, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 79, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 85, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [41 x i8] c"../drivers/media/dvb-frontends/tda665x.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 37, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_tda665x_attach, ptr @tda665x_attach._entry, ptr @tda665x_attach._entry_ptr, ptr @tda665x_get_status._entry, ptr @tda665x_get_status._entry.21, ptr @tda665x_get_status._entry_ptr, ptr @tda665x_get_status._entry_ptr.22, ptr @tda665x_read._entry, ptr @tda665x_read._entry_ptr, ptr @tda665x_set_frequency._entry, ptr @tda665x_set_frequency._entry.11, ptr @tda665x_set_frequency._entry.14, ptr @tda665x_set_frequency._entry.5, ptr @tda665x_set_frequency._entry.8, ptr @tda665x_set_frequency._entry_ptr, ptr @tda665x_set_frequency._entry_ptr.10, ptr @tda665x_set_frequency._entry_ptr.13, ptr @tda665x_set_frequency._entry_ptr.16, ptr @tda665x_set_frequency._entry_ptr.7, ptr @tda665x_write._entry, ptr @tda665x_write._entry_ptr, ptr @tda665x_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_set_frequency._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_set_frequency._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_set_frequency._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_set_frequency._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_get_status._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda665x_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda665x_attach(ptr noundef %fe, ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %config1 = getelementptr inbounds %struct.tda665x_state, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 8
  %i2c2 = getelementptr inbounds %struct.tda665x_state, ptr %call7.i.i, i32 0, i32 1
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
  %5 = call ptr @memcpy(ptr %tuner_ops, ptr @tda665x_ops, i32 220)
  %6 = call ptr @memcpy(ptr %tuner_ops, ptr %config, i32 128)
  %frequency_min = getelementptr inbounds %struct.tda665x_config, ptr %config, i32 0, i32 2
  %7 = ptrtoint ptr %frequency_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frequency_min, align 4
  %frequency_min_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 0, i32 1
  %9 = ptrtoint ptr %frequency_min_hz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %frequency_min_hz, align 4
  %frequency_max = getelementptr inbounds %struct.tda665x_config, ptr %config, i32 0, i32 3
  %10 = ptrtoint ptr %frequency_max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frequency_max, align 4
  %frequency_max_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 0, i32 2
  %12 = ptrtoint ptr %frequency_max_hz to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %frequency_max_hz, align 4
  %frequency_offst = getelementptr inbounds %struct.tda665x_config, ptr %config, i32 0, i32 4
  %13 = ptrtoint ptr %frequency_offst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frequency_offst, align 4
  %frequency_step_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 0, i32 3
  %15 = ptrtoint ptr %frequency_step_hz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %frequency_step_hz, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %tuner_ops) #10
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
define internal void @tda665x_release(ptr nocapture noundef %fe) #0 align 64 {
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
define internal i32 @tda665x_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %status.i = alloca i32, align 4
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv.i, align 4
  %config1.i = getelementptr inbounds %struct.tda665x_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #6
  %6 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %status.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %7 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %9 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %frequency_max.i = getelementptr inbounds %struct.tda665x_config, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %frequency_max.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frequency_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp.i = icmp ugt i32 %11, %1
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %lor.lhs.false.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %frequency_min.i = getelementptr inbounds %struct.tda665x_config, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %frequency_min.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frequency_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %1)
  %cmp2.i = icmp ult i32 %13, %1
  br i1 %cmp2.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %1) #10
  br label %tda665x_set_frequency.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %frequency_offst.i = getelementptr inbounds %struct.tda665x_config, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %frequency_offst.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frequency_offst.i, align 4
  %add.i = add i32 %15, %1
  %ref_multiplier.i = getelementptr inbounds %struct.tda665x_config, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %ref_multiplier.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ref_multiplier.i, align 4
  %mul.i = mul i32 %add.i, %17
  %ref_divider.i = getelementptr inbounds %struct.tda665x_config, ptr %5, i32 0, i32 6
  %18 = ptrtoint ptr %ref_divider.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ref_divider.i, align 4
  %shr.i = lshr i32 %19, 1
  %add3.i = add i32 %shr.i, %mul.i
  %div.i = udiv i32 %add3.i, %19
  %and.i = lshr i32 %div.i, 8
  %20 = trunc i32 %and.i to i8
  %conv.i = and i8 %20, 127
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %buf.i, align 1
  %conv7.i = trunc i32 %div.i to i8
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv7.i, ptr %7, align 1
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -62, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 153000000, i32 %1)
  %cmp14.i = icmp ult i32 %1, 153000000
  br i1 %cmp14.i, label %if.end.i.if.end104.i_crit_edge, label %if.else48.i

if.end.i.if.end104.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.i

if.else48.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 438000000, i32 %1)
  %cmp49.i = icmp ult i32 %1, 438000000
  br i1 %cmp49.i, label %if.then51.i, label %if.else77.i

if.then51.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000000, i32 %1)
  %cmp64.i = icmp ult i32 %1, 300000000
  %spec.select = select i1 %cmp64.i, i8 98, i8 -126
  br label %if.end104.i

if.else77.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %1)
  %cmp82.i = icmp ult i32 %1, 470000000
  %spec.select4.i = select i1 %cmp82.i, i8 100, i8 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 526000000, i32 %1)
  %cmp90.i = icmp ult i32 %1, 526000000
  br i1 %cmp90.i, label %if.then92.i, label %if.else97.i

if.then92.i:                                      ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = or i8 %spec.select4.i, -128
  br label %if.end104.i

if.else97.i:                                      ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = or i8 %spec.select4.i, -96
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.else97.i, %if.then92.i, %if.then51.i, %if.end.i.if.end104.i_crit_edge
  %.sink.i = phi i8 [ %25, %if.else97.i ], [ %24, %if.then92.i ], [ -31, %if.end.i.if.end104.i_crit_edge ], [ %spec.select, %if.then51.i ]
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink.i, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %27 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 393215, ptr %27, align 4
  %addr2.i.i = getelementptr inbounds %struct.tda665x_config, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %addr2.i.i, align 4
  %conv.i.i = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %i2c.i.i = getelementptr inbounds %struct.tda665x_state, ptr %3, i32 0, i32 1
  %34 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %tda665x_write.exit.thread.i, label %tda665x_write.exit.i

tda665x_write.exit.thread.i:                      ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  br label %do.end112.i

tda665x_write.exit.i:                             ; preds = %if.end104.i
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp106.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp106.i, label %tda665x_write.exit.i.do.end138.i_crit_edge, label %tda665x_write.exit.i.do.end112.i_crit_edge

tda665x_write.exit.i.do.end112.i_crit_edge:       ; preds = %tda665x_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end112.i

tda665x_write.exit.i.do.end138.i_crit_edge:       ; preds = %tda665x_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end138.i

do.end112.i:                                      ; preds = %tda665x_write.exit.i.do.end112.i_crit_edge, %tda665x_write.exit.thread.i
  %call114.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #10
  call void @msleep(i32 noundef 20) #6
  %call115.i = call i32 @tda665x_get_status(ptr noundef %fe, ptr noundef nonnull %status.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %cmp116.i = icmp slt i32 %call115.i, 0
  br i1 %cmp116.i, label %do.end112.i.do.end138.i_crit_edge, label %if.end119.i

do.end112.i.do.end138.i_crit_edge:                ; preds = %do.end112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end138.i

if.end119.i:                                      ; preds = %do.end112.i
  %36 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp120.i = icmp eq i32 %37, 1
  br i1 %cmp120.i, label %do.end125.i, label %do.end132.i

do.end125.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef 1) #10
  %frequency128.i = getelementptr inbounds %struct.tda665x_state, ptr %3, i32 0, i32 3
  %38 = ptrtoint ptr %frequency128.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %1, ptr %frequency128.i, align 4
  br label %tda665x_set_frequency.exit

do.end132.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  %call134.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4, i32 noundef %37) #10
  br label %tda665x_set_frequency.exit

do.end138.i:                                      ; preds = %do.end112.i.do.end138.i_crit_edge, %tda665x_write.exit.i.do.end138.i_crit_edge
  %call140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4) #10
  br label %tda665x_set_frequency.exit

tda665x_set_frequency.exit:                       ; preds = %do.end138.i, %do.end132.i, %do.end125.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda665x_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency1 = getelementptr inbounds %struct.tda665x_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency1, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda665x_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
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
  %config1.i = getelementptr inbounds %struct.tda665x_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config1.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %addr2.i = getelementptr inbounds %struct.tda665x_config, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr2.i, align 4
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
  %i2c.i = getelementptr inbounds %struct.tda665x_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %tda665x_read.exit.thread, label %tda665x_read.exit

tda665x_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %if.end

tda665x_read.exit:                                ; preds = %entry
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.23, i32 noundef %call.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end6, label %tda665x_read.exit.if.end_crit_edge

tda665x_read.exit.if.end_crit_edge:               ; preds = %tda665x_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %tda665x_read.exit.if.end_crit_edge, %tda665x_read.exit.thread
  %15 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %result, align 1
  %17 = and i8 %16, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #10
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %status, align 4
  br label %cleanup

do.end6:                                          ; preds = %tda665x_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.20) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %do.end, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 226, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tda665x_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tda665x_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_tda665x_attach, !7, !"__ksymtab_tda665x_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 230, i32 1}
!8 = !{ptr @__UNIQUE_ID_description290, !9, !"__UNIQUE_ID_description290", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 232, i32 1}
!10 = !{ptr @__UNIQUE_ID_author291, !11, !"__UNIQUE_ID_author291", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 233, i32 1}
!12 = !{ptr @__UNIQUE_ID_file292, !13, !"__UNIQUE_ID_file292", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 234, i32 1}
!14 = !{ptr @__UNIQUE_ID_license293, !13, !"__UNIQUE_ID_license293", i1 false, i1 false}
!15 = !{ptr @tda665x_ops, !16, !"tda665x_ops", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 196, i32 35}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 100, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tda665x_set_frequency._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @tda665x_set_frequency._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 157, i32 2}
!24 = !{ptr @tda665x_set_frequency._entry.5, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tda665x_set_frequency._entry_ptr.7, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 165, i32 3}
!28 = !{ptr @tda665x_set_frequency._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tda665x_set_frequency._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 169, i32 3}
!32 = !{ptr @tda665x_set_frequency._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tda665x_set_frequency._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 175, i32 2}
!36 = !{ptr @tda665x_set_frequency._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tda665x_set_frequency._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 53, i32 2}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tda665x_write._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @tda665x_write._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 79, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @tda665x_get_status._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @tda665x_get_status._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @tda665x_get_status._entry.21, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 85, i32 2}
!50 = !{ptr @tda665x_get_status._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/tda665x.c", i32 37, i32 2}
!53 = !{ptr @tda665x_read._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tda665x_read._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
