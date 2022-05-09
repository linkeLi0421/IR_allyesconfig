; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tda18218.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18218.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tda18218_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda18218_attach\09\09\09\09"
module asm "\09.long\09__crc_tda18218_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda18218_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda18218_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda18218_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda18218_priv = type { ptr, ptr, i32, [59 x i8] }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tda18218_config = type { i8, i8, i8 }

@tda18218_attach.def_regs = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\C0\88\00\8E\03\00\00\D0\00@\00\00\07\FF\84\09\00\13\00\00\01\84\09\F0\19\0A\8Ei\98\01\00X\10@\8C\00\0CH\85\C9\A7\00\00\000\81\80\009\00\8A\00\00\00\00\00\00\F6\F6", [37 x i8] zeroinitializer }, align 32
@tda18218_attach.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda18218\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18218_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/tuners/tda18218.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: chip id=%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@tda18218_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 317, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: NXP TDA18218HN successfully identified\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tda18218_attach._entry_ptr = internal global ptr @tda18218_attach._entry, section ".printk_index", align 4
@tda18218_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"NXP TDA18218\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 864000000, i32 1000, i32 0, i32 0, i32 0 }, ptr @tda18218_release, ptr @tda18218_init, ptr @tda18218_sleep, ptr null, ptr null, ptr @tda18218_set_params, ptr null, ptr null, ptr null, ptr null, ptr @tda18218_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tda18218_attach.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: failed=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_tda18218_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda18218_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda18218_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda18218_attach to i32), ptr @__kstrtab_tda18218_attach, ptr @__kstrtabns_tda18218_attach }, section "___ksymtab+tda18218_attach", align 4
@__UNIQUE_ID_description296 = internal constant [57 x i8] c"tda18218.description=NXP TDA18218HN silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [47 x i8] c"tda18218.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [44 x i8] c"tda18218.file=drivers/media/tuners/tda18218\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [21 x i8] c"tda18218.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@tda18218_rd_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 81, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: i2c wr reg=%04x: len=%d is too big!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda18218_rd_regs\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tda18218_rd_regs._entry_ptr = internal global ptr @tda18218_rd_regs._entry, section ".printk_index", align 4
@tda18218_rd_regs._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 91, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: i2c rd failed=%d reg=%02x len=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@tda18218_rd_regs._entry_ptr.14 = internal global ptr @tda18218_rd_regs._entry.12, section ".printk_index", align 4
@tda18218_init.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.7, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda18218_init\00", [18 x i8] zeroinitializer }, align 32
@tda18218_wr_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.16, ptr @.str.2, i32 29, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda18218_wr_regs\00", [47 x i8] zeroinitializer }, align 32
@tda18218_wr_regs._entry_ptr = internal global ptr @tda18218_wr_regs._entry, section ".printk_index", align 4
@tda18218_wr_regs._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 52, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: i2c wr failed=%d reg=%02x len=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@tda18218_wr_regs._entry_ptr.19 = internal global ptr @tda18218_wr_regs._entry.17, section ".printk_index", align 4
@tda18218_sleep.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.7, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda18218_sleep\00", [17 x i8] zeroinitializer }, align 32
@__const.tda18218_set_params.agc = private unnamed_addr constant [14 x [2 x i8]] [[2 x i8] c" `", [2 x i8] c"#\02", [2 x i8] c" \A0", [2 x i8] c"#\09", [2 x i8] c" \E0", [2 x i8] c"#\0C", [2 x i8] c" @", [2 x i8] c"#\01", [2 x i8] c" \80", [2 x i8] c"#\08", [2 x i8] c" \C0", [2 x i8] c"#\0B", [2 x i8] c"$\1C", [2 x i8] c"$\0C"], align 1
@tda18218_set_params.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.7, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda18218_set_params\00", [44 x i8] zeroinitializer }, align 32
@tda18218_get_if_frequency.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tda18218_get_if_frequency\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: if_frequency=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"def_regs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 286, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 309, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 315, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"tda18218_tuner_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 261, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 332, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 69, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 79, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 90, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 250, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 27, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 51, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 229, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 201, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [35 x i8] c"../drivers/media/tuners/tda18218.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 210, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__ksymtab_tda18218_attach, ptr @tda18218_attach._entry, ptr @tda18218_attach._entry_ptr, ptr @tda18218_rd_regs._entry, ptr @tda18218_rd_regs._entry.12, ptr @tda18218_rd_regs._entry_ptr, ptr @tda18218_rd_regs._entry_ptr.14, ptr @tda18218_wr_regs._entry, ptr @tda18218_wr_regs._entry.17, ptr @tda18218_wr_regs._entry_ptr, ptr @tda18218_wr_regs._entry_ptr.19, ptr @tda18218_attach.def_regs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tda18218_tuner_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18218_attach.def_regs to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18218_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18218_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18218_rd_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18218_rd_regs._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18218_wr_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18218_wr_regs._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda18218_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef %cfg) #0 align 64 {
entry:
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cfg, ptr %call7.i.i, align 8
  %i2c2 = getelementptr inbounds %struct.tda18218_priv, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %i2c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c2, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %3 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 %5(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #5
  %6 = call ptr @memset(ptr %buf.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #5
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv.i.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %7, align 4
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.8, ptr %buf2.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %17 = load i8, ptr %10, align 1
  %conv6.i.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv6.i.i, ptr %arrayinit.element.i.i, align 4
  %flags7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags7.i.i, align 2
  %len8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len8.i.i, align 4
  %buf12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i.i, ptr %buf12.i.i, align 4
  %22 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c2, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp21.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp21.i.i, label %do.body, label %tda18218_rd_reg.exit

tda18218_rd_reg.exit:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c2, align 4
  %dev29.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev29.i.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, i32 noundef %call.i.i, i32 noundef 0, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  br label %if.then24

do.body:                                          ; preds = %if.end7
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18218_attach.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18218_attach, %if.then15)) #5
          to label %lor.lhs.false [label %if.then15], !srcloc !70

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c2, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  %conv = zext i8 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18218_attach.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv) #5
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15, %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %27)
  %cmp22.not = icmp eq i8 %27, -64
  br i1 %cmp22.not, label %do.end28, label %lor.lhs.false.if.then24_crit_edge

