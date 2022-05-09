; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/ts2020.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ts2020.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ts2020_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_ts2020_attach\09\09\09\09"
module asm "\09.long\09__crc_ts2020_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ts2020_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ts2020_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ts2020_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ts2020_config = type { i8, i32, i16, ptr, i8, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.ts2020_priv = type { ptr, %struct.mutex, %struct.regmap_config, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, i16, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ts2020\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_ts2020_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ts2020_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ts2020_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ts2020_attach to i32), ptr @__kstrtab_ts2020_attach, ptr @__kstrtabns_ts2020_attach }, section "___ksymtab+ts2020_attach", align 4
@__initcall__kmod_ts2020__329_730_ts2020_driver_init6 = internal global ptr @ts2020_driver_init, section ".initcall6.init", align 4
@ts2020_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ts2020_probe, ptr @ts2020_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ts2020_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ts2020_driver_exit = internal global ptr @ts2020_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author330 = internal constant [61 x i8] c"ts2020.author=Konstantin Dimitrov <kosio.dimitrov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description331 = internal constant [75 x i8] c"ts2020.description=Montage Technology TS2020 - Silicon tuner driver module\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [47 x i8] c"ts2020.file=drivers/media/dvb-frontends/ts2020\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [19 x i8] c"ts2020.license=GPL\00", section ".modinfo", align 1
@ts2020_id_table = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ts2020\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ts2022\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ts2020_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->regmap_mutex\00", [45 x i8] zeroinitializer }, align 32
@ts2020_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ts2020:577:(&dev->regmap_config)->lock\00", [57 x i8] zeroinitializer }, align 32
@ts2020_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&dev->stat_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@ts2020_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&dev->stat_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@ts2020_probe.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ts2020_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/ts2020.c\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip_id=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TS2020\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TS2022\00", [25 x i8] zeroinitializer }, align 32
@ts2020_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 681, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Montage Technology %s successfully identified\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ts2020_probe._entry_ptr = internal global ptr @ts2020_probe._entry, section ".printk_index", align 4
@ts2020_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"TS2020\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr @ts2020_release, ptr @ts2020_init, ptr @ts2020_sleep, ptr null, ptr null, ptr @ts2020_set_params, ptr null, ptr null, ptr @ts2020_get_frequency, ptr null, ptr @ts2020_get_if_frequency, ptr null, ptr @ts2020_read_signal_strength, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ts2020_probe.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.8, ptr @.str.15, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ts2020_stat_work.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.8, ptr @.str.17, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ts2020_stat_work\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@ts2020_stat_work.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.8, ptr @.str.15, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ts2020_release.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.8, ptr @.str.17, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ts2020_release\00", [17 x i8] zeroinitializer }, align 32
@ts2020_set_params.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.8, ptr @.str.20, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ts2020_set_params\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"frequency=%u offset=%d f_vco_khz=%u pll_n=%u div_ref=%u div_out=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@ts2020_remove.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.8, ptr @.str.17, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ts2020_remove\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 65, i64 129, i64 131, i64 195]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 519, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"ts2020_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 721, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"ts2020_id_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 714, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 571, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 577, i32 16 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 594, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 619, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 626, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 633, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 680, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"ts2020_tuner_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 489, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 695, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 435, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 52, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 221, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [40 x i8] c"../drivers/media/dvb-frontends/ts2020.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 703, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_ts2020_driver_exit, ptr @__initcall__kmod_ts2020__329_730_ts2020_driver_init6, ptr @__ksymtab_ts2020_attach, ptr @ts2020_driver_exit, ptr @ts2020_probe._entry, ptr @ts2020_probe._entry_ptr, ptr @.str, ptr @ts2020_driver, ptr @ts2020_id_table, ptr @ts2020_probe.__key, ptr @.str.1, ptr @ts2020_probe._key, ptr @.str.2, ptr @ts2020_probe.__key.3, ptr @.str.4, ptr @ts2020_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ts2020_tuner_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts2020_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts2020_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts2020_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts2020_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts2020_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts2020_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts2020_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts2020_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ts2020_attach(ptr noundef %fe, ptr nocapture noundef readonly %config, ptr noundef %i2c) #0 align 64 {
entry:
  %board_info = alloca %struct.i2c_board_info, align 4
  %pdata = alloca %struct.ts2020_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %board_info) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pdata) #9
  %0 = call ptr @memcpy(ptr %pdata, ptr %config, i32 24)
  %fe1 = getelementptr inbounds %struct.ts2020_config, ptr %pdata, i32 0, i32 3
  %1 = ptrtoint ptr %fe1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fe, ptr %fe1, align 4
  %attach_in_use = getelementptr inbounds %struct.ts2020_config, ptr %pdata, i32 0, i32 4
  %2 = ptrtoint ptr %attach_in_use to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %attach_in_use, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %attach_in_use, align 4
  %3 = call ptr @memset(ptr %board_info, i32 0, i32 56)
  %call = call i32 @strscpy(ptr noundef nonnull %board_info, ptr noundef nonnull @.str, i32 noundef 20) #9
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config, align 4
  %conv = zext i8 %5 to i16
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %addr, align 2
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %board_info, i32 0, i32 4
  %7 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdata, ptr %platform_data, align 4
  %call2 = call ptr @i2c_new_client_device(ptr noundef %i2c, ptr noundef nonnull %board_info) #9
  %tobool.not.i.i = icmp eq ptr %call2, null
  %cmp.i.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.i2c_client_has_driver.exit.thread_crit_edge, label %i2c_client_has_driver.exit

entry.i2c_client_has_driver.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %i2c_client_has_driver.exit.thread

i2c_client_has_driver.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %call2, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver.i, align 4
  %tobool.i.not = icmp eq ptr %9, null
  %spec.select = select i1 %tobool.i.not, ptr null, ptr %fe
  br label %i2c_client_has_driver.exit.thread

i2c_client_has_driver.exit.thread:                ; preds = %i2c_client_has_driver.exit, %entry.i2c_client_has_driver.exit.thread_crit_edge
  %10 = phi ptr [ null, %entry.i2c_client_has_driver.exit.thread_crit_edge ], [ %spec.select, %i2c_client_has_driver.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pdata) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %board_info) #9
  ret ptr %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ts2020_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ts2020_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ts2020_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @ts2020_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts2020_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %fe1 = getelementptr inbounds %struct.ts2020_config, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #9
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 404) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body182_crit_edge, label %do.body

entry.do.body182_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body182

do.body:                                          ; preds = %entry
  %regmap_mutex = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %regmap_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @ts2020_probe.__key) #9
  %regmap_config = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 2
  %reg_bits = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %reg_bits to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %reg_bits, align 4
  %val_bits = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %val_bits to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %val_bits, align 8
  %lock = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 2, i32 12
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ts2020_regmap_lock, ptr %lock, align 8
  %unlock = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 2, i32 13
  %9 = ptrtoint ptr %unlock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ts2020_regmap_unlock, ptr %unlock, align 4
  %lock_arg = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 2, i32 14
  %10 = ptrtoint ptr %lock_arg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %lock_arg, align 8
  %call8 = tail call ptr @__regmap_init_i2c(ptr noundef %client, ptr noundef %regmap_config, ptr noundef nonnull @ts2020_probe._key, ptr noundef nonnull @.str.2) #9
  %regmap = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call8 to i32
  br label %err_kfree

