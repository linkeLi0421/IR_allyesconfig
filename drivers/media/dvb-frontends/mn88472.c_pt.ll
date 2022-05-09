; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/mn88472.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mn88472.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
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
%struct.mn88472_config = type { i32, i32, i32, i16, ptr, ptr }
%struct.mn88472_dev = type { [3 x ptr], [3 x ptr], %struct.dvb_frontend, i16, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_mn88472__311_729_mn88472_driver_init6 = internal global ptr @mn88472_driver_init, section ".initcall6.init", align 4
@mn88472_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mn88472_probe, ptr @mn88472_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mn88472_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mn88472_driver_exit = internal global ptr @mn88472_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author312 = internal constant [46 x i8] c"mn88472.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [68 x i8] c"mn88472.description=Panasonic MN88472 DVB-T/T2/C demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [49 x i8] c"mn88472.file=drivers/media/dvb-frontends/mn88472\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [20 x i8] c"mn88472.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware316 = internal constant [41 x i8] c"mn88472.firmware=dvb-demod-mn88472-02.fw\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mn88472\00", [24 x i8] zeroinitializer }, align 32
@mn88472_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mn88472\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mn88472_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mn88472_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mn88472_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/mn88472.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@mn88472_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mn88472:601:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@mn88472_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 618, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I2C registration failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mn88472_probe._entry_ptr = internal global ptr @mn88472_probe._entry, section ".printk_index", align 4
@mn88472_probe._key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mn88472:621:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@mn88472_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 631, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"2nd I2C registration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@mn88472_probe._entry_ptr.12 = internal global ptr @mn88472_probe._entry.10, section ".printk_index", align 4
@mn88472_probe._key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mn88472:634:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@mn88472_probe.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip id=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@mn88472_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Panasonic MN88472\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 1000000, i32 7200000, i32 0, i32 -1810104658 }, [8 x i8] c"\03\10\01\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @mn88472_init, ptr @mn88472_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mn88472_set_frontend, ptr @mn88472_get_tune_settings, ptr null, ptr @mn88472_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@mn88472_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 674, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Panasonic MN88472 successfully identified\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mn88472_probe._entry_ptr.19 = internal global ptr @mn88472_probe._entry.16, section ".printk_index", align 4
@mn88472_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.20, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb-demod-mn88472-02.fw\00", [40 x i8] zeroinitializer }, align 32
@mn88472_init.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.3, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mn88472_init\00", [19 x i8] zeroinitializer }, align 32
@mn88472_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.22, ptr @.str.2, i32 425, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firmware file '%s' not found\0A\00", [34 x i8] zeroinitializer }, align 32
@mn88472_init._entry_ptr = internal global ptr @mn88472_init._entry, section ".printk_index", align 4
@mn88472_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 429, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"downloading firmware from file '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@mn88472_init._entry_ptr.26 = internal global ptr @mn88472_init._entry.24, section ".printk_index", align 4
@mn88472_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.2, i32 442, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware download failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mn88472_init._entry_ptr.29 = internal global ptr @mn88472_init._entry.27, section ".printk_index", align 4
@mn88472_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.2, i32 453, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware did not run\0A\00", [42 x i8] zeroinitializer }, align 32
@mn88472_init._entry_ptr.32 = internal global ptr @mn88472_init._entry.30, section ".printk_index", align 4
@mn88472_init.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.20, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mn88472_sleep.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.3, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mn88472_sleep\00", [18 x i8] zeroinitializer }, align 32
@mn88472_sleep.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.20, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mn88472_set_frontend.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mn88472_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"delivery_system=%u modulation=%u frequency=%u bandwidth_hz=%u symbol_rate=%u inversion=%d stream_id=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\E5\99\9A\1B\A9\1B\A9\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\BFUU\15k\15k\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\A4\00\00\0F,\0F,\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\8F\80\00\08\EE\08\EE\00", [24 x i8] zeroinitializer }, align 32
@mn88472_set_frontend.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.40, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_if_frequency=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@mn88472_set_frontend.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.20, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mn88472_read_status.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mn88472_read_status\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"strength=%u\0A\00", [19 x i8] zeroinitializer }, align 32
@mn88472_read_status.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.43, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cnr=%d value=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@mn88472_read_status.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.44, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cnr=%d value=%u MISO\0A\00", [42 x i8] zeroinitializer }, align 32
@mn88472_read_status.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.45, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cnr=%d value=%u SISO\0A\00", [42 x i8] zeroinitializer }, align 32
@mn88472_read_status.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.46, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cnr=%d signal=%u noise=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@mn88472_read_status.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.47, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"block_error=%u block_count=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@mn88472_read_status.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.20, i8 0, i8 48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mn88472_get_dvb_frontend.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.3, i8 0, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mn88472_get_dvb_frontend\00", [39 x i8] zeroinitializer }, align 32
@mn88472_remove.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.3, i8 0, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mn88472_remove\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 5000000, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"mn88472_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 719, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 721, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"mn88472_id_table\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 713, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 583, i32 36 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 588, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 601, i32 19 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 618, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 621, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 631, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 634, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 646, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"mn88472_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 529, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 674, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 690, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 401, i32 21 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 403, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 425, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 429, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 441, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 453, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 510, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 211, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 253, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 257, i32 25 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 261, i32 25 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 265, i32 25 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 293, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 82, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 104, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 129, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 137, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 161, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 181, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 570, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [41 x i8] c"../drivers/media/dvb-frontends/mn88472.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 698, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_firmware316, ptr @__UNIQUE_ID_license315, ptr @__exitcall_mn88472_driver_exit, ptr @__initcall__kmod_mn88472__311_729_mn88472_driver_init6, ptr @mn88472_driver_exit, ptr @mn88472_init._entry, ptr @mn88472_init._entry.24, ptr @mn88472_init._entry.27, ptr @mn88472_init._entry.30, ptr @mn88472_init._entry_ptr, ptr @mn88472_init._entry_ptr.26, ptr @mn88472_init._entry_ptr.29, ptr @mn88472_init._entry_ptr.32, ptr @mn88472_probe._entry, ptr @mn88472_probe._entry.10, ptr @mn88472_probe._entry.16, ptr @mn88472_probe._entry_ptr, ptr @mn88472_probe._entry_ptr.12, ptr @mn88472_probe._entry_ptr.19, ptr @mn88472_driver, ptr @.str, ptr @mn88472_id_table, ptr @mn88472_probe.regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mn88472_probe._key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mn88472_probe._key.8, ptr @.str.9, ptr @.str.11, ptr @mn88472_probe._key.13, ptr @.str.14, ptr @.str.15, ptr @mn88472_ops, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_probe._key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_probe._key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88472_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88472_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mn88472_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mn88472_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mn88472_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88472_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #7
  %2 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %utmp, align 4, !annotation !138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_probe.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1076) #10
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %do.end.do.body150_crit_edge, label %if.end8

do.end.do.body150_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body150

if.end8:                                          ; preds = %do.end
  %i2c_wr_max = getelementptr inbounds %struct.mn88472_config, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %i2c_wr_max, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool9.not = icmp eq i16 %5, 0
  %spec.select = select i1 %tobool9.not, i16 -1, i16 %5
  %i2c_write_max = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %i2c_write_max to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %spec.select, ptr %i2c_write_max, align 8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %clk = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %clk, align 4
  %ts_mode = getelementptr inbounds %struct.mn88472_config, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ts_mode, align 4
  %ts_mode13 = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 5
  %12 = trunc i32 %11 to i8
  %13 = ptrtoint ptr %ts_mode13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %ts_mode13, align 8
  %bf.value = shl i8 %12, 6
  %bf.shl = and i8 %bf.value, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %ts_mode13, align 8
  %ts_clock = getelementptr inbounds %struct.mn88472_config, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %ts_clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ts_clock, align 4
  %16 = trunc i32 %15 to i8
  %bf.value15 = shl i8 %16, 5
  %bf.shl16 = and i8 %bf.value15, 32
  %bf.clear17 = and i8 %bf.set, -33
  %bf.set18 = or i8 %bf.shl16, %bf.clear17
  store i8 %bf.set18, ptr %ts_mode13, align 8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %client, ptr %call7.i.i, align 8
  %call24 = tail call ptr @__regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @mn88472_probe.regmap_config, ptr noundef nonnull @mn88472_probe._key, ptr noundef nonnull @.str.4) #7
  %regmap = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call24, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call24 to i32
  br label %err_kfree

if.end33:                                         ; preds = %if.end8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %20 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter, align 8
  %call34 = tail call ptr @i2c_new_dummy_device(ptr noundef %21, i16 noundef zeroext 26) #7
  %arrayidx36 = getelementptr [3 x ptr], ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call34, ptr %arrayidx36, align 4
  %cmp.i240 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then40, label %if.end48

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call34 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  br label %err_regmap_0_regmap_exit

if.end48:                                         ; preds = %if.end33
  %call52 = tail call ptr @__regmap_init_i2c(ptr noundef %call34, ptr noundef nonnull @mn88472_probe.regmap_config, ptr noundef nonnull @mn88472_probe._key.8, ptr noundef nonnull @.str.9) #7
  %arrayidx54 = getelementptr %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call52, ptr %arrayidx54, align 8
  %cmp.i241 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then58, label %if.end62

