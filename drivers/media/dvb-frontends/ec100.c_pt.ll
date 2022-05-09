; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/ec100.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ec100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ec100_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_ec100_attach\09\09\09\09"
module asm "\09.long\09__crc_ec100_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ec100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ec100_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ec100_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ec100_state = type { ptr, %struct.dvb_frontend, %struct.ec100_config, i16 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.ec100_config = type { i8 }
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
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@ec100_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"E3C EC100 DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -2145702226 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @ec100_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ec100_set_frontend, ptr @ec100_get_tune_settings, ptr null, ptr @ec100_read_status, ptr @ec100_read_ber, ptr @ec100_read_signal_strength, ptr @ec100_read_snr, ptr @ec100_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_ec100_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ec100_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ec100_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ec100_attach to i32), ptr @__kstrtab_ec100_attach, ptr @__kstrtabns_ec100_attach }, section "___ksymtab+ec100_attach", align 4
@__UNIQUE_ID_author295 = internal constant [44 x i8] c"ec100.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [53 x i8] c"ec100.description=E3C EC100 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [45 x i8] c"ec100.file=drivers/media/dvb-frontends/ec100\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [18 x i8] c"ec100.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ec100_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 68, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: i2c rd failed=%d reg=%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ec100_read_reg\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/dvb-frontends/ec100.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ec100_read_reg._entry_ptr = internal global ptr @ec100_read_reg._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ec100\00", [26 x i8] zeroinitializer }, align 32
@ec100_set_frontend.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ec100_set_frontend\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: frequency=%d bandwidth_hz=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@ec100_set_frontend.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: failed=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@ec100_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 38, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: i2c wr failed=%d reg=%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ec100_write_reg\00", [16 x i8] zeroinitializer }, align 32
@ec100_write_reg._entry_ptr = internal global ptr @ec100_write_reg._entry, section ".printk_index", align 4
@ec100_read_status.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.2, ptr @.str.8, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ec100_read_status\00", [46 x i8] zeroinitializer }, align 32
@ec100_read_ber.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.8, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ec100_read_ber\00", [17 x i8] zeroinitializer }, align 32
@ec100_read_signal_strength.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.8, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ec100_read_signal_strength\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6000000, i64 7000000]
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"ec100_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 304, i32 38 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 67, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 82, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 149, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 37, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 195, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 227, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [39 x i8] c"../drivers/media/dvb-frontends/ec100.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 247, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__ksymtab_ec100_attach, ptr @ec100_read_reg._entry, ptr @ec100_read_reg._entry_ptr, ptr @ec100_write_reg._entry, ptr @ec100_write_reg._entry_ptr, ptr @ec100_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec100_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec100_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec100_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ec100_attach(ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1048) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %config2 = getelementptr inbounds %struct.ec100_state, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config, align 1
  %5 = ptrtoint ptr %config2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %config2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 51, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %conv.i = zext i8 %4 to i16
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %7, align 4
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
  store ptr %tmp, ptr %buf7.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %lor.lhs.false, label %ec100_read_reg.exit