if.end14:                                         ; preds = %do.body
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %i2c = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %i2c, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr, align 2
  %conv = zext i16 %17 to i32
  %i2c_address = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %i2c_address to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %i2c_address, align 8
  %loop_through = getelementptr inbounds %struct.ts2020_config, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %loop_through to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load = load i16, ptr %loop_through, align 4
  %loop_through15 = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 9
  %bf.load.lobit = and i16 %bf.load, -32768
  %20 = ptrtoint ptr %loop_through15 to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load16 = load i16, ptr %loop_through15, align 4
  %bf.clear = and i16 %bf.load16, 32767
  %bf.set = or i16 %bf.clear, %bf.load.lobit
  store i16 %bf.set, ptr %loop_through15, align 4
  %bf.load18 = load i16, ptr %loop_through, align 4
  %21 = and i16 %bf.load18, 24576
  %bf.clear25 = and i16 %bf.set, -24577
  %bf.set26 = or i16 %bf.clear25, %21
  store i16 %bf.set26, ptr %loop_through15, align 4
  %bf.load28 = load i16, ptr %loop_through, align 4
  %22 = and i16 %bf.load28, 7936
  %bf.clear36 = and i16 %bf.set26, -7937
  %bf.set37 = or i16 %bf.clear36, %22
  store i16 %bf.set37, ptr %loop_through15, align 4
  %bf.load39 = load i16, ptr %loop_through, align 4
  %.lobit = and i16 %bf.load39, 128
  %bf.clear46 = and i16 %bf.set37, -129
  %bf.set47 = or i16 %bf.clear46, %.lobit
  store i16 %bf.set47, ptr %loop_through15, align 4
  %frequency_div = getelementptr inbounds %struct.ts2020_config, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %frequency_div to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %frequency_div, align 4
  %frequency_div50 = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %frequency_div50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %frequency_div50, align 8
  %fe51 = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %fe51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %3, ptr %fe51, align 8
  %get_agc_pwm = getelementptr inbounds %struct.ts2020_config, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %get_agc_pwm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get_agc_pwm, align 4
  %get_agc_pwm52 = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %get_agc_pwm52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %get_agc_pwm52, align 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %client, ptr %call7.i.i, align 8
  %stat_work = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %stat_work, i32 noundef 0) #9
  %32 = ptrtoint ptr %stat_work to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %stat_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @ts2020_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry62 = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %entry62 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry62, ptr %entry62, align 8
  %prev.i = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry62, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %35 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ts2020_stat_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @ts2020_probe.__key.5) #9
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call74 = call i32 @regmap_read(ptr noundef %37, i32 noundef 0, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end14.err_regmap_exit_crit_edge

if.end14.err_regmap_exit_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end77:                                         ; preds = %if.end14
  %38 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %utmp, align 4
  %and = and i32 %39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then79, label %if.end77.if.end85_crit_edge

if.end77.if.end85_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then79:                                        ; preds = %if.end77
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call81 = call i32 @regmap_write(ptr noundef %41, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.then79.err_regmap_exit_crit_edge

if.then79.err_regmap_exit_crit_edge:              ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end84:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 50000, i32 noundef 2) #9
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end77.if.end85_crit_edge
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call87 = call i32 @regmap_write(ptr noundef %43, i32 noundef 0, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end85.err_regmap_exit_crit_edge

if.end85.err_regmap_exit_crit_edge:               ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end90:                                         ; preds = %if.end85
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 50000, i32 noundef 2) #9
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call92 = call i32 @regmap_read(ptr noundef %45, i32 noundef 0, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %do.body96, label %if.end90.err_regmap_exit_crit_edge

if.end90.err_regmap_exit_crit_edge:               ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

do.body96:                                        ; preds = %if.end90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts2020_probe.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts2020_probe, %if.then102)) #9
          to label %do.end106 [label %if.then102], !srcloc !77

if.then102:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts2020_probe.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %47) #9
  br label %do.end106

do.end106:                                        ; preds = %if.then102, %do.body96
  %48 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %utmp, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %49, label %do.end106.err_regmap_exit_crit_edge [
    i32 1, label %do.end106.sw.bb_crit_edge
    i32 65, label %do.end106.sw.bb_crit_edge287
    i32 129, label %do.end106.sw.bb_crit_edge288
    i32 195, label %do.end106.sw.bb112_crit_edge
    i32 131, label %do.end106.sw.bb112_crit_edge289
  ]

do.end106.sw.bb112_crit_edge289:                  ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb112

do.end106.sw.bb112_crit_edge:                     ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb112

do.end106.sw.bb_crit_edge288:                     ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end106.sw.bb_crit_edge287:                     ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end106.sw.bb_crit_edge:                        ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

do.end106.err_regmap_exit_crit_edge:              ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

sw.bb:                                            ; preds = %do.end106.sw.bb_crit_edge, %do.end106.sw.bb_crit_edge287, %do.end106.sw.bb_crit_edge288
  %tuner = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 12
  %51 = ptrtoint ptr %tuner to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %tuner, align 8
  %52 = ptrtoint ptr %frequency_div50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %frequency_div50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool108.not = icmp eq i32 %53, 0
  br i1 %tobool108.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb112:                                         ; preds = %do.end106.sw.bb112_crit_edge, %do.end106.sw.bb112_crit_edge289
  %tuner113 = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 12
  %54 = ptrtoint ptr %tuner113 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %tuner113, align 8
  %55 = ptrtoint ptr %frequency_div50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %frequency_div50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool115.not = icmp eq i32 %56, 0
  br i1 %tobool115.not, label %sw.bb112.sw.epilog.sink.split_crit_edge, label %sw.bb112.sw.epilog_crit_edge

sw.bb112.sw.epilog_crit_edge:                     ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb112.sw.epilog.sink.split_crit_edge:          ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb112.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1060000, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 1103000, %sw.bb112.sw.epilog.sink.split_crit_edge ]
  %chip_str.0.ph = phi ptr [ @.str.10, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @.str.11, %sw.bb112.sw.epilog.sink.split_crit_edge ]
  %57 = ptrtoint ptr %frequency_div50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %frequency_div50, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb112.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %chip_str.0 = phi ptr [ @.str.11, %sw.bb112.sw.epilog_crit_edge ], [ @.str.10, %sw.bb.sw.epilog_crit_edge ], [ %chip_str.0.ph, %sw.epilog.sink.split ]
  %tuner119 = getelementptr inbounds %struct.ts2020_priv, ptr %call7.i.i, i32 0, i32 12
  %58 = ptrtoint ptr %tuner119 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %tuner119, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp121 = icmp eq i8 %59, 1
  br i1 %cmp121, label %if.then123, label %sw.epilog.if.end164_crit_edge

