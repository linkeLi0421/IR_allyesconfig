; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/m88rs6000t.c_pt.bc'
source_filename = "../drivers/media/tuners/m88rs6000t.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.m88rs6000t_reg_val = type { i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.m88rs6000t_dev = type { %struct.m88rs6000t_config, ptr, ptr, i32 }
%struct.m88rs6000t_config = type { ptr }
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

@__initcall__kmod_m88rs6000t__312_729_m88rs6000t_driver_init6 = internal global ptr @m88rs6000t_driver_init, section ".initcall6.init", align 4
@m88rs6000t_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @m88rs6000t_probe, ptr @m88rs6000t_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @m88rs6000t_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_m88rs6000t_driver_exit = internal global ptr @m88rs6000t_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [52 x i8] c"m88rs6000t.author=Max nibble <nibble.max@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [63 x i8] c"m88rs6000t.description=Montage M88RS6000 internal tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [48 x i8] c"m88rs6000t.file=drivers/media/tuners/m88rs6000t\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [23 x i8] c"m88rs6000t.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m88rs6000t\00", [21 x i8] zeroinitializer }, align 32
@m88rs6000t_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"m88rs6000t\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@m88rs6000t_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@m88rs6000t_probe.reg_vals = internal constant { [25 x %struct.m88rs6000t_reg_val], [46 x i8] } { [25 x %struct.m88rs6000t_reg_val] [%struct.m88rs6000t_reg_val { i8 16, i8 -5 }, %struct.m88rs6000t_reg_val { i8 36, i8 56 }, %struct.m88rs6000t_reg_val { i8 17, i8 10 }, %struct.m88rs6000t_reg_val { i8 18, i8 0 }, %struct.m88rs6000t_reg_val { i8 43, i8 28 }, %struct.m88rs6000t_reg_val { i8 68, i8 72 }, %struct.m88rs6000t_reg_val { i8 84, i8 36 }, %struct.m88rs6000t_reg_val { i8 85, i8 6 }, %struct.m88rs6000t_reg_val { i8 89, i8 0 }, %struct.m88rs6000t_reg_val { i8 91, i8 76 }, %struct.m88rs6000t_reg_val { i8 96, i8 -117 }, %struct.m88rs6000t_reg_val { i8 97, i8 -12 }, %struct.m88rs6000t_reg_val { i8 101, i8 7 }, %struct.m88rs6000t_reg_val { i8 109, i8 111 }, %struct.m88rs6000t_reg_val { i8 110, i8 49 }, %struct.m88rs6000t_reg_val { i8 60, i8 -13 }, %struct.m88rs6000t_reg_val { i8 55, i8 15 }, %struct.m88rs6000t_reg_val { i8 72, i8 40 }, %struct.m88rs6000t_reg_val { i8 73, i8 -40 }, %struct.m88rs6000t_reg_val { i8 112, i8 102 }, %struct.m88rs6000t_reg_val { i8 113, i8 -49 }, %struct.m88rs6000t_reg_val { i8 114, i8 -127 }, %struct.m88rs6000t_reg_val { i8 115, i8 -89 }, %struct.m88rs6000t_reg_val { i8 116, i8 79 }, %struct.m88rs6000t_reg_val { i8 117, i8 -4 }], [46 x i8] zeroinitializer }, align 32
@m88rs6000t_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 619, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kzalloc() failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m88rs6000t_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/tuners/m88rs6000t.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@m88rs6000t_probe._entry_ptr = internal global ptr @m88rs6000t_probe._entry, section ".printk_index", align 4
@m88rs6000t_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"m88rs6000t:625:(&regmap_config)->lock\00", [58 x i8] zeroinitializer }, align 32
@m88rs6000t_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 650, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip_id=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@m88rs6000t_probe._entry_ptr.10 = internal global ptr @m88rs6000t_probe._entry.7, section ".printk_index", align 4
@m88rs6000t_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 687, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Montage M88RS6000 internal tuner successfully identified\0A\00", [38 x i8] zeroinitializer }, align 32
@m88rs6000t_probe._entry_ptr.13 = internal global ptr @m88rs6000t_probe._entry.11, section ".printk_index", align 4
@m88rs6000t_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Montage M88RS6000 Internal Tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @m88rs6000t_init, ptr @m88rs6000t_sleep, ptr null, ptr null, ptr @m88rs6000t_set_params, ptr null, ptr null, ptr @m88rs6000t_get_frequency, ptr null, ptr @m88rs6000t_get_if_frequency, ptr null, ptr @m88rs6000t_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@m88rs6000t_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 -83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@m88rs6000t_init.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m88rs6000t_init\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@m88rs6000t_init.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.14, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88rs6000t_sleep.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.16, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m88rs6000t_sleep\00", [47 x i8] zeroinitializer }, align 32
@m88rs6000t_sleep.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.14, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88rs6000t_set_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"m88rs6000t_set_params\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"frequency=%d symbol_rate=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@m88rs6000t_set_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.14, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88rs6000t_set_pll_freq.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"m88rs6000t_set_pll_freq\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"actual tune frequency=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@m88rs6000t_set_pll_freq.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.14, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@m88rs6000t_set_demod_mclk.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.14, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"m88rs6000t_set_demod_mclk\00", [38 x i8] zeroinitializer }, align 32
@m88rs6000t_get_frequency.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"m88rs6000t_get_frequency\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@m88rs6000t_get_if_frequency.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.24, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"m88rs6000t_get_if_frequency\00", [36 x i8] zeroinitializer }, align 32
@__const.m88rs6000t_get_rf_strength.RFGS = private unnamed_addr constant [13 x i32] [i32 0, i32 245, i32 266, i32 268, i32 270, i32 285, i32 298, i32 295, i32 283, i32 285, i32 285, i32 300, i32 300], align 4
@__const.m88rs6000t_get_rf_strength.IFGS = private unnamed_addr constant [12 x i32] [i32 0, i32 300, i32 230, i32 270, i32 270, i32 285, i32 295, i32 285, i32 290, i32 295, i32 295, i32 310], align 4
@__const.m88rs6000t_get_rf_strength.BBGS = private unnamed_addr constant [14 x i32] [i32 0, i32 286, i32 275, i32 290, i32 294, i32 300, i32 290, i32 290, i32 285, i32 283, i32 260, i32 295, i32 290, i32 260], align 4
@m88rs6000t_get_rf_strength.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.14, i8 0, i8 -117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"m88rs6000t_get_rf_strength\00", [37 x i8] zeroinitializer }, align 32
@m88rs6000t_remove.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.24, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"m88rs6000t_remove\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 3, i64 6]
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"m88rs6000t_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 720, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 722, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"m88rs6000t_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 714, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 584, i32 36 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"reg_vals\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 588, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 619, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 625, i32 16 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 650, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 687, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [21 x i8] c"m88rs6000t_tuner_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 561, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 695, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 430, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 452, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 393, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 364, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 145, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 467, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 477, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 557, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [37 x i8] c"../drivers/media/tuners/m88rs6000t.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 705, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_m88rs6000t_driver_exit, ptr @__initcall__kmod_m88rs6000t__312_729_m88rs6000t_driver_init6, ptr @m88rs6000t_driver_exit, ptr @m88rs6000t_probe._entry, ptr @m88rs6000t_probe._entry.11, ptr @m88rs6000t_probe._entry.7, ptr @m88rs6000t_probe._entry_ptr, ptr @m88rs6000t_probe._entry_ptr.10, ptr @m88rs6000t_probe._entry_ptr.13, ptr @m88rs6000t_driver, ptr @.str, ptr @m88rs6000t_id, ptr @m88rs6000t_probe.regmap_config, ptr @m88rs6000t_probe.reg_vals, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @m88rs6000t_probe._key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @m88rs6000t_tuner_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000t_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000t_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000t_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000t_probe.reg_vals to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000t_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000t_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000t_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000t_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m88rs6000t_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs6000t_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @m88rs6000t_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m88rs6000t_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @m88rs6000t_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs6000t_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #7
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %do.body93

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call7.i.i, align 8
  %client5 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %client5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %client5, align 4
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @m88rs6000t_probe.regmap_config, ptr noundef nonnull @m88rs6000t_probe._key, ptr noundef nonnull @.str.6) #7
  %regmap = getelementptr inbounds %struct.m88rs6000t_dev, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call6 to i32
  br label %do.body93