ec100_read_reg.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %20 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %call.i, i32 noundef %conv10.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %error

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %22)
  %cmp4.not = icmp eq i8 %22, 11
  br i1 %cmp4.not, label %if.end7, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %frontend = getelementptr inbounds %struct.ec100_state, ptr %call7.i.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.ec100_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %23 = call ptr @memcpy(ptr %ops, ptr @ec100_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.ec100_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  br label %cleanup

error:                                            ; preds = %lor.lhs.false.error_crit_edge, %ec100_read_reg.exit, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end7
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
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
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ec100_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @ec100_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i134 = alloca [2 x i8], align 1
  %msg.i135 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i121 = alloca [2 x i8], align 1
  %msg.i122 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i108 = alloca [2 x i8], align 1
  %msg.i109 = alloca [1 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec100_set_frontend.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec100_set_frontend, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !51

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %6 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bandwidth_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec100_set_frontend.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %5, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %8 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_params, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %do.end.if.end10_crit_edge, label %if.then5

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 %9(ptr noundef %fe) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %do.end.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %buf.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 6, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196607, ptr %13, align 4
  %config.i = getelementptr inbounds %struct.ec100_state, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i, align 2
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf.i, ptr %buf2.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.end14, label %ec100_write_reg.exit

ec100_write_reg.exit:                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %call.i, i32 noundef 4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %do.body54

if.end14:                                         ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i108) #6
  %24 = getelementptr inbounds [2 x i8], ptr %buf.i108, i32 0, i32 1
  %25 = ptrtoint ptr %buf.i108 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 103, ptr %buf.i108, align 1
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 88, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i109) #6
  %27 = getelementptr inbounds i8, ptr %msg.i109, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 196607, ptr %27, align 4
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %config.i, align 4
  %conv.i111 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i109 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i111, ptr %msg.i109, align 4
  %flags.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i112 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i112, align 2
  %buf2.i114 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i109, i32 0, i32 3
  %33 = ptrtoint ptr %buf2.i114 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i108, ptr %buf2.i114, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i115 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i109, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i115)
  %cmp.i116 = icmp eq i32 %call.i115, 1
  br i1 %cmp.i116, label %if.end18, label %ec100_write_reg.exit120

ec100_write_reg.exit120:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %dev.i117 = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i117, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %call.i115, i32 noundef 103) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i108) #6
  br label %do.body54

if.end18:                                         ; preds = %if.end14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i109) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i108) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i121) #6
  %38 = getelementptr inbounds [2 x i8], ptr %buf.i121, i32 0, i32 1
  %39 = ptrtoint ptr %buf.i121 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 5, ptr %buf.i121, align 1
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 24, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i122) #6
  %41 = getelementptr inbounds i8, ptr %msg.i122, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %config.i, align 4
  %conv.i124 = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i122 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i124, ptr %msg.i122, align 4
  %flags.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i125 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i125, align 2
  %buf2.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i122, i32 0, i32 3
  %47 = ptrtoint ptr %buf2.i127 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i121, ptr %buf2.i127, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i128 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i122, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i128)
  %cmp.i129 = icmp eq i32 %call.i128, 1
  br i1 %cmp.i129, label %if.end22, label %ec100_write_reg.exit133

ec100_write_reg.exit133:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %dev.i130 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i130, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %call.i128, i32 noundef 5) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i122) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i121) #6
  br label %do.body54

if.end22:                                         ; preds = %if.end18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i122) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i121) #6
  %bandwidth_hz23 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %52 = ptrtoint ptr %bandwidth_hz23 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bandwidth_hz23, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %53, label %sw.default [
    i32 6000000, label %if.end22.sw.epilog_crit_edge
    i32 7000000, label %sw.bb24
  ]

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb24, %if.end22.sw.epilog_crit_edge
  %tmp.0 = phi i8 [ 73, %sw.default ], [ 0, %sw.bb24 ], [ -73, %if.end22.sw.epilog_crit_edge ]
  %tmp2.0 = phi i8 [ 114, %sw.default ], [ 100, %sw.bb24 ], [ 85, %if.end22.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i134) #6
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i134, i32 0, i32 1
  %56 = ptrtoint ptr %buf.i134 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 27, ptr %buf.i134, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %tmp.0, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i135) #6
  %58 = getelementptr inbounds i8, ptr %msg.i135, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 196607, ptr %58, align 4
  %60 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %config.i, align 4
  %conv.i137 = zext i8 %61 to i16
  %62 = ptrtoint ptr %msg.i135 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i137, ptr %msg.i135, align 4
  %flags.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i138 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i138, align 2
  %buf2.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i135, i32 0, i32 3
  %64 = ptrtoint ptr %buf2.i140 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buf.i134, ptr %buf2.i140, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call.i141 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i135, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i141)
  %cmp.i142 = icmp eq i32 %call.i141, 1
  br i1 %cmp.i142, label %if.end29, label %ec100_write_reg.exit146