sw.epilog.if.end164_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then123:                                       ; preds = %sw.epilog
  %60 = ptrtoint ptr %loop_through15 to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load125 = load i16, ptr %loop_through15, align 4
  %bf.lshr126 = lshr i16 %bf.load125, 13
  %61 = and i16 %bf.lshr126, 3
  %bf.cast128 = zext i16 %61 to i32
  %62 = zext i32 %bf.cast128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %bf.cast128, label %if.then123.err_regmap_exit_crit_edge [
    i32 0, label %if.then123.sw.epilog145_crit_edge
    i32 1, label %sw.bb131
    i32 2, label %sw.bb143
  ]

if.then123.sw.epilog145_crit_edge:                ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog145

if.then123.err_regmap_exit_crit_edge:             ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

sw.bb131:                                         ; preds = %if.then123
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %bf.lshr135 = lshr i16 %bf.load125, 8
  %65 = and i16 %bf.lshr135, 31
  %bf.cast137 = zext i16 %65 to i32
  %call139 = call i32 @regmap_write(ptr noundef %64, i32 noundef 5, i32 noundef %bf.cast137) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %sw.bb131.sw.epilog145_crit_edge, label %sw.bb131.err_regmap_exit_crit_edge

sw.bb131.err_regmap_exit_crit_edge:               ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

sw.bb131.sw.epilog145_crit_edge:                  ; preds = %sw.bb131
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog145

sw.bb143:                                         ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog145

sw.epilog145:                                     ; preds = %sw.bb143, %sw.bb131.sw.epilog145_crit_edge, %if.then123.sw.epilog145_crit_edge
  %u8tmp.0 = phi i32 [ 108, %sw.bb143 ], [ 112, %sw.bb131.sw.epilog145_crit_edge ], [ 96, %if.then123.sw.epilog145_crit_edge ]
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call148 = call i32 @regmap_write(ptr noundef %67, i32 noundef 66, i32 noundef %u8tmp.0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %sw.epilog145.err_regmap_exit_crit_edge

sw.epilog145.err_regmap_exit_crit_edge:           ; preds = %sw.epilog145
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end151:                                        ; preds = %sw.epilog145
  %68 = ptrtoint ptr %loop_through15 to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load153 = load i16, ptr %loop_through15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load153)
  %bf.cast155.not = icmp sgt i16 %bf.load153, -1
  %. = select i1 %bf.cast155.not, i32 108, i32 236
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %call160 = call i32 @regmap_write(ptr noundef %70, i32 noundef 98, i32 noundef %.) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end151.if.end164_crit_edge, label %if.end151.err_regmap_exit_crit_edge

if.end151.err_regmap_exit_crit_edge:              ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end151.if.end164_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.end164:                                        ; preds = %if.end151.if.end164_crit_edge, %sw.epilog.if.end164_crit_edge
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %call166 = call i32 @regmap_write(ptr noundef %72, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %do.end172, label %if.end164.err_regmap_exit_crit_edge

if.end164.err_regmap_exit_crit_edge:              ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

do.end172:                                        ; preds = %if.end164
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull %chip_str.0) #13
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %73 = call ptr @memcpy(ptr %tuner_ops, ptr @ts2020_tuner_ops, i32 220)
  %attach_in_use = getelementptr inbounds %struct.ts2020_config, ptr %1, i32 0, i32 4
  %74 = ptrtoint ptr %attach_in_use to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load174 = load i8, ptr %attach_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load174)
  %tobool176.not = icmp sgt i8 %bf.load174, -1
  br i1 %tobool176.not, label %if.then177, label %do.end172.if.end180_crit_edge

do.end172.if.end180_crit_edge:                    ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end180

if.then177:                                       ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #11
  %release = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32, i32 1
  %75 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %release, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %do.end172.if.end180_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_regmap_exit:                                  ; preds = %if.end164.err_regmap_exit_crit_edge, %if.end151.err_regmap_exit_crit_edge, %sw.epilog145.err_regmap_exit_crit_edge, %sw.bb131.err_regmap_exit_crit_edge, %if.then123.err_regmap_exit_crit_edge, %do.end106.err_regmap_exit_crit_edge, %if.end90.err_regmap_exit_crit_edge, %if.end85.err_regmap_exit_crit_edge, %if.then79.err_regmap_exit_crit_edge, %if.end14.err_regmap_exit_crit_edge
  %ret.0 = phi i32 [ %call74, %if.end14.err_regmap_exit_crit_edge ], [ %call81, %if.then79.err_regmap_exit_crit_edge ], [ %call87, %if.end85.err_regmap_exit_crit_edge ], [ %call92, %if.end90.err_regmap_exit_crit_edge ], [ %call148, %sw.epilog145.err_regmap_exit_crit_edge ], [ %call160, %if.end151.err_regmap_exit_crit_edge ], [ %call166, %if.end164.err_regmap_exit_crit_edge ], [ %call139, %sw.bb131.err_regmap_exit_crit_edge ], [ -19, %do.end106.err_regmap_exit_crit_edge ], [ -22, %if.then123.err_regmap_exit_crit_edge ]
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 4
  call void @regmap_exit(ptr noundef %78) #9
  br label %err_kfree

