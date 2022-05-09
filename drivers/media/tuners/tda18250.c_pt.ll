; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tda18250.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18250.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
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
%struct.tda18250_config = type { i16, i16, i16, i16, i16, i16, i8, i8, ptr, ptr }
%struct.tda18250_dev = type { %struct.mutex, ptr, ptr, ptr, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, [93 x i8] }
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

@__initcall__kmod_tda18250__303_888_tda18250_driver_init6 = internal global ptr @tda18250_driver_init, section ".initcall6.init", align 4
@tda18250_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tda18250_probe, ptr @tda18250_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda18250_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tda18250_driver_exit = internal global ptr @tda18250_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [55 x i8] c"tda18250.description=NXP TDA18250 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [51 x i8] c"tda18250.author=Olli Salonen <olli.salonen@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [44 x i8] c"tda18250.file=drivers/media/tuners/tda18250\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [21 x i8] c"tda18250.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda18250\00", [23 x i8] zeroinitializer }, align 32
@tda18250_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda18250\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tda18250_probe.tda18250_yes_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 5, i32 11 }, %struct.regmap_range { i32 33, i32 33 }, %struct.regmap_range { i32 42, i32 43 }, %struct.regmap_range { i32 47, i32 49 }], [32 x i8] zeroinitializer }, align 32
@tda18250_probe.tda18250_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @tda18250_probe.tda18250_yes_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@tda18250_probe.tda18250_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 92, ptr null, ptr null, ptr @tda18250_probe.tda18250_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@tda18250_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 787, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xtal_freq invalid=%d\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda18250_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/tuners/tda18250.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tda18250_probe._entry_ptr = internal global ptr @tda18250_probe._entry, section ".printk_index", align 4
@tda18250_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tda18250:800:(&tda18250_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@tda18250_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chip_id=%02x:%02x:%02x\00", [41 x i8] zeroinitializer }, align 32
@tda18250_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 832, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NXP TDA18250AHN/%s successfully identified\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tda18250_probe._entry_ptr.11 = internal global ptr @tda18250_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@tda18250_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 837, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NXP TDA18250BHN/%s successfully identified\00", [53 x i8] zeroinitializer }, align 32
@tda18250_probe._entry_ptr.16 = internal global ptr @tda18250_probe._entry.14, section ".printk_index", align 4
@tda18250_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"NXP TDA18250\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 42000000, i32 870000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @tda18250_init, ptr @tda18250_sleep, ptr null, ptr null, ptr @tda18250_set_params, ptr null, ptr null, ptr null, ptr null, ptr @tda18250_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tda18250_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 -43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"failed=%d\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda18250_init.init_regs = internal constant { [34 x [2 x i8]], [60 x i8] } { [34 x [2 x i8]] [[2 x i8] c"\0C\C7", [2 x i8] c"\0D]", [2 x i8] c"\0E@", [2 x i8] c"\0F\0E", [2 x i8] c"\10G", [2 x i8] c"\11N", [2 x i8] c"\12&", [2 x i8] c"\13`", [2 x i8] c"\187", [2 x i8] c"\19\09", [2 x i8] c"\1A\00", [2 x i8] c"\1E)", [2 x i8] c"\1F\06", [2 x i8] c" \C6", [2 x i8] c"!\00", [2 x i8] c",u", [2 x i8] c"-\06", [2 x i8] c".\07", [2 x i8] c"0\0E", [2 x i8] c"1\00", [2 x i8] c"9\00", [2 x i8] c";U", [2 x i8] c"<\A7", [2 x i8] c"?\85", [2 x i8] c"@\87", [2 x i8] c"A\C0", [2 x i8] c"C@", [2 x i8] c"D\C0", [2 x i8] c"F\0C", [2 x i8] c"Gd", [2 x i8] c"K0", [2 x i8] c"Y\05", [2 x i8] c"[\07", [2 x i8] c"\\\00"], [60 x i8] zeroinitializer }, align 32
@tda18250_init.xtal_regs = internal constant { [5 x [5 x i8]], [39 x i8] } { [5 x [5 x i8]] [[5 x i8] c">\80P\00 ", [5 x i8] c"]\C0\EC\00\18", [5 x i8] c"a\A8\EC\80\19", [5 x i8] c"ix\8D\80\1B", [5 x i8] c"u0\8F\00\1E"], [39 x i8] zeroinitializer }, align 32
@tda18250_init.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda18250_init\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@tda18250_init.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.17, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tda18250_wait_for_irq.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda18250_wait_for_irq\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"waited IRQ (0x%02x) %d ms, triggered: %s\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@tda18250_sleep.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.19, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda18250_sleep\00", [17 x i8] zeroinitializer }, align 32
@tda18250_set_params.delsys_params = internal constant { [8 x [16 x i8]], [32 x i8] } { [8 x [16 x i8]] [[16 x i8] c"\22#$!\0D\0C\0F\14\0E\12XY\1A\19\1E0", [16 x i8] c"w\FF\FF\87\F0x\07\E0`\0F`\0F30\80\06", [16 x i8] c"Q\03\83\82@H\01\E0`\0F`\05\03\10\00\04", [16 x i8] c"R\03\85\82@H\01\E0`\0F`\05\03\10\00\04", [16 x i8] c"S\03\87\82@H\06\E0`\07`\05\03\10\00\04", [16 x i8] c"2\05\86\82P\00\06`@\0E`\053\10\00\04", [16 x i8] c"S\03\88\82P\00\06`@\0E`\053\10\00\04", [16 x i8] c"Q\03\83\82@H\01\E0@\0E`\05\03\00\80\04"], [32 x i8] zeroinitializer }, align 32
@tda18250_set_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda18250_set_params\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"delivery_system=%d frequency=%u bandwidth_hz=%u\00", [48 x i8] zeroinitializer }, align 32
@tda18250_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 580, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported delivery system=%d\00", [33 x i8] zeroinitializer }, align 32
@tda18250_set_params._entry_ptr = internal global ptr @tda18250_set_params._entry, section ".printk_index", align 4
@tda18250_set_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.28, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set IF=%u kHz\00", [18 x i8] zeroinitializer }, align 32
@tda18250_set_agc.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.19, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda18250_set_agc\00", [47 x i8] zeroinitializer }, align 32
@tda18250_set_agc.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.17, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tda18250_pll_calc.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda18250_pll_calc\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lopd=%d scale=%u fvco=%lu, rdiv=%d ndiv=%d icp=%d\00", [46 x i8] zeroinitializer }, align 32
@tda18250_power_control.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda18250_power_control\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"power state: %d\00", [16 x i8] zeroinitializer }, align 32
@tda18250_remove.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.19, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18250_remove\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 71, i64 199]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 33]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 11, i64 16, i64 18]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 18]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 11, i64 16]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 11, i64 16]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 11, i64 16]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 11, i64 16]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 11, i64 16]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 11, i64 16]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 11, i64 16]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"tda18250_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 879, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 881, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"tda18250_id_table\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 873, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"tda18250_yes_ranges\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 754, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"tda18250_volatile_table\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 761, i32 42 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"tda18250_regmap_config\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 766, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 787, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 800, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 808, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 830, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 835, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [13 x i8] c"tda18250_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 731, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 855, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [10 x i8] c"init_regs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 127, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"xtal_regs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 165, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 174, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 107, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 717, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"delsys_params\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 513, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 532, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 579, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 599, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 257, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 485, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 21, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.180 = private constant [35 x i8] c"../drivers/media/tuners/tda18250.c\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 864, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_tda18250_driver_exit, ptr @__initcall__kmod_tda18250__303_888_tda18250_driver_init6, ptr @tda18250_driver_exit, ptr @tda18250_probe._entry, ptr @tda18250_probe._entry.14, ptr @tda18250_probe._entry.8, ptr @tda18250_probe._entry_ptr, ptr @tda18250_probe._entry_ptr.11, ptr @tda18250_probe._entry_ptr.16, ptr @tda18250_set_params._entry, ptr @tda18250_set_params._entry_ptr, ptr @tda18250_driver, ptr @.str, ptr @tda18250_id_table, ptr @tda18250_probe.tda18250_yes_ranges, ptr @tda18250_probe.tda18250_volatile_table, ptr @tda18250_probe.tda18250_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tda18250_probe._key, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @tda18250_ops, ptr @.str.17, ptr @tda18250_init.init_regs, ptr @tda18250_init.xtal_regs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @tda18250_set_params.delsys_params, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_probe.tda18250_yes_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_probe.tda18250_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_probe.tda18250_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_init.init_regs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_init.xtal_regs to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_set_params.delsys_params to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda18250_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18250_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tda18250_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tda18250_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tda18250_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18250_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %chip_id = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %fe1 = getelementptr inbounds %struct.tda18250_config, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %chip_id) #7
  %4 = ptrtoint ptr %chip_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %chip_id, align 1, !annotation !109
  %5 = getelementptr inbounds [3 x i8], ptr %chip_id, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !109
  %7 = getelementptr inbounds [3 x i8], ptr %chip_id, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 216) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body79_crit_edge, label %if.end