lor.lhs.false.if.then24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false.if.then24_crit_edge, %tda18218_rd_reg.exit
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

do.end28:                                         ; preds = %lor.lhs.false
  %30 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c2, align 4
  %dev30 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str) #9
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %32 = call ptr @memcpy(ptr %tuner_ops, ptr @tda18218_tuner_ops, i32 220)
  %regs = getelementptr inbounds %struct.tda18218_priv, ptr %call7.i.i, i32 0, i32 3
  %33 = call ptr @memcpy(ptr %regs, ptr @tda18218_attach.def_regs, i32 59)
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  %loop_through = getelementptr inbounds %struct.tda18218_config, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %loop_through to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %loop_through, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool33.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool33.not, label %do.end28.if.end38_crit_edge, label %if.then34

do.end28.if.end38_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then34:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.tda18218_priv, ptr %call7.i.i, i32 0, i32 3, i32 23
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -80, ptr %arrayidx, align 1
  %arrayidx37 = getelementptr %struct.tda18218_priv, ptr %call7.i.i, i32 0, i32 3, i32 24
  %38 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 89, ptr %arrayidx37, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %do.end28.if.end38_crit_edge
  %arrayidx40 = getelementptr %struct.tda18218_priv, ptr %call7.i.i, i32 0, i32 3, i32 23
  %39 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx40, align 1
  %41 = or i8 %40, 1
  %call43 = call fastcc i32 @tda18218_wr_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 23, i8 noundef zeroext %41)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end38.if.end64_crit_edge, label %do.body46