err_kfree:                                        ; preds = %err_regmap_exit, %if.then11
  %ret.1 = phi i32 [ %12, %if.then11 ], [ %ret.0, %err_regmap_exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body182

do.body182:                                       ; preds = %err_kfree, %entry.do.body182_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_kfree ], [ -12, %entry.do.body182_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts2020_probe.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts2020_probe, %if.then194)) #9
          to label %cleanup [label %if.then194], !srcloc !77

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts2020_probe.__UNIQUE_ID_ddebug327, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %ret.2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then194, %do.body182, %if.end180
  %retval.0 = phi i32 [ 0, %if.end180 ], [ %ret.2, %if.then194 ], [ %ret.2, %do.body182 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts2020_remove(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts2020_remove.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts2020_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts2020_remove.__UNIQUE_ID_ddebug328, ptr noundef %dev4, ptr noundef nonnull @.str.17) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dont_poll = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dont_poll to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %dont_poll, align 4
  %3 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %bf.cast.not = icmp eq i16 %3, 0
  br i1 %bf.cast.not, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %stat_work = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 5
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stat_work) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %regmap = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regmap_exit(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ts2020_regmap_lock(ptr noundef %__dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_mutex = getelementptr inbounds %struct.ts2020_priv, ptr %__dev, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %regmap_mutex, i32 noundef 0) #9
  %fe = getelementptr inbounds %struct.ts2020_priv, ptr %__dev, i32 0, i32 4
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ts2020_regmap_unlock(ptr noundef %__dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fe = getelementptr inbounds %struct.ts2020_priv, ptr %__dev, i32 0, i32 4
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %3(ptr noundef %1, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap_mutex = getelementptr inbounds %struct.ts2020_priv, ptr %__dev, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %regmap_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ts2020_stat_work(ptr noundef %work) #0 align 64 {
entry:
  %utmp.i.i = alloca i32, align 4
  %agc_pwm.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -276
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %fe = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts2020_stat_work.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts2020_stat_work, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts2020_stat_work.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %agc_pwm.i) #9
  %9 = ptrtoint ptr %agc_pwm.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %agc_pwm.i, align 1, !annotation !76
  %get_agc_pwm.i = getelementptr inbounds %struct.ts2020_priv, ptr %8, i32 0, i32 6
  %10 = ptrtoint ptr %get_agc_pwm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_agc_pwm.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.if.end12.i_crit_edge, label %if.then.i

do.end.if.end12.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then.i:                                        ; preds = %do.end
  %call.i = call i32 %11(ptr noundef %5, ptr noundef nonnull %agc_pwm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ts2020_get_tuner_gain.exit.thread, label %if.end.i

ts2020_get_tuner_gain.exit.thread:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %agc_pwm.i) #9
  br label %do.body16

if.end.i:                                         ; preds = %if.then.i
  %tuner.i = getelementptr inbounds %struct.ts2020_priv, ptr %8, i32 0, i32 12
  %12 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tuner.i, align 4
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %13, label %if.end.i.sw.epilog.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb4.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %agc_pwm.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %agc_pwm.i, align 1
  %conv3.i = zext i8 %16 to i32
  %mul.i = mul nuw nsw i32 %conv3.i, 20
  %sub.i = add nsw i32 %mul.i, -1166
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %agc_pwm.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %agc_pwm.i, align 1
  %conv5.i = zext i8 %18 to i32
  %mul6.i = shl nuw nsw i32 %conv5.i, 4
  %sub7.i = add nsw i32 %mul6.i, -670
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %v_agc.0.i = phi i32 [ 0, %if.end.i.sw.epilog.i_crit_edge ], [ %sub7.i, %sw.bb4.i ], [ %sub.i, %sw.bb.i ]
  %19 = call i32 @llvm.smax.i32(i32 %v_agc.0.i, i32 0) #9
  br label %if.end12.i

if.end12.i:                                       ; preds = %sw.epilog.i, %do.end.if.end12.i_crit_edge
  %v_agc.1.i = phi i32 [ %19, %sw.epilog.i ], [ 0, %do.end.if.end12.i_crit_edge ]
  %20 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp.i.i) #9
  %22 = ptrtoint ptr %utmp.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %utmp.i.i, align 4, !annotation !76
  %regmap.i.i = getelementptr inbounds %struct.ts2020_priv, ptr %21, i32 0, i32 3
  %23 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %24, i32 noundef 61, ptr noundef nonnull %utmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end12.i.ts2020_get_tuner_gain.exit.thread52_crit_edge, label %if.end.i.i

if.end12.i.ts2020_get_tuner_gain.exit.thread52_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ts2020_get_tuner_gain.exit.thread52

if.end.i.i:                                       ; preds = %if.end12.i
  %25 = ptrtoint ptr %utmp.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %utmp.i.i, align 4
  %and.i.i = and i32 %26, 31
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %28, i32 noundef 33, ptr noundef nonnull %utmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.ts2020_get_tuner_gain.exit.thread52_crit_edge, label %if.end5.i.i

if.end.i.i.ts2020_get_tuner_gain.exit.thread52_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ts2020_get_tuner_gain.exit.thread52

if.end5.i.i:                                      ; preds = %if.end.i.i
  %29 = ptrtoint ptr %utmp.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %utmp.i.i, align 4
  %and6.i.i = and i32 %30, 31
  %tuner.i.i = getelementptr inbounds %struct.ts2020_priv, ptr %21, i32 0, i32 12
  %31 = ptrtoint ptr %tuner.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tuner.i.i, align 4
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %32, label %if.end5.i.i.if.end8_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 1, label %sw.bb52.i.i
  ]

if.end5.i.i.if.end8_crit_edge:                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

sw.bb.i.i:                                        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = call i32 @llvm.umin.i32(i32 %and.i.i, i32 15) #9
  %35 = call i32 @llvm.umin.i32(i32 %and6.i.i, i32 13) #9
  %36 = call i32 @llvm.smax.i32(i32 %v_agc.1.i, i32 400) #9
  %37 = call i32 @llvm.umin.i32(i32 %36, i32 1100) #9
  %narrow187.i.i = mul nuw nsw i32 %34, 2330
  %mul45.i.i = mul nuw nsw i32 %35, 3500
  %narrow188.i.i = add nuw nsw i32 %mul45.i.i, %narrow187.i.i
  %add.i.i = zext i32 %narrow188.i.i to i64
  %mul47.i.i = mul nuw nsw i32 %37, 24
  %.lhs.trunc.i.i = trunc i32 %mul47.i.i to i16
  %38 = urem i16 %.lhs.trunc.i.i, 10
  %.zext.i.i = zext i16 %38 to i32
  %mul48.i.i = sub nuw nsw i32 %mul47.i.i, %.zext.i.i
  %conv49.i.i = zext i32 %mul48.i.i to i64
  %39 = add nuw nsw i64 %conv49.i.i, %add.i.i
  %sub.i.i = sub nuw nsw i64 -10000, %39
  br label %cleanup.sink.split.i.i

sw.bb52.i.i:                                      ; preds = %if.end5.i.i
  %40 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i.i, align 4
  %call54.i.i = call i32 @regmap_read(ptr noundef %41, i32 noundef 102, ptr noundef nonnull %utmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i.i)
  %cmp55.i.i = icmp slt i32 %call54.i.i, 0
  br i1 %cmp55.i.i, label %sw.bb52.i.i.ts2020_get_tuner_gain.exit.thread52_crit_edge, label %if.end58.i.i

sw.bb52.i.i.ts2020_get_tuner_gain.exit.thread52_crit_edge: ; preds = %sw.bb52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ts2020_get_tuner_gain.exit.thread52

if.end58.i.i:                                     ; preds = %sw.bb52.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %utmp.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %utmp.i.i, align 4
  %shr.i.i = lshr i32 %43, 3
  %and59.i.i = and i32 %shr.i.i, 7
  %44 = call i32 @llvm.umin.i32(i32 %and.i.i, i32 15) #9
  %45 = call i32 @llvm.umax.i32(i32 %and6.i.i, i32 2) #9
  %46 = call i32 @llvm.umin.i32(i32 %45, i32 16) #9
  %47 = call i32 @llvm.umin.i32(i32 %and59.i.i, i32 6) #9
  %48 = call i32 @llvm.smax.i32(i32 %v_agc.1.i, i32 600) #9
  %49 = call i32 @llvm.umin.i32(i32 %48, i32 1600) #9
  %narrow.i.i = mul nuw nsw i32 %44, 2650
  %mul118.i.i = mul nuw nsw i32 %46, 3380
  %mul121.i.i = mul nuw nsw i32 %47, 2850
  %mul124.i.i = mul nuw nsw i32 %49, 176
  %div125.i.i = udiv i32 %mul124.i.i, 100
  %mul126.i.i = mul nuw nsw i32 %div125.i.i, 10
  %narrow184.i.i = add nuw nsw i32 %narrow.i.i, %mul126.i.i
  %narrow185.i.i = add nuw nsw i32 %narrow184.i.i, %mul118.i.i
  %narrow186.i.i = add nuw nsw i32 %narrow185.i.i, %mul121.i.i
  %add128.i.i = zext i32 %narrow186.i.i to i64
  %sub130.i.i = sub nsw i64 30000, %add128.i.i
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.end58.i.i, %sw.bb.i.i
  %sub.sink.i.i = phi i64 [ %sub.i.i, %sw.bb.i.i ], [ %sub130.i.i, %if.end58.i.i ]
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %sub.sink.i.i, ptr %6, align 8
  br label %if.end8

