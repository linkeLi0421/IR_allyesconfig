; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tda18212.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18212.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tda18212_config = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.tda18212_dev = type { %struct.tda18212_config, ptr, ptr, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }

@__initcall__kmod_tda18212__295_274_tda18212_driver_init6 = internal global ptr @tda18212_driver_init, section ".initcall6.init", align 4
@tda18212_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tda18212_probe, ptr @tda18212_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda18212_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tda18212_driver_exit = internal global ptr @tda18212_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [57 x i8] c"tda18212.description=NXP TDA18212HN silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [47 x i8] c"tda18212.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [44 x i8] c"tda18212.file=drivers/media/tuners/tda18212\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [21 x i8] c"tda18212.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda18212\00", [23 x i8] zeroinitializer }, align 32
@tda18212_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda18212\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tda18212_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@tda18212_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kzalloc() failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda18212_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/tuners/tda18212.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tda18212_probe._entry_ptr = internal global ptr @tda18212_probe._entry, section ".printk_index", align 4
@tda18212_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tda18212:199:(&regmap_config)->lock\00", [60 x i8] zeroinitializer }, align 32
@tda18212_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip_id=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@tda18212_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 231, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NXP TDA18212HN/%s successfully identified\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tda18212_probe._entry_ptr.13 = internal global ptr @tda18212_probe._entry.10, section ".printk_index", align 4
@tda18212_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"NXP TDA18212\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 864000000, i32 1000, i32 0, i32 0, i32 0 }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda18212_set_params, ptr null, ptr null, ptr null, ptr null, ptr @tda18212_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tda18212_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda18212_set_params.bw_params = internal constant { [10 x [3 x i8]], [34 x i8] } { [10 x [3 x i8]] [[3 x i8] c"\B3 \03", [3 x i8] c"\B31\01", [3 x i8] c"\B3\22\01", [3 x i8] c"\BC \03", [3 x i8] c"\BCr\03", [3 x i8] c"\BC\22\01", [3 x i8] c"\92P\03", [3 x i8] c"\92S\03", [3 x i8] c"} c", [3 x i8] c"} c"], [34 x i8] zeroinitializer }, align 32
@tda18212_set_params.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda18212_set_params\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"delivery_system=%d frequency=%d bandwidth_hz=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@tda18212_set_params.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.14, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda18212_remove.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18212_remove\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 71, i64 199]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 11, i64 16, i64 18]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"tda18212_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 265, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 267, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"tda18212_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 259, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 185, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 193, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 199, i32 16 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 210, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 220, i32 13 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 223, i32 13 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 230, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"tda18212_tuner_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 163, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 240, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [10 x i8] c"bw_params\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 36, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 50, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private constant [35 x i8] c"../drivers/media/tuners/tda18212.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 250, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_tda18212_driver_exit, ptr @__initcall__kmod_tda18212__295_274_tda18212_driver_init6, ptr @tda18212_driver_exit, ptr @tda18212_probe._entry, ptr @tda18212_probe._entry.10, ptr @tda18212_probe._entry_ptr, ptr @tda18212_probe._entry_ptr.13, ptr @tda18212_driver, ptr @.str, ptr @tda18212_id, ptr @tda18212_probe.regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tda18212_probe._key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @tda18212_tuner_ops, ptr @.str.14, ptr @tda18212_set_params.bw_params, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18212_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18212_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18212_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18212_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18212_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18212_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18212_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18212_set_params.bw_params to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18212_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tda18212_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tda18212_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tda18212_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18212_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %chip_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %fe1 = getelementptr inbounds %struct.tda18212_config, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_id) #7
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %chip_id, align 4, !annotation !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 36) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %do.body50

if.end:                                           ; preds = %entry
  %6 = call ptr @memcpy(ptr %call7.i.i, ptr %1, i32 24)
  %client5 = getelementptr inbounds %struct.tda18212_dev, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %client5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client5, align 8
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tda18212_probe.regmap_config, ptr noundef nonnull @tda18212_probe._key, ptr noundef nonnull @.str.6) #7
  %regmap = getelementptr inbounds %struct.tda18212_dev, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call6 to i32
  br label %do.body50

if.end12:                                         ; preds = %if.end
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 28
  %10 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end12.if.end17_crit_edge, label %if.then13

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 %11(ptr noundef %3, i32 noundef 1) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end12.if.end17_crit_edge
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %chip_id) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18212_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18212_probe, %if.then26)) #7
          to label %do.end31 [label %if.then26], !srcloc !68

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %client5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client5, align 8
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chip_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18212_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev28, ptr noundef nonnull @.str.7, i32 noundef %17) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %if.end17
  %18 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool34.not = icmp eq ptr %19, null
  br i1 %tobool34.not, label %do.end31.if.end39_crit_edge, label %if.then35