if.end12:                                         ; preds = %if.end
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call6, i32 noundef 17, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not = icmp eq i32 %call.i, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.do.body93_crit_edge

if.end12.do.body93_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end17:                                         ; preds = %if.end12
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 50000, i32 noundef 2) #7
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 8
  %call.i156 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool20.not = icmp eq i32 %call.i156, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.do.body93_crit_edge

if.end17.do.body93_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end22:                                         ; preds = %if.end17
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #7
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 8
  %call24 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 7, i32 noundef 125) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.do.body93_crit_edge

if.end22.do.body93_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end27:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 8
  %call29 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 4, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.do.body93_crit_edge

if.end27.do.body93_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end32:                                         ; preds = %if.end27
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 8
  %call34 = call i32 @regmap_read(ptr noundef %19, i32 noundef 1, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.end40, label %if.end32.do.body93_crit_edge

if.end32.do.body93_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

do.end40:                                         ; preds = %if.end32
  %20 = ptrtoint ptr %client5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client5, align 4
  %dev42 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42, ptr noundef nonnull @.str.8, i32 noundef %23) #11
  %24 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %25)
  %cmp.not = icmp eq i32 %25, 100
  br i1 %cmp.not, label %if.end44, label %do.end40.do.body93_crit_edge

do.end40.do.body93_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end44:                                         ; preds = %do.end40
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 8
  %call46 = call i32 @regmap_write(ptr noundef %27, i32 noundef 5, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.do.body93_crit_edge

if.end44.do.body93_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end49:                                         ; preds = %if.end44
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 8
  %call51 = call i32 @regmap_write(ptr noundef %29, i32 noundef 17, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.do.body93_crit_edge

if.end49.do.body93_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end54:                                         ; preds = %if.end49
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 8
  %call56 = call i32 @regmap_write(ptr noundef %31, i32 noundef 21, i32 noundef 108) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.do.body93_crit_edge

if.end54.do.body93_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end59:                                         ; preds = %if.end54
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 8
  %call61 = call i32 @regmap_write(ptr noundef %33, i32 noundef 23, i32 noundef 193) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end59.do.body93_crit_edge

if.end59.do.body93_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end64:                                         ; preds = %if.end59
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 8
  %call66 = call i32 @regmap_write(ptr noundef %35, i32 noundef 23, i32 noundef 129) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end64.do.body93_crit_edge

if.end64.do.body93_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end69:                                         ; preds = %if.end64
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #7
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 8
  %call71 = call i32 @regmap_write(ptr noundef %37, i32 noundef 5, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end69.do.body93_crit_edge

if.end69.do.body93_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end74:                                         ; preds = %if.end69
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 8
  %call76 = call i32 @regmap_write(ptr noundef %39, i32 noundef 17, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end74.for.body_crit_edge, label %if.end74.do.body93_crit_edge

if.end74.do.body93_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

if.end74.for.body_crit_edge:                      ; preds = %if.end74
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %do.end90, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end74.for.body_crit_edge
  %i.0158 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end74.for.body_crit_edge ]
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 8
  %arrayidx = getelementptr [25 x %struct.m88rs6000t_reg_val], ptr @m88rs6000t_probe.reg_vals, i32 0, i32 %i.0158
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %43 to i32
  %val = getelementptr [25 x %struct.m88rs6000t_reg_val], ptr @m88rs6000t_probe.reg_vals, i32 0, i32 %i.0158, i32 1
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %val, align 1
  %conv83 = zext i8 %45 to i32
  %call84 = call i32 @regmap_write(ptr noundef %41, i32 noundef %conv, i32 noundef %conv83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %for.cond, label %for.body.do.body93_crit_edge

for.body.do.body93_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body93

do.end90:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %client5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client5, align 4
  %dev92 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev92, ptr noundef nonnull @.str.12) #11
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %48 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %49 = call ptr @memcpy(ptr %tuner_ops, ptr @m88rs6000t_tuner_ops, i32 220)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

do.body93:                                        ; preds = %for.body.do.body93_crit_edge, %if.end74.do.body93_crit_edge, %if.end69.do.body93_crit_edge, %if.end64.do.body93_crit_edge, %if.end59.do.body93_crit_edge, %if.end54.do.body93_crit_edge, %if.end49.do.body93_crit_edge, %if.end44.do.body93_crit_edge, %do.end40.do.body93_crit_edge, %if.end32.do.body93_crit_edge, %if.end27.do.body93_crit_edge, %if.end22.do.body93_crit_edge, %if.end17.do.body93_crit_edge, %if.end12.do.body93_crit_edge, %if.then9, %if.then
  %ret.0 = phi i32 [ %11, %if.then9 ], [ %call.i, %if.end12.do.body93_crit_edge ], [ %call.i156, %if.end17.do.body93_crit_edge ], [ %call24, %if.end22.do.body93_crit_edge ], [ %call29, %if.end27.do.body93_crit_edge ], [ %call34, %if.end32.do.body93_crit_edge ], [ %call46, %if.end44.do.body93_crit_edge ], [ %call51, %if.end49.do.body93_crit_edge ], [ %call56, %if.end54.do.body93_crit_edge ], [ %call61, %if.end59.do.body93_crit_edge ], [ %call66, %if.end64.do.body93_crit_edge ], [ %call71, %if.end69.do.body93_crit_edge ], [ %call76, %if.end74.do.body93_crit_edge ], [ -12, %if.then ], [ -19, %do.end40.do.body93_crit_edge ], [ %call84, %for.body.do.body93_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_probe, %if.then99)) #7
          to label %do.end103 [label %if.then99], !srcloc !94

if.then99:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_probe.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #7
  br label %do.end103

do.end103:                                        ; preds = %if.then99, %do.body93
  call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end103, %do.end90
  %retval.0 = phi i32 [ %ret.0, %do.end103 ], [ 0, %do.end90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs6000t_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_remove.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_remove.__UNIQUE_ID_ddebug311, ptr noundef %dev5, ptr noundef nonnull @.str.24) #7
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
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs6000t_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_init.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_init.__UNIQUE_ID_ddebug299, ptr noundef %dev3, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 17, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.do.body17_crit_edge

do.end.do.body17_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

if.end7:                                          ; preds = %do.end
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 50000, i32 noundef 2) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool10.not = icmp eq i32 %call.i47, 0
  br i1 %tobool10.not, label %err, label %if.end7.do.body17_crit_edge

if.end7.do.body17_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

err:                                              ; preds = %if.end7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 50000, i32 noundef 2) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 7, i32 noundef 125) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %err.if.end35_crit_edge, label %err.do.body17_crit_edge