ts2020_get_tuner_gain.exit.thread52:              ; preds = %sw.bb52.i.i.ts2020_get_tuner_gain.exit.thread52_crit_edge, %if.end.i.i.ts2020_get_tuner_gain.exit.thread52_crit_edge, %if.end12.i.ts2020_get_tuner_gain.exit.thread52_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call54.i.i, %sw.bb52.i.i.ts2020_get_tuner_gain.exit.thread52_crit_edge ], [ %call2.i.i, %if.end.i.i.ts2020_get_tuner_gain.exit.thread52_crit_edge ], [ %call.i.i, %if.end12.i.ts2020_get_tuner_gain.exit.thread52_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %agc_pwm.i) #9
  br label %do.body16

if.end8:                                          ; preds = %cleanup.sink.split.i.i, %if.end5.i.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %agc_pwm.i) #9
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 8, i32 42, i32 1
  %51 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %stat, align 1
  %dont_poll = getelementptr i8, ptr %work, i32 112
  %52 = ptrtoint ptr %dont_poll to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load = load i16, ptr %dont_poll, align 4
  %53 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %bf.cast.not = icmp eq i16 %53, 0
  br i1 %bf.cast.not, label %if.then12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %54 = load ptr, ptr @system_wq, align 4
  %call.i.i47 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %work, i32 noundef 200) #9
  br label %cleanup

do.body16:                                        ; preds = %ts2020_get_tuner_gain.exit.thread52, %ts2020_get_tuner_gain.exit.thread
  %retval.0.i4651 = phi i32 [ %call.i, %ts2020_get_tuner_gain.exit.thread ], [ %retval.0.i.i.ph, %ts2020_get_tuner_gain.exit.thread52 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts2020_stat_work.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts2020_stat_work, %if.then28)) #9
          to label %cleanup [label %if.then28], !srcloc !77

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts2020_stat_work.__UNIQUE_ID_ddebug325, ptr noundef %dev29, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i4651) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body16, %if.then12, %if.end8.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ts2020_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts2020_release.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts2020_release, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ts2020_release.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @i2c_unregister_device(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts2020_init(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %tuner = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %regmap = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 66, i32 noundef 115) #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %clk_out_div = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %clk_out_div to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %clk_out_div, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %9 = and i16 %bf.lshr, 31
  %bf.cast = zext i16 %9 to i32
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 5, i32 noundef %bf.cast) #9
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 32, i32 noundef 39) #9
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 7, i32 noundef 2) #9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 17, i32 noundef 255) #9
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 96, i32 noundef 249) #9
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 8, i32 noundef 1) #9
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 0, i32 noundef 65) #9
  br label %if.end54

if.else:                                          ; preds = %entry
  %call18 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 0, i32 noundef 1) #9
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 0, i32 noundef 3) #9
  %clk_out = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %clk_out to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load21 = load i16, ptr %clk_out, align 4
  %bf.lshr22 = lshr i16 %bf.load21, 13
  %25 = and i16 %bf.lshr22, 3
  %bf.cast24 = zext i16 %25 to i32
  %26 = zext i32 %bf.cast24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %bf.cast24, label %if.else.sw.epilog_crit_edge [
    i32 2, label %sw.bb35
    i32 1, label %sw.bb26
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %bf.lshr30 = lshr i16 %bf.load21, 8
  %29 = and i16 %bf.lshr30, 31
  %bf.cast32 = zext i16 %29 to i32
  %call34 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 5, i32 noundef %bf.cast32) #9
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb26, %if.else.sw.epilog_crit_edge
  %u8tmp.0 = phi i32 [ 108, %sw.bb35 ], [ 112, %sw.bb26 ], [ 96, %if.else.sw.epilog_crit_edge ]
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call38 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 66, i32 noundef %u8tmp.0) #9
  %32 = ptrtoint ptr %clk_out to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load39 = load i16, ptr %clk_out, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load39)
  %bf.cast41.not = icmp sgt i16 %bf.load39, -1
  %. = select i1 %bf.cast41.not, i32 108, i32 236
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call46 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 98, i32 noundef %.) #9
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call53 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 125, i32 noundef 157) #9
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call53.1 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 124, i32 noundef 154) #9
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call53.2 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 122, i32 noundef 118) #9
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call53.3 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 59, i32 noundef 1) #9
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call53.4 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 99, i32 noundef 136) #9
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call53.5 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 97, i32 noundef 133) #9
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call53.6 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 34, i32 noundef 48) #9
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call53.7 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 48, i32 noundef 64) #9
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call53.8 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 32, i32 noundef 35) #9
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call53.9 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 36, i32 noundef 2) #9
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call53.10 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 18, i32 noundef 160) #9
  br label %if.end54

if.end54:                                         ; preds = %sw.epilog, %if.then
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %57 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %strength, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %58 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %stat, align 1
  %59 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 0, ptr %59, align 1
  %stat_work = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 5
  tail call void @ts2020_stat_work(ptr noundef %stat_work)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts2020_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %tuner = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %. = select i1 %cmp, i32 10, i32 0
  %regmap = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %., i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  %dont_poll = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dont_poll to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %dont_poll, align 4
  %7 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %bf.cast.not = icmp eq i16 %7, 0
  br i1 %bf.cast.not, label %if.then7, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %stat_work = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 5
  %call8 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stat_work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then7 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts2020_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %utmp.i = alloca i32, align 4
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #9
  %2 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %utmp, align 4, !annotation !76
  %3 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dtv_property_cache, align 4
  %frequency_div = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %frequency_div to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frequency_div, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ult i32 %4, %6
  %. = select i1 %cmp, i32 16, i32 0
  %.317 = select i1 %cmp, i32 4, i32 2
  %mul = mul i32 %.317, %4
  %mul2 = mul i32 %mul, 14
  %div3 = udiv i32 %mul2, 27000
  %rem = and i32 %div3, 1
  %add4 = add nuw nsw i32 %rem, %div3
  %mul5 = mul i32 %add4, 27000
  %div6 = udiv i32 %mul5, 14
  %7 = select i1 %cmp, i32 2, i32 1
  %div7363 = lshr i32 %div6, %7
  %frequency_khz8 = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %frequency_khz8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div7363, ptr %frequency_khz8, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ts2020_set_params.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ts2020_set_params, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !77

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %frequency_khz8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %frequency_khz8, align 4
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %sub = sub i32 %10, %12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ts2020_set_params.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.20, i32 noundef %10, i32 noundef %sub, i32 noundef %mul, i32 noundef %add4, i32 noundef 14, i32 noundef %.317) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %entry
  %tuner = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp17 = icmp eq i8 %14, 0
  br i1 %cmp17, label %if.then19, label %if.else24

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv21 = or i32 %., 1
  %regmap = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 16, i32 noundef %conv21) #9
  br label %if.end34

if.else24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv27 = or i32 %., 11
  %regmap28 = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %regmap28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap28, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 16, i32 noundef %conv27) #9
  %19 = ptrtoint ptr %regmap28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap28, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 17, i32 noundef 64) #9
  %or33 = or i32 %call32, %call30
  br label %if.end34