if.then58:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call52 to i32
  br label %err_client_1_i2c_unregister_device

if.end62:                                         ; preds = %if.end48
  %26 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx36, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %call66 = tail call ptr @i2c_new_dummy_device(ptr noundef %30, i16 noundef zeroext 28) #7
  %arrayidx68 = getelementptr [3 x ptr], ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call66, ptr %arrayidx68, align 8
  %cmp.i242 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then72, label %if.end80

if.then72:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call66 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %err_regmap_1_regmap_exit

if.end80:                                         ; preds = %if.end62
  %call84 = tail call ptr @__regmap_init_i2c(ptr noundef %call66, ptr noundef nonnull @mn88472_probe.regmap_config, ptr noundef nonnull @mn88472_probe._key.13, ptr noundef nonnull @.str.14) #7
  %arrayidx86 = getelementptr %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call84, ptr %arrayidx86, align 4
  %cmp.i243 = icmp ugt ptr %call84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %if.then90, label %if.end94

if.then90:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call84 to i32
  br label %err_client_2_i2c_unregister_device

if.end94:                                         ; preds = %if.end80
  %35 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx68, align 8
  %driver_data.i.i244 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4, i32 8
  %37 = ptrtoint ptr %driver_data.i.i244 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %driver_data.i.i244, align 4
  %38 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx86, align 4
  %call99 = call i32 @regmap_read(ptr noundef %39, i32 noundef 255, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %do.body103, label %if.end94.err_regmap_2_regmap_exit_crit_edge

if.end94.err_regmap_2_regmap_exit_crit_edge:      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_regmap_2_regmap_exit

do.body103:                                       ; preds = %if.end94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_probe.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_probe, %if.then115)) #7
          to label %do.end119 [label %if.then115], !srcloc !139

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_probe.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %41) #7
  br label %do.end119

do.end119:                                        ; preds = %if.then115, %do.body103
  %42 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp.not = icmp eq i32 %43, 2
  br i1 %cmp.not, label %if.end122, label %do.end119.err_regmap_2_regmap_exit_crit_edge

do.end119.err_regmap_2_regmap_exit_crit_edge:     ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_regmap_2_regmap_exit

if.end122:                                        ; preds = %do.end119
  %44 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx86, align 4
  %call125 = call i32 @regmap_write(ptr noundef %45, i32 noundef 5, i32 noundef 62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %if.end122.err_regmap_2_regmap_exit_crit_edge

if.end122.err_regmap_2_regmap_exit_crit_edge:     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_regmap_2_regmap_exit

if.end128:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %fe = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %46 = call ptr @memcpy(ptr %ops, ptr @mn88472_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 2, i32 3
  %47 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %client, ptr %demodulator_priv, align 8
  %fe131 = getelementptr inbounds %struct.mn88472_config, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %fe131 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fe131, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %fe, ptr %49, align 4
  %driver_data.i.i245 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %51 = ptrtoint ptr %driver_data.i.i245 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %driver_data.i.i245, align 4
  %strength = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 42
  %52 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %strength, align 4
  %cnr = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 43
  %53 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %cnr, align 1
  %block_error = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 48
  %54 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %block_error, align 2
  %block_count = getelementptr inbounds %struct.mn88472_dev, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 49
  %55 = ptrtoint ptr %block_count to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %block_count, align 1
  %get_dvb_frontend = getelementptr inbounds %struct.mn88472_config, ptr %1, i32 0, i32 5
  %56 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @mn88472_get_dvb_frontend, ptr %get_dvb_frontend, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  br label %cleanup

err_regmap_2_regmap_exit:                         ; preds = %if.end122.err_regmap_2_regmap_exit_crit_edge, %do.end119.err_regmap_2_regmap_exit_crit_edge, %if.end94.err_regmap_2_regmap_exit_crit_edge
  %ret.0 = phi i32 [ %call99, %if.end94.err_regmap_2_regmap_exit_crit_edge ], [ %call125, %if.end122.err_regmap_2_regmap_exit_crit_edge ], [ -19, %do.end119.err_regmap_2_regmap_exit_crit_edge ]
  %57 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx86, align 4
  call void @regmap_exit(ptr noundef %58) #7
  br label %err_client_2_i2c_unregister_device

err_client_2_i2c_unregister_device:               ; preds = %err_regmap_2_regmap_exit, %if.then90
  %ret.1 = phi i32 [ %34, %if.then90 ], [ %ret.0, %err_regmap_2_regmap_exit ]
  %59 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx68, align 8
  call void @i2c_unregister_device(ptr noundef %60) #7
  br label %err_regmap_1_regmap_exit

err_regmap_1_regmap_exit:                         ; preds = %err_client_2_i2c_unregister_device, %if.then72
  %ret.2 = phi i32 [ %32, %if.then72 ], [ %ret.1, %err_client_2_i2c_unregister_device ]
  %61 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx54, align 8
  call void @regmap_exit(ptr noundef %62) #7
  br label %err_client_1_i2c_unregister_device

err_client_1_i2c_unregister_device:               ; preds = %err_regmap_1_regmap_exit, %if.then58
  %ret.3 = phi i32 [ %25, %if.then58 ], [ %ret.2, %err_regmap_1_regmap_exit ]
  %63 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx36, align 4
  call void @i2c_unregister_device(ptr noundef %64) #7
  br label %err_regmap_0_regmap_exit

err_regmap_0_regmap_exit:                         ; preds = %err_client_1_i2c_unregister_device, %if.then40
  %ret.4 = phi i32 [ %23, %if.then40 ], [ %ret.3, %err_client_1_i2c_unregister_device ]
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  call void @regmap_exit(ptr noundef %66) #7
  br label %err_kfree

err_kfree:                                        ; preds = %err_regmap_0_regmap_exit, %if.then29
  %ret.5 = phi i32 [ %19, %if.then29 ], [ %ret.4, %err_regmap_0_regmap_exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %do.body150

do.body150:                                       ; preds = %err_kfree, %do.end.do.body150_crit_edge
  %ret.6 = phi i32 [ %ret.5, %err_kfree ], [ -12, %do.end.do.body150_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_probe, %if.then162)) #7
          to label %cleanup [label %if.then162], !srcloc !139

if.then162:                                       ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_probe.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %ret.6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then162, %do.body150, %if.end128
  %retval.0 = phi i32 [ 0, %if.end128 ], [ %ret.6, %if.then162 ], [ %ret.6, %do.body150 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88472_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_remove.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_remove.__UNIQUE_ID_ddebug310, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.mn88472_dev, ptr %1, i32 0, i32 1
  %arrayidx = getelementptr %struct.mn88472_dev, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @regmap_exit(ptr noundef %3) #7
  %arrayidx6 = getelementptr [3 x ptr], ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #7
  %arrayidx8 = getelementptr %struct.mn88472_dev, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  tail call void @regmap_exit(ptr noundef %7) #7
  %arrayidx10 = getelementptr [3 x ptr], ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx10, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  tail call void @regmap_exit(ptr noundef %11) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mn88472_get_dvb_frontend(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_get_dvb_frontend.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_get_dvb_frontend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_get_dvb_frontend.__UNIQUE_ID_ddebug306, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr inbounds %struct.mn88472_dev, ptr %1, i32 0, i32 2
  ret ptr %fe
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88472_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  %firmware = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #7
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware) #7
  %5 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware, align 4, !annotation !138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_init.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_init.__UNIQUE_ID_ddebug300, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 1
  %arrayidx = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 5, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body112_crit_edge

do.end.do.body112_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body112

if.end8:                                          ; preds = %do.end
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 11, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.do.body112_crit_edge

if.end8.do.body112_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body112

if.end14:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 12, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.do.body112_crit_edge

if.end14.do.body112_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body112

if.end20:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_read(ptr noundef %13, i32 noundef 245, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.do.body112_crit_edge

if.end20.do.body112_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body112

if.end26:                                         ; preds = %if.end20
  %14 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %utmp, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end26.warm_crit_edge, label %if.end29

if.end26.warm_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %warm

if.end29:                                         ; preds = %if.end26
  %dev30 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call31 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull @.str.21, ptr noundef %dev30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %do.end41, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21) #11
  br label %do.body112

do.end41:                                         ; preds = %if.end29
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21) #11
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call45 = call i32 @regmap_write(ptr noundef %17, i32 noundef 245, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %do.end41.err_release_firmware_crit_edge

do.end41.err_release_firmware_crit_edge:          ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_firmware

if.end48:                                         ; preds = %do.end41
  %18 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %firmware, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp188 = icmp sgt i32 %21, 0
  br i1 %cmp188, label %for.body.lr.ph, label %if.end48.for.end_crit_edge

if.end48.for.end_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end48
  %i2c_write_max = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rem.0189 = phi i32 [ %21, %for.body.lr.ph ], [ %sub68, %for.inc.for.body_crit_edge ]
  %22 = ptrtoint ptr %i2c_write_max to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %i2c_write_max, align 4
  %conv = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0189, i32 %conv)
  %cmp50.not = icmp ult i32 %rem.0189, %conv
  %sub = add nsw i32 %conv, -1
  %cond = select i1 %cmp50.not, i32 %rem.0189, i32 %sub
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %26 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %firmware, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 4
  %sub55 = sub i32 %31, %rem.0189
  %arrayidx56 = getelementptr i8, ptr %29, i32 %sub55
  %call57 = call i32 @regmap_bulk_write(ptr noundef %25, i32 noundef 246, ptr noundef %arrayidx56, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %for.inc, label %do.end62

do.end62:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.28, i32 noundef %call57) #11
  br label %err_release_firmware

for.inc:                                          ; preds = %for.body
  %32 = ptrtoint ptr %i2c_write_max to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %i2c_write_max, align 4
  %conv66 = zext i16 %33 to i32
  %sub67.neg = add nuw i32 %rem.0189, 1
  %sub68 = sub i32 %sub67.neg, %conv66
  %cmp = icmp sgt i32 %sub68, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end48.for.end_crit_edge
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call71 = call i32 @regmap_read(ptr noundef %35, i32 noundef 248, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %for.end.err_release_firmware_crit_edge

for.end.err_release_firmware_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_firmware

if.end74:                                         ; preds = %for.end
  %36 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %utmp, align 4
  %and75 = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end82, label %if.then77

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.31) #11
  br label %err_release_firmware

if.end82:                                         ; preds = %if.end74
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call85 = call i32 @regmap_write(ptr noundef %39, i32 noundef 245, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end82.err_release_firmware_crit_edge

if.end82.err_release_firmware_crit_edge:          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_firmware

if.end88:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %41) #7
  br label %warm

warm:                                             ; preds = %if.end88, %if.end26.warm_crit_edge
  %ts_mode = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 5
  %42 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load = load i8, ptr %ts_mode, align 4
  %43 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %trunc.not = icmp eq i8 %43, 0
  %. = select i1 %trunc.not, i32 29, i32 0
  %44 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %., ptr %utmp, align 4
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %call92 = call i32 @regmap_write(ptr noundef %46, i32 noundef 8, i32 noundef %.) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end95, label %warm.do.body112_crit_edge

warm.do.body112_crit_edge:                        ; preds = %warm
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body112

if.end95:                                         ; preds = %warm
  %47 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load96 = load i8, ptr %ts_mode, align 4
  %48 = and i8 %bf.load96, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %trunc177.not.not = icmp eq i8 %48, 0
  %.182 = select i1 %trunc177.not.not, i32 225, i32 227
  %49 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.182, ptr %utmp, align 4
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call106 = call i32 @regmap_write(ptr noundef %51, i32 noundef 217, i32 noundef %.182) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end95.do.body112_crit_edge

if.end95.do.body112_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body112

if.end109:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load110 = load i8, ptr %ts_mode, align 4
  %bf.set = or i8 %bf.load110, -128
  store i8 %bf.set, ptr %ts_mode, align 4
  br label %cleanup

err_release_firmware:                             ; preds = %if.end82.err_release_firmware_crit_edge, %if.then77, %for.end.err_release_firmware_crit_edge, %do.end62, %do.end41.err_release_firmware_crit_edge
  %ret.0 = phi i32 [ %call45, %do.end41.err_release_firmware_crit_edge ], [ %call57, %do.end62 ], [ %call71, %for.end.err_release_firmware_crit_edge ], [ -22, %if.then77 ], [ %call85, %if.end82.err_release_firmware_crit_edge ]
  %53 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %54) #7
  br label %do.body112

do.body112:                                       ; preds = %err_release_firmware, %if.end95.do.body112_crit_edge, %warm.do.body112_crit_edge, %do.end36, %if.end20.do.body112_crit_edge, %if.end14.do.body112_crit_edge, %if.end8.do.body112_crit_edge, %do.end.do.body112_crit_edge
  %ret.1 = phi i32 [ %call5, %do.end.do.body112_crit_edge ], [ %call11, %if.end8.do.body112_crit_edge ], [ %call17, %if.end14.do.body112_crit_edge ], [ %call23, %if.end20.do.body112_crit_edge ], [ %call31, %do.end36 ], [ %ret.0, %err_release_firmware ], [ %call92, %warm.do.body112_crit_edge ], [ %call106, %if.end95.do.body112_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_init.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_init, %if.then124)) #7
          to label %cleanup [label %if.then124], !srcloc !139