entry.do.body79_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fe1, align 4
  %fe4 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %fe4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %fe4, align 4
  %loopthrough = getelementptr inbounds %struct.tda18250_config, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %loopthrough to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %loopthrough, align 1, !range !110
  %loopthrough6 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 13
  %16 = ptrtoint ptr %loopthrough6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %loopthrough6, align 1
  %xtal_freq = getelementptr inbounds %struct.tda18250_config, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %xtal_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %18)
  %cmp = icmp ult i8 %18, 5
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %xtal_freq10 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %xtal_freq10 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %xtal_freq10, align 8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %if_dvbt_615 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %if_dvbt_615 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %if_dvbt_615, align 2
  %if_dvbt_7 = getelementptr inbounds %struct.tda18250_config, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %if_dvbt_7 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %if_dvbt_7, align 2
  %if_dvbt_716 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %if_dvbt_716 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %if_dvbt_716, align 4
  %if_dvbt_8 = getelementptr inbounds %struct.tda18250_config, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %if_dvbt_8 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %if_dvbt_8, align 4
  %if_dvbt_817 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %if_dvbt_817 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %if_dvbt_817, align 2
  %if_dvbc_6 = getelementptr inbounds %struct.tda18250_config, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %if_dvbc_6 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %if_dvbc_6, align 2
  %if_dvbc_618 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 8
  %31 = ptrtoint ptr %if_dvbc_618 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %if_dvbc_618, align 8
  %if_dvbc_8 = getelementptr inbounds %struct.tda18250_config, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %if_dvbc_8 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %if_dvbc_8, align 4
  %if_dvbc_819 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %if_dvbc_819 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %if_dvbc_819, align 2
  %if_atsc = getelementptr inbounds %struct.tda18250_config, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %if_atsc to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %if_atsc, align 2
  %if_atsc20 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 10
  %37 = ptrtoint ptr %if_atsc20 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %if_atsc20, align 4
  %if_frequency = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 11
  %38 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %if_frequency, align 2
  %warm = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 14
  %39 = ptrtoint ptr %warm to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %warm, align 2
  %call21 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tda18250_probe.tda18250_regmap_config, ptr noundef nonnull @tda18250_probe._key, ptr noundef nonnull @.str.6) #7
  %regmap = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call21, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %conv) #11
  br label %err_kfree

if.then24:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call21 to i32
  br label %err_kfree

if.end27:                                         ; preds = %if.then8
  %call29 = call i32 @regmap_bulk_read(ptr noundef %call21, i32 noundef 0, ptr noundef nonnull %chip_id, i32 noundef 3) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_probe, %if.then37)) #7
          to label %do.end46 [label %if.then37], !srcloc !111

if.then37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %chip_id, align 1
  %conv39 = zext i8 %43 to i32
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %5, align 1
  %conv41 = zext i8 %45 to i32
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %7, align 1
  %conv43 = zext i8 %47 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv39, i32 noundef %conv41, i32 noundef %conv43) #7
  br label %do.end46

do.end46:                                         ; preds = %if.then37, %if.end27
  %48 = ptrtoint ptr %chip_id to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %chip_id, align 1
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i8 %49, label %do.end46.err_kfree_crit_edge [
    i8 -57, label %do.end46.sw.epilog_crit_edge
    i8 71, label %sw.bb49
  ]

do.end46.sw.epilog_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end46.err_kfree_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

sw.bb49:                                          ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb49, %do.end46.sw.epilog_crit_edge
  %.sink = phi i8 [ 1, %sw.bb49 ], [ 0, %do.end46.sw.epilog_crit_edge ]
  %slave50 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 12
  %51 = ptrtoint ptr %slave50 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %.sink, ptr %slave50, align 8
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 74, i8 %53)
  %cmp53.not = icmp eq i8 %53, 74
  br i1 %cmp53.not, label %if.end56, label %sw.epilog.err_kfree_crit_edge

sw.epilog.err_kfree_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end56:                                         ; preds = %sw.epilog
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %7, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %55, label %if.end56.err_kfree_crit_edge [
    i8 32, label %if.end56.sw.epilog77_crit_edge
    i8 33, label %do.end70
  ]

if.end56.sw.epilog77_crit_edge:                   ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog77

if.end56.err_kfree_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

do.end70:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %do.end70, %if.end56.sw.epilog77_crit_edge
  %.str.15.sink = phi ptr [ @.str.15, %do.end70 ], [ @.str.9, %if.end56.sw.epilog77_crit_edge ]
  %slave72 = getelementptr inbounds %struct.tda18250_dev, ptr %call7.i.i, i32 0, i32 12
  %57 = ptrtoint ptr %slave72 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %slave72, align 8, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool73.not = icmp eq i8 %58, 0
  %cond75 = select i1 %tobool73.not, ptr @.str.13, ptr @.str.12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.15.sink, ptr noundef nonnull %cond75) #11
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %59 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %client, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %60 = call ptr @memcpy(ptr %tuner_ops, ptr @tda18250_ops, i32 220)
  %call78 = call fastcc i32 @tda18250_power_control(ptr noundef %3, i32 noundef 0)
  br label %cleanup

err_kfree:                                        ; preds = %if.end56.err_kfree_crit_edge, %sw.epilog.err_kfree_crit_edge, %do.end46.err_kfree_crit_edge, %if.then24, %if.else
  %ret.0 = phi i32 [ %41, %if.then24 ], [ -22, %if.else ], [ -19, %do.end46.err_kfree_crit_edge ], [ -19, %sw.epilog.err_kfree_crit_edge ], [ -19, %if.end56.err_kfree_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %do.body79

do.body79:                                        ; preds = %err_kfree, %entry.do.body79_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -12, %entry.do.body79_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_probe, %if.then91)) #7
          to label %cleanup [label %if.then91], !srcloc !111

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %ret.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %do.body79, %sw.epilog77
  %retval.0 = phi i32 [ 0, %sw.epilog77 ], [ %ret.1, %if.then91 ], [ %ret.1, %do.body79 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %chip_id) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18250_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fe1 = getelementptr inbounds %struct.tda18250_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_remove.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_remove.__UNIQUE_ID_ddebug302, ptr noundef %dev5, ptr noundef nonnull @.str.19) #7
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
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda18250_power_control(ptr nocapture noundef readonly %fe, i32 noundef %power_state) unnamed_addr #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #7
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_power_control.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_power_control, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_power_control.__UNIQUE_ID_ddebug290, ptr noundef %dev4, ptr noundef nonnull @.str.33, i32 noundef %power_state) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = zext i32 %power_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %power_state, label %do.end.err_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
  ]

do.end.err_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

sw.bb:                                            ; preds = %do.end
  %regmap = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 6, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %sw.bb.err_crit_edge

sw.bb.err_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end8:                                          ; preds = %sw.bb
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 37, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool11.not = icmp eq i32 %call.i90, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end8.err_crit_edge

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb14:                                          ; preds = %do.end
  %loopthrough = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 13
  %10 = ptrtoint ptr %loopthrough to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %loopthrough, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool15.not = icmp eq i8 %11, 0
  %regmap32 = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap32, align 4
  %call.i94 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 37, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool34.not = icmp eq i32 %call.i94, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %sw.bb14
  br i1 %tobool34.not, label %if.end21, label %if.then16.err_crit_edge

if.then16.err_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end21:                                         ; preds = %if.then16
  %14 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap32, align 4
  %call.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 6, i32 noundef 7, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool24.not = icmp eq i32 %call.i92, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.err_crit_edge

if.end21.err_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end26:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap32, align 4
  %call.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 16, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool29.not = icmp eq i32 %call.i93, 0
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.end26.err_crit_edge

if.end26.err_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %sw.bb14
  br i1 %tobool34.not, label %if.end36, label %if.else.err_crit_edge

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end36:                                         ; preds = %if.else
  %18 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap32, align 4
  %call.i95 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 6, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool39.not = icmp eq i32 %call.i95, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.err_crit_edge