if.end38.if.end64_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.body46:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18218_attach.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18218_attach, %if.then58)) #5
          to label %if.end64 [label %if.then58], !srcloc !70

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %i2c2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c2, align 4
  %dev60 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18218_attach.__UNIQUE_ID_ddebug295, ptr noundef %dev60, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %call43) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then58, %do.body46, %if.end38.if.end64_crit_edge
  %44 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool67.not = icmp eq ptr %45, null
  br i1 %tobool67.not, label %if.end64.cleanup_crit_edge, label %if.then68

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %call71 = call i32 %45(ptr noundef %fe, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end64.cleanup_crit_edge, %if.then24, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then24 ], [ null, %entry.cleanup_crit_edge ], [ %fe, %if.then68 ], [ %fe, %if.end64.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda18218_wr_reg(ptr nocapture noundef readonly %priv, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [64 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %val.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #5
  %1 = call ptr @memset(ptr %buf.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65535, ptr %2, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
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
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf.i, ptr %buf2.i, align 4
  %.pre.i = zext i8 %reg to i32
  %add25.i = add nuw nsw i32 %.pre.i, 1
  %arrayidx29.i = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 1
  %i2c33.i = getelementptr inbounds %struct.tda18218_priv, ptr %priv, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %remaining.086.i = phi i32 [ 1, %entry ], [ %sub43.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %i2c_wr_max.i = getelementptr inbounds %struct.tda18218_config, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %i2c_wr_max.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_wr_max.i, align 1
  %conv11.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.086.i, i32 %conv11.i)
  %cmp12.not.i = icmp ult i32 %remaining.086.i, %conv11.i
  %sub.i = add nsw i32 %conv11.i, -1
  %spec.select.i = select i1 %cmp12.not.i, i32 %remaining.086.i, i32 %sub.i
  %15 = trunc i32 %spec.select.i to i16
  %conv21.i = add i16 %15, 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv21.i, ptr %2, align 4
  %sub26.i = sub i32 %add25.i, %remaining.086.i
  %conv27.i = trunc i32 %sub26.i to i8
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv27.i, ptr %buf.i, align 1
  %sub31.i = sub nsw i32 1, %remaining.086.i
  %arrayidx32.i = getelementptr i8, ptr %val.addr, i32 %sub31.i
  %18 = call ptr @memcpy(ptr %arrayidx29.i, ptr %arrayidx32.i, i32 %spec.select.i)
  %19 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c33.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp35.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp35.not.i, label %for.inc.i, label %do.end49.i

for.inc.i:                                        ; preds = %for.body.i
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %i2c_wr_max40.i = getelementptr inbounds %struct.tda18218_config, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %i2c_wr_max40.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i2c_wr_max40.i, align 1
  %conv41.i = zext i8 %24 to i32
  %sub42.neg.i = add nuw i32 %remaining.086.i, 1
  %sub43.i = sub i32 %sub42.neg.i, %conv41.i
  %cmp8.i = icmp sgt i32 %sub43.i, 0
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tda18218_wr_regs.exit_crit_edge

for.inc.i.tda18218_wr_regs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda18218_wr_regs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end49.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c33.i, align 4
  %dev51.i = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef %call.i, i32 noundef %.pre.i, i32 noundef 1) #9
  br label %tda18218_wr_regs.exit

tda18218_wr_regs.exit:                            ; preds = %do.end49.i, %for.inc.i.tda18218_wr_regs.exit_crit_edge
  %ret.2.i = phi i32 [ -121, %do.end49.i ], [ 0, %for.inc.i.tda18218_wr_regs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #5
  ret i32 %ret.2.i
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda18218_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18218_init(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i = alloca [64 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.tda18218_priv, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #5
  %4 = call ptr @memset(ptr %buf.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65535, ptr %5, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
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
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf2.i, align 4
  %arrayidx29.i = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 1
  %i2c33.i = getelementptr inbounds %struct.tda18218_priv, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %remaining.086.i = phi i32 [ 59, %if.end ], [ %sub43.i, %for.inc.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %i2c_wr_max.i = getelementptr inbounds %struct.tda18218_config, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %i2c_wr_max.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_wr_max.i, align 1
  %conv11.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.086.i, i32 %conv11.i)
  %cmp12.not.i = icmp ult i32 %remaining.086.i, %conv11.i
  %sub.i = add nsw i32 %conv11.i, -1
  %spec.select.i = select i1 %cmp12.not.i, i32 %remaining.086.i, i32 %sub.i
  %18 = trunc i32 %spec.select.i to i16
  %conv21.i = add i16 %18, 1
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv21.i, ptr %5, align 4
  %sub26.i = sub nsw i32 59, %remaining.086.i
  %conv27.i = trunc i32 %sub26.i to i8
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv27.i, ptr %buf.i, align 1
  %arrayidx32.i = getelementptr i8, ptr %regs, i32 %sub26.i
  %21 = call ptr @memcpy(ptr %arrayidx29.i, ptr %arrayidx32.i, i32 %spec.select.i)
  %22 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c33.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp35.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp35.not.i, label %for.inc.i, label %do.end49.i

for.inc.i:                                        ; preds = %for.body.i
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %i2c_wr_max40.i = getelementptr inbounds %struct.tda18218_config, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %i2c_wr_max40.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i2c_wr_max40.i, align 1
  %conv41.i = zext i8 %27 to i32
  %sub42.neg.i = add nuw i32 %remaining.086.i, 1
  %sub43.i = sub i32 %sub42.neg.i, %conv41.i
  %cmp8.i = icmp sgt i32 %sub43.i, 0
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tda18218_wr_regs.exit_crit_edge

for.inc.i.tda18218_wr_regs.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda18218_wr_regs.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.end49.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c33.i, align 4
  %dev51.i = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef %call.i, i32 noundef 0, i32 noundef 59) #9
  br label %tda18218_wr_regs.exit

tda18218_wr_regs.exit:                            ; preds = %do.end49.i, %for.inc.i.tda18218_wr_regs.exit_crit_edge
  %ret.2.i = phi i32 [ -121, %do.end49.i ], [ 0, %for.inc.i.tda18218_wr_regs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #5
  %30 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool6.not = icmp eq ptr %31, null
  br i1 %tobool6.not, label %tda18218_wr_regs.exit.if.end11_crit_edge, label %if.then7

tda18218_wr_regs.exit.if.end11_crit_edge:         ; preds = %tda18218_wr_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then7:                                         ; preds = %tda18218_wr_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = call i32 %31(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %tda18218_wr_regs.exit.if.end11_crit_edge
  br i1 %cmp35.not.i, label %if.end11.if.end20_crit_edge, label %do.body

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18218_init.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18218_init, %if.then18)) #5
          to label %if.end20 [label %if.then18], !srcloc !70

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c33.i, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18218_init.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.15, i32 noundef %ret.2.i) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.body, %if.end11.if.end20_crit_edge
  ret i32 %ret.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18218_sleep(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i.i = alloca [64 x i8], align 1
  %msg.i.i = alloca [1 x %struct.i2c_msg], align 4
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.tda18218_priv, ptr %1, i32 0, i32 3, i32 23
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = or i8 %5, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %7 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %val.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i) #5
  %8 = call ptr @memset(ptr %buf.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #5
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 65535, ptr %9, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv.i.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i.i, align 2
  %buf2.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i.i, ptr %buf2.i.i, align 4
  %arrayidx29.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i, i32 0, i32 1
  %i2c33.i.i = getelementptr inbounds %struct.tda18218_priv, ptr %1, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end
  %remaining.086.i.i = phi i32 [ 1, %if.end ], [ %sub43.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %i2c_wr_max.i.i = getelementptr inbounds %struct.tda18218_config, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %i2c_wr_max.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %i2c_wr_max.i.i, align 1
  %conv11.i.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.086.i.i, i32 %conv11.i.i)
  %cmp12.not.i.i = icmp ult i32 %remaining.086.i.i, %conv11.i.i
  %sub.i.i = add nsw i32 %conv11.i.i, -1
  %spec.select.i.i = select i1 %cmp12.not.i.i, i32 %remaining.086.i.i, i32 %sub.i.i
  %22 = trunc i32 %spec.select.i.i to i16
  %conv21.i.i = add i16 %22, 1
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv21.i.i, ptr %9, align 4
  %24 = trunc i32 %remaining.086.i.i to i8
  %conv27.i.i = sub i8 24, %24
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv27.i.i, ptr %buf.i.i, align 1
  %sub31.i.i = sub nsw i32 1, %remaining.086.i.i
  %arrayidx32.i.i = getelementptr i8, ptr %val.addr.i, i32 %sub31.i.i
  %26 = call ptr @memcpy(ptr %arrayidx29.i.i, ptr %arrayidx32.i.i, i32 %spec.select.i.i)
  %27 = ptrtoint ptr %i2c33.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c33.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp35.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp35.not.i.i, label %for.inc.i.i, label %do.end49.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %i2c_wr_max40.i.i = getelementptr inbounds %struct.tda18218_config, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %i2c_wr_max40.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %i2c_wr_max40.i.i, align 1
  %conv41.i.i = zext i8 %32 to i32
  %sub42.neg.i.i = add nuw i32 %remaining.086.i.i, 1
  %sub43.i.i = sub i32 %sub42.neg.i.i, %conv41.i.i
  %cmp8.i.i = icmp sgt i32 %sub43.i.i, 0
  br i1 %cmp8.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.tda18218_wr_reg.exit_crit_edge

for.inc.i.i.tda18218_wr_reg.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tda18218_wr_reg.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

do.end49.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %i2c33.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c33.i.i, align 4
  %dev51.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef %call.i.i, i32 noundef 23, i32 noundef 1) #9
  br label %tda18218_wr_reg.exit

tda18218_wr_reg.exit:                             ; preds = %do.end49.i.i, %for.inc.i.i.tda18218_wr_reg.exit_crit_edge
  %ret.2.i.i = phi i32 [ -121, %do.end49.i.i ], [ 0, %for.inc.i.i.tda18218_wr_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %35 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool7.not = icmp eq ptr %36, null
  br i1 %tobool7.not, label %tda18218_wr_reg.exit.if.end12_crit_edge, label %if.then8

tda18218_wr_reg.exit.if.end12_crit_edge:          ; preds = %tda18218_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8:                                         ; preds = %tda18218_wr_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = call i32 %36(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %tda18218_wr_reg.exit.if.end12_crit_edge
  br i1 %cmp35.not.i.i, label %if.end12.if.end21_crit_edge, label %do.body

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18218_sleep.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18218_sleep, %if.then19)) #5
          to label %if.end21 [label %if.then19], !srcloc !70

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %i2c33.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c33.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18218_sleep.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.20, i32 noundef %ret.2.i.i) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.body, %if.end12.if.end21_crit_edge
  ret i32 %ret.2.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18218_set_params(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i219 = alloca [64 x i8], align 1
  %msg.i220 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i186 = alloca [64 x i8], align 1
  %msg.i187 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i153 = alloca [64 x i8], align 1
  %msg.i154 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i = alloca [64 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #5
  %4 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %6 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %7(ptr noundef %fe, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %3)
  %cmp = icmp ult i32 %3, 6000001
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %if_frequency = getelementptr inbounds %struct.tda18218_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3000000, ptr %if_frequency, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %3)
  %cmp4 = icmp ult i32 %3, 7000001
  %if_frequency6 = getelementptr inbounds %struct.tda18218_priv, ptr %1, i32 0, i32 2
  br i1 %cmp4, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %if_frequency6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3500000, ptr %if_frequency6, align 4
  br label %if.end10

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %if_frequency6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4000000, ptr %if_frequency6, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else7, %if.then5, %if.then3
  %LP_Fc.0 = phi i8 [ 0, %if.then3 ], [ 1, %if.then5 ], [ 2, %if.else7 ]
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %if_frequency11 = getelementptr inbounds %struct.tda18218_priv, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %if_frequency11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %if_frequency11, align 4
  %add = add i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 188000000, i32 %add)
  %cmp12 = icmp ult i32 %add, 188000000
  br i1 %cmp12, label %if.end10.if.end23_crit_edge, label %if.else14

if.end10.if.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.else14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 253000000, i32 %add)
  %cmp15 = icmp ult i32 %add, 253000000
  br i1 %cmp15, label %if.else14.if.end23_crit_edge, label %if.else17

if.else14.if.end23_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.else17:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 343000000, i32 %add)
  %cmp18 = icmp ult i32 %add, 343000000
  %. = select i1 %cmp18, i8 5, i8 6
  br label %if.end23

if.end23:                                         ; preds = %if.else17, %if.else14.if.end23_crit_edge, %if.end10.if.end23_crit_edge
  %BP_Filter.0 = phi i8 [ 3, %if.end10.if.end23_crit_edge ], [ 4, %if.else14.if.end23_crit_edge ], [ %., %if.else17 ]
  %arrayidx = getelementptr %struct.tda18218_priv, ptr %1, i32 0, i32 3, i32 26
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 2
  %17 = and i8 %16, -8
  %or = or i8 %17, %BP_Filter.0
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %or, ptr %buf, align 1
  %arrayidx28 = getelementptr %struct.tda18218_priv, ptr %1, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx28, align 1
  %21 = and i8 %20, -4
  %or32 = or i8 %21, %LP_Fc.0
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or32, ptr %4, align 1
  %arrayidx36 = getelementptr %struct.tda18218_priv, ptr %1, i32 0, i32 3, i32 28
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx36, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #5
  %26 = call ptr @memset(ptr %buf.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #5
  %27 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65535, ptr %27, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv.i = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %35 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i, ptr %buf2.i, align 4
  %arrayidx29.i = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 1
  %i2c33.i = getelementptr inbounds %struct.tda18218_priv, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end23
  %remaining.086.i = phi i32 [ 3, %if.end23 ], [ %sub43.i, %for.inc.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %i2c_wr_max.i = getelementptr inbounds %struct.tda18218_config, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %i2c_wr_max.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %i2c_wr_max.i, align 1
  %conv11.i = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.086.i, i32 %conv11.i)
  %cmp12.not.i = icmp ult i32 %remaining.086.i, %conv11.i
  %sub.i = add nsw i32 %conv11.i, -1
  %spec.select.i = select i1 %cmp12.not.i, i32 %remaining.086.i, i32 %sub.i
  %40 = trunc i32 %spec.select.i to i16
  %conv21.i = add i16 %40, 1
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv21.i, ptr %27, align 4
  %42 = trunc i32 %remaining.086.i to i8
  %conv27.i = sub i8 29, %42
  %43 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv27.i, ptr %buf.i, align 1
  %sub31.i = sub nsw i32 3, %remaining.086.i
  %arrayidx32.i = getelementptr i8, ptr %buf, i32 %sub31.i
  %44 = call ptr @memcpy(ptr %arrayidx29.i, ptr %arrayidx32.i, i32 %spec.select.i)
  %45 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %i2c33.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp35.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp35.not.i, label %for.inc.i, label %tda18218_wr_regs.exit

for.inc.i:                                        ; preds = %for.body.i
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %i2c_wr_max40.i = getelementptr inbounds %struct.tda18218_config, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %i2c_wr_max40.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %i2c_wr_max40.i, align 1
  %conv41.i = zext i8 %50 to i32
  %sub42.neg.i = add nuw i32 %remaining.086.i, 1
  %sub43.i = sub i32 %sub42.neg.i, %conv41.i
  %cmp8.i = icmp sgt i32 %sub43.i, 0
  br i1 %cmp8.i, label %for.inc.i.for.body.i_crit_edge, label %if.end41

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

tda18218_wr_regs.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %i2c33.i, align 4
  %dev51.i = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef %call.i, i32 noundef 26, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #5
  br label %error

if.end41:                                         ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #5
  %div = udiv i32 %add, 1000
  %shr = lshr i32 %div, 12
  %conv42 = trunc i32 %shr to i8
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv42, ptr %buf, align 1
  %shr45 = lshr i32 %div, 4
  %conv46 = trunc i32 %shr45 to i8
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv46, ptr %4, align 1
  %arrayidx50 = getelementptr %struct.tda18218_priv, ptr %1, i32 0, i32 3, i32 12
  %55 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx50, align 4
  %57 = and i8 %56, 15
  %div.tr = trunc i32 %div to i8
  %58 = shl i8 %div.tr, 4
  %conv54 = or i8 %57, %58
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv54, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i153) #5
  %60 = call ptr @memset(ptr %buf.i153, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i154) #5
  %61 = getelementptr inbounds i8, ptr %msg.i154, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 65535, ptr %61, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  %conv.i155 = zext i8 %66 to i16
  %67 = ptrtoint ptr %msg.i154 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i155, ptr %msg.i154, align 4
  %flags.i156 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i156 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i156, align 2
  %buf2.i158 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i154, i32 0, i32 3
  %69 = ptrtoint ptr %buf2.i158 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %buf.i153, ptr %buf2.i158, align 4
  %arrayidx29.i159 = getelementptr inbounds [64 x i8], ptr %buf.i153, i32 0, i32 1
  br label %for.body.i174

for.body.i174:                                    ; preds = %for.inc.i180.for.body.i174_crit_edge, %if.end41
  %remaining.086.i161 = phi i32 [ 3, %if.end41 ], [ %sub43.i178, %for.inc.i180.for.body.i174_crit_edge ]
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %i2c_wr_max.i162 = getelementptr inbounds %struct.tda18218_config, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %i2c_wr_max.i162 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %i2c_wr_max.i162, align 1
  %conv11.i163 = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.086.i161, i32 %conv11.i163)
  %cmp12.not.i164 = icmp ult i32 %remaining.086.i161, %conv11.i163
  %sub.i165 = add nsw i32 %conv11.i163, -1
  %spec.select.i166 = select i1 %cmp12.not.i164, i32 %remaining.086.i161, i32 %sub.i165
  %74 = trunc i32 %spec.select.i166 to i16
  %conv21.i167 = add i16 %74, 1
  %75 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv21.i167, ptr %61, align 4
  %76 = trunc i32 %remaining.086.i161 to i8
  %conv27.i169 = sub i8 13, %76
  %77 = ptrtoint ptr %buf.i153 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv27.i169, ptr %buf.i153, align 1
  %sub31.i170 = sub nsw i32 3, %remaining.086.i161
  %arrayidx32.i171 = getelementptr i8, ptr %buf, i32 %sub31.i170
  %78 = call ptr @memcpy(ptr %arrayidx29.i159, ptr %arrayidx32.i171, i32 %spec.select.i166)
  %79 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %i2c33.i, align 4
  %call.i172 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i154, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i172)
  %cmp35.not.i173 = icmp eq i32 %call.i172, 1
  br i1 %cmp35.not.i173, label %for.inc.i180, label %tda18218_wr_regs.exit185