if.then124:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #9
  %dev125 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_init.__UNIQUE_ID_ddebug303, ptr noundef %dev125, ptr noundef nonnull @.str.20, i32 noundef %ret.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then124, %do.body112, %if.end109
  %retval.0 = phi i32 [ 0, %if.end109 ], [ %ret.1, %if.then124 ], [ %ret.1, %do.body112 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88472_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_sleep.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_sleep, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_sleep.__UNIQUE_ID_ddebug304, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 12, i32 noundef 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body21_crit_edge

do.end.do.body21_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

if.end8:                                          ; preds = %do.end
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 11, i32 noundef 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.do.body21_crit_edge

if.end8.do.body21_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

if.end14:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 5, i32 noundef 62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.end14.do.body21_crit_edge

if.end14.do.body21_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body21:                                        ; preds = %if.end14.do.body21_crit_edge, %if.end8.do.body21_crit_edge, %do.end.do.body21_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end.do.body21_crit_edge ], [ %call11, %if.end8.do.body21_crit_edge ], [ %call17, %if.end14.do.body21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_sleep.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_sleep, %if.then33)) #7
          to label %cleanup [label %if.then33], !srcloc !139

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_sleep.__UNIQUE_ID_ddebug305, ptr noundef %dev34, ptr noundef nonnull @.str.20, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body21, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ %ret.0, %if.then33 ], [ %ret.0, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88472_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %if_frequency = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_frequency) #7
  %4 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %if_frequency, align 4, !annotation !138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_set_frontend.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_set_frontend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %5 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delivery_system, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %modulation, align 4
  %9 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %11 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bandwidth_hz, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %13 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %symbol_rate, align 4
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %15 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inversion, align 4
  %stream_id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %17 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_set_frontend.__UNIQUE_ID_ddebug297, ptr noundef %dev4, ptr noundef nonnull @.str.35, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool5.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool5.not, label %do.end.do.body420_crit_edge, label %if.end7

do.end.do.body420_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end7:                                          ; preds = %do.end
  %delivery_system8 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %20 = ptrtoint ptr %delivery_system8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delivery_system8, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end7.do.body420_crit_edge [
    i32 3, label %if.end7.sw.bb12_crit_edge
    i32 16, label %sw.bb9
    i32 1, label %if.end7.sw.epilog22_crit_edge
  ]

if.end7.sw.epilog22_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog22

if.end7.sw.bb12_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end7.do.body420_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb9, %if.end7.sw.bb12_crit_edge
  %reg_bank0_b4_val.0.ph = phi i32 [ 0, %if.end7.sw.bb12_crit_edge ], [ 246, %sw.bb9 ]
  %reg_bank0_cd_val.0.ph = phi i32 [ 31, %if.end7.sw.bb12_crit_edge ], [ 1, %sw.bb9 ]
  %reg_bank0_d4_val.0.ph = phi i32 [ 10, %if.end7.sw.bb12_crit_edge ], [ 9, %sw.bb9 ]
  %reg_bank0_d6_val.0.ph = phi i32 [ 72, %if.end7.sw.bb12_crit_edge ], [ 70, %sw.bb9 ]
  %delivery_system_val.0.ph = phi i32 [ 2, %if.end7.sw.bb12_crit_edge ], [ 3, %sw.bb9 ]
  %bandwidth_hz13 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %23 = ptrtoint ptr %bandwidth_hz13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bandwidth_hz13, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %24, label %sw.bb12.do.body420_crit_edge [
    i32 5000000, label %sw.bb12.sw.epilog22_crit_edge
    i32 6000000, label %sw.bb15
    i32 7000000, label %sw.bb16
    i32 8000000, label %sw.bb17
  ]

sw.bb12.sw.epilog22_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog22

sw.bb12.do.body420_crit_edge:                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

sw.bb15:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog22

sw.bb16:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog22