if.end36.err_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end41:                                         ; preds = %if.end36
  %20 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap32, align 4
  %call43 = call i32 @regmap_read(ptr noundef %21, i32 noundef 13, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.err_crit_edge

if.end41.err_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end46:                                         ; preds = %if.end41
  %22 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap32, align 4
  %call.i96 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 13, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool49.not = icmp eq i32 %call.i96, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.err_crit_edge

if.end46.err_crit_edge:                           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end51:                                         ; preds = %if.end46
  %24 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap32, align 4
  %call.i97 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 16, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool54.not = icmp eq i32 %call.i97, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.err_crit_edge

if.end51.err_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end56:                                         ; preds = %if.end51
  %26 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap32, align 4
  %28 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %utmp, align 4
  %and = and i32 %29, 3
  %call.i98 = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 13, i32 noundef 3, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool59.not = icmp eq i32 %call.i98, 0
  br i1 %tobool59.not, label %if.end56.cleanup_crit_edge, label %if.end56.err_crit_edge

if.end56.err_crit_edge:                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %if.end56.err_crit_edge, %if.end51.err_crit_edge, %if.end46.err_crit_edge, %if.end41.err_crit_edge, %if.end36.err_crit_edge, %if.else.err_crit_edge, %if.end26.err_crit_edge, %if.end21.err_crit_edge, %if.then16.err_crit_edge, %if.end8.err_crit_edge, %sw.bb.err_crit_edge, %do.end.err_crit_edge
  %ret.0 = phi i32 [ %call.i94, %if.then16.err_crit_edge ], [ %call.i92, %if.end21.err_crit_edge ], [ %call.i93, %if.end26.err_crit_edge ], [ %call.i94, %if.else.err_crit_edge ], [ %call.i95, %if.end36.err_crit_edge ], [ %call43, %if.end41.err_crit_edge ], [ %call.i96, %if.end46.err_crit_edge ], [ %call.i97, %if.end51.err_crit_edge ], [ %call.i98, %if.end56.err_crit_edge ], [ %call.i, %sw.bb.err_crit_edge ], [ %call.i90, %if.end8.err_crit_edge ], [ -22, %do.end.err_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end56.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end56.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18250_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_init.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_init.__UNIQUE_ID_ddebug292, ptr noundef %dev4, ptr noundef nonnull @.str.19) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuner_priv, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_power_control.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_init, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !111

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_power_control.__UNIQUE_ID_ddebug290, ptr noundef %dev4.i, ptr noundef nonnull @.str.33, i32 noundef 1) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %regmap.i = getelementptr inbounds %struct.tda18250_dev, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 6, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %do.end.i.do.body73_crit_edge

do.end.i.do.body73_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end8.i:                                        ; preds = %do.end.i
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i90.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 37, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90.i)
  %tobool11.not.i = icmp eq i32 %call.i90.i, 0
  br i1 %tobool11.not.i, label %if.end8, label %if.end8.i.do.body73_crit_edge

if.end8.i.do.body73_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end8:                                          ; preds = %if.end8.i
  tail call void @msleep(i32 noundef 20) #7
  %warm = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %warm to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %warm, align 2, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %if.end8.warm67_crit_edge

if.end8.warm67_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %warm67

for.cond.preheader:                               ; preds = %if.end8
  %regmap = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, 34
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0135 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [34 x [2 x i8]], ptr @tda18250_init.init_regs, i32 0, i32 %i.0135
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %17 to i32
  %arrayidx14 = getelementptr [34 x [2 x i8]], ptr @tda18250_init.init_regs, i32 0, i32 %i.0135, i32 1
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %19 to i32
  %call16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %conv, i32 noundef %conv15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond, label %for.body.do.body73_crit_edge

for.body.do.body73_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

for.end:                                          ; preds = %for.cond
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %xtal_freq = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %xtal_freq, align 4
  %idxprom = zext i8 %23 to i32
  %arrayidx21 = getelementptr [5 x [5 x i8]], ptr @tda18250_init.xtal_regs, i32 0, i32 %idxprom
  %call22 = tail call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef 77, ptr noundef %arrayidx21, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %for.end.do.body73_crit_edge

for.end.do.body73_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end25:                                         ; preds = %for.end
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %loopthrough = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 13
  %26 = ptrtoint ptr %loopthrough to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %loopthrough, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool27.not = icmp eq i8 %27, 0
  %cond = select i1 %tobool27.not, i32 128, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 16, i32 noundef 128, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not = icmp eq i32 %call.i, 0
  br i1 %tobool30.not, label %if.end32, label %if.end25.do.body73_crit_edge

if.end25.do.body73_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end32:                                         ; preds = %if.end25
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call34 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 10, i32 noundef 130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.do.body73_crit_edge

if.end32.do.body73_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end37:                                         ; preds = %if.end32
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 42, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.do.body73_crit_edge

if.end37.do.body73_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end42:                                         ; preds = %if.end37
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call44 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 43, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.do.body73_crit_edge

if.end42.do.body73_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end47:                                         ; preds = %if.end42
  %call48 = tail call fastcc i32 @tda18250_wait_for_irq(ptr noundef %fe, i8 noundef zeroext -126)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.do.body73_crit_edge

if.end47.do.body73_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end51:                                         ; preds = %if.end47
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call53 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 42, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.do.body73_crit_edge

if.end51.do.body73_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end56:                                         ; preds = %if.end51
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call58 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 43, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.do.body73_crit_edge

if.end56.do.body73_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end61:                                         ; preds = %if.end56
  %call62 = tail call fastcc i32 @tda18250_wait_for_irq(ptr noundef %fe, i8 noundef zeroext -127)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.do.body73_crit_edge

if.end61.do.body73_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %warm to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %warm, align 2
  br label %warm67

warm67:                                           ; preds = %if.end65, %if.end8.warm67_crit_edge
  %regmap68 = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %regmap68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap68, align 4
  %call.i130 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 12, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool70.not = icmp eq i32 %call.i130, 0
  br i1 %tobool70.not, label %warm67.cleanup_crit_edge, label %warm67.do.body73_crit_edge

warm67.do.body73_crit_edge:                       ; preds = %warm67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

warm67.cleanup_crit_edge:                         ; preds = %warm67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body73:                                        ; preds = %warm67.do.body73_crit_edge, %if.end61.do.body73_crit_edge, %if.end56.do.body73_crit_edge, %if.end51.do.body73_crit_edge, %if.end47.do.body73_crit_edge, %if.end42.do.body73_crit_edge, %if.end37.do.body73_crit_edge, %if.end32.do.body73_crit_edge, %if.end25.do.body73_crit_edge, %for.end.do.body73_crit_edge, %for.body.do.body73_crit_edge, %if.end8.i.do.body73_crit_edge, %do.end.i.do.body73_crit_edge
  %ret.0 = phi i32 [ %call.i130, %warm67.do.body73_crit_edge ], [ %call22, %for.end.do.body73_crit_edge ], [ %call.i, %if.end25.do.body73_crit_edge ], [ %call34, %if.end32.do.body73_crit_edge ], [ %call39, %if.end37.do.body73_crit_edge ], [ %call44, %if.end42.do.body73_crit_edge ], [ %call48, %if.end47.do.body73_crit_edge ], [ %call53, %if.end51.do.body73_crit_edge ], [ %call58, %if.end56.do.body73_crit_edge ], [ %call62, %if.end61.do.body73_crit_edge ], [ %call.i.i, %do.end.i.do.body73_crit_edge ], [ %call.i90.i, %if.end8.i.do.body73_crit_edge ], [ %call16, %for.body.do.body73_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_init.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_init, %if.then85)) #7
          to label %cleanup [label %if.then85], !srcloc !111

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %dev86 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_init.__UNIQUE_ID_ddebug293, ptr noundef %dev86, ptr noundef nonnull @.str.17, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %do.body73, %warm67.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %warm67.cleanup_crit_edge ], [ %ret.0, %if.then85 ], [ %ret.0, %do.body73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18250_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_sleep.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_sleep, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_sleep.__UNIQUE_ID_ddebug299, ptr noundef %dev4, ptr noundef nonnull @.str.19) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %if_frequency = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %if_frequency, align 2
  %call9 = tail call fastcc i32 @tda18250_power_control(ptr noundef %fe, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ %call.i, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda18250_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !109
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !109
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !109
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_set_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_set_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %9 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delivery_system, align 4
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %13 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bandwidth_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_set_params.__UNIQUE_ID_ddebug297, ptr noundef %dev4, ptr noundef nonnull @.str.26, i32 noundef %10, i32 noundef %12, i32 noundef %14) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %15 = ptrtoint ptr %delivery_system5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delivery_system5, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %16, label %sw.default [
    i32 11, label %sw.bb
    i32 3, label %do.end.sw.bb6_crit_edge
    i32 16, label %do.end.sw.bb6_crit_edge327
    i32 1, label %do.end.sw.bb32_crit_edge
    i32 18, label %do.end.sw.bb32_crit_edge328
  ]