if.end34:                                         ; preds = %if.else24, %if.then19
  %lpf_coeff.0 = phi i32 [ 2766, %if.then19 ], [ 3200, %if.else24 ]
  %ret.0 = phi i32 [ %call23, %if.then19 ], [ %or33, %if.else24 ]
  %conv36 = add nuw nsw i32 %add4, 64512
  %21 = lshr i32 %conv36, 8
  %regmap47 = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap47, align 4
  %conv49 = and i32 %21, 255
  %call50 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 1, i32 noundef %conv49) #9
  %24 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap47, align 4
  %conv54 = and i32 %add4, 255
  %call55 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 2, i32 noundef %conv54) #9
  %26 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap47, align 4
  %call60 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 3, i32 noundef 6) #9
  %28 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner_priv, align 4
  %regmap.i = getelementptr inbounds %struct.ts2020_priv, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 81, i32 noundef 15) #9
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 81, i32 noundef 31) #9
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 80, i32 noundef 16) #9
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 80, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 20) #9
  %or.i = or i32 %call50, %ret.0
  %or6.i = or i32 %or.i, %call55
  %or9.i = or i32 %or6.i, %call60
  %or51 = or i32 %or9.i, %call.i
  %or56 = or i32 %or51, %call2.i
  %or61 = or i32 %or56, %call5.i
  %or63 = or i32 %or61, %call8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or63)
  %cmp64 = icmp slt i32 %or63, 0
  br i1 %cmp64, label %if.end34.cleanup_crit_edge, label %if.end67

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end67:                                         ; preds = %if.end34
  %38 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tuner_priv, align 4
  %regmap.i319 = getelementptr inbounds %struct.ts2020_priv, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %regmap.i319 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i319, align 4
  %call.i320 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 81, i32 noundef 23) #9
  %42 = ptrtoint ptr %regmap.i319 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i319, align 4
  %call2.i321 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 81, i32 noundef 31) #9
  %44 = ptrtoint ptr %regmap.i319 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i319, align 4
  %call5.i323 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 80, i32 noundef 8) #9
  %46 = ptrtoint ptr %regmap.i319 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i319, align 4
  %call8.i325 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 80, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 20) #9
  %or.i322 = or i32 %call.i320, %or63
  %or6.i324 = or i32 %or.i322, %call2.i321
  %or9.i326 = or i32 %or6.i324, %call5.i323
  %or69 = or i32 %or9.i326, %call8.i325
  %48 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp72 = icmp eq i8 %49, 0
  br i1 %cmp72, label %if.then74, label %if.end67.if.end77_crit_edge

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then74:                                        ; preds = %if.end67
  %50 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp.i) #9
  %52 = ptrtoint ptr %utmp.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %utmp.i, align 4, !annotation !76
  %regmap.i328 = getelementptr inbounds %struct.ts2020_priv, ptr %51, i32 0, i32 3
  %53 = ptrtoint ptr %regmap.i328 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i328, align 4
  %call.i329 = call i32 @regmap_read(ptr noundef %54, i32 noundef 61, ptr noundef nonnull %utmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool.not.i = icmp eq i32 %call.i329, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then74.ts2020_set_tuner_rf.exit_crit_edge

if.then74.ts2020_set_tuner_rf.exit_crit_edge:     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %ts2020_set_tuner_rf.exit

if.end.i:                                         ; preds = %if.then74
  %55 = ptrtoint ptr %utmp.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %utmp.i, align 4
  %and.i = and i32 %56, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 22
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %utmp.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 161, ptr %utmp.i, align 4
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %and.i)
  %cmp2.i = icmp eq i32 %and.i, 22
  br i1 %cmp2.i, label %if.then3.i, label %if.else4.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %utmp.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 153, ptr %utmp.i, align 4
  br label %if.end6.i

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %utmp.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 249, ptr %utmp.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else4.i, %if.then3.i, %if.then1.i
  %60 = ptrtoint ptr %regmap.i328 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i328, align 4
  %62 = ptrtoint ptr %utmp.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %utmp.i, align 4
  %call8.i330 = call i32 @regmap_write(ptr noundef %61, i32 noundef 96, i32 noundef %63) #9
  %64 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tuner_priv, align 4
  %regmap.i.i = getelementptr inbounds %struct.ts2020_priv, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_write(ptr noundef %67, i32 noundef 81, i32 noundef 23) #9
  %68 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i.i, align 4
  %call2.i.i = call i32 @regmap_write(ptr noundef %69, i32 noundef 81, i32 noundef 31) #9
  %or.i.i = or i32 %call2.i.i, %call.i.i
  %70 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i.i, align 4
  %call5.i.i = call i32 @regmap_write(ptr noundef %71, i32 noundef 80, i32 noundef 8) #9
  %or6.i.i = or i32 %or.i.i, %call5.i.i
  %72 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i.i, align 4
  %call8.i.i = call i32 @regmap_write(ptr noundef %73, i32 noundef 80, i32 noundef 0) #9
  %or9.i.i = or i32 %or6.i.i, %call8.i.i
  call void @msleep(i32 noundef 20) #9
  br label %ts2020_set_tuner_rf.exit

ts2020_set_tuner_rf.exit:                         ; preds = %if.end6.i, %if.then74.ts2020_set_tuner_rf.exit_crit_edge
  %retval.0.i331 = phi i32 [ %or9.i.i, %if.end6.i ], [ %call.i329, %if.then74.ts2020_set_tuner_rf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp.i) #9
  %or76 = or i32 %retval.0.i331, %or69
  br label %if.end77

if.end77:                                         ; preds = %ts2020_set_tuner_rf.exit, %if.end67.if.end77_crit_edge
  %ret.1 = phi i32 [ %or76, %ts2020_set_tuner_rf.exit ], [ %or69, %if.end67.if.end77_crit_edge ]
  %74 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap47, align 4
  %call80 = call i32 @regmap_write(ptr noundef %75, i32 noundef 4, i32 noundef 46) #9
  %76 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tuner_priv, align 4
  %regmap.i333 = getelementptr inbounds %struct.ts2020_priv, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %regmap.i333 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i333, align 4
  %call.i334 = call i32 @regmap_write(ptr noundef %79, i32 noundef 81, i32 noundef 27) #9
  %80 = ptrtoint ptr %regmap.i333 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap.i333, align 4
  %call2.i335 = call i32 @regmap_write(ptr noundef %81, i32 noundef 81, i32 noundef 31) #9
  %82 = ptrtoint ptr %regmap.i333 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap.i333, align 4
  %call5.i337 = call i32 @regmap_write(ptr noundef %83, i32 noundef 80, i32 noundef 4) #9
  %84 = ptrtoint ptr %regmap.i333 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i333, align 4
  %call8.i339 = call i32 @regmap_write(ptr noundef %85, i32 noundef 80, i32 noundef 0) #9
  call void @msleep(i32 noundef 20) #9
  %or.i336 = or i32 %call80, %ret.1
  %or6.i338 = or i32 %or.i336, %call.i334
  %or9.i340 = or i32 %or6.i338, %call2.i335
  %or81 = or i32 %or9.i340, %call5.i337
  %or83 = or i32 %or81, %call8.i339
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or83)
  %cmp84 = icmp slt i32 %or83, 0
  br i1 %cmp84, label %if.end77.cleanup_crit_edge, label %if.end87

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end87:                                         ; preds = %if.end77
  %86 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp90 = icmp eq i8 %87, 1
  br i1 %cmp90, label %if.then92, label %if.end87.if.end108_crit_edge