sw.bb17:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb12.sw.epilog22_crit_edge, %if.end7.sw.epilog22_crit_edge
  %delivery_system_val.0638 = phi i32 [ %delivery_system_val.0.ph, %sw.bb15 ], [ %delivery_system_val.0.ph, %sw.bb16 ], [ %delivery_system_val.0.ph, %sw.bb17 ], [ %delivery_system_val.0.ph, %sw.bb12.sw.epilog22_crit_edge ], [ 4, %if.end7.sw.epilog22_crit_edge ]
  %reg_bank0_d6_val.0636 = phi i32 [ %reg_bank0_d6_val.0.ph, %sw.bb15 ], [ %reg_bank0_d6_val.0.ph, %sw.bb16 ], [ %reg_bank0_d6_val.0.ph, %sw.bb17 ], [ %reg_bank0_d6_val.0.ph, %sw.bb12.sw.epilog22_crit_edge ], [ 72, %if.end7.sw.epilog22_crit_edge ]
  %reg_bank0_d4_val.0634 = phi i32 [ %reg_bank0_d4_val.0.ph, %sw.bb15 ], [ %reg_bank0_d4_val.0.ph, %sw.bb16 ], [ %reg_bank0_d4_val.0.ph, %sw.bb17 ], [ %reg_bank0_d4_val.0.ph, %sw.bb12.sw.epilog22_crit_edge ], [ 9, %if.end7.sw.epilog22_crit_edge ]
  %reg_bank0_cd_val.0632 = phi i32 [ %reg_bank0_cd_val.0.ph, %sw.bb15 ], [ %reg_bank0_cd_val.0.ph, %sw.bb16 ], [ %reg_bank0_cd_val.0.ph, %sw.bb17 ], [ %reg_bank0_cd_val.0.ph, %sw.bb12.sw.epilog22_crit_edge ], [ 23, %if.end7.sw.epilog22_crit_edge ]
  %reg_bank0_b4_val.0630 = phi i32 [ %reg_bank0_b4_val.0.ph, %sw.bb15 ], [ %reg_bank0_b4_val.0.ph, %sw.bb16 ], [ %reg_bank0_b4_val.0.ph, %sw.bb17 ], [ %reg_bank0_b4_val.0.ph, %sw.bb12.sw.epilog22_crit_edge ], [ 0, %if.end7.sw.epilog22_crit_edge ]
  %tobool312.not = phi i1 [ false, %sw.bb15 ], [ false, %sw.bb16 ], [ false, %sw.bb17 ], [ false, %sw.bb12.sw.epilog22_crit_edge ], [ true, %if.end7.sw.epilog22_crit_edge ]
  %bandwidth_vals_ptr.0 = phi ptr [ @.str.37, %sw.bb15 ], [ @.str.38, %sw.bb16 ], [ @.str.39, %sw.bb17 ], [ @.str.36, %sw.bb12.sw.epilog22_crit_edge ], [ null, %if.end7.sw.epilog22_crit_edge ]
  %bandwidth_val.0 = phi i32 [ 2, %sw.bb15 ], [ 1, %sw.bb16 ], [ 0, %sw.bb17 ], [ 3, %sw.bb12.sw.epilog22_crit_edge ], [ 0, %if.end7.sw.epilog22_crit_edge ]
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %26 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_params, align 4
  %tobool23.not = icmp eq ptr %27, null
  br i1 %tobool23.not, label %sw.epilog22.if.end32_crit_edge, label %if.then24

sw.epilog22.if.end32_crit_edge:                   ; preds = %sw.epilog22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then24:                                        ; preds = %sw.epilog22
  %call28 = tail call i32 %27(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then24.if.end32_crit_edge, label %if.then24.do.body420_crit_edge

if.then24.do.body420_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.then24.if.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %if.then24.if.end32_crit_edge, %sw.epilog22.if.end32_crit_edge
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %28 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_if_frequency, align 4
  %tobool35.not = icmp eq ptr %29, null
  br i1 %tobool35.not, label %if.end32.do.body420_crit_edge, label %if.then36

if.end32.do.body420_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.then36:                                        ; preds = %if.end32
  %call40 = call i32 %29(ptr noundef %fe, ptr noundef nonnull %if_frequency) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body44, label %if.then36.do.body420_crit_edge

if.then36.do.body420_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

do.body44:                                        ; preds = %if.then36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_set_frontend.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_set_frontend, %if.then56)) #7
          to label %if.end61 [label %if.then56], !srcloc !139

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %dev57 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %if_frequency, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_set_frontend.__UNIQUE_ID_ddebug298, ptr noundef %dev57, ptr noundef nonnull @.str.40, i32 noundef %31) #7
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %do.body44
  %regmap = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 1
  %arrayidx = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %call62 = call i32 @regmap_write(ptr noundef %33, i32 noundef 0, i32 noundef 102) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.do.body420_crit_edge

if.end61.do.body420_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end65:                                         ; preds = %if.end61
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %call68 = call i32 @regmap_write(ptr noundef %35, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end65.do.body420_crit_edge

if.end65.do.body420_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end71:                                         ; preds = %if.end65
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %call74 = call i32 @regmap_write(ptr noundef %37, i32 noundef 2, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end71.do.body420_crit_edge

if.end71.do.body420_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end77:                                         ; preds = %if.end71
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %call80 = call i32 @regmap_write(ptr noundef %39, i32 noundef 3, i32 noundef %delivery_system_val.0638) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end77.do.body420_crit_edge

if.end77.do.body420_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end83:                                         ; preds = %if.end77
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %call87 = call i32 @regmap_write(ptr noundef %41, i32 noundef 4, i32 noundef %bandwidth_val.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end83.do.body420_crit_edge

if.end83.do.body420_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end90:                                         ; preds = %if.end83
  %clk = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 4
  %42 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %clk, align 4
  %44 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %if_frequency, align 4
  %conv91 = zext i32 %45 to i64
  %mul = shl nuw nsw i64 %conv91, 24
  %div608 = lshr i32 %43, 1
  %conv92 = zext i32 %div608 to i64
  %add = add nuw nsw i64 %mul, %conv92
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp267 = icmp ult i64 %add, 4294967296
  br i1 %cmp267, label %if.then275, label %if.else281, !prof !140

if.then275:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %conv276 = trunc i64 %add to i32
  %div279 = udiv i32 %conv276, %43
  %extract649 = lshr i32 %div279, 8
  %extract657 = lshr i32 %div279, 16
  br label %if.end285

if.else281:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %46 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %43, i64 %add) #12, !srcloc !141
  %asmresult1.i = extractvalue { i64, i64 } %46, 1
  %extract.t646 = trunc i64 %asmresult1.i to i32
  %extract651 = lshr i64 %asmresult1.i, 8
  %extract.t652 = trunc i64 %extract651 to i32
  %extract659 = lshr i64 %asmresult1.i, 16
  %extract.t660 = trunc i64 %extract659 to i32
  br label %if.end285

if.end285:                                        ; preds = %if.else281, %if.then275
  %_tmp.0.off0 = phi i32 [ %div279, %if.then275 ], [ %extract.t646, %if.else281 ]
  %_tmp.0.off8 = phi i32 [ %extract649, %if.then275 ], [ %extract.t652, %if.else281 ]
  %_tmp.0.off16 = phi i32 [ %extract657, %if.then275 ], [ %extract.t660, %if.else281 ]
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx, align 4
  %conv307 = and i32 %_tmp.0.off16, 255
  %call308 = call i32 @regmap_write(ptr noundef %48, i32 noundef 16, i32 noundef %conv307) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %for.cond, label %if.end285.do.body420_crit_edge

if.end285.do.body420_crit_edge:                   ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

for.cond:                                         ; preds = %if.end285
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx, align 4
  %conv307.1 = and i32 %_tmp.0.off8, 255
  %call308.1 = call i32 @regmap_write(ptr noundef %50, i32 noundef 17, i32 noundef %conv307.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308.1)
  %tobool309.not.1 = icmp eq i32 %call308.1, 0
  br i1 %tobool309.not.1, label %for.cond.1, label %for.cond.do.body420_crit_edge

for.cond.do.body420_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

for.cond.1:                                       ; preds = %for.cond
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %conv307.2 = and i32 %_tmp.0.off0, 255
  %call308.2 = call i32 @regmap_write(ptr noundef %52, i32 noundef 18, i32 noundef %conv307.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308.2)
  %tobool309.not.2 = icmp eq i32 %call308.2, 0
  br i1 %tobool309.not.2, label %for.cond.2, label %for.cond.1.do.body420_crit_edge

for.cond.1.do.body420_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

for.cond.2:                                       ; preds = %for.cond.1
  br i1 %tobool312.not, label %for.cond.2.if.end330_crit_edge, label %for.body317.preheader

for.cond.2.if.end330_crit_edge:                   ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end330

for.body317.preheader:                            ; preds = %for.cond.2
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx, align 4
  %55 = ptrtoint ptr %bandwidth_vals_ptr.0 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bandwidth_vals_ptr.0, align 1
  %conv322 = zext i8 %56 to i32
  %call323 = call i32 @regmap_write(ptr noundef %54, i32 noundef 19, i32 noundef %conv322) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %for.cond314, label %for.body317.preheader.do.body420_crit_edge

for.body317.preheader.do.body420_crit_edge:       ; preds = %for.body317.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

for.cond314:                                      ; preds = %for.body317.preheader
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %arrayidx321.1 = getelementptr i8, ptr %bandwidth_vals_ptr.0, i32 1
  %59 = ptrtoint ptr %arrayidx321.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx321.1, align 1
  %conv322.1 = zext i8 %60 to i32
  %call323.1 = call i32 @regmap_write(ptr noundef %58, i32 noundef 20, i32 noundef %conv322.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323.1)
  %tobool324.not.1 = icmp eq i32 %call323.1, 0
  br i1 %tobool324.not.1, label %for.cond314.1, label %for.cond314.do.body420_crit_edge

for.cond314.do.body420_crit_edge:                 ; preds = %for.cond314
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

for.cond314.1:                                    ; preds = %for.cond314
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx, align 4
  %arrayidx321.2 = getelementptr i8, ptr %bandwidth_vals_ptr.0, i32 2
  %63 = ptrtoint ptr %arrayidx321.2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx321.2, align 1
  %conv322.2 = zext i8 %64 to i32
  %call323.2 = call i32 @regmap_write(ptr noundef %62, i32 noundef 21, i32 noundef %conv322.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323.2)
  %tobool324.not.2 = icmp eq i32 %call323.2, 0
  br i1 %tobool324.not.2, label %for.cond314.2, label %for.cond314.1.do.body420_crit_edge

for.cond314.1.do.body420_crit_edge:               ; preds = %for.cond314.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

for.cond314.2:                                    ; preds = %for.cond314.1
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx, align 4
  %arrayidx321.3 = getelementptr i8, ptr %bandwidth_vals_ptr.0, i32 3
  %67 = ptrtoint ptr %arrayidx321.3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx321.3, align 1
  %conv322.3 = zext i8 %68 to i32
  %call323.3 = call i32 @regmap_write(ptr noundef %66, i32 noundef 22, i32 noundef %conv322.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323.3)
  %tobool324.not.3 = icmp eq i32 %call323.3, 0
  br i1 %tobool324.not.3, label %for.cond314.3, label %for.cond314.2.do.body420_crit_edge

for.cond314.2.do.body420_crit_edge:               ; preds = %for.cond314.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

for.cond314.3:                                    ; preds = %for.cond314.2
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  %arrayidx321.4 = getelementptr i8, ptr %bandwidth_vals_ptr.0, i32 4
  %71 = ptrtoint ptr %arrayidx321.4 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx321.4, align 1
  %conv322.4 = zext i8 %72 to i32
  %call323.4 = call i32 @regmap_write(ptr noundef %70, i32 noundef 23, i32 noundef %conv322.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323.4)
  %tobool324.not.4 = icmp eq i32 %call323.4, 0
  br i1 %tobool324.not.4, label %for.cond314.4, label %for.cond314.3.do.body420_crit_edge

for.cond314.3.do.body420_crit_edge:               ; preds = %for.cond314.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

for.cond314.4:                                    ; preds = %for.cond314.3
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %arrayidx321.5 = getelementptr i8, ptr %bandwidth_vals_ptr.0, i32 5
  %75 = ptrtoint ptr %arrayidx321.5 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx321.5, align 1
  %conv322.5 = zext i8 %76 to i32
  %call323.5 = call i32 @regmap_write(ptr noundef %74, i32 noundef 24, i32 noundef %conv322.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323.5)
  %tobool324.not.5 = icmp eq i32 %call323.5, 0
  br i1 %tobool324.not.5, label %for.cond314.5, label %for.cond314.4.do.body420_crit_edge

for.cond314.4.do.body420_crit_edge:               ; preds = %for.cond314.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

for.cond314.5:                                    ; preds = %for.cond314.4
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  %arrayidx321.6 = getelementptr i8, ptr %bandwidth_vals_ptr.0, i32 6
  %79 = ptrtoint ptr %arrayidx321.6 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx321.6, align 1
  %conv322.6 = zext i8 %80 to i32
  %call323.6 = call i32 @regmap_write(ptr noundef %78, i32 noundef 25, i32 noundef %conv322.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323.6)
  %tobool324.not.6 = icmp eq i32 %call323.6, 0
  br i1 %tobool324.not.6, label %for.cond314.5.if.end330_crit_edge, label %for.cond314.5.do.body420_crit_edge

for.cond314.5.do.body420_crit_edge:               ; preds = %for.cond314.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

for.cond314.5.if.end330_crit_edge:                ; preds = %for.cond314.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end330

if.end330:                                        ; preds = %for.cond314.5.if.end330_crit_edge, %for.cond.2.if.end330_crit_edge
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %call334 = call i32 @regmap_write(ptr noundef %82, i32 noundef 180, i32 noundef %reg_bank0_b4_val.0630) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call334)
  %tobool335.not = icmp eq i32 %call334, 0
  br i1 %tobool335.not, label %if.end337, label %if.end330.do.body420_crit_edge

if.end330.do.body420_crit_edge:                   ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end337:                                        ; preds = %if.end330
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %call341 = call i32 @regmap_write(ptr noundef %84, i32 noundef 205, i32 noundef %reg_bank0_cd_val.0632) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %if.end344, label %if.end337.do.body420_crit_edge

if.end337.do.body420_crit_edge:                   ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end344:                                        ; preds = %if.end337
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 4
  %call348 = call i32 @regmap_write(ptr noundef %86, i32 noundef 212, i32 noundef %reg_bank0_d4_val.0634) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call348)
  %tobool349.not = icmp eq i32 %call348, 0
  br i1 %tobool349.not, label %if.end351, label %if.end344.do.body420_crit_edge

