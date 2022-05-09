; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tua9001.c_pt.bc'
source_filename = "../drivers/media/tuners/tua9001.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tua9001_reg_val = type { i8, i16 }
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
%struct.tua9001_dev = type { ptr, ptr, ptr }
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

@__initcall__kmod_tua9001__299_265_tua9001_driver_init6 = internal global ptr @tua9001_driver_init, section ".initcall6.init", align 4
@tua9001_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tua9001_probe, ptr @tua9001_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tua9001_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tua9001_driver_exit = internal global ptr @tua9001_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description300 = internal constant [58 x i8] c"tua9001.description=Infineon TUA9001 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [46 x i8] c"tua9001.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [42 x i8] c"tua9001.file=drivers/media/tuners/tua9001\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [20 x i8] c"tua9001.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tua9001\00", [24 x i8] zeroinitializer }, align 32
@tua9001_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tua9001\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tua9001_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@tua9001_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tua9001:190:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@tua9001_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Infineon TUA9001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 170000000, i32 862000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @tua9001_init, ptr @tua9001_sleep, ptr null, ptr null, ptr @tua9001_set_params, ptr null, ptr null, ptr null, ptr null, ptr @tua9001_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tua9001_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Infineon TUA9001 successfully attached\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tua9001_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/tuners/tua9001.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tua9001_probe._entry_ptr = internal global ptr @tua9001_probe._entry, section ".printk_index", align 4
@tua9001_probe.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tua9001_init.data = internal constant { [15 x %struct.tua9001_reg_val], [36 x i8] } { [15 x %struct.tua9001_reg_val] [%struct.tua9001_reg_val { i8 30, i16 25874 }, %struct.tua9001_reg_val { i8 37, i16 -18296 }, %struct.tua9001_reg_val { i8 57, i16 21600 }, %struct.tua9001_reg_val { i8 59, i16 192 }, %struct.tua9001_reg_val { i8 58, i16 -4096 }, %struct.tua9001_reg_val { i8 8, i16 0 }, %struct.tua9001_reg_val { i8 50, i16 48 }, %struct.tua9001_reg_val { i8 65, i16 28730 }, %struct.tua9001_reg_val { i8 64, i16 7288 }, %struct.tua9001_reg_val { i8 44, i16 7168 }, %struct.tua9001_reg_val { i8 54, i16 -16365 }, %struct.tua9001_reg_val { i8 55, i16 28440 }, %struct.tua9001_reg_val { i8 39, i16 8 }, %struct.tua9001_reg_val { i8 42, i16 1 }, %struct.tua9001_reg_val { i8 52, i16 2624 }], [36 x i8] zeroinitializer }, align 32
@tua9001_init.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tua9001_init\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@tua9001_init.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.4, ptr @.str.7, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tua9001_sleep.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.4, ptr @.str.9, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tua9001_sleep\00", [18 x i8] zeroinitializer }, align 32
@tua9001_sleep.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.4, ptr @.str.7, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tua9001_set_params.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tua9001_set_params\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"delivery_system=%u frequency=%u bandwidth_hz=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@tua9001_set_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.4, ptr @.str.7, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tua9001_get_if_frequency.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.4, ptr @.str.9, i8 0, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tua9001_get_if_frequency\00", [39 x i8] zeroinitializer }, align 32
@tua9001_remove.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.4, ptr @.str.9, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tua9001_remove\00", [17 x i8] zeroinitializer }, align 32
@tua9001_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.14, ptr @.str.4, i32 243, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Tuner disable failed (%pe)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tua9001_remove._entry_ptr = internal global ptr @tua9001_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5000000, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"tua9001_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 255, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 257, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"tua9001_id_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 249, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 177, i32 36 }
@___asan_gen_.29 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 190, i32 16 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"tua9001_tuner_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 156, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 221, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 226, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 15, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 33, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 60, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 84, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 150, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 236, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [34 x i8] c"../drivers/media/tuners/tua9001.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 243, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_tua9001_driver_exit, ptr @__initcall__kmod_tua9001__299_265_tua9001_driver_init6, ptr @tua9001_driver_exit, ptr @tua9001_probe._entry, ptr @tua9001_probe._entry_ptr, ptr @tua9001_remove._entry, ptr @tua9001_remove._entry_ptr, ptr @tua9001_driver, ptr @.str, ptr @tua9001_id_table, ptr @tua9001_probe.regmap_config, ptr @tua9001_probe._key, ptr @.str.1, ptr @tua9001_tuner_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tua9001_init.data, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tua9001_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tua9001_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tua9001_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tua9001_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tua9001_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tua9001_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tua9001_init.data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tua9001_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tua9001_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tua9001_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tua9001_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @tua9001_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tua9001_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body33_crit_edge, label %if.end