do.end.sw.bb32_crit_edge328:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

do.end.sw.bb32_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

do.end.sw.bb6_crit_edge327:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

do.end.sw.bb6_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %if_atsc = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 10
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end.sw.bb6_crit_edge, %do.end.sw.bb6_crit_edge327
  %bandwidth_hz7 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %18 = ptrtoint ptr %bandwidth_hz7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bandwidth_hz7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %sw.bb6.cleanup_crit_edge, label %if.else

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %19)
  %cmp11 = icmp ult i32 %19, 6000001
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %if_dvbt_6 = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 5
  br label %sw.epilog

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %19)
  %cmp17 = icmp ult i32 %19, 7000001
  br i1 %cmp17, label %if.then19, label %if.else21

if.then19:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  %if_dvbt_7 = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 6
  br label %sw.epilog

if.else21:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %19)
  %cmp23 = icmp ult i32 %19, 8000001
  br i1 %cmp23, label %if.then25, label %if.else21.cleanup_crit_edge

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  %if_dvbt_8 = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 7
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.end.sw.bb32_crit_edge, %do.end.sw.bb32_crit_edge328
  %bandwidth_hz33 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %20 = ptrtoint ptr %bandwidth_hz33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bandwidth_hz33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp34 = icmp eq i32 %21, 0
  br i1 %cmp34, label %sw.bb32.cleanup_crit_edge, label %if.else37

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %21)
  %cmp39 = icmp ult i32 %21, 6000001
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  %if_dvbc_6 = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 8
  br label %sw.epilog

if.else43:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000001, i32 %21)
  %cmp45 = icmp ult i32 %21, 8000001
  br i1 %cmp45, label %if.then47, label %if.else43.cleanup_crit_edge

if.else43.cleanup_crit_edge:                      ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #9
  %if_dvbc_8 = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 9
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev56 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56, ptr noundef nonnull @.str.27, i32 noundef %16) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.then47, %if.then41, %if.then25, %if.then19, %if.then13, %sw.bb
  %j.0 = phi i32 [ 5, %if.then41 ], [ 6, %if.then47 ], [ 2, %if.then13 ], [ 3, %if.then19 ], [ 4, %if.then25 ], [ 7, %sw.bb ]
  %if_khz.0.in.in = phi ptr [ %if_dvbc_6, %if.then41 ], [ %if_dvbc_8, %if.then47 ], [ %if_dvbt_6, %if.then13 ], [ %if_dvbt_7, %if.then19 ], [ %if_dvbt_8, %if.then25 ], [ %if_atsc, %sw.bb ]
  %22 = ptrtoint ptr %if_khz.0.in.in to i32
  call void @__asan_load2_noabort(i32 %22)
  %if_khz.0.in = load i16, ptr %if_khz.0.in.in, align 2
  %if_khz.0 = zext i16 %if_khz.0.in to i32
  %regmap = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0321, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %sw.epilog
  %i.0321 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.cond.for.body_crit_edge ]
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [16 x i8], ptr @tda18250_set_params.delsys_params, i32 0, i32 %i.0321
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %conv60 = zext i8 %26 to i32
  %arrayidx61 = getelementptr [8 x [16 x i8]], ptr @tda18250_set_params.delsys_params, i32 0, i32 1, i32 %i.0321
  %27 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %28 to i32
  %arrayidx64 = getelementptr [8 x [16 x i8]], ptr @tda18250_set_params.delsys_params, i32 0, i32 %j.0, i32 %i.0321
  %29 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %30 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %conv60, i32 noundef %conv62, i32 noundef %conv65, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool67.not = icmp eq i32 %call.i, 0
  br i1 %tobool67.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %if_frequency = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 11
  %31 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %if_frequency, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %if_khz.0.in)
  %cmp71.not = icmp eq i16 %32, %if_khz.0.in
  br i1 %cmp71.not, label %for.end.if.end102_crit_edge, label %if.then73

for.end.if.end102_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then73:                                        ; preds = %for.end
  %add = add nuw nsw i32 %if_khz.0, 25
  %div75 = udiv i32 %add, 50
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %conv78 = and i32 %div75, 255
  %call79 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 38, i32 noundef %conv78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end82:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %if_khz.0.in, ptr %if_frequency, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_set_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_set_params, %if.then97)) #7
          to label %if.end102 [label %if.then97], !srcloc !111