if.end344.do.body420_crit_edge:                   ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end351:                                        ; preds = %if.end344
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %call355 = call i32 @regmap_write(ptr noundef %88, i32 noundef 214, i32 noundef %reg_bank0_d6_val.0636) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call355)
  %tobool356.not = icmp eq i32 %call355, 0
  br i1 %tobool356.not, label %if.end358, label %if.end351.do.body420_crit_edge

if.end351.do.body420_crit_edge:                   ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end358:                                        ; preds = %if.end351
  %89 = ptrtoint ptr %delivery_system8 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %delivery_system8, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %90, label %if.end358.sw.epilog413_crit_edge [
    i32 3, label %sw.bb360
    i32 16, label %sw.bb379
  ]

if.end358.sw.epilog413_crit_edge:                 ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog413

sw.bb360:                                         ; preds = %if.end358
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %call363 = call i32 @regmap_write(ptr noundef %93, i32 noundef 7, i32 noundef 38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call363)
  %tobool364.not = icmp eq i32 %call363, 0
  br i1 %tobool364.not, label %if.end366, label %sw.bb360.do.body420_crit_edge

sw.bb360.do.body420_crit_edge:                    ; preds = %sw.bb360
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end366:                                        ; preds = %sw.bb360
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %call369 = call i32 @regmap_write(ptr noundef %95, i32 noundef 0, i32 noundef 186) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369)
  %tobool370.not = icmp eq i32 %call369, 0
  br i1 %tobool370.not, label %if.end372, label %if.end366.do.body420_crit_edge

if.end366.do.body420_crit_edge:                   ; preds = %if.end366
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end372:                                        ; preds = %if.end366
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call375 = call i32 @regmap_write(ptr noundef %97, i32 noundef 1, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call375)
  %tobool376.not = icmp eq i32 %call375, 0
  br i1 %tobool376.not, label %if.end372.sw.epilog413_crit_edge, label %if.end372.do.body420_crit_edge

if.end372.do.body420_crit_edge:                   ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end372.sw.epilog413_crit_edge:                 ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog413

sw.bb379:                                         ; preds = %if.end358
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx, align 4
  %call382 = call i32 @regmap_write(ptr noundef %99, i32 noundef 43, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.end385, label %sw.bb379.do.body420_crit_edge

sw.bb379.do.body420_crit_edge:                    ; preds = %sw.bb379
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end385:                                        ; preds = %sw.bb379
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx, align 4
  %call388 = call i32 @regmap_write(ptr noundef %101, i32 noundef 79, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call388)
  %tobool389.not = icmp eq i32 %call388, 0
  br i1 %tobool389.not, label %if.end391, label %if.end385.do.body420_crit_edge

if.end385.do.body420_crit_edge:                   ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end391:                                        ; preds = %if.end385
  %arrayidx393 = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 1
  %102 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx393, align 4
  %call394 = call i32 @regmap_write(ptr noundef %103, i32 noundef 246, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call394)
  %tobool395.not = icmp eq i32 %call394, 0
  br i1 %tobool395.not, label %if.end397, label %if.end391.do.body420_crit_edge

if.end391.do.body420_crit_edge:                   ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end397:                                        ; preds = %if.end391
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx, align 4
  %stream_id400 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %106 = ptrtoint ptr %stream_id400 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %stream_id400, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %cmp401 = icmp eq i32 %107, -1
  %spec.select = select i1 %cmp401, i32 0, i32 %107
  %call408 = call i32 @regmap_write(ptr noundef %105, i32 noundef 50, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408)
  %tobool409.not = icmp eq i32 %call408, 0
  br i1 %tobool409.not, label %if.end397.sw.epilog413_crit_edge, label %if.end397.do.body420_crit_edge

if.end397.do.body420_crit_edge:                   ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

if.end397.sw.epilog413_crit_edge:                 ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog413

sw.epilog413:                                     ; preds = %if.end397.sw.epilog413_crit_edge, %if.end372.sw.epilog413_crit_edge, %if.end358.sw.epilog413_crit_edge
  %108 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx, align 4
  %call416 = call i32 @regmap_write(ptr noundef %109, i32 noundef 248, i32 noundef 159) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call416)
  %tobool417.not = icmp eq i32 %call416, 0
  br i1 %tobool417.not, label %sw.epilog413.cleanup_crit_edge, label %sw.epilog413.do.body420_crit_edge

sw.epilog413.do.body420_crit_edge:                ; preds = %sw.epilog413
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body420