entry.do.body33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body33

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call7.i.i, align 8
  %client4 = getelementptr inbounds %struct.tua9001_dev, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %client4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client4, align 4
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tua9001_probe.regmap_config, ptr noundef nonnull @tua9001_probe._key, ptr noundef nonnull @.str.1) #5
  %regmap = getelementptr inbounds %struct.tua9001_dev, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call5 to i32
  br label %err_kfree

if.end11:                                         ; preds = %if.end
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %callback, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.end11.if.end31_crit_edge, label %if.then13

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then13:                                        ; preds = %if.end11
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call15 = tail call i32 %12(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.err_kfree_crit_edge

if.then13.err_kfree_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_kfree

if.end18:                                         ; preds = %if.then13
  %15 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %callback, align 4
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %call21 = tail call i32 %16(ptr noundef %18, i32 noundef 0, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.err_kfree_crit_edge

if.end18.err_kfree_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_kfree

if.end24:                                         ; preds = %if.end18
  %19 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %callback, align 4
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %call27 = tail call i32 %20(ptr noundef %22, i32 noundef 0, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end24.if.end31_crit_edge, label %if.end24.err_kfree_crit_edge

if.end24.err_kfree_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_kfree

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.end31:                                         ; preds = %if.end24.if.end31_crit_edge, %if.end11.if.end31_crit_edge
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %24 = call ptr @memcpy(ptr %tuner_ops, ptr @tua9001_tuner_ops, i32 220)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

err_kfree:                                        ; preds = %if.end24.err_kfree_crit_edge, %if.end18.err_kfree_crit_edge, %if.then13.err_kfree_crit_edge, %if.then8
  %ret.0 = phi i32 [ %10, %if.then8 ], [ %call15, %if.then13.err_kfree_crit_edge ], [ %call21, %if.end18.err_kfree_crit_edge ], [ %call27, %if.end24.err_kfree_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %do.body33

do.body33:                                        ; preds = %err_kfree, %entry.do.body33_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -12, %entry.do.body33_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tua9001_probe.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tua9001_probe, %if.then39)) #5
          to label %cleanup [label %if.then39], !srcloc !73

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tua9001_probe.__UNIQUE_ID_ddebug297, ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %ret.1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body33, %if.end31
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %ret.1, %if.then39 ], [ %ret.1, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tua9001_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tua9001_remove.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tua9001_remove, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tua9001_remove.__UNIQUE_ID_ddebug298, ptr noundef %dev5, ptr noundef nonnull @.str.9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %callback, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %do.end.if.end18_crit_edge, label %if.then7

do.end.if.end18_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then7:                                         ; preds = %do.end
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %call9 = tail call i32 %5(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end18_crit_edge, label %do.end14

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %8 = inttoptr i32 %call9 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.15, ptr noundef nonnull %8) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.then7.if.end18_crit_edge, %do.end.if.end18_crit_edge
  tail call void @kfree(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tua9001_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %client1 = getelementptr inbounds %struct.tua9001_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tua9001_init.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tua9001_init, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tua9001_init.__UNIQUE_ID_ddebug290, ptr noundef %dev4, ptr noundef nonnull @.str.9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %4 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %callback, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end.if.end12_crit_edge, label %if.then6

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then6:                                         ; preds = %do.end
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %call8 = tail call i32 %5(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.if.end12_crit_edge, label %if.then6.do.body19_crit_edge

if.then6.do.body19_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end12:                                         ; preds = %if.then6.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %regmap = getelementptr inbounds %struct.tua9001_dev, ptr %1, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end12
  %i.055 = phi i32 [ 0, %if.end12 ], [ %inc, %for.cond.for.body_crit_edge ]
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [15 x %struct.tua9001_reg_val], ptr @tua9001_init.data, i32 0, i32 %i.055
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %11 to i32
  %val = getelementptr [15 x %struct.tua9001_reg_val], ptr @tua9001_init.data, i32 0, i32 %i.055, i32 1
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val, align 2
  %conv14 = zext i16 %13 to i32
  %call15 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %conv, i32 noundef %conv14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.cond, label %for.body.do.body19_crit_edge

for.body.do.body19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

do.body19:                                        ; preds = %for.body.do.body19_crit_edge, %if.then6.do.body19_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then6.do.body19_crit_edge ], [ %call15, %for.body.do.body19_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tua9001_init.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tua9001_init, %if.then31)) #5
          to label %cleanup [label %if.then31], !srcloc !73

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tua9001_init.__UNIQUE_ID_ddebug291, ptr noundef %dev32, ptr noundef nonnull @.str.7, i32 noundef %ret.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %do.body19, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then31 ], [ %ret.0, %do.body19 ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tua9001_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %client1 = getelementptr inbounds %struct.tua9001_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tua9001_sleep.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tua9001_sleep, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tua9001_sleep.__UNIQUE_ID_ddebug292, ptr noundef %dev4, ptr noundef nonnull @.str.9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %4 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %callback, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.then6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %do.end
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %call8 = tail call i32 %5(ptr noundef %7, i32 noundef 0, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then6.cleanup_crit_edge, label %do.body13

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tua9001_sleep.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tua9001_sleep, %if.then25)) #5
          to label %cleanup [label %if.then25], !srcloc !73

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tua9001_sleep.__UNIQUE_ID_ddebug293, ptr noundef %dev26, ptr noundef nonnull @.str.7, i32 noundef %call8) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body13, %if.then6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %call8, %if.then25 ], [ %call8, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tua9001_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %client1 = getelementptr inbounds %struct.tua9001_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tua9001_set_params.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tua9001_set_params, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %8 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bandwidth_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tua9001_set_params.__UNIQUE_ID_ddebug294, ptr noundef %dev4, ptr noundef nonnull @.str.12, i32 noundef %5, i32 noundef %7, i32 noundef %9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %10 = ptrtoint ptr %delivery_system5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delivery_system5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cond = icmp eq i32 %11, 3
  br i1 %cond, label %sw.bb, label %do.end.do.body51_crit_edge

do.end.do.body51_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

sw.bb:                                            ; preds = %do.end
  %bandwidth_hz6 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %12 = ptrtoint ptr %bandwidth_hz6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bandwidth_hz6, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %sw.bb.do.body51_crit_edge [
    i32 8000000, label %sw.bb.sw.epilog12_crit_edge
    i32 7000000, label %sw.bb8
    i32 6000000, label %sw.bb9
    i32 5000000, label %sw.bb10
  ]

sw.bb.sw.epilog12_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog12

sw.bb.do.body51_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

sw.bb8:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog12

sw.bb9:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog12

sw.bb10:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb.sw.epilog12_crit_edge
  %val.0 = phi i32 [ 12288, %sw.bb10 ], [ 8192, %sw.bb9 ], [ 4096, %sw.bb8 ], [ 0, %sw.bb.sw.epilog12_crit_edge ]
  %15 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dtv_property_cache, align 4
  %sub = add i32 %16, -150000000
  %conv = zext i32 %sub to i64
  %mul = mul nuw nsw i64 %conv, 48
  %17 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul) #10, !srcloc !74
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul, i64 %17, i32 0) #10, !srcloc !75
  %asmresult10.i.i.i = extractvalue { i64, i32 } %18, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 18
  %conv19 = trunc i64 %div1581.i.i to i32
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %19 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %callback, align 4
  %tobool22.not = icmp eq ptr %20, null
  br i1 %tobool22.not, label %sw.epilog12.if.end29_crit_edge, label %if.then23