if.end87.if.end108_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then92:                                        ; preds = %if.end87
  %88 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap47, align 4
  %call94 = call i32 @regmap_write(ptr noundef %89, i32 noundef 37, i32 noundef 0) #9
  %90 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap47, align 4
  %call96 = call i32 @regmap_write(ptr noundef %91, i32 noundef 39, i32 noundef 112) #9
  %or97 = or i32 %call96, %call94
  %92 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap47, align 4
  %call99 = call i32 @regmap_write(ptr noundef %93, i32 noundef 65, i32 noundef 9) #9
  %or100 = or i32 %or97, %call99
  %94 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap47, align 4
  %call102 = call i32 @regmap_write(ptr noundef %95, i32 noundef 8, i32 noundef 11) #9
  %or103 = or i32 %or100, %call102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or103)
  %cmp104 = icmp slt i32 %or103, 0
  br i1 %cmp104, label %if.then92.cleanup_crit_edge, label %if.then92.if.end108_crit_edge

if.then92.if.end108_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end108:                                        ; preds = %if.then92.if.end108_crit_edge, %if.end87.if.end108_crit_edge
  %96 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap47, align 4
  %call110 = call i32 @regmap_read(ptr noundef %97, i32 noundef 38, ptr noundef nonnull %utmp) #9
  %98 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %utmp, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %100 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4001999, i32 %101)
  %cmp117 = icmp ugt i32 %101, 4001999
  %div113 = udiv i32 %101, 2000
  %102 = call i32 @llvm.umin.i32(i32 %div113, i32 35000)
  %103 = add nuw nsw i32 %102, 5000
  %104 = select i1 %cmp117, i32 %103, i32 7000
  %conv127 = shl i32 %99, 1
  %mul128 = and i32 %conv127, 131070
  %add129 = add nuw nsw i32 %mul128, 151
  %div130 = udiv i32 9522, %add129
  %105 = trunc i32 %div130 to i16
  %div132.lhs.trunc = mul nuw nsw i16 %105, 135
  %div132360 = udiv i16 %div132.lhs.trunc, 100
  %conv133 = trunc i16 %div132360 to i8
  %div135.lhs.trunc = mul nuw nsw i16 %105, 78
  %div135361 = udiv i16 %div135.lhs.trunc, 100
  %div135.zext = zext i16 %div135361 to i32
  %106 = and i16 %div132360, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %cmp138.not = icmp eq i16 %106, 0
  %spec.store.select = select i1 %cmp138.not, i8 %conv133, i8 63
  %mul142 = shl nuw nsw i32 %div130, 1
  %mul143 = mul nuw nsw i32 %mul142, %104
  %div145 = udiv i32 %mul143, %lpf_coeff.0
  %div146.lhs.trunc = trunc i32 %div145 to i16
  %div146362 = udiv i16 %div146.lhs.trunc, 27
  %narrow = add nuw nsw i16 %div146362, 1
  %div148314 = lshr i16 %narrow, 1
  %conv149 = trunc i16 %div148314 to i8
  %107 = and i16 %narrow, 496
  call void @__sanitizer_cov_trace_const_cmp2(i16 46, i16 %107)
  %cmp151 = icmp ugt i16 %107, 46
  %spec.store.select225 = select i1 %cmp151, i8 23, i8 %conv149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select225)
  %cmp156 = icmp eq i8 %spec.store.select225, 0
  %spec.store.select224 = select i1 %cmp156, i8 1, i8 %spec.store.select225
  %conv160 = zext i8 %spec.store.select224 to i32
  %mul163 = mul nuw nsw i32 %lpf_coeff.0, 54
  %mul164 = mul nuw nsw i32 %mul163, %conv160
  %div165 = udiv i32 %mul164, %104
  %add166 = add nuw nsw i32 %div165, 1
  %div167315 = lshr i32 %add166, 1
  %conv169 = and i32 %div167315, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv169, i32 %div135.zext)
  %cmp171 = icmp ult i32 %conv169, %div135.zext
  br i1 %cmp171, label %if.then173, label %if.end108.if.end183_crit_edge

if.end108.if.end183_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end183

if.then173:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw nsw i8 %spec.store.select224, 1
  %conv174 = zext i8 %inc to i32
  %mul178 = mul nuw nsw i32 %mul163, %conv174
  %div179 = udiv i32 %mul178, %104
  %add180 = add nuw nsw i32 %div179, 1
  %div181316 = lshr i32 %add180, 1
  %.pre = and i32 %div181316, 255
  br label %if.end183