do.end31.if.end39_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then35:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = call i32 %19(ptr noundef %3, i32 noundef 0) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %do.end31.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool40.not = icmp eq i32 %call19, 0
  br i1 %tobool40.not, label %if.end42, label %if.end39.do.body50_crit_edge

if.end39.do.body50_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

if.end42:                                         ; preds = %if.end39
  %20 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chip_id, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end42.do.body50_crit_edge [
    i32 199, label %if.end42.do.end46_crit_edge
    i32 71, label %sw.bb43
  ]

if.end42.do.end46_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.end42.do.body50_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

sw.bb43:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

do.end46:                                         ; preds = %sw.bb43, %if.end42.do.end46_crit_edge
  %version.0 = phi ptr [ @.str.9, %sw.bb43 ], [ @.str.8, %if.end42.do.end46_crit_edge ]
  %23 = ptrtoint ptr %client5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client5, align 8
  %dev48 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.11, ptr noundef nonnull %version.0) #11
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %26 = call ptr @memcpy(ptr %tuner_ops, ptr @tda18212_tuner_ops, i32 220)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

do.body50:                                        ; preds = %if.end42.do.body50_crit_edge, %if.end39.do.body50_crit_edge, %if.then9, %if.then
  %ret.0 = phi i32 [ -12, %if.then ], [ %9, %if.then9 ], [ %call19, %if.end39.do.body50_crit_edge ], [ -19, %if.end42.do.body50_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18212_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18212_probe, %if.then62)) #7
          to label %do.end66 [label %if.then62], !srcloc !68

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18212_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #7
  br label %do.end66