sw.epilog12.if.end29_crit_edge:                   ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then23:                                        ; preds = %sw.epilog12
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %call25 = tail call i32 %20(ptr noundef %22, i32 noundef 0, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then23.if.end29_crit_edge, label %if.then23.do.body51_crit_edge

if.then23.do.body51_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %sw.epilog12.if.end29_crit_edge
  %regmap = getelementptr inbounds %struct.tua9001_dev, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call37 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 4, i32 noundef %val.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.cond, label %if.end29.do.body51_crit_edge

if.end29.do.body51_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

for.cond:                                         ; preds = %if.end29
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %conv36.1 = and i32 %conv19, 65535
  %call37.1 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 31, i32 noundef %conv36.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.1)
  %tobool38.not.1 = icmp eq i32 %call37.1, 0
  br i1 %tobool38.not.1, label %for.cond.1, label %for.cond.do.body51_crit_edge

for.cond.do.body51_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

for.cond.1:                                       ; preds = %for.cond
  %27 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %callback, align 4
  %tobool42.not = icmp eq ptr %28, null
  br i1 %tobool42.not, label %for.cond.1.cleanup_crit_edge, label %if.then43

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then43:                                        ; preds = %for.cond.1
  %adapter45 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %29 = ptrtoint ptr %adapter45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter45, align 8
  %call46 = tail call i32 %28(ptr noundef %30, i32 noundef 0, i32 noundef 2, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then43.cleanup_crit_edge, label %if.then43.do.body51_crit_edge

if.then43.do.body51_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body51

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body51:                                        ; preds = %if.then43.do.body51_crit_edge, %for.cond.do.body51_crit_edge, %if.end29.do.body51_crit_edge, %if.then23.do.body51_crit_edge, %sw.bb.do.body51_crit_edge, %do.end.do.body51_crit_edge
  %ret.0 = phi i32 [ %call25, %if.then23.do.body51_crit_edge ], [ %call46, %if.then43.do.body51_crit_edge ], [ -22, %sw.bb.do.body51_crit_edge ], [ -22, %do.end.do.body51_crit_edge ], [ %call37, %if.end29.do.body51_crit_edge ], [ %call37.1, %for.cond.do.body51_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tua9001_set_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tua9001_set_params, %if.then63)) #5
          to label %cleanup [label %if.then63], !srcloc !73

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  %dev64 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tua9001_set_params.__UNIQUE_ID_ddebug295, ptr noundef %dev64, ptr noundef nonnull @.str.7, i32 noundef %ret.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.body51, %if.then43.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then43.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ %ret.0, %if.then63 ], [ %ret.0, %do.body51 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tua9001_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %client1 = getelementptr inbounds %struct.tua9001_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tua9001_get_if_frequency.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tua9001_get_if_frequency, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tua9001_get_if_frequency.__UNIQUE_ID_ddebug296, ptr noundef %dev4, ptr noundef nonnull @.str.9) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !34, !36, !37, !38, !40, !42, !43, !45, !47, !48, !49, !51, !53, !54, !56, !57, !59, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_tua9001__299_265_tua9001_driver_init6, !1, !"__initcall__kmod_tua9001__299_265_tua9001_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tua9001.c", i32 265, i32 1}
!2 = !{ptr @__exitcall_tua9001_driver_exit, !1, !"__exitcall_tua9001_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description300, !4, !"__UNIQUE_ID_description300", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tua9001.c", i32 267, i32 1}
!5 = !{ptr @__UNIQUE_ID_author301, !6, !"__UNIQUE_ID_author301", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tua9001.c", i32 268, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/tua9001.c", i32 269, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/tua9001.c", i32 257, i32 11}
!12 = !{ptr @tua9001_driver, !13, !"tua9001_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/tua9001.c", i32 255, i32 26}
!14 = !{ptr @tua9001_probe.regmap_config, !15, !"regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/tua9001.c", i32 177, i32 36}
!16 = !{ptr @tua9001_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/tua9001.c", i32 190, i32 16}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/tua9001.c", i32 221, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @tua9001_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @tua9001_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/tua9001.c", i32 226, i32 2}
!29 = !{ptr @tua9001_probe.__UNIQUE_ID_ddebug297, !28, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!30 = !{ptr @tua9001_tuner_ops, !31, !"tua9001_tuner_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/tua9001.c", i32 156, i32 35}
!32 = !{ptr @tua9001_init.data, !33, !"data", i1 false, i1 false}
!33 = !{!"../drivers/media/tuners/tua9001.c", i32 15, i32 38}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/tua9001.c", i32 33, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tua9001_init.__UNIQUE_ID_ddebug290, !35, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!38 = !{ptr @tua9001_init.__UNIQUE_ID_ddebug291, !39, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/tua9001.c", i32 50, i32 2}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/tua9001.c", i32 60, i32 2}
!42 = !{ptr @tua9001_sleep.__UNIQUE_ID_ddebug292, !41, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!43 = !{ptr @tua9001_sleep.__UNIQUE_ID_ddebug293, !44, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/tua9001.c", i32 71, i32 2}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/tuners/tua9001.c", i32 84, i32 2}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tua9001_set_params.__UNIQUE_ID_ddebug294, !46, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!49 = !{ptr @tua9001_set_params.__UNIQUE_ID_ddebug295, !50, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!50 = !{!"../drivers/media/tuners/tua9001.c", i32 141, i32 2}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/tuners/tua9001.c", i32 150, i32 2}
!53 = !{ptr @tua9001_get_if_frequency.__UNIQUE_ID_ddebug296, !52, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/tua9001.c", i32 236, i32 2}
!56 = !{ptr @tua9001_remove.__UNIQUE_ID_ddebug298, !55, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/tua9001.c", i32 243, i32 4}
!59 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @tua9001_remove._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @tua9001_remove._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @tua9001_id_table, !63, !"tua9001_id_table", i1 false, i1 false}
!63 = !{!"../drivers/media/tuners/tua9001.c", i32 249, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148268814, i64 2148268819, i64 2148268832, i64 2148268876, i64 2148268910, i64 2148268931}
!74 = !{i64 808170, i64 808197}
!75 = !{i64 808865, i64 808892, i64 808925, i64 808946, i64 808973, i64 808999}