for.inc.i180:                                     ; preds = %for.body.i174
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %i2c_wr_max40.i175 = getelementptr inbounds %struct.tda18218_config, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %i2c_wr_max40.i175 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %i2c_wr_max40.i175, align 1
  %conv41.i176 = zext i8 %84 to i32
  %sub42.neg.i177 = add nuw i32 %remaining.086.i161, 1
  %sub43.i178 = sub i32 %sub42.neg.i177, %conv41.i176
  %cmp8.i179 = icmp sgt i32 %sub43.i178, 0
  br i1 %cmp8.i179, label %for.inc.i180.for.body.i174_crit_edge, label %if.end60

for.inc.i180.for.body.i174_crit_edge:             ; preds = %for.inc.i180
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i174

tda18218_wr_regs.exit185:                         ; preds = %for.body.i174
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c33.i, align 4
  %dev51.i182 = getelementptr inbounds %struct.i2c_adapter, ptr %86, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51.i182, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef %call.i172, i32 noundef 10, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i154) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i153) #5
  br label %error

if.end60:                                         ; preds = %for.inc.i180
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i154) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i153) #5
  %arrayidx62 = getelementptr %struct.tda18218_priv, ptr %1, i32 0, i32 3, i32 15
  %87 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx62, align 1
  %89 = or i8 %88, 64
  %90 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i186) #5
  %91 = call ptr @memset(ptr %buf.i186, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i187) #5
  %92 = getelementptr inbounds i8, ptr %msg.i187, i32 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 65535, ptr %92, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %95, align 1
  %conv.i188 = zext i8 %97 to i16
  %98 = ptrtoint ptr %msg.i187 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv.i188, ptr %msg.i187, align 4
  %flags.i189 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i187, i32 0, i32 1
  %99 = ptrtoint ptr %flags.i189 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %flags.i189, align 2
  %buf2.i191 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i187, i32 0, i32 3
  %100 = ptrtoint ptr %buf2.i191 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %buf.i186, ptr %buf2.i191, align 4
  %arrayidx29.i192 = getelementptr inbounds [64 x i8], ptr %buf.i186, i32 0, i32 1
  br label %for.body.i207