do.end66:                                         ; preds = %if.then62, %do.body50
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end66, %do.end46
  %retval.0 = phi i32 [ %ret.0, %do.end66 ], [ 0, %do.end46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_id) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18212_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fe1 = getelementptr inbounds %struct.tda18212_config, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18212_remove.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18212_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18212_remove.__UNIQUE_ID_ddebug294, ptr noundef %dev5, ptr noundef nonnull @.str.18) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %4 = call ptr @memset(ptr %tuner_ops, i32 0, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18212_set_params(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #7
  %2 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 7
  %9 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 8
  %10 = call ptr @memset(ptr %buf, i32 255, i32 9)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18212_set_params.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18212_set_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.tda18212_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %13 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delivery_system, align 4
  %15 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %17 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bandwidth_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18212_set_params.__UNIQUE_ID_ddebug290, ptr noundef %dev3, ptr noundef nonnull @.str.16, i32 noundef %14, i32 noundef %16, i32 noundef %18) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %19 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %20, null
  br i1 %tobool4.not, label %do.end.if.end9_crit_edge, label %if.then5

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 %20(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end.if.end9_crit_edge
  %delivery_system10 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %21 = ptrtoint ptr %delivery_system10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delivery_system10, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %22, label %if.end9.do.body105_crit_edge [
    i32 11, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb14
    i32 16, label %sw.bb25
    i32 1, label %if.end9.sw.bb38_crit_edge
    i32 18, label %if.end9.sw.bb38_crit_edge167
  ]

if.end9.sw.bb38_crit_edge167:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

if.end9.sw.bb38_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

if.end9.do.body105_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %if_atsc_vsb = getelementptr inbounds %struct.tda18212_config, ptr %1, i32 0, i32 8
  br label %sw.epilog42

sw.bb11:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %if_atsc_qam = getelementptr inbounds %struct.tda18212_config, ptr %1, i32 0, i32 9
  br label %sw.epilog42

sw.bb14:                                          ; preds = %if.end9
  %bandwidth_hz15 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %24 = ptrtoint ptr %bandwidth_hz15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bandwidth_hz15, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %25, label %sw.bb14.do.body105_crit_edge [
    i32 6000000, label %sw.bb14.sw.epilog42_crit_edge
    i32 7000000, label %sw.bb19
    i32 8000000, label %sw.bb22
  ]

sw.bb14.sw.epilog42_crit_edge:                    ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog42

sw.bb14.do.body105_crit_edge:                     ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

sw.bb19:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %if_dvbt_7 = getelementptr inbounds %struct.tda18212_config, ptr %1, i32 0, i32 1
  br label %sw.epilog42

sw.bb22:                                          ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %if_dvbt_8 = getelementptr inbounds %struct.tda18212_config, ptr %1, i32 0, i32 2
  br label %sw.epilog42

sw.bb25:                                          ; preds = %if.end9
  %bandwidth_hz26 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %27 = ptrtoint ptr %bandwidth_hz26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bandwidth_hz26, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %28, label %sw.bb25.do.body105_crit_edge [
    i32 6000000, label %sw.bb27
    i32 7000000, label %sw.bb30
    i32 8000000, label %sw.bb33
  ]

sw.bb25.do.body105_crit_edge:                     ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

sw.bb27:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %if_dvbt2_6 = getelementptr inbounds %struct.tda18212_config, ptr %1, i32 0, i32 4
  br label %sw.epilog42

sw.bb30:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %if_dvbt2_7 = getelementptr inbounds %struct.tda18212_config, ptr %1, i32 0, i32 5
  br label %sw.epilog42

sw.bb33:                                          ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #9
  %if_dvbt2_8 = getelementptr inbounds %struct.tda18212_config, ptr %1, i32 0, i32 6
  br label %sw.epilog42

sw.bb38:                                          ; preds = %if.end9.sw.bb38_crit_edge, %if.end9.sw.bb38_crit_edge167
  %if_dvbc = getelementptr inbounds %struct.tda18212_config, ptr %1, i32 0, i32 7
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %sw.bb38, %sw.bb33, %sw.bb30, %sw.bb27, %sw.bb22, %sw.bb19, %sw.bb14.sw.epilog42_crit_edge, %sw.bb11, %sw.bb
  %if_khz.0.in.in = phi ptr [ %if_dvbc, %sw.bb38 ], [ %if_dvbt2_8, %sw.bb33 ], [ %if_dvbt2_7, %sw.bb30 ], [ %if_dvbt2_6, %sw.bb27 ], [ %if_dvbt_8, %sw.bb22 ], [ %if_dvbt_7, %sw.bb19 ], [ %if_atsc_qam, %sw.bb11 ], [ %if_atsc_vsb, %sw.bb ], [ %1, %sw.bb14.sw.epilog42_crit_edge ]
  %i.0 = phi i32 [ 7, %sw.bb38 ], [ 5, %sw.bb33 ], [ 4, %sw.bb30 ], [ 3, %sw.bb27 ], [ 2, %sw.bb22 ], [ 1, %sw.bb19 ], [ 9, %sw.bb11 ], [ 8, %sw.bb ], [ 0, %sw.bb14.sw.epilog42_crit_edge ]
  %30 = ptrtoint ptr %if_khz.0.in.in to i32
  call void @__asan_load2_noabort(i32 %30)
  %if_khz.0.in = load i16, ptr %if_khz.0.in.in, align 2
  %if_khz.0 = zext i16 %if_khz.0.in to i32
  %regmap = getelementptr inbounds %struct.tda18212_dev, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [10 x [3 x i8]], ptr @tda18212_set_params.bw_params, i32 0, i32 %i.0
  %arrayidx43 = getelementptr [10 x [3 x i8]], ptr @tda18212_set_params.bw_params, i32 0, i32 %i.0, i32 2
  %33 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %34 to i32
  %call45 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 35, i32 noundef %conv44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %sw.epilog42.do.body105_crit_edge

sw.epilog42.do.body105_crit_edge:                 ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

if.end48:                                         ; preds = %sw.epilog42
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call50 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 6, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.do.body105_crit_edge

if.end48.do.body105_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

if.end53:                                         ; preds = %if.end48
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  %conv57 = zext i8 %40 to i32
  %call58 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 15, i32 noundef %conv57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end53.do.body105_crit_edge

if.end53.do.body105_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

if.end61:                                         ; preds = %if.end53
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 2, ptr %buf, align 1
  %arrayidx64 = getelementptr [10 x [3 x i8]], ptr @tda18212_set_params.bw_params, i32 0, i32 %i.0, i32 1
  %42 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx64, align 1
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %2, align 1
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %3, align 1
  %add = add nuw nsw i32 %if_khz.0, 25
  %div68 = udiv i32 %add, 50
  %conv69 = trunc i32 %div68 to i8
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv69, ptr %4, align 1
  %47 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dtv_property_cache, align 4
  %div72 = udiv i32 %48, 1000
  %shr = lshr i32 %div72, 16
  %conv73 = trunc i32 %shr to i8
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv73, ptr %5, align 1
  %shr77 = lshr i32 %div72, 8
  %conv79 = trunc i32 %shr77 to i8
  %50 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv79, ptr %6, align 1
  %conv85 = trunc i32 %div72 to i8
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv85, ptr %7, align 1
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -63, ptr %8, align 1
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %9, align 1
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call90 = call i32 @regmap_bulk_write(ptr noundef %55, i32 noundef 18, ptr noundef nonnull %buf, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end61.do.body105_crit_edge

if.end61.do.body105_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

if.end93:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %4, align 1
  %conv95 = zext i8 %57 to i32
  %mul96 = mul nuw nsw i32 %conv95, 50000
  %if_frequency = getelementptr inbounds %struct.tda18212_dev, ptr %1, i32 0, i32 3
  %58 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul96, ptr %if_frequency, align 4
  br label %exit

exit:                                             ; preds = %if.then117, %do.body105, %if.end93
  %ret.0 = phi i32 [ %ret.1, %if.then117 ], [ 0, %if.end93 ], [ %ret.1, %do.body105 ]
  %59 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool99.not = icmp eq ptr %60, null
  br i1 %tobool99.not, label %exit.if.end104_crit_edge, label %if.then100

exit.if.end104_crit_edge:                         ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then100:                                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %call103 = call i32 %60(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %exit.if.end104_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #7
  ret i32 %ret.0

do.body105:                                       ; preds = %if.end61.do.body105_crit_edge, %if.end53.do.body105_crit_edge, %if.end48.do.body105_crit_edge, %sw.epilog42.do.body105_crit_edge, %sw.bb25.do.body105_crit_edge, %sw.bb14.do.body105_crit_edge, %if.end9.do.body105_crit_edge
  %ret.1 = phi i32 [ %call45, %sw.epilog42.do.body105_crit_edge ], [ %call50, %if.end48.do.body105_crit_edge ], [ %call58, %if.end53.do.body105_crit_edge ], [ %call90, %if.end61.do.body105_crit_edge ], [ -22, %sw.bb14.do.body105_crit_edge ], [ -22, %sw.bb25.do.body105_crit_edge ], [ -22, %if.end9.do.body105_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18212_set_params.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18212_set_params, %if.then117)) #7
          to label %exit [label %if.then117], !srcloc !68

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  %client118 = getelementptr inbounds %struct.tda18212_dev, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %client118 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client118, align 4
  %dev119 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18212_set_params.__UNIQUE_ID_ddebug291, ptr noundef %dev119, ptr noundef nonnull @.str.14, i32 noundef %ret.1) #7
  br label %exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda18212_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %if_frequency = getelementptr inbounds %struct.tda18212_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %if_frequency, align 4
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !49, !50, !52, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_tda18212__295_274_tda18212_driver_init6, !1, !"__initcall__kmod_tda18212__295_274_tda18212_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tda18212.c", i32 274, i32 1}
!2 = !{ptr @__exitcall_tda18212_driver_exit, !1, !"__exitcall_tda18212_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tda18212.c", i32 276, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tda18212.c", i32 277, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/tda18212.c", i32 278, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/tda18212.c", i32 267, i32 11}
!12 = !{ptr @tda18212_driver, !13, !"tda18212_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/tda18212.c", i32 265, i32 26}
!14 = !{ptr @tda18212_probe.regmap_config, !15, !"regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/tda18212.c", i32 185, i32 36}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/tda18212.c", i32 193, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tda18212_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tda18212_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @tda18212_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/tda18212.c", i32 199, i32 16}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/tda18212.c", i32 210, i32 2}
!29 = !{ptr @tda18212_probe.__UNIQUE_ID_ddebug292, !28, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/tda18212.c", i32 220, i32 13}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/tuners/tda18212.c", i32 223, i32 13}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/tda18212.c", i32 230, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tda18212_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @tda18212_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/tuners/tda18212.c", i32 240, i32 2}
!41 = !{ptr @tda18212_probe.__UNIQUE_ID_ddebug293, !40, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!42 = !{ptr @tda18212_tuner_ops, !43, !"tda18212_tuner_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/tuners/tda18212.c", i32 163, i32 35}
!44 = !{ptr @tda18212_set_params.bw_params, !45, !"bw_params", i1 false, i1 false}
!45 = !{!"../drivers/media/tuners/tda18212.c", i32 36, i32 18}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/tda18212.c", i32 50, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @tda18212_set_params.__UNIQUE_ID_ddebug290, !47, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!50 = !{ptr @tda18212_set_params.__UNIQUE_ID_ddebug291, !51, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/tda18212.c", i32 150, i32 2}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/tda18212.c", i32 250, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tda18212_remove.__UNIQUE_ID_ddebug294, !53, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!56 = !{ptr @tda18212_id, !57, !"tda18212_id", i1 false, i1 false}
!57 = !{!"../drivers/media/tuners/tda18212.c", i32 259, i32 35}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{i64 2148268362, i64 2148268367, i64 2148268380, i64 2148268424, i64 2148268458, i64 2148268479}