if.then97:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %dev98 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_set_params.__UNIQUE_ID_ddebug298, ptr noundef %dev98, ptr noundef nonnull @.str.28, i32 noundef %if_khz.0) #7
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %if.end82, %for.end.if.end102_crit_edge
  %call103 = tail call fastcc i32 @tda18250_set_agc(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end106:                                        ; preds = %if.end102
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i310 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 26, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i310)
  %tobool109.not = icmp eq i32 %call.i310, 0
  br i1 %tobool109.not, label %if.end111, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end111:                                        ; preds = %if.end106
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call.i311 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 20, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %tobool114.not = icmp eq i32 %call.i311, 0
  br i1 %tobool114.not, label %if.end116, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end116:                                        ; preds = %if.end111
  %40 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dtv_property_cache, align 4
  %div118 = udiv i32 %41, 1000
  %shr = lshr i32 %div118, 16
  %conv119 = trunc i32 %shr to i8
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv119, ptr %buf, align 1
  %shr123 = lshr i32 %div118, 8
  %conv125 = trunc i32 %shr123 to i8
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv125, ptr %5, align 1
  %conv131 = trunc i32 %div118 to i8
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv131, ptr %7, align 1
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call134 = call i32 @regmap_bulk_write(ptr noundef %46, i32 noundef 39, ptr noundef nonnull %buf, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end137:                                        ; preds = %if.end116
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call139 = call i32 @regmap_write(ptr noundef %48, i32 noundef 10, i32 noundef 136) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end142:                                        ; preds = %if.end137
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call144 = call i32 @regmap_write(ptr noundef %50, i32 noundef 42, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end147:                                        ; preds = %if.end142
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call149 = call i32 @regmap_write(ptr noundef %52, i32 noundef 43, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end152, label %if.end147.cleanup_crit_edge

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end152:                                        ; preds = %if.end147
  %call153 = call fastcc i32 @tda18250_wait_for_irq(ptr noundef %fe, i8 noundef zeroext -120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %tobool154.not = icmp eq i32 %call153, 0
  br i1 %tobool154.not, label %if.end156, label %if.end152.cleanup_crit_edge

if.end152.cleanup_crit_edge:                      ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end156:                                        ; preds = %if.end152
  %call160 = call fastcc i32 @tda18250_pll_calc(ptr noundef %fe, ptr noundef nonnull %buf, ptr noundef %5, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end156.cleanup_crit_edge

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end163:                                        ; preds = %if.end156
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %55 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %buf, align 1
  %conv166 = zext i8 %56 to i32
  %shl = shl nuw nsw i32 %conv166, 6
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %5, align 1
  %conv168 = zext i8 %58 to i32
  %shl169 = shl nuw nsw i32 %conv168, 5
  %or = or i32 %shl169, %shl
  %call.i312 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 79, i32 noundef 224, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i312)
  %tobool171.not = icmp eq i32 %call.i312, 0
  br i1 %tobool171.not, label %if.end173, label %if.end163.cleanup_crit_edge

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end173:                                        ; preds = %if.end163
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call175 = call i32 @regmap_write(ptr noundef %60, i32 noundef 10, i32 noundef 136) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.end178, label %if.end173.cleanup_crit_edge

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end178:                                        ; preds = %if.end173
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call.i313 = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 70, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313)
  %tobool181.not = icmp eq i32 %call.i313, 0
  br i1 %tobool181.not, label %if.end183, label %if.end178.cleanup_crit_edge

if.end178.cleanup_crit_edge:                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end183:                                        ; preds = %if.end178
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call.i314 = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 57, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314)
  %tobool186.not = icmp eq i32 %call.i314, 0
  br i1 %tobool186.not, label %if.end188, label %if.end183.cleanup_crit_edge

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end188:                                        ; preds = %if.end183
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call190 = call i32 @regmap_write(ptr noundef %66, i32 noundef 42, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end193, label %if.end188.cleanup_crit_edge

if.end188.cleanup_crit_edge:                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end193:                                        ; preds = %if.end188
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %call195 = call i32 @regmap_write(ptr noundef %68, i32 noundef 43, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end198, label %if.end193.cleanup_crit_edge

if.end193.cleanup_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end198:                                        ; preds = %if.end193
  %call199 = call fastcc i32 @tda18250_wait_for_irq(ptr noundef %fe, i8 noundef zeroext -120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end198.cleanup_crit_edge

if.end198.cleanup_crit_edge:                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end202:                                        ; preds = %if.end198
  call void @msleep(i32 noundef 20) #7
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %call.i315 = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 43, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i315)
  %tobool205.not = icmp eq i32 %call.i315, 0
  br i1 %tobool205.not, label %if.end207, label %if.end202.cleanup_crit_edge

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end207:                                        ; preds = %if.end202
  call void @msleep(i32 noundef 20) #7
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %call.i316 = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 26, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %tobool210.not = icmp eq i32 %call.i316, 0
  br i1 %tobool210.not, label %if.end212, label %if.end207.cleanup_crit_edge

if.end207.cleanup_crit_edge:                      ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end212:                                        ; preds = %if.end207
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %call.i317 = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 20, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317)
  %tobool215.not = icmp eq i32 %call.i317, 0
  br i1 %tobool215.not, label %if.end217, label %if.end212.cleanup_crit_edge

if.end212.cleanup_crit_edge:                      ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end217:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %77 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %7, align 1
  %conv220 = zext i8 %78 to i32
  %call.i318 = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 70, i32 noundef 7, i32 noundef %conv220, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end217, %if.end212.cleanup_crit_edge, %if.end207.cleanup_crit_edge, %if.end202.cleanup_crit_edge, %if.end198.cleanup_crit_edge, %if.end193.cleanup_crit_edge, %if.end188.cleanup_crit_edge, %if.end183.cleanup_crit_edge, %if.end178.cleanup_crit_edge, %if.end173.cleanup_crit_edge, %if.end163.cleanup_crit_edge, %if.end156.cleanup_crit_edge, %if.end152.cleanup_crit_edge, %if.end147.cleanup_crit_edge, %if.end142.cleanup_crit_edge, %if.end137.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %if.end102.cleanup_crit_edge, %if.then73.cleanup_crit_edge, %for.body.cleanup_crit_edge, %sw.default, %if.else43.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %if.else21.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end217 ], [ -22, %sw.default ], [ %call79, %if.then73.cleanup_crit_edge ], [ %call103, %if.end102.cleanup_crit_edge ], [ %call.i310, %if.end106.cleanup_crit_edge ], [ %call.i311, %if.end111.cleanup_crit_edge ], [ %call134, %if.end116.cleanup_crit_edge ], [ %call139, %if.end137.cleanup_crit_edge ], [ %call144, %if.end142.cleanup_crit_edge ], [ %call149, %if.end147.cleanup_crit_edge ], [ %call153, %if.end152.cleanup_crit_edge ], [ %call160, %if.end156.cleanup_crit_edge ], [ %call.i312, %if.end163.cleanup_crit_edge ], [ %call175, %if.end173.cleanup_crit_edge ], [ %call.i313, %if.end178.cleanup_crit_edge ], [ %call.i314, %if.end183.cleanup_crit_edge ], [ %call190, %if.end188.cleanup_crit_edge ], [ %call195, %if.end193.cleanup_crit_edge ], [ %call199, %if.end198.cleanup_crit_edge ], [ %call.i315, %if.end202.cleanup_crit_edge ], [ %call.i316, %if.end207.cleanup_crit_edge ], [ %call.i317, %if.end212.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %if.else21.cleanup_crit_edge ], [ -22, %sw.bb32.cleanup_crit_edge ], [ -22, %if.else43.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda18250_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %if_frequency = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %if_frequency, align 2
  %conv = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda18250_wait_for_irq(ptr nocapture noundef readonly %fe, i8 noundef zeroext %irq) unnamed_addr #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #7
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !109
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %5, 50
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub3 = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub3)
  %cmp5 = icmp sgt i32 %sub3, -1
  br i1 %cmp5, label %while.body.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

while.body.lr.ph:                                 ; preds = %entry
  %regmap = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 3
  %conv = zext i8 %irq to i32
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.body.lr.ph
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 8, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.body
  %9 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %utmp, align 4
  %and = and i32 %10, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp4 = icmp eq i32 %and, %conv
  br i1 %cmp4, label %if.end.do.body_crit_edge, label %if.end7

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end7:                                          ; preds = %if.end
  call void @msleep(i32 noundef 10) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.end7.while.body_crit_edge, label %if.end7.do.body_crit_edge

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.do.body_crit_edge ], [ %cmp4, %if.end.do.body_crit_edge ], [ %cmp4, %if.end7.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_wait_for_irq.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_wait_for_irq, %if.then13)) #7
          to label %do.end [label %if.then13], !srcloc !111

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv15 = zext i8 %irq to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %call16 = call i32 @jiffies_to_msecs(i32 noundef %12) #7
  %call17 = call i32 @jiffies_to_msecs(i32 noundef %add) #7
  %sub18.neg = add i32 %call16, 500
  %sub19 = sub i32 %sub18.neg, %call17
  %cond = select i1 %cmp.lcssa, ptr @.str.22, ptr @.str.23
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_wait_for_irq.__UNIQUE_ID_ddebug291, ptr noundef %dev14, ptr noundef nonnull @.str.21, i32 noundef %conv15, i32 noundef %sub19, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %. = select i1 %cmp.lcssa, i32 0, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %do.end ], [ %call2, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda18250_set_agc(ptr nocapture noundef readonly %fe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_set_agc.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_set_agc, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !111

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_set_agc.__UNIQUE_ID_ddebug294, ptr noundef %dev4, ptr noundef nonnull @.str.19) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 31, i32 noundef 135, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body214_crit_edge

do.end.do.body214_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end8:                                          ; preds = %do.end
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %7)
  %cmp = icmp ult i32 %7, 100000000
  br i1 %cmp, label %land.lhs.true, label %if.end8.land.end.thread_crit_edge

if.end8.land.end.thread_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.thread

land.lhs.true:                                    ; preds = %if.end8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %8 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delivery_system, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %9, label %land.lhs.true.land.end.thread_crit_edge [
    i32 1, label %land.lhs.true.land.end_crit_edge
    i32 18, label %land.lhs.true.land.end_crit_edge327
  ]

land.lhs.true.land.end_crit_edge327:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.lhs.true.land.end.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.thread

land.end:                                         ; preds = %land.lhs.true.land.end_crit_edge, %land.lhs.true.land.end_crit_edge327
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %11 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %12)
  %cmp12 = icmp eq i32 %12, 6000000
  %spec.select326 = select i1 %cmp12, i32 128, i32 0
  br label %land.end.thread

land.end.thread:                                  ; preds = %land.end, %land.lhs.true.land.end.thread_crit_edge, %if.end8.land.end.thread_crit_edge
  %13 = phi i32 [ %spec.select326, %land.end ], [ 0, %if.end8.land.end.thread_crit_edge ], [ 0, %land.lhs.true.land.end.thread_crit_edge ]
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 90, i32 noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %land.end.thread.do.body214_crit_edge

land.end.thread.do.body214_crit_edge:             ; preds = %land.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end18:                                         ; preds = %land.end.thread
  %delivery_system19 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %16 = ptrtoint ptr %delivery_system19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delivery_system19, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %17, label %sw.default [
    i32 11, label %if.end18.sw.epilog33_crit_edge
    i32 3, label %if.end18.sw.epilog33_crit_edge328
    i32 16, label %if.end18.sw.epilog33_crit_edge329
  ]

if.end18.sw.epilog33_crit_edge329:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog33

if.end18.sw.epilog33_crit_edge328:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog33

if.end18.sw.epilog33_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog33

sw.default:                                       ; preds = %if.end18
  %bandwidth_hz20 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %bandwidth_hz20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth_hz20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %20)
  %cond237 = icmp eq i32 %20, 6000000
  %21 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dtv_property_cache, align 4
  br i1 %cond237, label %sw.bb21, label %sw.default27