err.do.body17_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

err.if.end35_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.body17:                                        ; preds = %err.do.body17_crit_edge, %if.end7.do.body17_crit_edge, %do.end.do.body17_crit_edge
  %ret.051 = phi i32 [ %call14, %err.do.body17_crit_edge ], [ %call.i47, %if.end7.do.body17_crit_edge ], [ %call.i, %do.end.do.body17_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_init.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_init, %if.then29)) #7
          to label %if.end35 [label %if.then29], !srcloc !94

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %client30 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %client30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client30, align 4
  %dev31 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_init.__UNIQUE_ID_ddebug300, ptr noundef %dev31, ptr noundef nonnull @.str.14, i32 noundef %ret.051) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then29, %do.body17, %err.if.end35_crit_edge
  %ret.052 = phi i32 [ %ret.051, %if.then29 ], [ 0, %err.if.end35_crit_edge ], [ %ret.051, %do.body17 ]
  ret i32 %ret.052
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs6000t_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_sleep.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_sleep, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_sleep.__UNIQUE_ID_ddebug301, ptr noundef %dev3, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 7, i32 noundef 109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end25, label %do.body7

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_sleep.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_sleep, %if.then19)) #7
          to label %cleanup [label %if.then19], !srcloc !94

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %client20 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %client20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client20, align 4
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_sleep.__UNIQUE_ID_ddebug302, ptr noundef %dev21, ptr noundef nonnull @.str.14, i32 noundef %call4) #7
  br label %cleanup

if.end25:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then19, %do.body7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs6000t_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_set_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_set_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %6 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %symbol_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_set_params.__UNIQUE_ID_ddebug297, ptr noundef %dev3, ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %symbol_rate4 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %8 = ptrtoint ptr %symbol_rate4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %symbol_rate4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %9)
  %cmp = icmp ult i32 %9, 5000000
  %. = select i1 %cmp, i32 3000, i32 0
  %10 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dtv_property_cache, align 4
  %add = add i32 %11, 500
  %add8 = add i32 %add, %.
  %div = udiv i32 %add8, 1000
  %call9 = tail call fastcc i32 @m88rs6000t_set_pll_freq(ptr noundef %1, i32 noundef %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %do.end.do.body31_crit_edge

do.end.do.body31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.end12:                                         ; preds = %do.end
  %12 = ptrtoint ptr %symbol_rate4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %symbol_rate4, align 4
  %div14 = udiv i32 %13, 1000
  %mul.i = mul nuw nsw i32 %div14, 9
  %div.i = udiv i32 %mul.i, 14
  %add.i = add nuw nsw i32 %., 2000
  %add1.i = add nuw nsw i32 %add.i, %div.i
  %14 = tail call i32 @llvm.umax.i32(i32 %add1.i, i32 6000) #7
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 43000) #7
  %div8.lhs.trunc.i = trunc i32 %15 to i16
  %div816.i = udiv i16 %div8.lhs.trunc.i, 1000
  %div8.zext.i = zext i16 %div816.i to i32
  %regmap.i = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 64, i32 noundef %div8.zext.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.do.body31_crit_edge

if.end12.do.body31_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.end18:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.do.body31_crit_edge

if.end18.do.body31_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.end22:                                         ; preds = %if.end18
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %err, label %if.end22.do.body31_crit_edge

if.end22.do.body31_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