sw.epilog413.cleanup_crit_edge:                   ; preds = %sw.epilog413
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body420:                                       ; preds = %sw.epilog413.do.body420_crit_edge, %if.end397.do.body420_crit_edge, %if.end391.do.body420_crit_edge, %if.end385.do.body420_crit_edge, %sw.bb379.do.body420_crit_edge, %if.end372.do.body420_crit_edge, %if.end366.do.body420_crit_edge, %sw.bb360.do.body420_crit_edge, %if.end351.do.body420_crit_edge, %if.end344.do.body420_crit_edge, %if.end337.do.body420_crit_edge, %if.end330.do.body420_crit_edge, %for.cond314.5.do.body420_crit_edge, %for.cond314.4.do.body420_crit_edge, %for.cond314.3.do.body420_crit_edge, %for.cond314.2.do.body420_crit_edge, %for.cond314.1.do.body420_crit_edge, %for.cond314.do.body420_crit_edge, %for.body317.preheader.do.body420_crit_edge, %for.cond.1.do.body420_crit_edge, %for.cond.do.body420_crit_edge, %if.end285.do.body420_crit_edge, %if.end83.do.body420_crit_edge, %if.end77.do.body420_crit_edge, %if.end71.do.body420_crit_edge, %if.end65.do.body420_crit_edge, %if.end61.do.body420_crit_edge, %if.then36.do.body420_crit_edge, %if.end32.do.body420_crit_edge, %if.then24.do.body420_crit_edge, %sw.bb12.do.body420_crit_edge, %if.end7.do.body420_crit_edge, %do.end.do.body420_crit_edge
  %ret.0 = phi i32 [ %call28, %if.then24.do.body420_crit_edge ], [ %call40, %if.then36.do.body420_crit_edge ], [ %call62, %if.end61.do.body420_crit_edge ], [ %call68, %if.end65.do.body420_crit_edge ], [ %call74, %if.end71.do.body420_crit_edge ], [ %call80, %if.end77.do.body420_crit_edge ], [ %call87, %if.end83.do.body420_crit_edge ], [ %call334, %if.end330.do.body420_crit_edge ], [ %call341, %if.end337.do.body420_crit_edge ], [ %call348, %if.end344.do.body420_crit_edge ], [ %call355, %if.end351.do.body420_crit_edge ], [ %call416, %sw.epilog413.do.body420_crit_edge ], [ %call382, %sw.bb379.do.body420_crit_edge ], [ %call388, %if.end385.do.body420_crit_edge ], [ %call394, %if.end391.do.body420_crit_edge ], [ %call408, %if.end397.do.body420_crit_edge ], [ %call363, %sw.bb360.do.body420_crit_edge ], [ %call369, %if.end366.do.body420_crit_edge ], [ %call375, %if.end372.do.body420_crit_edge ], [ -11, %do.end.do.body420_crit_edge ], [ -22, %if.end7.do.body420_crit_edge ], [ -22, %sw.bb12.do.body420_crit_edge ], [ -22, %if.end32.do.body420_crit_edge ], [ %call323, %for.body317.preheader.do.body420_crit_edge ], [ %call323.1, %for.cond314.do.body420_crit_edge ], [ %call323.2, %for.cond314.1.do.body420_crit_edge ], [ %call323.3, %for.cond314.2.do.body420_crit_edge ], [ %call323.4, %for.cond314.3.do.body420_crit_edge ], [ %call323.5, %for.cond314.4.do.body420_crit_edge ], [ %call323.6, %for.cond314.5.do.body420_crit_edge ], [ %call308, %if.end285.do.body420_crit_edge ], [ %call308.1, %for.cond.do.body420_crit_edge ], [ %call308.2, %for.cond.1.do.body420_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_set_frontend.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_set_frontend, %if.then432)) #7
          to label %cleanup [label %if.then432], !srcloc !139

if.then432:                                       ; preds = %do.body420
  call void @__sanitizer_cov_trace_pc() #9
  %dev433 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_set_frontend.__UNIQUE_ID_ddebug299, ptr noundef %dev433, ptr noundef nonnull @.str.20, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then432, %do.body420, %sw.epilog413.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog413.cleanup_crit_edge ], [ %ret.0, %if.then432 ], [ %ret.0, %do.body420 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_frequency) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mn88472_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %s, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88472_read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #7
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #7
  %5 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %active = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 5
  %8 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %9 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.do.body371_crit_edge, label %if.end

entry.do.body371_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

if.end:                                           ; preds = %entry
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %10 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delivery_system, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %11, label %if.end.do.body371_crit_edge [
    i32 3, label %sw.bb
    i32 16, label %sw.bb7
    i32 1, label %sw.bb29
  ]

if.end.do.body371_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

sw.bb:                                            ; preds = %if.end
  %regmap = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %14, i32 noundef 127, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %sw.bb.do.body371_crit_edge

sw.bb.do.body371_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

if.end4:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %utmp, align 4
  %and = and i32 %16, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and)
  %cmp = icmp ugt i32 %and, 8
  %. = select i1 %cmp, i32 31, i32 0
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %arrayidx9 = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx9, align 4
  %call10 = call i32 @regmap_read(ptr noundef %18, i32 noundef 146, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb7.do.body371_crit_edge

sw.bb7.do.body371_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

if.end13:                                         ; preds = %sw.bb7
  %19 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %utmp, align 4
  %and14 = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and14)
  %cmp15 = icmp ugt i32 %and14, 12
  br i1 %cmp15, label %if.end13.sw.epilog_crit_edge, label %if.else17

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and14)
  %cmp19 = icmp ugt i32 %and14, 9
  br i1 %cmp19, label %if.else17.sw.epilog_crit_edge, label %if.else21

if.else17.sw.epilog_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and14)
  %cmp23 = icmp ugt i32 %and14, 6
  %.508 = select i1 %cmp23, i32 3, i32 0
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end
  %arrayidx31 = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx31, align 4
  %call32 = call i32 @regmap_read(ptr noundef %22, i32 noundef 132, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %sw.bb29.do.body371_crit_edge

sw.bb29.do.body371_crit_edge:                     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

if.end35:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %utmp, align 4
  %and36 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp37.not = icmp eq i32 %and36, 0
  %.509 = select i1 %cmp37.not, i32 0, i32 31
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end35, %if.else21, %if.else17.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge, %if.end4
  %.sink = phi i32 [ %., %if.end4 ], [ 31, %if.end13.sw.epilog_crit_edge ], [ 7, %if.else17.sw.epilog_crit_edge ], [ %.508, %if.else21 ], [ %.509, %if.end35 ]
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %status, align 4
  %and41 = and i32 %.sink, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else71, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.epilog
  %arrayidx46 = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx46, align 4
  %call48 = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef 142, ptr noundef nonnull %buf, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %for.cond, label %for.cond.preheader.do.body371_crit_edge

for.cond.preheader.do.body371_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

for.cond:                                         ; preds = %for.cond.preheader
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx46, align 4
  %call48.1 = call i32 @regmap_bulk_read(ptr noundef %29, i32 noundef 143, ptr noundef %5, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.1)
  %tobool49.not.1 = icmp eq i32 %call48.1, 0
  br i1 %tobool49.not.1, label %for.cond.1, label %for.cond.do.body371_crit_edge

for.cond.do.body371_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

for.cond.1:                                       ; preds = %for.cond
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf, align 1
  %conv = zext i8 %31 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  %conv54 = zext i8 %33 to i32
  %or = or i32 %shl, %conv54
  %34 = lshr i32 %conv, 2
  %or58 = or i32 %or, %34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_read_status.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_read_status, %if.then63)) #7
          to label %do.end [label %if.then63], !srcloc !139

if.then63:                                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %dev64 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_read_status.__UNIQUE_ID_ddebug290, ptr noundef %dev64, ptr noundef nonnull @.str.42, i32 noundef %or58) #7
  br label %do.end

do.end:                                           ; preds = %if.then63, %for.cond.1
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %35 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %stat, align 1
  %conv67 = zext i32 %or58 to i64
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %conv67, ptr %36, align 1
  br label %if.end76

if.else71:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %stat73 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %38 = ptrtoint ptr %stat73 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %stat73, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.else71, %do.end
  %39 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status, align 4
  %and77 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.else296_crit_edge, label %land.lhs.true

if.end76.if.else296_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else296

land.lhs.true:                                    ; preds = %if.end76
  %41 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp80 = icmp eq i32 %42, 3
  br i1 %cmp80, label %if.then82, label %land.lhs.true132

if.then82:                                        ; preds = %land.lhs.true
  %regmap83 = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %regmap83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap83, align 4
  %call85 = call i32 @regmap_bulk_read(ptr noundef %44, i32 noundef 156, ptr noundef nonnull %buf, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.then82.do.body371_crit_edge

if.then82.do.body371_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

if.end88:                                         ; preds = %if.then82
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %buf, align 1
  %conv90 = zext i8 %46 to i32
  %shl91 = shl nuw nsw i32 %conv90, 8
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %5, align 1
  %conv93 = zext i8 %48 to i32
  %or95 = or i32 %shl91, %conv93
  %49 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or95, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or95)
  %tobool96.not = icmp eq i32 %or95, 0
  br i1 %tobool96.not, label %if.end88.if.end121_crit_edge, label %if.then97

if.end88.if.end121_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then97:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = call i32 @intlog10(i32 noundef %or95) #7
  %conv99 = zext i32 %call98 to i64
  %add100 = sub nsw i64 84162567, %conv99
  %mul = mul nsw i64 %add100, 10000
  %shr101 = lshr i64 %mul, 24
  %conv102 = trunc i64 %shr101 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_read_status.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_read_status, %if.then115)) #7
          to label %if.end121 [label %if.then115], !srcloc !139