sw.bb21:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000000, i32 %22)
  %cmp23 = icmp ult i32 %22, 800000000
  %cond25 = select i1 %cmp23, i32 6, i32 4
  br label %sw.epilog33

sw.default27:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %22)
  %cmp29 = icmp ult i32 %22, 100000000
  %cond31 = select i1 %cmp29, i32 2, i32 3
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.default27, %sw.bb21, %if.end18.sw.epilog33_crit_edge, %if.end18.sw.epilog33_crit_edge328, %if.end18.sw.epilog33_crit_edge329
  %utmp.0 = phi i32 [ %cond25, %sw.bb21 ], [ %cond31, %sw.default27 ], [ 4, %if.end18.sw.epilog33_crit_edge ], [ 4, %if.end18.sw.epilog33_crit_edge328 ], [ 4, %if.end18.sw.epilog33_crit_edge329 ]
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i315 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 12, i32 noundef 7, i32 noundef %utmp.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i315)
  %tobool37.not = icmp eq i32 %call.i315, 0
  br i1 %tobool37.not, label %if.end39, label %sw.epilog33.do.body214_crit_edge

sw.epilog33.do.body214_crit_edge:                 ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end39:                                         ; preds = %sw.epilog33
  %25 = ptrtoint ptr %delivery_system19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delivery_system19, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %26, label %sw.default52 [
    i32 11, label %if.end39.sw.bb41_crit_edge
    i32 3, label %if.end39.sw.bb41_crit_edge330
    i32 16, label %if.end39.sw.bb41_crit_edge331
  ]

if.end39.sw.bb41_crit_edge331:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41

if.end39.sw.bb41_crit_edge330:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41

if.end39.sw.bb41_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb41

sw.bb41:                                          ; preds = %if.end39.sw.bb41_crit_edge, %if.end39.sw.bb41_crit_edge330, %if.end39.sw.bb41_crit_edge331
  %28 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320000000, i32 %29)
  %cmp43 = icmp ult i32 %29, 320000000
  %conv46 = select i1 %cmp43, i32 20, i32 16
  %conv51 = select i1 %cmp43, i32 22, i32 18
  br label %sw.epilog78

sw.default52:                                     ; preds = %if.end39
  %bandwidth_hz53 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %30 = ptrtoint ptr %bandwidth_hz53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bandwidth_hz53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %31)
  %cond236 = icmp eq i32 %31, 6000000
  %32 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dtv_property_cache, align 4
  br i1 %cond236, label %sw.bb54, label %sw.default66

sw.bb54:                                          ; preds = %sw.default52
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000000, i32 %33)
  %cmp56 = icmp ult i32 %33, 600000000
  br i1 %cmp56, label %sw.bb54.sw.epilog78_crit_edge, label %if.else

sw.bb54.sw.epilog78_crit_edge:                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog78

if.else:                                          ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000000, i32 %33)
  %cmp60 = icmp ult i32 %33, 800000000
  %. = select i1 %cmp60, i32 16, i32 14
  %.311 = select i1 %cmp60, i32 20, i32 16
  br label %sw.epilog78

sw.default66:                                     ; preds = %sw.default52
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 320000000, i32 %33)
  %cmp68 = icmp ult i32 %33, 320000000
  %cond70 = select i1 %cmp68, i32 16, i32 18
  %cond75 = select i1 %cmp68, i32 18, i32 20
  br label %sw.epilog78

sw.epilog78:                                      ; preds = %sw.default66, %if.else, %sw.bb54.sw.epilog78_crit_edge, %sw.bb41
  %utmp.1 = phi i32 [ %cond70, %sw.default66 ], [ %conv46, %sw.bb41 ], [ 18, %sw.bb54.sw.epilog78_crit_edge ], [ %., %if.else ]
  %utmp2.0 = phi i32 [ %cond75, %sw.default66 ], [ %conv51, %sw.bb41 ], [ 22, %sw.bb54.sw.epilog78_crit_edge ], [ %.311, %if.else ]
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %add = or i32 %utmp2.0, 8
  %call.i316 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 88, i32 noundef 31, i32 noundef %add, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %tobool82.not = icmp eq i32 %call.i316, 0
  br i1 %tobool82.not, label %if.end84, label %sw.epilog78.do.body214_crit_edge

sw.epilog78.do.body214_crit_edge:                 ; preds = %sw.epilog78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end84:                                         ; preds = %sw.epilog78
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i317 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 19, i32 noundef 31, i32 noundef %utmp.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317)
  %tobool88.not = icmp eq i32 %call.i317, 0
  br i1 %tobool88.not, label %if.end90, label %if.end84.do.body214_crit_edge

if.end84.do.body214_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end90:                                         ; preds = %if.end84
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call.i318 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 20, i32 noundef 31, i32 noundef %utmp2.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318)
  %tobool94.not = icmp eq i32 %call.i318, 0
  br i1 %tobool94.not, label %if.end96, label %if.end90.do.body214_crit_edge

if.end90.do.body214_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end96:                                         ; preds = %if.end90
  %40 = ptrtoint ptr %delivery_system19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %delivery_system19, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %41, label %sw.default99 [
    i32 11, label %if.end96.sw.epilog100_crit_edge
    i32 3, label %if.end96.sw.epilog100_crit_edge332
    i32 16, label %if.end96.sw.epilog100_crit_edge333
  ]

if.end96.sw.epilog100_crit_edge333:               ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog100

if.end96.sw.epilog100_crit_edge332:               ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog100

if.end96.sw.epilog100_crit_edge:                  ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog100

sw.default99:                                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog100

sw.epilog100:                                     ; preds = %sw.default99, %if.end96.sw.epilog100_crit_edge, %if.end96.sw.epilog100_crit_edge332, %if.end96.sw.epilog100_crit_edge333
  %utmp.2 = phi i32 [ 90, %sw.default99 ], [ 98, %if.end96.sw.epilog100_crit_edge ], [ 98, %if.end96.sw.epilog100_crit_edge332 ], [ 98, %if.end96.sw.epilog100_crit_edge333 ]
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call.i319 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 22, i32 noundef 248, i32 noundef %utmp.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i319)
  %tobool104.not = icmp eq i32 %call.i319, 0
  br i1 %tobool104.not, label %if.end106, label %sw.epilog100.do.body214_crit_edge

sw.epilog100.do.body214_crit_edge:                ; preds = %sw.epilog100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end106:                                        ; preds = %sw.epilog100
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %47 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000000, i32 %48)
  %cmp109 = icmp ugt i32 %48, 800000000
  %cond111 = select i1 %cmp109, i32 64, i32 32
  %call.i320 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 18, i32 noundef 96, i32 noundef %cond111, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i320)
  %tobool113.not = icmp eq i32 %call.i320, 0
  br i1 %tobool113.not, label %if.end115, label %if.end106.do.body214_crit_edge

if.end106.do.body214_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end115:                                        ; preds = %if.end106
  %49 = ptrtoint ptr %delivery_system19 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delivery_system19, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %50, label %if.end115.sw.epilog129_crit_edge [
    i32 11, label %if.end115.sw.bb117_crit_edge
    i32 3, label %if.end115.sw.bb117_crit_edge334
    i32 16, label %if.end115.sw.bb117_crit_edge335
  ]

if.end115.sw.bb117_crit_edge335:                  ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb117

if.end115.sw.bb117_crit_edge334:                  ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb117

if.end115.sw.bb117_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb117

if.end115.sw.epilog129_crit_edge:                 ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog129

sw.bb117:                                         ; preds = %if.end115.sw.bb117_crit_edge, %if.end115.sw.bb117_crit_edge334, %if.end115.sw.bb117_crit_edge335
  %52 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320000000, i32 %53)
  %cmp119 = icmp ult i32 %53, 320000000
  %54 = select i1 %cmp119, i32 90, i32 124
  br label %sw.epilog129

sw.epilog129:                                     ; preds = %sw.bb117, %if.end115.sw.epilog129_crit_edge
  %or = phi i32 [ %54, %sw.bb117 ], [ 124, %if.end115.sw.epilog129_crit_edge ]
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call133 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 23, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.end136, label %sw.epilog129.do.body214_crit_edge

sw.epilog129.do.body214_crit_edge:                ; preds = %sw.epilog129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end136:                                        ; preds = %sw.epilog129
  %57 = ptrtoint ptr %delivery_system19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delivery_system19, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %58, label %sw.default150 [
    i32 11, label %if.end136.sw.bb138_crit_edge
    i32 3, label %if.end136.sw.bb138_crit_edge336
    i32 16, label %if.end136.sw.bb138_crit_edge337
  ]