err:                                              ; preds = %if.end22
  %call28 = tail call fastcc i32 @m88rs6000t_set_demod_mclk(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %err.if.end49_crit_edge, label %err.do.body31_crit_edge

err.do.body31_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

err.if.end49_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

do.body31:                                        ; preds = %err.do.body31_crit_edge, %if.end22.do.body31_crit_edge, %if.end18.do.body31_crit_edge, %if.end12.do.body31_crit_edge, %do.end.do.body31_crit_edge
  %ret.074 = phi i32 [ %call28, %err.do.body31_crit_edge ], [ %call24, %if.end22.do.body31_crit_edge ], [ %call19, %if.end18.do.body31_crit_edge ], [ %call.i, %if.end12.do.body31_crit_edge ], [ %call9, %do.end.do.body31_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_set_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_set_params, %if.then43)) #7
          to label %if.end49 [label %if.then43], !srcloc !94

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  %client44 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %client44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client44, align 4
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_set_params.__UNIQUE_ID_ddebug298, ptr noundef %dev45, ptr noundef nonnull @.str.14, i32 noundef %ret.074) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %do.body31, %err.if.end49_crit_edge
  %ret.075 = phi i32 [ %ret.074, %if.then43 ], [ 0, %err.if.end49_crit_edge ], [ %ret.074, %do.body31 ]
  ret i32 %ret.075
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs6000t_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_get_frequency.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_get_frequency, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_get_frequency.__UNIQUE_ID_ddebug303, ptr noundef %dev3, ptr noundef nonnull @.str.24) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %frequency_khz = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %frequency_khz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency_khz, align 4
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs6000t_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_get_if_frequency.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_get_if_frequency, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !94

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_get_if_frequency.__UNIQUE_ID_ddebug304, ptr noundef %dev3, ptr noundef nonnull @.str.24) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m88rs6000t_get_rf_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !93
  %regmap = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 90, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 15
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 95, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and6 = and i32 %10, 15
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_read(ptr noundef %12, i32 noundef 63, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end11:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %shr = lshr i32 %14, 4
  %and12 = and i32 %shr, 7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call14 = call i32 @regmap_read(ptr noundef %16, i32 noundef 119, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.do.body_crit_edge

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end17:                                         ; preds = %if.end11
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %shr18 = lshr i32 %18, 4
  %and19 = and i32 %shr18, 15
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_read(ptr noundef %20, i32 noundef 118, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end17.do.body_crit_edge

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end24:                                         ; preds = %if.end17
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and25 = lshr i32 %22, 2
  %shr26 = and i32 %and25, 15
  %umin = call i32 @llvm.umin.i32(i32 %and, i32 12)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end24
  %i.0157 = phi i32 [ 0, %if.end24 ], [ %inc, %for.body.for.body_crit_edge ]
  %RFG.0156 = phi i32 [ 0, %if.end24 ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [13 x i32], ptr @__const.m88rs6000t_get_rf_strength.RFGS, i32 0, i32 %i.0157
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %add = add i32 %24, %RFG.0156
  %inc = add nuw nsw i32 %i.0157, 1
  %exitcond.not = icmp eq i32 %i.0157, %umin
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp29 = icmp eq i32 %and, 0
  %add31 = add i32 %add, 400
  %spec.select = select i1 %cmp29, i32 %add31, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp33 = icmp eq i32 %and, 1
  %add35 = add i32 %spec.select, 300
  %RFG.2 = select i1 %cmp33, i32 %add35, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp37 = icmp eq i32 %and, 2
  %add39 = add i32 %RFG.2, 200
  %RFG.3 = select i1 %cmp37, i32 %add39, i32 %RFG.2
  %add43 = add i32 %RFG.3, 100
  %umin162 = call i32 @llvm.umin.i32(i32 %and6, i32 11)
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.end
  %i.1159 = phi i32 [ 0, %for.end ], [ %inc54, %for.body50.for.body50_crit_edge ]
  %IFG.0158 = phi i32 [ 0, %for.end ], [ %add52, %for.body50.for.body50_crit_edge ]
  %arrayidx51 = getelementptr [12 x i32], ptr @__const.m88rs6000t_get_rf_strength.IFGS, i32 0, i32 %i.1159
  %25 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx51, align 4
  %add52 = add i32 %26, %IFG.0158
  %inc54 = add nuw nsw i32 %i.1159, 1
  %exitcond163.not = icmp eq i32 %i.1159, %umin162
  br i1 %exitcond163.not, label %for.end55, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body50

for.end55:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp41 = icmp eq i32 %and, 3
  %RFG.4 = select i1 %cmp41, i32 %add43, i32 %RFG.3
  %umin164 = call i32 @llvm.umin.i32(i32 %and19, i32 13)
  br label %for.body61

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.end55
  %i.2161 = phi i32 [ 0, %for.end55 ], [ %inc65, %for.body61.for.body61_crit_edge ]
  %BBG.0160 = phi i32 [ 0, %for.end55 ], [ %add63, %for.body61.for.body61_crit_edge ]
  %arrayidx62 = getelementptr [14 x i32], ptr @__const.m88rs6000t_get_rf_strength.BBGS, i32 0, i32 %i.2161
  %27 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx62, align 4
  %add63 = add i32 %28, %BBG.0160
  %inc65 = add nuw nsw i32 %i.2161, 1
  %exitcond165.not = icmp eq i32 %i.2161, %umin164
  br i1 %exitcond165.not, label %err, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body61

err:                                              ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #9
  %and27 = and i32 %22, 3
  %mul.neg = mul nuw nsw i32 %and12, 65246
  %mul67 = mul nuw nsw i32 %shr26, 46
  %mul68 = mul nuw nsw i32 %and27, 290
  %add70 = add nuw nsw i32 %mul68, %mul.neg
  %sub = add nuw nsw i32 %add70, %mul67
  %add71 = add i32 %sub, %RFG.4
  %add69 = add i32 %add71, %add52
  %add72 = add i32 %add69, %add63
  %conv73 = and i32 %add72, 65535
  %29 = call i32 @llvm.umax.i32(i32 %conv73, i32 1000)
  %30 = call i32 @llvm.usub.sat.i32(i32 10500, i32 %29)
  %mul94 = mul nuw nsw i32 %30, 65535
  %div155 = udiv i32 %mul94, 9500
  %conv95 = trunc i32 %div155 to i16
  %31 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv95, ptr %strength, align 2
  br label %if.end106

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %if.end11.do.body_crit_edge, %if.end5.do.body_crit_edge, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0.ph = phi i32 [ %call21, %if.end17.do.body_crit_edge ], [ %call14, %if.end11.do.body_crit_edge ], [ %call8, %if.end5.do.body_crit_edge ], [ %call2, %if.end.do.body_crit_edge ], [ %call, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_get_rf_strength.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_get_rf_strength, %if.then103)) #7
          to label %if.end106 [label %if.then103], !srcloc !94

if.then103:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client, align 4
  %dev104 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_get_rf_strength.__UNIQUE_ID_ddebug309, ptr noundef %dev104, ptr noundef nonnull @.str.14, i32 noundef %ret.0.ph) #7
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %do.body, %err
  %ret.0153 = phi i32 [ %ret.0.ph, %if.then103 ], [ 0, %err ], [ %ret.0.ph, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %ret.0153
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m88rs6000t_set_pll_freq(ptr noundef %dev, i32 noundef %tuner_freq_MHz) unnamed_addr #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #7
  %0 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %utmp, align 4, !annotation !93
  %regmap = getelementptr inbounds %struct.m88rs6000t_dev, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 54, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body326_crit_edge

entry.do.body326_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 49, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.do.body326_crit_edge

if.end.do.body326_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 44, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.do.body326_crit_edge

if.end5.do.body326_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1549, i32 %tuner_freq_MHz)
  %cmp = icmp ugt i32 %tuner_freq_MHz, 1549
  br i1 %cmp, label %if.end10.if.end43_crit_edge, label %if.else

if.end10.if.end43_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1379, i32 %tuner_freq_MHz)
  %cmp13 = icmp ugt i32 %tuner_freq_MHz, 1379
  br i1 %cmp13, label %if.else.if.end43_crit_edge, label %if.else16

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1069, i32 %tuner_freq_MHz)
  %cmp17 = icmp ugt i32 %tuner_freq_MHz, 1069
  br i1 %cmp17, label %if.else16.if.end43_crit_edge, label %if.else20

if.else16.if.end43_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.else20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %tuner_freq_MHz)
  %cmp21 = icmp ugt i32 %tuner_freq_MHz, 999
  br i1 %cmp21, label %if.else20.if.end43_crit_edge, label %if.else24

if.else20.if.end43_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.else24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_const_cmp4(i32 774, i32 %tuner_freq_MHz)
  %cmp25 = icmp ugt i32 %tuner_freq_MHz, 774
  br i1 %cmp25, label %if.else24.if.end43_crit_edge, label %if.else28

if.else24.if.end43_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.else28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_const_cmp4(i32 699, i32 %tuner_freq_MHz)
  %cmp29 = icmp ugt i32 %tuner_freq_MHz, 699
  br i1 %cmp29, label %if.else28.if.end43_crit_edge, label %if.else32

if.else28.if.end43_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.else32:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 519, i32 %tuner_freq_MHz)
  %cmp33 = icmp ugt i32 %tuner_freq_MHz, 519
  %. = select i1 %cmp33, i8 6, i8 8
  %.464 = select i1 %cmp33, i32 48, i32 96
  br label %if.end43

if.end43:                                         ; preds = %if.else32, %if.else28.if.end43_crit_edge, %if.else24.if.end43_crit_edge, %if.else20.if.end43_crit_edge, %if.else16.if.end43_crit_edge, %if.else.if.end43_crit_edge, %if.end10.if.end43_crit_edge
  %ucLoDiv1.0 = phi i8 [ 2, %if.end10.if.end43_crit_edge ], [ 3, %if.else.if.end43_crit_edge ], [ 3, %if.else16.if.end43_crit_edge ], [ 3, %if.else20.if.end43_crit_edge ], [ 4, %if.else24.if.end43_crit_edge ], [ 6, %if.else28.if.end43_crit_edge ], [ %., %if.else32 ]
  %ucLomod1.0 = phi i32 [ 0, %if.end10.if.end43_crit_edge ], [ 16, %if.else.if.end43_crit_edge ], [ 16, %if.else16.if.end43_crit_edge ], [ 16, %if.else20.if.end43_crit_edge ], [ 64, %if.else24.if.end43_crit_edge ], [ 48, %if.else28.if.end43_crit_edge ], [ %.464, %if.else32 ]
  %ucLoDiv2.0 = phi i8 [ 2, %if.end10.if.end43_crit_edge ], [ 2, %if.else.if.end43_crit_edge ], [ 3, %if.else16.if.end43_crit_edge ], [ 4, %if.else20.if.end43_crit_edge ], [ 4, %if.else24.if.end43_crit_edge ], [ 4, %if.else28.if.end43_crit_edge ], [ %., %if.else32 ]
  %ucLomod2.0 = phi i32 [ 0, %if.end10.if.end43_crit_edge ], [ 0, %if.else.if.end43_crit_edge ], [ 16, %if.else16.if.end43_crit_edge ], [ 64, %if.else20.if.end43_crit_edge ], [ 64, %if.else24.if.end43_crit_edge ], [ 64, %if.else28.if.end43_crit_edge ], [ %.464, %if.else32 ]
  %conv44 = zext i8 %ucLoDiv1.0 to i32
  %mul = mul i32 %tuner_freq_MHz, 27000
  %mul47 = mul i32 %mul, %conv44
  %div = udiv i32 %mul47, 27000
  %sub48 = add nsw i32 %div, -1024
  %div49459 = lshr i32 %sub48, 1
  %conv50 = zext i8 %ucLoDiv2.0 to i32
  %mul54 = mul i32 %mul, %conv50
  %div55 = udiv i32 %mul54, 27000
  %sub56 = add nsw i32 %div55, -1024
  %div57460 = lshr i32 %sub56, 1
  %shr = lshr i32 %sub48, 9
  %and = and i32 %shr, 15
  %add = or i32 %and, %ucLomod1.0
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call63 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 39, i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end43.do.body326_crit_edge