for.body.i207:                                    ; preds = %for.inc.i213.for.body.i207_crit_edge, %if.end60
  %remaining.086.i194 = phi i32 [ 1, %if.end60 ], [ %sub43.i211, %for.inc.i213.for.body.i207_crit_edge ]
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %i2c_wr_max.i195 = getelementptr inbounds %struct.tda18218_config, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %i2c_wr_max.i195 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %i2c_wr_max.i195, align 1
  %conv11.i196 = zext i8 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.086.i194, i32 %conv11.i196)
  %cmp12.not.i197 = icmp ult i32 %remaining.086.i194, %conv11.i196
  %sub.i198 = add nsw i32 %conv11.i196, -1
  %spec.select.i199 = select i1 %cmp12.not.i197, i32 %remaining.086.i194, i32 %sub.i198
  %105 = trunc i32 %spec.select.i199 to i16
  %conv21.i200 = add i16 %105, 1
  %106 = ptrtoint ptr %92 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv21.i200, ptr %92, align 4
  %107 = trunc i32 %remaining.086.i194 to i8
  %conv27.i202 = sub i8 16, %107
  %108 = ptrtoint ptr %buf.i186 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv27.i202, ptr %buf.i186, align 1
  %sub31.i203 = sub nsw i32 1, %remaining.086.i194
  %arrayidx32.i204 = getelementptr i8, ptr %buf, i32 %sub31.i203
  %109 = call ptr @memcpy(ptr %arrayidx29.i192, ptr %arrayidx32.i204, i32 %spec.select.i199)
  %110 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c33.i, align 4
  %call.i205 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i187, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i205)
  %cmp35.not.i206 = icmp eq i32 %call.i205, 1
  br i1 %cmp35.not.i206, label %for.inc.i213, label %tda18218_wr_regs.exit218