if.end136.sw.bb138_crit_edge337:                  ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb138

if.end136.sw.bb138_crit_edge336:                  ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb138

if.end136.sw.bb138_crit_edge:                     ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb138

sw.bb138:                                         ; preds = %if.end136.sw.bb138_crit_edge, %if.end136.sw.bb138_crit_edge336, %if.end136.sw.bb138_crit_edge337
  %bandwidth_hz139 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %60 = ptrtoint ptr %bandwidth_hz139 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bandwidth_hz139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %61)
  %cmp140 = icmp eq i32 %61, 8000000
  br i1 %cmp140, label %sw.bb138.sw.epilog177_crit_edge, label %if.else143

sw.bb138.sw.epilog177_crit_edge:                  ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog177

if.else143:                                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 320000000, i32 %63)
  %cmp145 = icmp ult i32 %63, 320000000
  %conv148 = select i1 %cmp145, i32 4, i32 2
  br label %sw.epilog177

sw.default150:                                    ; preds = %if.end136
  %bandwidth_hz151 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %64 = ptrtoint ptr %bandwidth_hz151 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bandwidth_hz151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %65)
  %cmp152 = icmp eq i32 %65, 6000000
  %66 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dtv_property_cache, align 4
  br i1 %cmp152, label %if.then154, label %if.else165

if.then154:                                       ; preds = %sw.default150
  call void @__sanitizer_cov_trace_pc() #9
  %68 = add i32 %67, -172544001
  call void @__sanitizer_cov_trace_const_cmp4(i32 147455999, i32 %68)
  %69 = icmp ult i32 %68, 147455999
  %70 = select i1 %69, i32 4, i32 2
  br label %sw.epilog177

if.else165:                                       ; preds = %sw.default150
  call void @__sanitizer_cov_trace_pc() #9
  %71 = add i32 %67, -320000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 279999999, i32 %71)
  %72 = icmp ult i32 %71, 279999999
  %73 = select i1 %72, i32 2, i32 4
  br label %sw.epilog177

sw.epilog177:                                     ; preds = %if.else165, %if.then154, %if.else143, %sw.bb138.sw.epilog177_crit_edge
  %utmp.4 = phi i32 [ %70, %if.then154 ], [ %73, %if.else165 ], [ %conv148, %if.else143 ], [ 4, %sw.bb138.sw.epilog177_crit_edge ]
  %74 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap, align 4
  %call.i321 = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 32, i32 noundef 6, i32 noundef %utmp.4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %tobool181.not = icmp eq i32 %call.i321, 0
  br i1 %tobool181.not, label %if.end183, label %sw.epilog177.do.body214_crit_edge

sw.epilog177.do.body214_crit_edge:                ; preds = %sw.epilog177
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end183:                                        ; preds = %sw.epilog177
  %76 = ptrtoint ptr %delivery_system19 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %delivery_system19, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %77, label %sw.default186 [
    i32 11, label %if.end183.sw.epilog192_crit_edge
    i32 3, label %if.end183.sw.epilog192_crit_edge338
    i32 16, label %if.end183.sw.epilog192_crit_edge339
  ]

if.end183.sw.epilog192_crit_edge339:              ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog192

if.end183.sw.epilog192_crit_edge338:              ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog192

if.end183.sw.epilog192_crit_edge:                 ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog192

sw.default186:                                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000000, i32 %80)
  %cmp188 = icmp ult i32 %80, 600000000
  %cond190 = select i1 %cmp188, i32 0, i32 3
  br label %sw.epilog192

sw.epilog192:                                     ; preds = %sw.default186, %if.end183.sw.epilog192_crit_edge, %if.end183.sw.epilog192_crit_edge338, %if.end183.sw.epilog192_crit_edge339
  %utmp.5 = phi i32 [ %cond190, %sw.default186 ], [ 0, %if.end183.sw.epilog192_crit_edge ], [ 0, %if.end183.sw.epilog192_crit_edge338 ], [ 0, %if.end183.sw.epilog192_crit_edge339 ]
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %call.i322 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 22, i32 noundef 3, i32 noundef %utmp.5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i322)
  %tobool196.not = icmp eq i32 %call.i322, 0
  br i1 %tobool196.not, label %if.end198, label %sw.epilog192.do.body214_crit_edge

sw.epilog192.do.body214_crit_edge:                ; preds = %sw.epilog192
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

if.end198:                                        ; preds = %sw.epilog192
  %83 = ptrtoint ptr %delivery_system19 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delivery_system19, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %84, label %if.end198.sw.epilog207_crit_edge [
    i32 11, label %if.end198.sw.bb200_crit_edge
    i32 3, label %if.end198.sw.bb200_crit_edge340
    i32 16, label %if.end198.sw.bb200_crit_edge341
  ]

if.end198.sw.bb200_crit_edge341:                  ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb200

if.end198.sw.bb200_crit_edge340:                  ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb200

if.end198.sw.bb200_crit_edge:                     ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb200

if.end198.sw.epilog207_crit_edge:                 ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog207

sw.bb200:                                         ; preds = %if.end198.sw.bb200_crit_edge, %if.end198.sw.bb200_crit_edge340, %if.end198.sw.bb200_crit_edge341
  %bandwidth_hz201 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %86 = ptrtoint ptr %bandwidth_hz201 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %bandwidth_hz201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %87)
  %cmp202 = icmp eq i32 %87, 8000000
  %spec.select = select i1 %cmp202, i32 12, i32 9
  br label %sw.epilog207

sw.epilog207:                                     ; preds = %sw.bb200, %if.end198.sw.epilog207_crit_edge
  %utmp.6 = phi i32 [ %spec.select, %sw.bb200 ], [ 12, %if.end198.sw.epilog207_crit_edge ]
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %call.i323 = tail call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 15, i32 noundef 63, i32 noundef %utmp.6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i323)
  %tobool211.not = icmp eq i32 %call.i323, 0
  br i1 %tobool211.not, label %sw.epilog207.cleanup_crit_edge, label %sw.epilog207.do.body214_crit_edge

sw.epilog207.do.body214_crit_edge:                ; preds = %sw.epilog207
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body214

sw.epilog207.cleanup_crit_edge:                   ; preds = %sw.epilog207
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body214:                                       ; preds = %sw.epilog207.do.body214_crit_edge, %sw.epilog192.do.body214_crit_edge, %sw.epilog177.do.body214_crit_edge, %sw.epilog129.do.body214_crit_edge, %if.end106.do.body214_crit_edge, %sw.epilog100.do.body214_crit_edge, %if.end90.do.body214_crit_edge, %if.end84.do.body214_crit_edge, %sw.epilog78.do.body214_crit_edge, %sw.epilog33.do.body214_crit_edge, %land.end.thread.do.body214_crit_edge, %do.end.do.body214_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end.do.body214_crit_edge ], [ %call15, %land.end.thread.do.body214_crit_edge ], [ %call.i315, %sw.epilog33.do.body214_crit_edge ], [ %call.i316, %sw.epilog78.do.body214_crit_edge ], [ %call.i317, %if.end84.do.body214_crit_edge ], [ %call.i318, %if.end90.do.body214_crit_edge ], [ %call.i319, %sw.epilog100.do.body214_crit_edge ], [ %call.i320, %if.end106.do.body214_crit_edge ], [ %call133, %sw.epilog129.do.body214_crit_edge ], [ %call.i321, %sw.epilog177.do.body214_crit_edge ], [ %call.i322, %sw.epilog192.do.body214_crit_edge ], [ %call.i323, %sw.epilog207.do.body214_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_set_agc.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_set_agc, %if.then226)) #7
          to label %cleanup [label %if.then226], !srcloc !111