ec100_write_reg.exit146:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %dev.i143 = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i143, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %call.i141, i32 noundef 27) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i135) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i134) #6
  br label %do.body54

if.end29:                                         ; preds = %sw.epilog
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i135) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i134) #6
  %call30 = call fastcc i32 @ec100_write_reg(ptr noundef %1, i8 noundef zeroext 28, i8 noundef zeroext %tmp2.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.do.body54_crit_edge

if.end29.do.body54_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.end33:                                         ; preds = %if.end29
  %call34 = call fastcc i32 @ec100_write_reg(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext -69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.do.body54_crit_edge

if.end33.do.body54_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.end37:                                         ; preds = %if.end33
  %call38 = call fastcc i32 @ec100_write_reg(ptr noundef %1, i8 noundef zeroext 13, i8 noundef zeroext 49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.do.body54_crit_edge

if.end37.do.body54_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.end41:                                         ; preds = %if.end37
  %call42 = call fastcc i32 @ec100_write_reg(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.do.body54_crit_edge

if.end41.do.body54_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.end45:                                         ; preds = %if.end41
  %call46 = call fastcc i32 @ec100_write_reg(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.do.body54_crit_edge

if.end45.do.body54_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.end49:                                         ; preds = %if.end45
  %call50 = call fastcc i32 @ec100_write_reg(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %if.end49.do.body54_crit_edge

if.end49.do.body54_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body54:                                        ; preds = %if.end49.do.body54_crit_edge, %if.end45.do.body54_crit_edge, %if.end41.do.body54_crit_edge, %if.end37.do.body54_crit_edge, %if.end33.do.body54_crit_edge, %if.end29.do.body54_crit_edge, %ec100_write_reg.exit146, %ec100_write_reg.exit133, %ec100_write_reg.exit120, %ec100_write_reg.exit
  %ret.0 = phi i32 [ -121, %ec100_write_reg.exit ], [ -121, %ec100_write_reg.exit120 ], [ -121, %ec100_write_reg.exit133 ], [ -121, %ec100_write_reg.exit146 ], [ %call30, %if.end29.do.body54_crit_edge ], [ %call34, %if.end33.do.body54_crit_edge ], [ %call38, %if.end37.do.body54_crit_edge ], [ %call42, %if.end41.do.body54_crit_edge ], [ %call46, %if.end45.do.body54_crit_edge ], [ %call50, %if.end49.do.body54_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec100_set_frontend.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec100_set_frontend, %if.then66)) #6
          to label %cleanup [label %if.then66], !srcloc !51

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %dev68 = getelementptr inbounds %struct.i2c_adapter, ptr %70, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec100_set_frontend.__UNIQUE_ID_ddebug291, ptr noundef %dev68, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %do.body54, %if.end49.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49.cleanup_crit_edge ], [ %ret.0, %if.then66 ], [ %ret.0, %do.body54 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ec100_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 300, ptr %fesettings, align 4
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
define internal i32 @ec100_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %reg.addr.i38 = alloca i8, align 1
  %msg.i39 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !50
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %4 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 66, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ec100_state, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config.i, align 4
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
  store ptr %tmp, ptr %buf7.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.end, label %ec100_read_reg.exit

ec100_read_reg.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %call.i, i32 noundef %conv10.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %do.body

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tmp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool1.not = icmp sgt i8 %24, -1
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  %or = or i32 %26, 31
  store i32 %or, ptr %status, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i38)
  %27 = ptrtoint ptr %reg.addr.i38 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %reg.addr.i38, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i39) #6
  %28 = getelementptr inbounds i8, ptr %msg.i39, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %config.i, align 4
  %conv.i41 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i39 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i41, ptr %msg.i39, align 4
  %flags.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i42, align 2
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %28, align 4
  %buf.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %reg.addr.i38, ptr %buf.i44, align 4
  %arrayinit.element.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1
  %36 = ptrtoint ptr %arrayinit.element.i45 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i41, ptr %arrayinit.element.i45, align 4
  %flags5.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 1
  %37 = ptrtoint ptr %flags5.i46 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags5.i46, align 2
  %len6.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 2
  %38 = ptrtoint ptr %len6.i47 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len6.i47, align 4
  %buf7.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39, i32 1, i32 3
  %39 = ptrtoint ptr %buf7.i48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %tmp, ptr %buf7.i48, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i49 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i39, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i49)
  %cmp.i50 = icmp eq i32 %call.i49, 2
  br i1 %cmp.i50, label %if.end6, label %ec100_read_reg.exit55

ec100_read_reg.exit55:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %dev.i51 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %reg.addr.i38 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %reg.addr.i38, align 1
  %conv10.i52 = zext i8 %45 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i51, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %call.i49, i32 noundef %conv10.i52) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i39) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i38)
  br label %do.body