for.inc.i213:                                     ; preds = %for.body.i207
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %i2c_wr_max40.i208 = getelementptr inbounds %struct.tda18218_config, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %i2c_wr_max40.i208 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %i2c_wr_max40.i208, align 1
  %conv41.i209 = zext i8 %115 to i32
  %sub42.neg.i210 = add nuw i32 %remaining.086.i194, 1
  %sub43.i211 = sub i32 %sub42.neg.i210, %conv41.i209
  %cmp8.i212 = icmp sgt i32 %sub43.i211, 0
  br i1 %cmp8.i212, label %for.inc.i213.for.body.i207_crit_edge, label %if.end71

for.inc.i213.for.body.i207_crit_edge:             ; preds = %for.inc.i213
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i207

tda18218_wr_regs.exit218:                         ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #7
  %116 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i2c33.i, align 4
  %dev51.i215 = getelementptr inbounds %struct.i2c_adapter, ptr %117, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51.i215, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef %call.i205, i32 noundef 15, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i187) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i186) #5
  br label %error

if.end71:                                         ; preds = %for.inc.i213
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i187) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i186) #5
  %118 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx62, align 1
  %120 = and i8 %119, -65
  %121 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i219) #5
  %122 = call ptr @memset(ptr %buf.i219, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i220) #5
  %123 = getelementptr inbounds i8, ptr %msg.i220, i32 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 65535, ptr %123, align 4
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %126, align 1
  %conv.i221 = zext i8 %128 to i16
  %129 = ptrtoint ptr %msg.i220 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i221, ptr %msg.i220, align 4
  %flags.i222 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i220, i32 0, i32 1
  %130 = ptrtoint ptr %flags.i222 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i222, align 2
  %buf2.i224 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i220, i32 0, i32 3
  %131 = ptrtoint ptr %buf2.i224 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %buf.i219, ptr %buf2.i224, align 4
  %arrayidx29.i225 = getelementptr inbounds [64 x i8], ptr %buf.i219, i32 0, i32 1
  br label %for.body.i240