if.end183:                                        ; preds = %if.then173, %if.end108.if.end183_crit_edge
  %conv194.pre-phi = phi i32 [ %conv174, %if.then173 ], [ %conv160, %if.end108.if.end183_crit_edge ]
  %conv184.pre-phi = phi i32 [ %.pre, %if.then173 ], [ %conv169, %if.end108.if.end183_crit_edge ]
  %lpf_mxdiv.0.in = phi i32 [ %div181316, %if.then173 ], [ %div167315, %if.end108.if.end183_crit_edge ]
  %lpf_mxdiv.0 = trunc i32 %lpf_mxdiv.0.in to i8
  %conv185 = zext i8 %spec.store.select to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv184.pre-phi, i32 %conv185)
  %cmp186 = icmp ugt i32 %conv184.pre-phi, %conv185
  %spec.select = select i1 %cmp186, i8 %spec.store.select, i8 %lpf_mxdiv.0
  %108 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap47, align 4
  %conv191 = zext i8 %spec.select to i32
  %call192 = call i32 @regmap_write(ptr noundef %109, i32 noundef 4, i32 noundef %conv191) #9
  %110 = ptrtoint ptr %regmap47 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap47, align 4
  %call195 = call i32 @regmap_write(ptr noundef %111, i32 noundef 6, i32 noundef %conv194.pre-phi) #9
  %112 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %tuner_priv, align 4
  %regmap.i342 = getelementptr inbounds %struct.ts2020_priv, ptr %113, i32 0, i32 3
  %114 = ptrtoint ptr %regmap.i342 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap.i342, align 4
  %call.i343 = call i32 @regmap_write(ptr noundef %115, i32 noundef 81, i32 noundef 27) #9
  %116 = ptrtoint ptr %regmap.i342 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap.i342, align 4
  %call2.i344 = call i32 @regmap_write(ptr noundef %117, i32 noundef 81, i32 noundef 31) #9
  %118 = ptrtoint ptr %regmap.i342 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap.i342, align 4
  %call5.i346 = call i32 @regmap_write(ptr noundef %119, i32 noundef 80, i32 noundef 4) #9
  %120 = ptrtoint ptr %regmap.i342 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap.i342, align 4
  %call8.i348 = call i32 @regmap_write(ptr noundef %121, i32 noundef 80, i32 noundef 0) #9
  call void @msleep(i32 noundef 20) #9
  %122 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tuner_priv, align 4
  %regmap.i351 = getelementptr inbounds %struct.ts2020_priv, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %regmap.i351 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap.i351, align 4
  %call.i352 = call i32 @regmap_write(ptr noundef %125, i32 noundef 81, i32 noundef 30) #9
  %126 = ptrtoint ptr %regmap.i351 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap.i351, align 4
  %call2.i353 = call i32 @regmap_write(ptr noundef %127, i32 noundef 81, i32 noundef 31) #9
  %128 = ptrtoint ptr %regmap.i351 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap.i351, align 4
  %call5.i355 = call i32 @regmap_write(ptr noundef %129, i32 noundef 80, i32 noundef 1) #9
  %130 = ptrtoint ptr %regmap.i351 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap.i351, align 4
  %call8.i357 = call i32 @regmap_write(ptr noundef %131, i32 noundef 80, i32 noundef 0) #9
  call void @msleep(i32 noundef 20) #9
  %or.i354 = or i32 %call195, %call192
  %or6.i356 = or i32 %or.i354, %call.i343
  %or9.i358 = or i32 %or6.i356, %call2.i344
  %or.i345 = or i32 %or9.i358, %call5.i346
  %or6.i347 = or i32 %or.i345, %call8.i348
  %or9.i349 = or i32 %or6.i347, %call.i352
  %or196 = or i32 %or9.i349, %call2.i353
  %or198 = or i32 %or196, %call5.i355
  %or200 = or i32 %or198, %call8.i357
  call void @msleep(i32 noundef 80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or200)
  %cmp201 = icmp slt i32 %or200, 0
  %cond203 = select i1 %cmp201, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end183, %if.then92.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end34.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond203, %if.end183 ], [ -19, %if.end34.cleanup_crit_edge ], [ -19, %if.end77.cleanup_crit_edge ], [ -19, %if.then92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ts2020_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %frequency_khz = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %frequency_khz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency_khz, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ts2020_get_if_frequency(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %frequency) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ts2020_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %_signal_strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dont_poll = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dont_poll to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %dont_poll, align 4
  %3 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %bf.cast.not = icmp eq i16 %3, 0
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stat_work = getelementptr inbounds %struct.ts2020_priv, ptr %1, i32 0, i32 5
  tail call void @ts2020_stat_work(ptr noundef %stat_work)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %4 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -85000, i64 %8)
  %cmp8 = icmp slt i64 %8, -85000
  br i1 %cmp8, label %if.end4.if.end32_crit_edge, label %if.else

if.end4.if.end32_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp8(i64 -65000, i64 %8)
  %cmp11 = icmp slt i64 %8, -65000
  br i1 %cmp11, label %if.then13, label %if.else16

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %9 = mul nsw i64 %8, 3
  %mul = add nsw i64 %9, 255000
  %call = tail call i64 @div64_s64(i64 noundef %mul, i64 noundef 1000) #9
  %conv15 = trunc i64 %call to i32
  br label %if.end32

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 -45000, i64 %8)
  %cmp17 = icmp slt i64 %8, -45000
  br i1 %cmp17, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  %10 = mul nsw i64 %8, 3
  %mul21 = add nsw i64 %10, 195000
  %call22 = tail call i64 @div64_s64(i64 noundef %mul21, i64 noundef 2000) #9
  %11 = trunc i64 %call22 to i32
  %conv24 = add i32 %11, 60
  br label %if.end32

if.else25:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  %add26 = add i64 %8, 45000
  %call27 = tail call i64 @div64_s64(i64 noundef %add26, i64 noundef 5000) #9
  %12 = trunc i64 %call27 to i32
  %conv29 = add i32 %12, 90
  br label %if.end32

if.end32:                                         ; preds = %if.else25, %if.then19, %if.then13, %if.end4.if.end32_crit_edge
  %strength.0 = phi i32 [ %conv15, %if.then13 ], [ %conv24, %if.then19 ], [ %conv29, %if.else25 ], [ 0, %if.end4.if.end32_crit_edge ]
  %mul33 = mul i32 %strength.0, 65535
  %div = udiv i32 %mul33, 100
  %conv34 = trunc i32 %div to i16
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge
  %storemerge = phi i16 [ %conv34, %if.end32 ], [ 0, %if.end.cleanup_crit_edge ]
  %13 = ptrtoint ptr %_signal_strength to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %storemerge, ptr %_signal_strength, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !38, !39, !40, !41, !42, !44, !45, !47, !48, !49, !51, !53, !55, !56, !58, !60, !61, !62, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 519, i32 27}
!2 = !{ptr @__ksymtab_ts2020_attach, !3, !"__ksymtab_ts2020_attach", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 528, i32 1}
!4 = !{ptr @__initcall__kmod_ts2020__329_730_ts2020_driver_init6, !5, !"__initcall__kmod_ts2020__329_730_ts2020_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 730, i32 1}
!6 = !{ptr @__exitcall_ts2020_driver_exit, !5, !"__exitcall_ts2020_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author330, !8, !"__UNIQUE_ID_author330", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 732, i32 1}
!9 = !{ptr @__UNIQUE_ID_description331, !10, !"__UNIQUE_ID_description331", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 733, i32 1}
!11 = !{ptr @__UNIQUE_ID_file332, !12, !"__UNIQUE_ID_file332", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 734, i32 1}
!13 = !{ptr @__UNIQUE_ID_license333, !12, !"__UNIQUE_ID_license333", i1 false, i1 false}
!14 = !{ptr @ts2020_driver, !15, !"ts2020_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 721, i32 26}
!16 = !{ptr @ts2020_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 571, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ts2020_probe._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 577, i32 16}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ts2020_probe.__key.3, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 594, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ts2020_probe.__key.5, !23, !"__key", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 619, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ts2020_probe.__UNIQUE_ID_ddebug326, !28, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 626, i32 14}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 633, i32 14}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 680, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @ts2020_probe._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @ts2020_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 695, i32 2}
!44 = !{ptr @ts2020_probe.__UNIQUE_ID_ddebug327, !43, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 435, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ts2020_stat_work.__UNIQUE_ID_ddebug324, !46, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!49 = !{ptr @ts2020_stat_work.__UNIQUE_ID_ddebug325, !50, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 447, i32 2}
!51 = !{ptr @ts2020_tuner_ops, !52, !"ts2020_tuner_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 489, i32 35}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 52, i32 2}
!55 = !{ptr @ts2020_release.__UNIQUE_ID_ddebug290, !54, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!56 = distinct !{null, !57, !"reg_vals", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 95, i32 38}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 221, i32 2}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ts2020_set_params.__UNIQUE_ID_ddebug291, !59, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 703, i32 2}
!64 = !{ptr @ts2020_remove.__UNIQUE_ID_ddebug328, !63, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!65 = !{ptr @ts2020_id_table, !66, !"ts2020_id_table", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/ts2020.c", i32 714, i32 35}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{i64 2148279293, i64 2148279298, i64 2148279311, i64 2148279355, i64 2148279389, i64 2148279410}