if.then115:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #9
  %dev116 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_read_status.__UNIQUE_ID_ddebug291, ptr noundef %dev116, ptr noundef nonnull @.str.43, i32 noundef %conv102, i32 noundef %51) #7
  br label %if.end121

if.end121:                                        ; preds = %if.then115, %if.then97, %if.end88.if.end121_crit_edge
  %stmp.0 = phi i32 [ %conv102, %if.then115 ], [ 0, %if.end88.if.end121_crit_edge ], [ %conv102, %if.then97 ]
  %conv122 = sext i32 %stmp.0 to i64
  %stat123 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %52 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %conv122, ptr %52, align 1
  %54 = ptrtoint ptr %stat123 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %stat123, align 1
  br label %if.end303

land.lhs.true132:                                 ; preds = %land.lhs.true
  %55 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %56)
  %cmp134 = icmp eq i32 %56, 16
  br i1 %cmp134, label %for.cond137.preheader, label %land.lhs.true230

for.cond137.preheader:                            ; preds = %land.lhs.true132
  %arrayidx142 = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 2
  %57 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx142, align 4
  %call145 = call i32 @regmap_bulk_read(ptr noundef %58, i32 noundef 188, ptr noundef nonnull %buf, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %for.cond137, label %for.cond137.preheader.do.body371_crit_edge

for.cond137.preheader.do.body371_crit_edge:       ; preds = %for.cond137.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

for.cond137:                                      ; preds = %for.cond137.preheader
  %59 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx142, align 4
  %call145.1 = call i32 @regmap_bulk_read(ptr noundef %60, i32 noundef 189, ptr noundef %5, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.1)
  %tobool146.not.1 = icmp eq i32 %call145.1, 0
  br i1 %tobool146.not.1, label %for.cond137.1, label %for.cond137.do.body371_crit_edge

for.cond137.do.body371_crit_edge:                 ; preds = %for.cond137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

for.cond137.1:                                    ; preds = %for.cond137
  %61 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx142, align 4
  %call145.2 = call i32 @regmap_bulk_read(ptr noundef %62, i32 noundef 190, ptr noundef %6, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.2)
  %tobool146.not.2 = icmp eq i32 %call145.2, 0
  br i1 %tobool146.not.2, label %for.cond137.2, label %for.cond137.1.do.body371_crit_edge

for.cond137.1.do.body371_crit_edge:               ; preds = %for.cond137.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

for.cond137.2:                                    ; preds = %for.cond137.1
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %5, align 1
  %conv153 = zext i8 %64 to i32
  %shl154 = shl nuw nsw i32 %conv153, 8
  %65 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %6, align 1
  %conv156 = zext i8 %66 to i32
  %or158 = or i32 %shl154, %conv156
  %67 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or158, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or158)
  %tobool163.not = icmp eq i32 %or158, 0
  br i1 %tobool163.not, label %for.cond137.2.if.end218_crit_edge, label %if.then164

for.cond137.2.if.end218_crit_edge:                ; preds = %for.cond137.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end218

if.then164:                                       ; preds = %for.cond137.2
  %68 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %buf, align 1
  %70 = and i8 %69, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool165.not = icmp eq i8 %70, 0
  %call192 = call i32 @intlog10(i32 noundef %or158) #7
  %conv193 = zext i32 %call192 to i64
  br i1 %tobool165.not, label %if.else191, label %if.then166

if.then166:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #9
  %sub170 = sub nsw i64 60639904, %conv193
  %mul171 = mul nsw i64 %sub170, 10000
  %shr172 = lshr i64 %mul171, 24
  %conv173 = trunc i64 %shr172 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_read_status.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_read_status, %if.then186)) #7
          to label %if.end218 [label %if.then186], !srcloc !139

if.then186:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #9
  %dev187 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %71 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_read_status.__UNIQUE_ID_ddebug292, ptr noundef %dev187, ptr noundef nonnull @.str.44, i32 noundef %conv173, i32 noundef %72) #7
  br label %if.end218

if.else191:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #9
  %add195 = sub nsw i64 84162567, %conv193
  %mul196 = mul nsw i64 %add195, 10000
  %shr197 = lshr i64 %mul196, 24
  %conv198 = trunc i64 %shr197 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_read_status.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_read_status, %if.then211)) #7
          to label %if.end218 [label %if.then211], !srcloc !139

if.then211:                                       ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #9
  %dev212 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %73 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_read_status.__UNIQUE_ID_ddebug293, ptr noundef %dev212, ptr noundef nonnull @.str.45, i32 noundef %conv198, i32 noundef %74) #7
  br label %if.end218

if.end218:                                        ; preds = %if.then211, %if.else191, %if.then186, %if.then166, %for.cond137.2.if.end218_crit_edge
  %stmp.1 = phi i32 [ %conv173, %if.then186 ], [ %conv198, %if.then211 ], [ 0, %for.cond137.2.if.end218_crit_edge ], [ %conv173, %if.then166 ], [ %conv198, %if.else191 ]
  %conv219 = sext i32 %stmp.1 to i64
  %stat221 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %75 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 8)
  store i64 %conv219, ptr %75, align 1
  %77 = ptrtoint ptr %stat221 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %stat221, align 1
  br label %if.end303

land.lhs.true230:                                 ; preds = %land.lhs.true132
  %78 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp232 = icmp eq i32 %79, 1
  br i1 %cmp232, label %if.then234, label %land.lhs.true230.if.else296_crit_edge

land.lhs.true230.if.else296_crit_edge:            ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else296

if.then234:                                       ; preds = %land.lhs.true230
  %arrayidx236 = getelementptr %struct.mn88472_dev, ptr %3, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx236, align 4
  %call238 = call i32 @regmap_bulk_read(ptr noundef %81, i32 noundef 161, ptr noundef nonnull %buf, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end241, label %if.then234.do.body371_crit_edge

if.then234.do.body371_crit_edge:                  ; preds = %if.then234
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

if.end241:                                        ; preds = %if.then234
  %82 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %buf, align 1
  %conv243 = zext i8 %83 to i32
  %shl244 = shl nuw nsw i32 %conv243, 8
  %84 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %5, align 1
  %conv246 = zext i8 %85 to i32
  %or248 = or i32 %shl244, %conv246
  %86 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %6, align 1
  %conv250 = zext i8 %87 to i32
  %shl251 = shl nuw nsw i32 %conv250, 8
  %88 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %7, align 1
  %conv253 = zext i8 %89 to i32
  %or255 = or i32 %shl251, %conv253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or248)
  %tobool256.not = icmp eq i32 %or248, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or255)
  %tobool258.not = icmp eq i32 %or255, 0
  %or.cond = select i1 %tobool256.not, i1 true, i1 %tobool258.not
  br i1 %or.cond, label %if.end241.if.end287_crit_edge, label %if.then259

if.end241.if.end287_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end287

if.then259:                                       ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #9
  %call260 = call i32 @intlog10(i32 noundef %or248) #7
  %conv261 = zext i32 %call260 to i64
  %add262 = add nuw nsw i64 %conv261, 15151336
  %call263 = call i32 @intlog10(i32 noundef %or255) #7
  %conv264 = zext i32 %call263 to i64
  %sub265 = sub nsw i64 %add262, %conv264
  %mul266 = mul nsw i64 %sub265, 10000
  %shr267 = lshr i64 %mul266, 24
  %conv268 = trunc i64 %shr267 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_read_status.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_read_status, %if.then281)) #7
          to label %if.end287 [label %if.then281], !srcloc !139

if.then281:                                       ; preds = %if.then259
  call void @__sanitizer_cov_trace_pc() #9
  %dev282 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_read_status.__UNIQUE_ID_ddebug294, ptr noundef %dev282, ptr noundef nonnull @.str.46, i32 noundef %conv268, i32 noundef %or248, i32 noundef %or255) #7
  br label %if.end287

if.end287:                                        ; preds = %if.then281, %if.then259, %if.end241.if.end287_crit_edge
  %stmp.2 = phi i32 [ %conv268, %if.then281 ], [ 0, %if.end241.if.end287_crit_edge ], [ %conv268, %if.then259 ]
  %conv288 = sext i32 %stmp.2 to i64
  %stat290 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %90 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %conv288, ptr %90, align 1
  %92 = ptrtoint ptr %stat290 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %stat290, align 1
  br label %if.end303

if.else296:                                       ; preds = %land.lhs.true230.if.else296_crit_edge, %if.end76.if.else296_crit_edge
  %stat298 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %93 = ptrtoint ptr %stat298 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %stat298, align 1
  br label %if.end303

if.end303:                                        ; preds = %if.else296, %if.end287, %if.end218, %if.end121
  %94 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %status, align 4
  %and304 = and i32 %95, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and304)
  %tobool305.not = icmp eq i32 %and304, 0
  br i1 %tobool305.not, label %if.else361, label %if.then306