for.body.i240:                                    ; preds = %for.inc.i246.for.body.i240_crit_edge, %if.end71
  %remaining.086.i227 = phi i32 [ 1, %if.end71 ], [ %sub43.i244, %for.inc.i246.for.body.i240_crit_edge ]
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %i2c_wr_max.i228 = getelementptr inbounds %struct.tda18218_config, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %i2c_wr_max.i228 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %i2c_wr_max.i228, align 1
  %conv11.i229 = zext i8 %135 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remaining.086.i227, i32 %conv11.i229)
  %cmp12.not.i230 = icmp ult i32 %remaining.086.i227, %conv11.i229
  %sub.i231 = add nsw i32 %conv11.i229, -1
  %spec.select.i232 = select i1 %cmp12.not.i230, i32 %remaining.086.i227, i32 %sub.i231
  %136 = trunc i32 %spec.select.i232 to i16
  %conv21.i233 = add i16 %136, 1
  %137 = ptrtoint ptr %123 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv21.i233, ptr %123, align 4
  %138 = trunc i32 %remaining.086.i227 to i8
  %conv27.i235 = sub i8 16, %138
  %139 = ptrtoint ptr %buf.i219 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv27.i235, ptr %buf.i219, align 1
  %sub31.i236 = sub nsw i32 1, %remaining.086.i227
  %arrayidx32.i237 = getelementptr i8, ptr %buf, i32 %sub31.i236
  %140 = call ptr @memcpy(ptr %arrayidx29.i225, ptr %arrayidx32.i237, i32 %spec.select.i232)
  %141 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %i2c33.i, align 4
  %call.i238 = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %msg.i220, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i238)
  %cmp35.not.i239 = icmp eq i32 %call.i238, 1
  br i1 %cmp35.not.i239, label %for.inc.i246, label %tda18218_wr_regs.exit251.thread

for.inc.i246:                                     ; preds = %for.body.i240
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 4
  %i2c_wr_max40.i241 = getelementptr inbounds %struct.tda18218_config, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %i2c_wr_max40.i241 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %i2c_wr_max40.i241, align 1
  %conv41.i242 = zext i8 %146 to i32
  %sub42.neg.i243 = add nuw i32 %remaining.086.i227, 1
  %sub43.i244 = sub i32 %sub42.neg.i243, %conv41.i242
  %cmp8.i245 = icmp sgt i32 %sub43.i244, 0
  br i1 %cmp8.i245, label %for.inc.i246.for.body.i240_crit_edge, label %tda18218_wr_regs.exit251

for.inc.i246.for.body.i240_crit_edge:             ; preds = %for.inc.i246
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i240

tda18218_wr_regs.exit251.thread:                  ; preds = %for.body.i240
  call void @__sanitizer_cov_trace_pc() #7
  %147 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i2c33.i, align 4
  %dev51.i248 = getelementptr inbounds %struct.i2c_adapter, ptr %148, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51.i248, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str, i32 noundef %call.i238, i32 noundef 15, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i220) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i219) #5
  br label %error