if.end6:                                          ; preds = %if.else
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i39) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i38)
  %46 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %tmp, align 1
  %48 = and i8 %47, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool9.not = icmp eq i8 %48, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.then10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end6
  %49 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %status, align 4
  %or11 = or i32 %50, 1
  store i32 %or11, ptr %status, align 4
  %51 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool14.not = icmp eq i8 %51, 0
  br i1 %tobool14.not, label %if.then15, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %or16 = or i32 %50, 7
  %52 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or16, ptr %status, align 4
  br label %cleanup

do.body:                                          ; preds = %ec100_read_reg.exit55, %ec100_read_reg.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec100_read_status.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec100_read_status, %if.then25)) #6
          to label %cleanup [label %if.then25], !srcloc !51

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec100_read_status.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, i32 noundef -121) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body, %if.then15, %if.then10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %if.then2 ], [ -121, %if.then25 ], [ -121, %do.body ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec100_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %reg.addr.i43 = alloca i8, align 1
  %msg.i44 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %tmp = alloca i8, align 1
  %tmp2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp2) #6
  %3 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %tmp2, align 1, !annotation !50
  %4 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ber, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %5 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 101, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ec100_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config.i, align 4
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
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %tmp, ptr %buf7.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.end, label %ec100_read_reg.exit

ec100_read_reg.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %23 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %call.i, i32 noundef %conv10.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %do.body

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i43)
  %24 = ptrtoint ptr %reg.addr.i43 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 102, ptr %reg.addr.i43, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i44) #6
  %25 = getelementptr inbounds i8, ptr %msg.i44, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 16)
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %config.i, align 4
  %conv.i46 = zext i8 %28 to i16
  %29 = ptrtoint ptr %msg.i44 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i46, ptr %msg.i44, align 4
  %flags.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 0, i32 1
  %30 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %flags.i47, align 2
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 1, ptr %25, align 4
  %buf.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 0, i32 3
  %32 = ptrtoint ptr %buf.i49 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %reg.addr.i43, ptr %buf.i49, align 4
  %arrayinit.element.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 1
  %33 = ptrtoint ptr %arrayinit.element.i50 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i46, ptr %arrayinit.element.i50, align 4
  %flags5.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 1, i32 1
  %34 = ptrtoint ptr %flags5.i51 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %flags5.i51, align 2
  %len6.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 1, i32 2
  %35 = ptrtoint ptr %len6.i52 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %len6.i52, align 4
  %buf7.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 1, i32 3
  %36 = ptrtoint ptr %buf7.i53 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %tmp2, ptr %buf7.i53, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i54 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i44, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i54)
  %cmp.i55 = icmp eq i32 %call.i54, 2
  br i1 %cmp.i55, label %if.end4, label %ec100_read_reg.exit60