if.end43.do.body326_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end66:                                         ; preds = %if.end43
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %conv70 = and i32 %div49459, 255
  %call71 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 40, i32 noundef %conv70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end66.do.body326_crit_edge

if.end66.do.body326_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end74:                                         ; preds = %if.end66
  %shr75 = lshr i32 %sub56, 9
  %and76 = and i32 %shr75, 15
  %add78 = or i32 %and76, %ucLomod2.0
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call83 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 41, i32 noundef %add78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end74.do.body326_crit_edge

if.end74.do.body326_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end86:                                         ; preds = %if.end74
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %conv90 = and i32 %div57460, 255
  %call91 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 42, i32 noundef %conv90) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end86.do.body326_crit_edge

if.end86.do.body326_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end94:                                         ; preds = %if.end86
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call96 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 47, i32 noundef 245) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end94.do.body326_crit_edge

if.end94.do.body326_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end99:                                         ; preds = %if.end94
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call101 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 48, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %if.end99.do.body326_crit_edge

if.end99.do.body326_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end104:                                        ; preds = %if.end99
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call106 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 8, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end104.do.body326_crit_edge

if.end104.do.body326_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end109:                                        ; preds = %if.end104
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call111 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 8, i32 noundef 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end114, label %if.end109.do.body326_crit_edge

if.end109.do.body326_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end114:                                        ; preds = %if.end109
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call116 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 9, i32 noundef 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end114.do.body326_crit_edge

if.end114.do.body326_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end119:                                        ; preds = %if.end114
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call121 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 9, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end119.do.body326_crit_edge

if.end119.do.body326_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end124:                                        ; preds = %if.end119
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call126 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 62, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %if.end124.do.body326_crit_edge

if.end124.do.body326_crit_edge:                   ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end129:                                        ; preds = %if.end124
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call131 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 8, i32 noundef 47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end129.do.body326_crit_edge

if.end129.do.body326_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end134:                                        ; preds = %if.end129
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call136 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 8, i32 noundef 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end134.do.body326_crit_edge

if.end134.do.body326_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end139:                                        ; preds = %if.end134
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call141 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 9, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %if.end139.do.body326_crit_edge

if.end139.do.body326_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end144:                                        ; preds = %if.end139
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call146 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 9, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end149, label %if.end144.do.body326_crit_edge