tda18218_wr_regs.exit251:                         ; preds = %for.inc.i246
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i220) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i219) #5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 14
  br i1 %exitcond.not, label %for.cond.error_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.error_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %tda18218_wr_regs.exit251
  %indvars.iv = phi i32 [ 0, %tda18218_wr_regs.exit251 ], [ %indvars.iv.next, %for.cond.for.body_crit_edge ]
  %arrayidx86 = getelementptr [14 x [2 x i8]], ptr @__const.tda18218_set_params.agc, i32 0, i32 %indvars.iv
  %149 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx86, align 1
  %arrayidx90 = getelementptr [14 x [2 x i8]], ptr @__const.tda18218_set_params.agc, i32 0, i32 %indvars.iv, i32 1
  %151 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx90, align 1
  %call91 = call fastcc i32 @tda18218_wr_reg(ptr noundef %1, i8 noundef zeroext %150, i8 noundef zeroext %152)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %for.cond, label %for.body.error_crit_edge

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %error

error:                                            ; preds = %for.body.error_crit_edge, %for.cond.error_crit_edge, %tda18218_wr_regs.exit251.thread, %tda18218_wr_regs.exit218, %tda18218_wr_regs.exit185, %tda18218_wr_regs.exit
  %ret.1 = phi i32 [ -121, %tda18218_wr_regs.exit ], [ -121, %tda18218_wr_regs.exit185 ], [ -121, %tda18218_wr_regs.exit218 ], [ -121, %tda18218_wr_regs.exit251.thread ], [ 0, %for.cond.error_crit_edge ], [ %call91, %for.body.error_crit_edge ]
  %153 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool97.not = icmp eq ptr %154, null
  br i1 %tobool97.not, label %error.if.end102_crit_edge, label %if.then98

error.if.end102_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102

if.then98:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #7
  %call101 = call i32 %154(ptr noundef %fe, i32 noundef 0) #5
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %error.if.end102_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool103.not = icmp eq i32 %ret.1, 0
  br i1 %tobool103.not, label %if.end102.if.end111_crit_edge, label %do.body

if.end102.if.end111_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end111

do.body:                                          ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18218_set_params.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18218_set_params, %if.then109)) #5
          to label %if.end111 [label %if.then109], !srcloc !70

if.then109:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %155 = ptrtoint ptr %i2c33.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %i2c33.i, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %156, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18218_set_params.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.21, i32 noundef %ret.1) #5
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %do.body, %if.end102.if.end111_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #5
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18218_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef %frequency) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %if_frequency = getelementptr inbounds %struct.tda18218_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %if_frequency, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18218_get_if_frequency.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18218_get_if_frequency, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %i2c = getelementptr inbounds %struct.tda18218_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frequency, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18218_get_if_frequency.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %8) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !19, !21, !23, !25, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @tda18218_attach.def_regs, !1, !"def_regs", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tda18218.c", i32 286, i32 12}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/tuners/tda18218.c", i32 309, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @tda18218_attach.__UNIQUE_ID_ddebug294, !3, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/tda18218.c", i32 315, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @tda18218_attach._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @tda18218_attach._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/tda18218.c", i32 332, i32 3}
!16 = !{ptr @tda18218_attach.__UNIQUE_ID_ddebug295, !15, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!17 = !{ptr @__ksymtab_tda18218_attach, !18, !"__ksymtab_tda18218_attach", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/tda18218.c", i32 339, i32 1}
!19 = !{ptr @__UNIQUE_ID_description296, !20, !"__UNIQUE_ID_description296", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/tda18218.c", i32 341, i32 1}
!21 = !{ptr @__UNIQUE_ID_author297, !22, !"__UNIQUE_ID_author297", i1 false, i1 false}
!22 = !{!"../drivers/media/tuners/tda18218.c", i32 342, i32 1}
!23 = !{ptr @__UNIQUE_ID_file298, !24, !"__UNIQUE_ID_file298", i1 false, i1 false}
!24 = !{!"../drivers/media/tuners/tda18218.c", i32 343, i32 1}
!25 = !{ptr @__UNIQUE_ID_license299, !24, !"__UNIQUE_ID_license299", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/tda18218.c", i32 69, i32 11}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/tda18218.c", i32 79, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tda18218_rd_regs._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @tda18218_rd_regs._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/tda18218.c", i32 90, i32 3}
!36 = !{ptr @tda18218_rd_regs._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tda18218_rd_regs._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @tda18218_tuner_ops, !39, !"tda18218_tuner_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/tda18218.c", i32 261, i32 35}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/tda18218.c", i32 250, i32 3}
!42 = !{ptr @tda18218_init.__UNIQUE_ID_ddebug293, !41, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/tda18218.c", i32 27, i32 3}
!45 = !{ptr @tda18218_wr_regs._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tda18218_wr_regs._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/tda18218.c", i32 51, i32 3}
!49 = !{ptr @tda18218_wr_regs._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tda18218_wr_regs._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/tda18218.c", i32 229, i32 3}
!53 = !{ptr @tda18218_sleep.__UNIQUE_ID_ddebug292, !52, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/tda18218.c", i32 201, i32 3}
!56 = !{ptr @tda18218_set_params.__UNIQUE_ID_ddebug290, !55, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/tda18218.c", i32 210, i32 2}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @tda18218_get_if_frequency.__UNIQUE_ID_ddebug291, !58, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148274058, i64 2148274063, i64 2148274076, i64 2148274120, i64 2148274154, i64 2148274175}