if.then306:                                       ; preds = %if.end303
  %regmap307 = getelementptr inbounds %struct.mn88472_dev, ptr %3, i32 0, i32 1
  %96 = ptrtoint ptr %regmap307 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap307, align 4
  %call310 = call i32 @regmap_bulk_read(ptr noundef %97, i32 noundef 225, ptr noundef nonnull %buf, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call310)
  %tobool311.not = icmp eq i32 %call310, 0
  br i1 %tobool311.not, label %if.end313, label %if.then306.do.body371_crit_edge

if.then306.do.body371_crit_edge:                  ; preds = %if.then306
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body371

if.end313:                                        ; preds = %if.then306
  %98 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %buf, align 1
  %conv315 = zext i8 %99 to i32
  %shl316 = shl nuw nsw i32 %conv315, 8
  %100 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %5, align 1
  %conv318 = zext i8 %101 to i32
  %or320 = or i32 %shl316, %conv318
  %102 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %6, align 1
  %conv322 = zext i8 %103 to i32
  %shl323 = shl nuw nsw i32 %conv322, 8
  %104 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %7, align 1
  %conv325 = zext i8 %105 to i32
  %or327 = or i32 %shl323, %conv325
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_read_status.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_read_status, %if.then340)) #7
          to label %do.end344 [label %if.then340], !srcloc !139

if.then340:                                       ; preds = %if.end313
  call void @__sanitizer_cov_trace_pc() #9
  %dev341 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_read_status.__UNIQUE_ID_ddebug295, ptr noundef %dev341, ptr noundef nonnull @.str.47, i32 noundef %or320, i32 noundef %or327) #7
  br label %do.end344

do.end344:                                        ; preds = %if.then340, %if.end313
  %stat345 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %106 = ptrtoint ptr %stat345 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %stat345, align 1
  %conv348 = zext i32 %or320 to i64
  %107 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_loadN_noabort(i32 %108, i32 8)
  %109 = load i64, ptr %107, align 1
  %add352 = add i64 %109, %conv348
  store i64 %add352, ptr %107, align 1
  %stat353 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %110 = ptrtoint ptr %stat353 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 3, ptr %stat353, align 1
  %conv356 = zext i32 %or327 to i64
  %111 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %113 = load i64, ptr %111, align 1
  %add360 = add i64 %113, %conv356
  store i64 %add360, ptr %111, align 1
  br label %cleanup

if.else361:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #9
  %stat363 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %114 = ptrtoint ptr %stat363 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %stat363, align 1
  %stat367 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %115 = ptrtoint ptr %stat367 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %stat367, align 1
  br label %cleanup

do.body371:                                       ; preds = %if.then306.do.body371_crit_edge, %if.then234.do.body371_crit_edge, %for.cond137.1.do.body371_crit_edge, %for.cond137.do.body371_crit_edge, %for.cond137.preheader.do.body371_crit_edge, %if.then82.do.body371_crit_edge, %for.cond.do.body371_crit_edge, %for.cond.preheader.do.body371_crit_edge, %sw.bb29.do.body371_crit_edge, %sw.bb7.do.body371_crit_edge, %sw.bb.do.body371_crit_edge, %if.end.do.body371_crit_edge, %entry.do.body371_crit_edge
  %ret.0 = phi i32 [ %call32, %sw.bb29.do.body371_crit_edge ], [ %call85, %if.then82.do.body371_crit_edge ], [ %call310, %if.then306.do.body371_crit_edge ], [ %call238, %if.then234.do.body371_crit_edge ], [ %call10, %sw.bb7.do.body371_crit_edge ], [ %call1, %sw.bb.do.body371_crit_edge ], [ -11, %entry.do.body371_crit_edge ], [ -22, %if.end.do.body371_crit_edge ], [ %call145, %for.cond137.preheader.do.body371_crit_edge ], [ %call145.1, %for.cond137.do.body371_crit_edge ], [ %call145.2, %for.cond137.1.do.body371_crit_edge ], [ %call48, %for.cond.preheader.do.body371_crit_edge ], [ %call48.1, %for.cond.do.body371_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88472_read_status.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88472_read_status, %if.then383)) #7
          to label %cleanup [label %if.then383], !srcloc !139

if.then383:                                       ; preds = %do.body371
  call void @__sanitizer_cov_trace_pc() #9
  %dev384 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88472_read_status.__UNIQUE_ID_ddebug296, ptr noundef %dev384, ptr noundef nonnull @.str.20, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then383, %do.body371, %if.else361, %do.end344
  %retval.0 = phi i32 [ 0, %if.else361 ], [ 0, %do.end344 ], [ %ret.0, %if.then383 ], [ %ret.0, %do.body371 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !28, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !55, !57, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !83, !85, !86, !87, !89, !91, !93, !95, !97, !98, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !123, !124, !126, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_mn88472__311_729_mn88472_driver_init6, !1, !"__initcall__kmod_mn88472__311_729_mn88472_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 729, i32 1}
!2 = !{ptr @__exitcall_mn88472_driver_exit, !1, !"__exitcall_mn88472_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author312, !4, !"__UNIQUE_ID_author312", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 731, i32 1}
!5 = !{ptr @__UNIQUE_ID_description313, !6, !"__UNIQUE_ID_description313", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 732, i32 1}
!7 = !{ptr @__UNIQUE_ID_file314, !8, !"__UNIQUE_ID_file314", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 733, i32 1}
!9 = !{ptr @__UNIQUE_ID_license315, !8, !"__UNIQUE_ID_license315", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware316, !11, !"__UNIQUE_ID_firmware316", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 734, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 721, i32 11}
!14 = !{ptr @mn88472_driver, !15, !"mn88472_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 719, i32 26}
!16 = !{ptr @mn88472_probe.regmap_config, !17, !"regmap_config", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 583, i32 36}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 588, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mn88472_probe.__UNIQUE_ID_ddebug307, !19, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!23 = !{ptr @mn88472_probe._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 601, i32 19}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 618, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mn88472_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @mn88472_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mn88472_probe._key.8, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 621, i32 19}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 631, i32 3}
!37 = !{ptr @mn88472_probe._entry.10, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mn88472_probe._entry_ptr.12, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @mn88472_probe._key.13, !40, !"_key", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 634, i32 19}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 646, i32 2}
!44 = !{ptr @mn88472_probe.__UNIQUE_ID_ddebug308, !43, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 674, i32 2}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mn88472_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @mn88472_probe._entry_ptr.19, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 690, i32 2}
!52 = !{ptr @mn88472_probe.__UNIQUE_ID_ddebug309, !51, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!53 = !{ptr @mn88472_ops, !54, !"mn88472_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 529, i32 38}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 401, i32 21}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 403, i32 2}
!59 = !{ptr @mn88472_init.__UNIQUE_ID_ddebug300, !58, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 425, i32 3}
!62 = !{ptr @mn88472_init._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mn88472_init._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 429, i32 2}
!66 = !{ptr @mn88472_init._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mn88472_init._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 441, i32 4}
!70 = !{ptr @mn88472_init._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mn88472_init._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 453, i32 3}
!74 = !{ptr @mn88472_init._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mn88472_init._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mn88472_init.__UNIQUE_ID_ddebug303, !77, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 500, i32 2}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 510, i32 2}
!80 = !{ptr @mn88472_sleep.__UNIQUE_ID_ddebug304, !79, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!81 = !{ptr @mn88472_sleep.__UNIQUE_ID_ddebug305, !82, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 525, i32 2}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 211, i32 2}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mn88472_set_frontend.__UNIQUE_ID_ddebug297, !84, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 253, i32 25}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 257, i32 25}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 261, i32 25}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 265, i32 25}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 293, i32 3}
!97 = !{ptr @mn88472_set_frontend.__UNIQUE_ID_ddebug298, !96, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!98 = !{ptr @mn88472_set_frontend.__UNIQUE_ID_ddebug299, !99, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 390, i32 2}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 82, i32 3}
!102 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mn88472_read_status.__UNIQUE_ID_ddebug290, !101, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 104, i32 4}
!106 = !{ptr @mn88472_read_status.__UNIQUE_ID_ddebug291, !105, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 129, i32 5}
!109 = !{ptr @mn88472_read_status.__UNIQUE_ID_ddebug292, !108, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 137, i32 5}
!112 = !{ptr @mn88472_read_status.__UNIQUE_ID_ddebug293, !111, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!113 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 161, i32 4}
!115 = !{ptr @mn88472_read_status.__UNIQUE_ID_ddebug294, !114, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 181, i32 3}
!118 = !{ptr @mn88472_read_status.__UNIQUE_ID_ddebug295, !117, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!119 = !{ptr @mn88472_read_status.__UNIQUE_ID_ddebug296, !120, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 195, i32 2}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 570, i32 2}
!123 = !{ptr @mn88472_get_dvb_frontend.__UNIQUE_ID_ddebug306, !122, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 698, i32 2}
!126 = !{ptr @mn88472_remove.__UNIQUE_ID_ddebug310, !125, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!127 = !{ptr @mn88472_id_table, !128, !"mn88472_id_table", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/mn88472.c", i32 713, i32 35}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
!139 = !{i64 2148280347, i64 2148280352, i64 2148280365, i64 2148280409, i64 2148280443, i64 2148280464}
!140 = !{!"branch_weights", i32 2000, i32 1}
!141 = !{i64 2148305534, i64 2148305814, i64 2148306148, i64 2148306482}