if.end144.do.body326_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end149:                                        ; preds = %if.end144
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 50000, i32 noundef 2) #7
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call151 = call i32 @regmap_read(ptr noundef %38, i32 noundef 66, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end154, label %if.end149.do.body326_crit_edge

if.end149.do.body326_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end154:                                        ; preds = %if.end149
  %39 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %utmp, align 4
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call157 = call i32 @regmap_write(ptr noundef %42, i32 noundef 62, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %if.end154.do.body326_crit_edge

if.end154.do.body326_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end160:                                        ; preds = %if.end154
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call162 = call i32 @regmap_write(ptr noundef %44, i32 noundef 8, i32 noundef 47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call162)
  %tobool163.not = icmp eq i32 %call162, 0
  br i1 %tobool163.not, label %if.end165, label %if.end160.do.body326_crit_edge

if.end160.do.body326_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end165:                                        ; preds = %if.end160
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call167 = call i32 @regmap_write(ptr noundef %46, i32 noundef 8, i32 noundef 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %if.end170, label %if.end165.do.body326_crit_edge

if.end165.do.body326_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end170:                                        ; preds = %if.end165
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call172 = call i32 @regmap_write(ptr noundef %48, i32 noundef 9, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.end175, label %if.end170.do.body326_crit_edge

if.end170.do.body326_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end175:                                        ; preds = %if.end170
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call177 = call i32 @regmap_write(ptr noundef %50, i32 noundef 9, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %tobool178.not = icmp eq i32 %call177, 0
  br i1 %tobool178.not, label %if.end180, label %if.end175.do.body326_crit_edge

if.end175.do.body326_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end180:                                        ; preds = %if.end175
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 50000, i32 noundef 2) #7
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call182 = call i32 @regmap_read(ptr noundef %52, i32 noundef 66, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185, label %if.end180.do.body326_crit_edge

if.end180.do.body326_crit_edge:                   ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end185:                                        ; preds = %if.end180
  %53 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %utmp, align 4
  %conv187 = and i32 %54, 255
  %conv188 = and i32 %40, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv187, i32 %conv188)
  %cmp189 = icmp ult i32 %conv187, %conv188
  br i1 %cmp189, label %if.then191, label %if.end185.if.end197_crit_edge

if.end185.if.end197_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197

if.then191:                                       ; preds = %if.end185
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call193 = call i32 @regmap_write(ptr noundef %56, i32 noundef 62, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %if.then191.if.end197_crit_edge, label %if.then191.do.body326_crit_edge

if.then191.do.body326_crit_edge:                  ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.then191.if.end197_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197

if.end197:                                        ; preds = %if.then191.if.end197_crit_edge, %if.end185.if.end197_crit_edge
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 50000, i32 noundef 2) #7
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  %call199 = call i32 @regmap_read(ptr noundef %58, i32 noundef 45, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end197.do.body326_crit_edge

if.end197.do.body326_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end202:                                        ; preds = %if.end197
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %61 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %utmp, align 4
  %call204 = call i32 @regmap_write(ptr noundef %60, i32 noundef 45, i32 noundef %62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.end207, label %if.end202.do.body326_crit_edge

if.end202.do.body326_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end207:                                        ; preds = %if.end202
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call209 = call i32 @regmap_read(ptr noundef %64, i32 noundef 46, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %if.end212, label %if.end207.do.body326_crit_edge

if.end207.do.body326_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end212:                                        ; preds = %if.end207
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %67 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %utmp, align 4
  %call214 = call i32 @regmap_write(ptr noundef %66, i32 noundef 46, i32 noundef %68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.end217, label %if.end212.do.body326_crit_edge

if.end212.do.body326_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end217:                                        ; preds = %if.end212
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %call219 = call i32 @regmap_read(ptr noundef %70, i32 noundef 39, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %if.end217.do.body326_crit_edge

if.end217.do.body326_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end222:                                        ; preds = %if.end217
  %71 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %utmp, align 4
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %call226 = call i32 @regmap_read(ptr noundef %74, i32 noundef 131, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %tobool227.not = icmp eq i32 %call226, 0
  br i1 %tobool227.not, label %if.end229, label %if.end222.do.body326_crit_edge

if.end222.do.body326_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end229:                                        ; preds = %if.end222
  %75 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %utmp, align 4
  %77 = xor i32 %76, %72
  %78 = and i32 %77, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp232 = icmp eq i32 %78, 0
  %ucLoDiv1.0.ucLoDiv2.0 = select i1 %cmp232, i8 %ucLoDiv1.0, i8 %ucLoDiv2.0
  %ucLomod1.0.ucLomod2.0 = select i1 %cmp232, i32 %ucLomod1.0, i32 %ucLomod2.0
  %div49459.div57460 = select i1 %cmp232, i32 %div49459, i32 %div57460
  %conv243 = zext i8 %ucLoDiv1.0.ucLoDiv2.0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %ucLoDiv1.0.ucLoDiv2.0)
  %cmp244 = icmp eq i8 %ucLoDiv1.0.ucLoDiv2.0, 3
  %trunc = trunc i8 %ucLoDiv1.0.ucLoDiv2.0 to i4
  %79 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc, label %if.end229.if.end265_crit_edge [
    i4 6, label %if.end229.if.then249_crit_edge
    i4 3, label %if.end229.if.then249_crit_edge475
  ]

if.end229.if.then249_crit_edge475:                ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then249

if.end229.if.then249_crit_edge:                   ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then249

if.end229.if.end265_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end265

if.then249:                                       ; preds = %if.end229.if.then249_crit_edge, %if.end229.if.then249_crit_edge475
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %call253 = call i32 @regmap_write(ptr noundef %81, i32 noundef 54, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %tobool254.not = icmp eq i32 %call253, 0
  br i1 %tobool254.not, label %if.end256, label %if.then249.do.body326_crit_edge

if.then249.do.body326_crit_edge:                  ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end256:                                        ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #9
  %mul258 = mul i32 %tuner_freq_MHz, 18000
  %mul261 = mul i32 %mul258, %conv243
  %div262 = udiv i32 %mul261, 27000
  %sub263 = add nsw i32 %div262, -1024
  %div264462 = lshr i32 %sub263, 1
  br label %if.end265

if.end265:                                        ; preds = %if.end256, %if.end229.if.end265_crit_edge
  %refDiv.0 = phi i32 [ 18, %if.end256 ], [ 27, %if.end229.if.end265_crit_edge ]
  %ulNDiv.1 = phi i32 [ %div264462, %if.end256 ], [ %div49459.div57460, %if.end229.if.end265_crit_edge ]
  %shr269 = lshr i32 %ulNDiv.1, 8
  %and270 = and i32 %shr269, 15
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %conv273 = or i32 %ucLomod1.0.ucLomod2.0, %and270
  %conv275 = or i32 %conv273, 128
  %call276 = call i32 @regmap_write(ptr noundef %83, i32 noundef 39, i32 noundef %conv275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %if.end279, label %if.end265.do.body326_crit_edge

if.end265.do.body326_crit_edge:                   ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end279:                                        ; preds = %if.end265
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %conv283 = and i32 %ulNDiv.1, 255
  %call284 = call i32 @regmap_write(ptr noundef %85, i32 noundef 40, i32 noundef %conv283) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.end287, label %if.end279.do.body326_crit_edge

if.end279.do.body326_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end287:                                        ; preds = %if.end279
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call289 = call i32 @regmap_write(ptr noundef %87, i32 noundef 41, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289)
  %tobool290.not = icmp eq i32 %call289, 0
  br i1 %tobool290.not, label %if.end292, label %if.end287.do.body326_crit_edge

if.end287.do.body326_crit_edge:                   ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end292:                                        ; preds = %if.end287
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %call294 = call i32 @regmap_write(ptr noundef %89, i32 noundef 49, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %if.end297, label %if.end292.do.body326_crit_edge

if.end292.do.body326_crit_edge:                   ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end297:                                        ; preds = %if.end292
  %.465 = select i1 %cmp244, i32 206, i32 138
  %90 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %.465, ptr %utmp, align 4
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %call305 = call i32 @regmap_write(ptr noundef %92, i32 noundef 59, i32 noundef %.465) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %if.end308, label %if.end297.do.body326_crit_edge

if.end297.do.body326_crit_edge:                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body326

if.end308:                                        ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #9
  %93 = mul i32 %ulNDiv.1, 54000
  %mul311 = add i32 %93, 27648000
  %div313 = udiv i32 %mul311, %refDiv.0
  %div315 = udiv i32 %div313, %conv243
  %frequency_khz = getelementptr inbounds %struct.m88rs6000t_dev, ptr %dev, i32 0, i32 3
  %94 = ptrtoint ptr %frequency_khz to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %div315, ptr %frequency_khz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_set_pll_freq.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_set_pll_freq, %if.then320)) #7
          to label %if.end344 [label %if.then320], !srcloc !94

if.then320:                                       ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.m88rs6000t_dev, ptr %dev, i32 0, i32 1
  %95 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %client, align 4
  %dev321 = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %frequency_khz to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %frequency_khz, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_set_pll_freq.__UNIQUE_ID_ddebug291, ptr noundef %dev321, ptr noundef nonnull @.str.21, i32 noundef %98) #7
  br label %if.end344

do.body326:                                       ; preds = %if.end297.do.body326_crit_edge, %if.end292.do.body326_crit_edge, %if.end287.do.body326_crit_edge, %if.end279.do.body326_crit_edge, %if.end265.do.body326_crit_edge, %if.then249.do.body326_crit_edge, %if.end222.do.body326_crit_edge, %if.end217.do.body326_crit_edge, %if.end212.do.body326_crit_edge, %if.end207.do.body326_crit_edge, %if.end202.do.body326_crit_edge, %if.end197.do.body326_crit_edge, %if.then191.do.body326_crit_edge, %if.end180.do.body326_crit_edge, %if.end175.do.body326_crit_edge, %if.end170.do.body326_crit_edge, %if.end165.do.body326_crit_edge, %if.end160.do.body326_crit_edge, %if.end154.do.body326_crit_edge, %if.end149.do.body326_crit_edge, %if.end144.do.body326_crit_edge, %if.end139.do.body326_crit_edge, %if.end134.do.body326_crit_edge, %if.end129.do.body326_crit_edge, %if.end124.do.body326_crit_edge, %if.end119.do.body326_crit_edge, %if.end114.do.body326_crit_edge, %if.end109.do.body326_crit_edge, %if.end104.do.body326_crit_edge, %if.end99.do.body326_crit_edge, %if.end94.do.body326_crit_edge, %if.end86.do.body326_crit_edge, %if.end74.do.body326_crit_edge, %if.end66.do.body326_crit_edge, %if.end43.do.body326_crit_edge, %if.end5.do.body326_crit_edge, %if.end.do.body326_crit_edge, %entry.do.body326_crit_edge
  %ret.0.ph = phi i32 [ %call305, %if.end297.do.body326_crit_edge ], [ %call294, %if.end292.do.body326_crit_edge ], [ %call289, %if.end287.do.body326_crit_edge ], [ %call284, %if.end279.do.body326_crit_edge ], [ %call276, %if.end265.do.body326_crit_edge ], [ %call253, %if.then249.do.body326_crit_edge ], [ %call226, %if.end222.do.body326_crit_edge ], [ %call219, %if.end217.do.body326_crit_edge ], [ %call214, %if.end212.do.body326_crit_edge ], [ %call209, %if.end207.do.body326_crit_edge ], [ %call204, %if.end202.do.body326_crit_edge ], [ %call199, %if.end197.do.body326_crit_edge ], [ %call193, %if.then191.do.body326_crit_edge ], [ %call182, %if.end180.do.body326_crit_edge ], [ %call177, %if.end175.do.body326_crit_edge ], [ %call172, %if.end170.do.body326_crit_edge ], [ %call167, %if.end165.do.body326_crit_edge ], [ %call162, %if.end160.do.body326_crit_edge ], [ %call157, %if.end154.do.body326_crit_edge ], [ %call151, %if.end149.do.body326_crit_edge ], [ %call146, %if.end144.do.body326_crit_edge ], [ %call141, %if.end139.do.body326_crit_edge ], [ %call136, %if.end134.do.body326_crit_edge ], [ %call131, %if.end129.do.body326_crit_edge ], [ %call126, %if.end124.do.body326_crit_edge ], [ %call121, %if.end119.do.body326_crit_edge ], [ %call116, %if.end114.do.body326_crit_edge ], [ %call111, %if.end109.do.body326_crit_edge ], [ %call106, %if.end104.do.body326_crit_edge ], [ %call101, %if.end99.do.body326_crit_edge ], [ %call96, %if.end94.do.body326_crit_edge ], [ %call91, %if.end86.do.body326_crit_edge ], [ %call83, %if.end74.do.body326_crit_edge ], [ %call71, %if.end66.do.body326_crit_edge ], [ %call63, %if.end43.do.body326_crit_edge ], [ %call7, %if.end5.do.body326_crit_edge ], [ %call2, %if.end.do.body326_crit_edge ], [ %call, %entry.do.body326_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_set_pll_freq.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_set_pll_freq, %if.then338)) #7
          to label %if.end344 [label %if.then338], !srcloc !94

if.then338:                                       ; preds = %do.body326
  call void @__sanitizer_cov_trace_pc() #9
  %client339 = getelementptr inbounds %struct.m88rs6000t_dev, ptr %dev, i32 0, i32 1
  %99 = ptrtoint ptr %client339 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %client339, align 4
  %dev340 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_set_pll_freq.__UNIQUE_ID_ddebug292, ptr noundef %dev340, ptr noundef nonnull @.str.14, i32 noundef %ret.0.ph) #7
  br label %if.end344

if.end344:                                        ; preds = %if.then338, %do.body326, %if.then320, %if.end308
  %ret.0473 = phi i32 [ %ret.0.ph, %if.then338 ], [ 0, %if.then320 ], [ 0, %if.end308 ], [ %ret.0.ph, %do.body326 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #7
  ret i32 %ret.0473
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @m88rs6000t_set_demod_mclk(ptr nocapture noundef readonly %fe) unnamed_addr #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #7
  %2 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %utmp, align 4, !annotation !93
  %regmap = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 21, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %utmp, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %7 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45010000, i32 %8)
  %cmp = icmp ugt i32 %8, 45010000
  %conv3 = and i32 %6, 253
  %or = or i32 %conv3, 2
  %reg11.0 = select i1 %cmp, i32 14, i32 10
  %reg15.0 = select i1 %cmp, i32 %or, i32 %conv3
  %reg16.0 = select i1 %cmp, i32 115, i32 96
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %9 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp8 = icmp eq i32 %10, 5
  %ts_mclk.0 = select i1 %cmp8, i32 96000, i32 144000
  %11 = shl nuw nsw i32 %reg15.0, 8
  %conv15 = and i32 %11, 256
  %add = or i32 %conv15, %reg16.0
  %12 = mul nuw nsw i32 %add, 36000
  %mul = add nuw nsw i32 %12, 1152000
  %div23 = udiv i32 %mul, %ts_mclk.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %div23)
  %cmp24 = icmp ult i32 %div23, 33
  br i1 %cmp24, label %if.end.if.end72_crit_edge, label %if.else31

if.end.if.end72_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.else31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %div23)
  %cmp32 = icmp ult i32 %div23, 49
  br i1 %cmp32, label %if.then34, label %if.else46

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %div35.lhs.trunc = trunc i32 %div23 to i8
  %div35266 = udiv i8 %div35.lhs.trunc, 3
  %div35.zext = zext i8 %div35266 to i32
  %sub38 = sub nuw nsw i32 %div23, %div35.zext
  %div39260 = lshr i32 %sub38, 1
  %sub44 = sub nsw i32 %sub38, %div39260
  %conv45 = trunc i32 %sub44 to i8
  br label %if.end72

if.else46:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div23)
  %cmp47 = icmp ult i32 %div23, 65
  br i1 %cmp47, label %if.then49, label %if.else46.if.end72_crit_edge

if.else46.if.end72_crit_edge:                     ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then49:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #9
  %div50258 = lshr i32 %div23, 2
  %conv51 = trunc i32 %div50258 to i8
  %sub53 = sub nuw nsw i32 %div23, %div50258
  %div54.lhs.trunc = trunc i32 %sub53 to i8
  %div54267 = udiv i8 %div54.lhs.trunc, 3
  %div54.zext = zext i8 %div54267 to i32
  %sub59 = sub nuw nsw i32 %sub53, %div54.zext
  %div60259 = lshr i32 %sub59, 1
  %conv61 = trunc i32 %div60259 to i8
  %13 = trunc i32 %sub59 to i8
  %sub67.tr = sub nsw i8 %13, %conv61
  %phi.cast257 = shl i8 %sub67.tr, 4
  br label %if.end72

if.end72:                                         ; preds = %if.then49, %if.else46.if.end72_crit_edge, %if.then34, %if.end.if.end72_crit_edge
  %N.0 = phi i32 [ 2, %if.then34 ], [ 3, %if.then49 ], [ 1, %if.end.if.end72_crit_edge ], [ 3, %if.else46.if.end72_crit_edge ]
  %f0.0 = phi i8 [ %div35266, %if.then34 ], [ %conv51, %if.then49 ], [ 0, %if.end.if.end72_crit_edge ], [ 16, %if.else46.if.end72_crit_edge ]
  %f1.0 = phi i32 [ %div39260, %if.then34 ], [ %div54.zext, %if.then49 ], [ 16, %if.end.if.end72_crit_edge ], [ 16, %if.else46.if.end72_crit_edge ]
  %f2.0 = phi i8 [ %conv45, %if.then34 ], [ %conv61, %if.then49 ], [ 16, %if.end.if.end72_crit_edge ], [ 16, %if.else46.if.end72_crit_edge ]
  %f3.0 = phi i8 [ 0, %if.then34 ], [ %phi.cast257, %if.then49 ], [ 0, %if.end.if.end72_crit_edge ], [ 0, %if.else46.if.end72_crit_edge ]
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call94 = call i32 @regmap_read(ptr noundef %15, i32 noundef 29, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end72.do.body_crit_edge

if.end72.do.body_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end97:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %f2.0)
  %cmp84 = icmp eq i8 %f2.0, 16
  %spec.store.select190 = select i1 %cmp84, i8 0, i8 %f2.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %f0.0)
  %cmp74 = icmp eq i8 %f0.0, 16
  %spec.store.select = select i1 %cmp74, i8 0, i8 %f0.0
  %16 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %utmp, align 4
  %conv101 = and i32 %17, 252
  %or105 = or i32 %conv101, %N.0
  %conv112 = add i8 %spec.store.select190, %f3.0
  %f1.0.tr = trunc i32 %f1.0 to i8
  %18 = shl i8 %f1.0.tr, 4
  %conv118 = add nuw i8 %18, %spec.store.select
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call120 = call i32 @regmap_write(ptr noundef %20, i32 noundef 5, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end97.do.body_crit_edge

if.end97.do.body_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end123:                                        ; preds = %if.end97
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call125 = call i32 @regmap_write(ptr noundef %22, i32 noundef 17, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %if.end123.do.body_crit_edge

if.end123.do.body_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end128:                                        ; preds = %if.end123
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call131 = call i32 @regmap_write(ptr noundef %24, i32 noundef 21, i32 noundef %reg15.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end128.do.body_crit_edge

if.end128.do.body_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end134:                                        ; preds = %if.end128
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call137 = call i32 @regmap_write(ptr noundef %26, i32 noundef 22, i32 noundef %reg16.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end140, label %if.end134.do.body_crit_edge

if.end134.do.body_crit_edge:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end140:                                        ; preds = %if.end134
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call143 = call i32 @regmap_write(ptr noundef %28, i32 noundef 29, i32 noundef %or105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %if.end140.do.body_crit_edge

if.end140.do.body_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end146:                                        ; preds = %if.end140
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %conv148 = zext i8 %conv112 to i32
  %call149 = call i32 @regmap_write(ptr noundef %30, i32 noundef 30, i32 noundef %conv148) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.end146.do.body_crit_edge

if.end146.do.body_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end152:                                        ; preds = %if.end146
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %conv154 = zext i8 %conv118 to i32
  %call155 = call i32 @regmap_write(ptr noundef %32, i32 noundef 31, i32 noundef %conv154) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.end152.do.body_crit_edge

if.end152.do.body_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end158:                                        ; preds = %if.end152
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call160 = call i32 @regmap_write(ptr noundef %34, i32 noundef 23, i32 noundef 193) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end158.do.body_crit_edge

if.end158.do.body_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end163:                                        ; preds = %if.end158
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call165 = call i32 @regmap_write(ptr noundef %36, i32 noundef 23, i32 noundef 129) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.end168, label %if.end163.do.body_crit_edge

if.end163.do.body_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end168:                                        ; preds = %if.end163
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 50000, i32 noundef 2) #7
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call170 = call i32 @regmap_write(ptr noundef %38, i32 noundef 5, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end173, label %if.end168.do.body_crit_edge

if.end168.do.body_crit_edge:                      ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end173:                                        ; preds = %if.end168
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call176 = call i32 @regmap_write(ptr noundef %40, i32 noundef 17, i32 noundef %reg11.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %err, label %if.end173.do.body_crit_edge

if.end173.do.body_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

err:                                              ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 50000, i32 noundef 2) #7
  br label %if.end189

do.body:                                          ; preds = %if.end173.do.body_crit_edge, %if.end168.do.body_crit_edge, %if.end163.do.body_crit_edge, %if.end158.do.body_crit_edge, %if.end152.do.body_crit_edge, %if.end146.do.body_crit_edge, %if.end140.do.body_crit_edge, %if.end134.do.body_crit_edge, %if.end128.do.body_crit_edge, %if.end123.do.body_crit_edge, %if.end97.do.body_crit_edge, %if.end72.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0.ph = phi i32 [ %call176, %if.end173.do.body_crit_edge ], [ %call170, %if.end168.do.body_crit_edge ], [ %call165, %if.end163.do.body_crit_edge ], [ %call160, %if.end158.do.body_crit_edge ], [ %call155, %if.end152.do.body_crit_edge ], [ %call149, %if.end146.do.body_crit_edge ], [ %call143, %if.end140.do.body_crit_edge ], [ %call137, %if.end134.do.body_crit_edge ], [ %call131, %if.end128.do.body_crit_edge ], [ %call125, %if.end123.do.body_crit_edge ], [ %call120, %if.end97.do.body_crit_edge ], [ %call94, %if.end72.do.body_crit_edge ], [ %call, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @m88rs6000t_set_demod_mclk.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@m88rs6000t_set_demod_mclk, %if.then186)) #7
          to label %if.end189 [label %if.then186], !srcloc !94

if.then186:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.m88rs6000t_dev, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client, align 4
  %dev187 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @m88rs6000t_set_demod_mclk.__UNIQUE_ID_ddebug290, ptr noundef %dev187, ptr noundef nonnull @.str.14, i32 noundef %ret.0.ph) #7
  br label %if.end189

if.end189:                                        ; preds = %if.then186, %do.body, %err
  %ret.0264 = phi i32 [ %ret.0.ph, %if.then186 ], [ 0, %err ], [ %ret.0.ph, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #7
  ret i32 %ret.0264
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !46, !47, !49, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_m88rs6000t__312_729_m88rs6000t_driver_init6, !1, !"__initcall__kmod_m88rs6000t__312_729_m88rs6000t_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 729, i32 1}
!2 = !{ptr @__exitcall_m88rs6000t_driver_exit, !1, !"__exitcall_m88rs6000t_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author313, !4, !"__UNIQUE_ID_author313", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 731, i32 1}
!5 = !{ptr @__UNIQUE_ID_description314, !6, !"__UNIQUE_ID_description314", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 732, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 733, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 722, i32 11}
!12 = !{ptr @m88rs6000t_driver, !13, !"m88rs6000t_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 720, i32 26}
!14 = !{ptr @m88rs6000t_probe.regmap_config, !15, !"regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 584, i32 36}
!16 = !{ptr @m88rs6000t_probe.reg_vals, !17, !"reg_vals", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 588, i32 41}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 619, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @m88rs6000t_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @m88rs6000t_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @m88rs6000t_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 625, i32 16}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 650, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @m88rs6000t_probe._entry.7, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @m88rs6000t_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 687, i32 2}
!36 = !{ptr @m88rs6000t_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @m88rs6000t_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 695, i32 2}
!40 = !{ptr @m88rs6000t_probe.__UNIQUE_ID_ddebug310, !39, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!41 = !{ptr @m88rs6000t_tuner_ops, !42, !"m88rs6000t_tuner_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 561, i32 35}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 430, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @m88rs6000t_init.__UNIQUE_ID_ddebug299, !44, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!47 = !{ptr @m88rs6000t_init.__UNIQUE_ID_ddebug300, !48, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 443, i32 3}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 452, i32 2}
!51 = !{ptr @m88rs6000t_sleep.__UNIQUE_ID_ddebug301, !50, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!52 = !{ptr @m88rs6000t_sleep.__UNIQUE_ID_ddebug302, !53, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 456, i32 3}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 393, i32 2}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @m88rs6000t_set_params.__UNIQUE_ID_ddebug297, !55, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!58 = !{ptr @m88rs6000t_set_params.__UNIQUE_ID_ddebug298, !59, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!59 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 421, i32 3}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 364, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @m88rs6000t_set_pll_freq.__UNIQUE_ID_ddebug291, !61, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!64 = !{ptr @m88rs6000t_set_pll_freq.__UNIQUE_ID_ddebug292, !65, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!65 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 368, i32 3}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 145, i32 3}
!68 = !{ptr @m88rs6000t_set_demod_mclk.__UNIQUE_ID_ddebug290, !67, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 467, i32 2}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @m88rs6000t_get_frequency.__UNIQUE_ID_ddebug303, !70, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 477, i32 2}
!75 = !{ptr @m88rs6000t_get_if_frequency.__UNIQUE_ID_ddebug304, !74, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 557, i32 3}
!78 = !{ptr @m88rs6000t_get_rf_strength.__UNIQUE_ID_ddebug309, !77, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 705, i32 2}
!81 = !{ptr @m88rs6000t_remove.__UNIQUE_ID_ddebug311, !80, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!82 = !{ptr @m88rs6000t_id, !83, !"m88rs6000t_id", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/m88rs6000t.c", i32 714, i32 35}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i64 2148278290, i64 2148278295, i64 2148278308, i64 2148278352, i64 2148278386, i64 2148278407}