ec100_read_reg.exit60:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %dev.i56 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %reg.addr.i43 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %reg.addr.i43, align 1
  %conv10.i57 = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i56, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %call.i54, i32 noundef %conv10.i57) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i44) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i43)
  br label %do.body

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i44) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i43)
  %43 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tmp2, align 1
  %conv = zext i8 %44 to i16
  %shl = shl nuw i16 %conv, 8
  %45 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tmp, align 1
  %conv5 = zext i8 %46 to i16
  %or = or i16 %shl, %conv5
  %conv7 = zext i16 %or to i32
  %ber8 = getelementptr inbounds %struct.ec100_state, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %ber8 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ber8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %or, i16 %48)
  %cmp = icmp ult i16 %or, %48
  %narrow = select i1 %cmp, i16 0, i16 %48
  %sub = zext i16 %narrow to i32
  %storemerge = sub nsw i32 %conv7, %sub
  %49 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %ber, align 4
  %50 = ptrtoint ptr %ber8 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %or, ptr %ber8, align 2
  br label %cleanup

do.body:                                          ; preds = %ec100_read_reg.exit60, %ec100_read_reg.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec100_read_ber.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec100_read_ber, %if.then23)) #6
          to label %cleanup [label %if.then23], !srcloc !51

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec100_read_ber.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12, i32 noundef -121) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -121, %if.then23 ], [ -121, %do.body ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp2) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ec100_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %3 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 36, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.ec100_state, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %config.i, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tmp, ptr %buf7.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  br i1 %cmp.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg.addr.i, align 1
  %conv10.i = zext i8 %21 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %call.i, i32 noundef %conv10.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %22 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %strength, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ec100_read_signal_strength.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ec100_read_signal_strength, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !51

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tmp, align 1
  %conv = zext i8 %24 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv
  %conv2 = trunc i32 %or to i16
  %25 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv2, ptr %strength, align 2
  br label %cleanup

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ec100_read_signal_strength.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13, i32 noundef -121) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %if.then
  %ret.0.i19 = phi i32 [ -121, %if.then8 ], [ 0, %if.end ], [ -121, %if.then ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret i32 %ret.0.i19
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ec100_read_snr(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %snr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ec100_read_ucblocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ucblocks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ec100_write_reg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %config = getelementptr inbounds %struct.ec100_state, ptr %state, i32 0, i32 2
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config, align 4
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf2, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 9
  %conv6 = zext i8 %reg to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef %call, i32 noundef %conv6) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ -121, %do.end ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !18, !20, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__ksymtab_ec100_attach, !1, !"__ksymtab_ec100_attach", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 302, i32 1}
!2 = !{ptr @__UNIQUE_ID_author295, !3, !"__UNIQUE_ID_author295", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 329, i32 1}
!4 = !{ptr @__UNIQUE_ID_description296, !5, !"__UNIQUE_ID_description296", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 330, i32 1}
!6 = !{ptr @__UNIQUE_ID_file297, !7, !"__UNIQUE_ID_file297", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 331, i32 1}
!8 = !{ptr @__UNIQUE_ID_license298, !7, !"__UNIQUE_ID_license298", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 67, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ec100_read_reg._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @ec100_read_reg._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ec100_ops, !19, !"ec100_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 304, i32 38}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 82, i32 2}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ec100_set_frontend.__UNIQUE_ID_ddebug290, !21, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 149, i32 2}
!26 = !{ptr @ec100_set_frontend.__UNIQUE_ID_ddebug291, !25, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 37, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ec100_write_reg._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @ec100_write_reg._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 195, i32 2}
!34 = !{ptr @ec100_read_status.__UNIQUE_ID_ddebug292, !33, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 227, i32 2}
!37 = !{ptr @ec100_read_ber.__UNIQUE_ID_ddebug293, !36, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/ec100.c", i32 247, i32 2}
!40 = !{ptr @ec100_read_signal_strength.__UNIQUE_ID_ddebug294, !39, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{i64 2148268715, i64 2148268720, i64 2148268733, i64 2148268777, i64 2148268811, i64 2148268832}