if.then226:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #9
  %dev227 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_set_agc.__UNIQUE_ID_ddebug295, ptr noundef %dev227, ptr noundef nonnull @.str.17, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then226, %do.body214, %sw.epilog207.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog207.cleanup_crit_edge ], [ %ret.0, %if.then226 ], [ %ret.0, %do.body214 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda18250_pll_calc(ptr nocapture noundef readonly %fe, ptr nocapture noundef %rdiv, ptr nocapture noundef %ndiv, ptr nocapture noundef %icp) unnamed_addr #2 align 64 {
entry:
  %uval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uval) #7
  %4 = ptrtoint ptr %uval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %uval, align 4, !annotation !109
  %regmap = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 52, ptr noundef nonnull %uval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %7 = ptrtoint ptr %uval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %uval, align 4
  %and = lshr i32 %8, 4
  %shr = and i32 %and, 7
  %shr.op = add nsw i32 %shr, -1
  %shr.op.op = shl nuw nsw i32 1, %shr.op
  %and4 = and i32 %8, 15
  %mul = shl nuw nsw i32 %and4, %shr.op
  %9 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %10, 1000
  %if_frequency = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %if_frequency, align 2
  %conv = zext i16 %12 to i32
  %add = add nuw nsw i32 %div, %conv
  %mul5 = mul i32 %mul, %add
  %xtal_freq = getelementptr inbounds %struct.tda18250_dev, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %xtal_freq, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %14, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end.sw.bb10_crit_edge
    i8 2, label %if.end.sw.bb10_crit_edge80
    i8 3, label %sw.bb15
    i8 4, label %sw.bb25
  ]

if.end.sw.bb10_crit_edge80:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %rdiv to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %rdiv, align 1
  %17 = ptrtoint ptr %ndiv to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ndiv, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6622000, i32 %mul5)
  %cmp7 = icmp ult i32 %mul5, 6622000
  %conv9 = select i1 %cmp7, i8 5, i8 2
  br label %do.body

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge80
  %18 = ptrtoint ptr %rdiv to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %rdiv, align 1
  %19 = ptrtoint ptr %ndiv to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %ndiv, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6622000, i32 %mul5)
  %cmp11 = icmp ult i32 %mul5, 6622000
  %conv14 = select i1 %cmp11, i8 5, i8 2
  br label %do.body

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6643000, i32 %mul5)
  %cmp16 = icmp ult i32 %mul5, 6643000
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %rdiv to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %rdiv, align 1
  %21 = ptrtoint ptr %ndiv to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ndiv, align 1
  br label %do.body

if.else:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6811000, i32 %mul5)
  %cmp19 = icmp ult i32 %mul5, 6811000
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %rdiv to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 2, ptr %rdiv, align 1
  %23 = ptrtoint ptr %ndiv to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %ndiv, align 1
  br label %do.body

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %rdiv to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %rdiv, align 1
  %25 = ptrtoint ptr %ndiv to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %ndiv, align 1
  br label %do.body

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %rdiv to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %rdiv, align 1
  %27 = ptrtoint ptr %ndiv to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %ndiv, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6811000, i32 %mul5)
  %cmp26 = icmp ult i32 %mul5, 6811000
  %conv29 = select i1 %cmp26, i8 5, i8 2
  br label %do.body

do.body:                                          ; preds = %sw.bb25, %if.else22, %if.then21, %if.then18, %sw.bb10, %sw.bb
  %conv9.sink = phi i8 [ %conv9, %sw.bb ], [ %conv14, %sw.bb10 ], [ %conv29, %sw.bb25 ], [ 6, %if.then21 ], [ 2, %if.else22 ], [ 5, %if.then18 ]
  %28 = ptrtoint ptr %icp to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv9.sink, ptr %icp, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tda18250_pll_calc.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tda18250_pll_calc, %if.then34)) #7
          to label %cleanup [label %if.then34], !srcloc !111

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %rdiv to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rdiv, align 1
  %conv36 = zext i8 %30 to i32
  %31 = ptrtoint ptr %ndiv to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ndiv, align 1
  %conv37 = zext i8 %32 to i32
  %33 = ptrtoint ptr %icp to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %icp, align 1
  %conv38 = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tda18250_pll_calc.__UNIQUE_ID_ddebug296, ptr noundef %dev35, ptr noundef nonnull @.str.31, i32 noundef %shr.op.op, i32 noundef %and4, i32 noundef %mul5, i32 noundef %conv36, i32 noundef %conv37, i32 noundef %conv38) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then34 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uval) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !50, !52, !54, !56, !57, !58, !60, !62, !63, !64, !65, !66, !68, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !89, !90, !91, !93, !94, !95, !97, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_tda18250__303_888_tda18250_driver_init6, !1, !"__initcall__kmod_tda18250__303_888_tda18250_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tda18250.c", i32 888, i32 1}
!2 = !{ptr @__exitcall_tda18250_driver_exit, !1, !"__exitcall_tda18250_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description304, !4, !"__UNIQUE_ID_description304", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tda18250.c", i32 890, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tda18250.c", i32 891, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/tda18250.c", i32 892, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/tda18250.c", i32 881, i32 11}
!12 = !{ptr @tda18250_driver, !13, !"tda18250_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/tda18250.c", i32 879, i32 26}
!14 = !{ptr @tda18250_probe.tda18250_yes_ranges, !15, !"tda18250_yes_ranges", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/tda18250.c", i32 754, i32 35}
!16 = !{ptr @tda18250_probe.tda18250_volatile_table, !17, !"tda18250_volatile_table", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/tda18250.c", i32 761, i32 42}
!18 = !{ptr @tda18250_probe.tda18250_regmap_config, !19, !"tda18250_regmap_config", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/tda18250.c", i32 766, i32 36}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/tda18250.c", i32 787, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @tda18250_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @tda18250_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @tda18250_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/media/tuners/tda18250.c", i32 800, i32 16}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/tuners/tda18250.c", i32 808, i32 2}
!33 = !{ptr @tda18250_probe.__UNIQUE_ID_ddebug300, !32, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/tda18250.c", i32 830, i32 3}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tda18250_probe._entry.8, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @tda18250_probe._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/tda18250.c", i32 835, i32 3}
!43 = !{ptr @tda18250_probe._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tda18250_probe._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/tuners/tda18250.c", i32 855, i32 2}
!47 = !{ptr @tda18250_probe.__UNIQUE_ID_ddebug301, !46, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!48 = !{ptr @tda18250_ops, !49, !"tda18250_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/tda18250.c", i32 731, i32 35}
!50 = !{ptr @tda18250_init.init_regs, !51, !"init_regs", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/tda18250.c", i32 127, i32 18}
!52 = !{ptr @tda18250_init.xtal_regs, !53, !"xtal_regs", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/tda18250.c", i32 165, i32 18}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/tda18250.c", i32 174, i32 2}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @tda18250_init.__UNIQUE_ID_ddebug292, !55, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!58 = !{ptr @tda18250_init.__UNIQUE_ID_ddebug293, !59, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!59 = !{!"../drivers/media/tuners/tda18250.c", i32 245, i32 2}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/tuners/tda18250.c", i32 107, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @tda18250_wait_for_irq.__UNIQUE_ID_ddebug291, !61, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!64 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/tda18250.c", i32 717, i32 2}
!68 = !{ptr @tda18250_sleep.__UNIQUE_ID_ddebug299, !67, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!69 = !{ptr @tda18250_set_params.delsys_params, !70, !"delsys_params", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/tda18250.c", i32 513, i32 18}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/tuners/tda18250.c", i32 532, i32 2}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tda18250_set_params.__UNIQUE_ID_ddebug297, !72, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/tuners/tda18250.c", i32 579, i32 3}
!77 = !{ptr @tda18250_set_params._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @tda18250_set_params._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/tuners/tda18250.c", i32 599, i32 3}
!81 = !{ptr @tda18250_set_params.__UNIQUE_ID_ddebug298, !80, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/tda18250.c", i32 257, i32 2}
!84 = !{ptr @tda18250_set_agc.__UNIQUE_ID_ddebug294, !83, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!85 = !{ptr @tda18250_set_agc.__UNIQUE_ID_ddebug295, !86, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!86 = !{!"../drivers/media/tuners/tda18250.c", i32 424, i32 2}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/tuners/tda18250.c", i32 485, i32 2}
!89 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tda18250_pll_calc.__UNIQUE_ID_ddebug296, !88, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/tuners/tda18250.c", i32 21, i32 2}
!93 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @tda18250_power_control.__UNIQUE_ID_ddebug290, !92, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/tuners/tda18250.c", i32 864, i32 2}
!97 = !{ptr @tda18250_remove.__UNIQUE_ID_ddebug302, !96, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!98 = !{ptr @tda18250_id_table, !99, !"tda18250_id_table", i1 false, i1 false}
!99 = !{!"../drivers/media/tuners/tda18250.c", i32 873, i32 35}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
!110 = !{i8 0, i8 2}
!111 = !{i64 2148322267, i64 2148322272, i64 2148322285, i64 2148322329, i64 2148322363, i64 2148322384}
