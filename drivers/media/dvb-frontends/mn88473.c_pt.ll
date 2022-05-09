; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/mn88473.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mn88473.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mn88473_config = type { i16, i32, ptr }
%struct.mn88473_dev = type { [3 x ptr], [3 x ptr], %struct.dvb_frontend, i16, i8, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_mn88473__311_764_mn88473_driver_init6 = internal global ptr @mn88473_driver_init, section ".initcall6.init", align 4
@mn88473_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mn88473_probe, ptr @mn88473_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mn88473_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mn88473_driver_exit = internal global ptr @mn88473_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author312 = internal constant [46 x i8] c"mn88473.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [68 x i8] c"mn88473.description=Panasonic MN88473 DVB-T/T2/C demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [49 x i8] c"mn88473.file=drivers/media/dvb-frontends/mn88473\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [20 x i8] c"mn88473.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware316 = internal constant [41 x i8] c"mn88473.firmware=dvb-demod-mn88473-01.fw\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mn88473\00", [24 x i8] zeroinitializer }, align 32
@mn88473_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mn88473\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mn88473_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mn88473_probe.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mn88473_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/mn88473.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@mn88473_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 625, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"frontend pointer not defined\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mn88473_probe._entry_ptr = internal global ptr @mn88473_probe._entry, section ".printk_index", align 4
@mn88473_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mn88473:646:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@mn88473_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 663, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"I2C registration failed\0A\00", [39 x i8] zeroinitializer }, align 32
@mn88473_probe._entry_ptr.10 = internal global ptr @mn88473_probe._entry.8, section ".printk_index", align 4
@mn88473_probe._key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mn88473:666:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@mn88473_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 676, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"2nd I2C registration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@mn88473_probe._entry_ptr.15 = internal global ptr @mn88473_probe._entry.13, section ".printk_index", align 4
@mn88473_probe._key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mn88473:679:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@mn88473_probe.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.18, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip id=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@mn88473_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Panasonic MN88473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 1000000, i32 7200000, i32 0, i32 -1810104658 }, [8 x i8] c"\03\10\01\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @mn88473_init, ptr @mn88473_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mn88473_set_frontend, ptr @mn88473_get_tune_settings, ptr null, ptr @mn88473_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@mn88473_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 709, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Panasonic MN88473 successfully identified\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mn88473_probe._entry_ptr.22 = internal global ptr @mn88473_probe._entry.19, section ".printk_index", align 4
@mn88473_probe.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.23, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb-demod-mn88473-01.fw\00", [40 x i8] zeroinitializer }, align 32
@mn88473_init.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.3, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mn88473_init\00", [19 x i8] zeroinitializer }, align 32
@mn88473_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.25, ptr @.str.2, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firmware file '%s' not found\0A\00", [34 x i8] zeroinitializer }, align 32
@mn88473_init._entry_ptr = internal global ptr @mn88473_init._entry, section ".printk_index", align 4
@mn88473_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 486, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"downloading firmware from file '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@mn88473_init._entry_ptr.29 = internal global ptr @mn88473_init._entry.27, section ".printk_index", align 4
@mn88473_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.2, i32 498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware download failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mn88473_init._entry_ptr.32 = internal global ptr @mn88473_init._entry.30, section ".printk_index", align 4
@mn88473_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.2, i32 511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"firmware parity check failed\0A\00", [34 x i8] zeroinitializer }, align 32
@mn88473_init._entry_ptr.35 = internal global ptr @mn88473_init._entry.33, section ".printk_index", align 4
@mn88473_init.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.23, i8 0, i8 -119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mn88473_sleep.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.3, i8 0, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mn88473_sleep\00", [18 x i8] zeroinitializer }, align 32
@mn88473_sleep.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.23, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mn88473_set_frontend.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mn88473_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"delivery_system=%u modulation=%u frequency=%u bandwidth_hz=%u symbol_rate=%u inversion=%d stream_id=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\E9UU\1C)\1C)\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\C8\00\00\17\0A\17\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\AF\00\00\11\EC\11\EC\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\10\AB\0D\AE\1D\9D\00", [25 x i8] zeroinitializer }, align 32
@mn88473_set_frontend.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.43, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get_if_frequency=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\BA\13\80\BA\91\DD\E7(\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\F4\08\00", [29 x i8] zeroinitializer }, align 32
@mn88473_set_frontend.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.23, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mn88473_read_status.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mn88473_read_status\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"strength=%u\0A\00", [19 x i8] zeroinitializer }, align 32
@mn88473_read_status.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.48, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cnr=%d value=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@mn88473_read_status.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cnr=%d value=%u MISO\0A\00", [42 x i8] zeroinitializer }, align 32
@mn88473_read_status.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.50, i8 0, i8 94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cnr=%d value=%u SISO\0A\00", [42 x i8] zeroinitializer }, align 32
@mn88473_read_status.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.51, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cnr=%d signal=%u noise=%u\0A\00", [37 x i8] zeroinitializer }, align 32
@mn88473_read_status.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.52, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"post_bit_error=%u post_bit_count=%u\0A\00", [59 x i8] zeroinitializer }, align 32
@mn88473_read_status.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.53, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"block_error=%u block_count=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@mn88473_read_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.23, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mn88473_remove.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.3, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mn88473_remove\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 16]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"mn88473_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 754, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 756, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"mn88473_id_table\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 748, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 616, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 621, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 625, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 646, i32 19 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 663, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 666, i32 19 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 676, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 679, i32 19 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 691, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"mn88473_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 572, i32 38 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 709, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 725, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 467, i32 21 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 469, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 482, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 486, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 497, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 511, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 558, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 28, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 64, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 67, i32 19 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 70, i32 19 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 78, i32 18 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 96, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 171, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 198, i32 48 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 322, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 343, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 368, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 375, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 398, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 421, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 441, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [41 x i8] c"../drivers/media/dvb-frontends/mn88473.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 733, i32 2 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_firmware316, ptr @__UNIQUE_ID_license315, ptr @__exitcall_mn88473_driver_exit, ptr @__initcall__kmod_mn88473__311_764_mn88473_driver_init6, ptr @mn88473_driver_exit, ptr @mn88473_init._entry, ptr @mn88473_init._entry.27, ptr @mn88473_init._entry.30, ptr @mn88473_init._entry.33, ptr @mn88473_init._entry_ptr, ptr @mn88473_init._entry_ptr.29, ptr @mn88473_init._entry_ptr.32, ptr @mn88473_init._entry_ptr.35, ptr @mn88473_probe._entry, ptr @mn88473_probe._entry.13, ptr @mn88473_probe._entry.19, ptr @mn88473_probe._entry.8, ptr @mn88473_probe._entry_ptr, ptr @mn88473_probe._entry_ptr.10, ptr @mn88473_probe._entry_ptr.15, ptr @mn88473_probe._entry_ptr.22, ptr @mn88473_driver, ptr @.str, ptr @mn88473_id_table, ptr @mn88473_probe.regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mn88473_probe._key, ptr @.str.7, ptr @.str.9, ptr @mn88473_probe._key.11, ptr @.str.12, ptr @.str.14, ptr @mn88473_probe._key.16, ptr @.str.17, ptr @.str.18, ptr @mn88473_ops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_probe._key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_probe._key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mn88473_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88473_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mn88473_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mn88473_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mn88473_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88473_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %uitmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #7
  %2 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %uitmp, align 4, !annotation !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_probe.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_probe.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr inbounds %struct.mn88473_config, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fe, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %do.body153

if.end10:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1072) #11
  %cmp12 = icmp eq ptr %call7.i.i, null
  br i1 %cmp12, label %if.end10.do.body153_crit_edge, label %if.end14

if.end10.do.body153_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body153

if.end14:                                         ; preds = %if.end10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool15.not = icmp eq i16 %7, 0
  %spec.select = select i1 %tobool15.not, i16 -1, i16 %7
  %8 = getelementptr inbounds %struct.mn88473_dev, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %spec.select, ptr %8, align 8
  %xtal = getelementptr inbounds %struct.mn88473_config, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %xtal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xtal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool21.not = icmp eq i32 %11, 0
  %.sink248 = select i1 %tobool21.not, i32 25000000, i32 %11
  %12 = getelementptr inbounds %struct.mn88473_dev, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink248, ptr %12, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %client, ptr %call7.i.i, align 8
  %call31 = tail call ptr @__regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @mn88473_probe.regmap_config, ptr noundef nonnull @mn88473_probe._key, ptr noundef nonnull @.str.7) #7
  %regmap = getelementptr inbounds %struct.mn88473_dev, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call31, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end40

if.then36:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call31 to i32
  br label %err_kfree

if.end40:                                         ; preds = %if.end14
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %call41 = tail call ptr @i2c_new_dummy_device(ptr noundef %18, i16 noundef zeroext 26) #7
  %arrayidx43 = getelementptr [3 x ptr], ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call41, ptr %arrayidx43, align 4
  %cmp.i239 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %if.then47, label %if.end55

if.then47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %err_regmap_0_regmap_exit

if.end55:                                         ; preds = %if.end40
  %call59 = tail call ptr @__regmap_init_i2c(ptr noundef %call41, ptr noundef nonnull @mn88473_probe.regmap_config, ptr noundef nonnull @mn88473_probe._key.11, ptr noundef nonnull @.str.12) #7
  %arrayidx61 = getelementptr %struct.mn88473_dev, ptr %call7.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call59, ptr %arrayidx61, align 8
  %cmp.i240 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call59 to i32
  br label %err_client_1_i2c_unregister_device

if.end69:                                         ; preds = %if.end55
  %23 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx43, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %26 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter, align 8
  %call73 = tail call ptr @i2c_new_dummy_device(ptr noundef %27, i16 noundef zeroext 28) #7
  %arrayidx75 = getelementptr [3 x ptr], ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call73, ptr %arrayidx75, align 8
  %cmp.i241 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241, label %if.then79, label %if.end87

if.then79:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call73 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %err_regmap_1_regmap_exit

if.end87:                                         ; preds = %if.end69
  %call91 = tail call ptr @__regmap_init_i2c(ptr noundef %call73, ptr noundef nonnull @mn88473_probe.regmap_config, ptr noundef nonnull @mn88473_probe._key.16, ptr noundef nonnull @.str.17) #7
  %arrayidx93 = getelementptr %struct.mn88473_dev, ptr %call7.i.i, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call91, ptr %arrayidx93, align 4
  %cmp.i242 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %if.then97, label %if.end101

if.then97:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call91 to i32
  br label %err_client_2_i2c_unregister_device

if.end101:                                        ; preds = %if.end87
  %32 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx75, align 8
  %driver_data.i.i243 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %driver_data.i.i243 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %driver_data.i.i243, align 4
  %35 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx93, align 4
  %call106 = call i32 @regmap_read(ptr noundef %36, i32 noundef 255, ptr noundef nonnull %uitmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %do.body110, label %if.end101.err_regmap_2_regmap_exit_crit_edge

if.end101.err_regmap_2_regmap_exit_crit_edge:     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_regmap_2_regmap_exit

do.body110:                                       ; preds = %if.end101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_probe.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_probe, %if.then122)) #7
          to label %do.end126 [label %if.then122], !srcloc !147

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %uitmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_probe.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %38) #7
  br label %do.end126

do.end126:                                        ; preds = %if.then122, %do.body110
  %39 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %40)
  %cmp127.not = icmp eq i32 %40, 3
  br i1 %cmp127.not, label %if.end129, label %do.end126.err_regmap_2_regmap_exit_crit_edge

do.end126.err_regmap_2_regmap_exit_crit_edge:     ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_regmap_2_regmap_exit

if.end129:                                        ; preds = %do.end126
  %41 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx93, align 4
  %call132 = call i32 @regmap_write(ptr noundef %42, i32 noundef 5, i32 noundef 62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end129.err_regmap_2_regmap_exit_crit_edge

if.end129.err_regmap_2_regmap_exit_crit_edge:     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_regmap_2_regmap_exit

if.end135:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %frontend = getelementptr inbounds %struct.mn88473_dev, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.mn88473_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %43 = call ptr @memcpy(ptr %ops, ptr @mn88473_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.mn88473_dev, ptr %call7.i.i, i32 0, i32 2, i32 3
  %44 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %client, ptr %demodulator_priv, align 8
  %45 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fe, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %frontend, ptr %46, align 4
  %driver_data.i.i244 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %48 = ptrtoint ptr %driver_data.i.i244 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %driver_data.i.i244, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %cleanup

err_regmap_2_regmap_exit:                         ; preds = %if.end129.err_regmap_2_regmap_exit_crit_edge, %do.end126.err_regmap_2_regmap_exit_crit_edge, %if.end101.err_regmap_2_regmap_exit_crit_edge
  %ret.0 = phi i32 [ %call106, %if.end101.err_regmap_2_regmap_exit_crit_edge ], [ %call132, %if.end129.err_regmap_2_regmap_exit_crit_edge ], [ -19, %do.end126.err_regmap_2_regmap_exit_crit_edge ]
  %49 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx93, align 4
  call void @regmap_exit(ptr noundef %50) #7
  br label %err_client_2_i2c_unregister_device

err_client_2_i2c_unregister_device:               ; preds = %err_regmap_2_regmap_exit, %if.then97
  %ret.1 = phi i32 [ %31, %if.then97 ], [ %ret.0, %err_regmap_2_regmap_exit ]
  %51 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx75, align 8
  call void @i2c_unregister_device(ptr noundef %52) #7
  br label %err_regmap_1_regmap_exit

err_regmap_1_regmap_exit:                         ; preds = %err_client_2_i2c_unregister_device, %if.then79
  %ret.2 = phi i32 [ %29, %if.then79 ], [ %ret.1, %err_client_2_i2c_unregister_device ]
  %53 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx61, align 8
  call void @regmap_exit(ptr noundef %54) #7
  br label %err_client_1_i2c_unregister_device

err_client_1_i2c_unregister_device:               ; preds = %err_regmap_1_regmap_exit, %if.then65
  %ret.3 = phi i32 [ %22, %if.then65 ], [ %ret.2, %err_regmap_1_regmap_exit ]
  %55 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx43, align 4
  call void @i2c_unregister_device(ptr noundef %56) #7
  br label %err_regmap_0_regmap_exit

err_regmap_0_regmap_exit:                         ; preds = %err_client_1_i2c_unregister_device, %if.then47
  %ret.4 = phi i32 [ %20, %if.then47 ], [ %ret.3, %err_client_1_i2c_unregister_device ]
  %57 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap, align 4
  call void @regmap_exit(ptr noundef %58) #7
  br label %err_kfree

err_kfree:                                        ; preds = %err_regmap_0_regmap_exit, %if.then36
  %ret.5 = phi i32 [ %16, %if.then36 ], [ %ret.4, %err_regmap_0_regmap_exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %do.body153

do.body153:                                       ; preds = %err_kfree, %if.end10.do.body153_crit_edge, %do.end8
  %ret.6 = phi i32 [ -22, %do.end8 ], [ %ret.5, %err_kfree ], [ -12, %if.end10.do.body153_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_probe.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_probe, %if.then165)) #7
          to label %cleanup [label %if.then165], !srcloc !147

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_probe.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %ret.6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then165, %do.body153, %if.end135
  %retval.0 = phi i32 [ 0, %if.end135 ], [ %ret.6, %if.then165 ], [ %ret.6, %do.body153 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88473_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_remove.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_remove.__UNIQUE_ID_ddebug310, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.mn88473_dev, ptr %1, i32 0, i32 1
  %arrayidx = getelementptr %struct.mn88473_dev, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @regmap_exit(ptr noundef %3) #7
  %arrayidx6 = getelementptr [3 x ptr], ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #7
  %arrayidx8 = getelementptr %struct.mn88473_dev, ptr %1, i32 0, i32 1, i32 1
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
define internal i32 @mn88473_init(ptr nocapture noundef %fe) #2 align 64 {
entry:
  %uitmp = alloca i32, align 4
  %fw = alloca ptr, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #7
  %4 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %uitmp, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_init.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_init.__UNIQUE_ID_ddebug301, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_read(ptr noundef %7, i32 noundef 245, ptr noundef nonnull %uitmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body111_crit_edge

do.end.do.body111_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body111

if.end8:                                          ; preds = %do.end
  %8 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uitmp, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end8.warm_crit_edge, label %if.end11

if.end8.warm_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %warm

if.end11:                                         ; preds = %if.end8
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call13 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.24, ptr noundef %dev12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end23, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #10
  br label %do.body111

do.end23:                                         ; preds = %if.end11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call27 = call i32 @regmap_write(ptr noundef %11, i32 noundef 245, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %do.end23.err_release_firmware_crit_edge

do.end23.err_release_firmware_crit_edge:          ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_firmware

if.end30:                                         ; preds = %do.end23
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp186 = icmp sgt i32 %15, 0
  br i1 %cmp186, label %for.body.lr.ph, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %i2c_wr_max = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %remain.0187 = phi i32 [ %15, %for.body.lr.ph ], [ %sub50, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %i2c_wr_max, align 4
  %conv = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %remain.0187, i32 %conv)
  %cmp32.not = icmp ult i32 %remain.0187, %conv
  %sub = add nsw i32 %conv, -1
  %cond = select i1 %cmp32.not, i32 %remain.0187, i32 %sub
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  %sub37 = sub i32 %25, %remain.0187
  %arrayidx38 = getelementptr i8, ptr %23, i32 %sub37
  %call39 = call i32 @regmap_bulk_write(ptr noundef %19, i32 noundef 246, ptr noundef %arrayidx38, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.inc, label %do.end44

do.end44:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.31, i32 noundef %call39) #10
  br label %err_release_firmware

for.inc:                                          ; preds = %for.body
  %26 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %i2c_wr_max, align 4
  %conv48 = zext i16 %27 to i32
  %sub49.neg = add nuw i32 %remain.0187, 1
  %sub50 = sub i32 %sub49.neg, %conv48
  %cmp = icmp sgt i32 %sub50, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end30.for.end_crit_edge
  %28 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %29) #7
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call53 = call i32 @regmap_read(ptr noundef %31, i32 noundef 248, ptr noundef nonnull %uitmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %for.end.do.body111_crit_edge

for.end.do.body111_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body111

if.end56:                                         ; preds = %for.end
  %32 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %uitmp, align 4
  %and57 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.34) #10
  br label %do.body111

if.end64:                                         ; preds = %if.end56
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call67 = call i32 @regmap_write(ptr noundef %35, i32 noundef 245, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end64.warm_crit_edge, label %if.end64.do.body111_crit_edge

if.end64.do.body111_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body111

if.end64.warm_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %warm

warm:                                             ; preds = %if.end64.warm_crit_edge, %if.end8.warm_crit_edge
  %arrayidx72 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx72, align 4
  %call73 = call i32 @regmap_write(ptr noundef %37, i32 noundef 9, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %warm.do.body111_crit_edge

warm.do.body111_crit_edge:                        ; preds = %warm
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body111

if.end76:                                         ; preds = %warm
  %38 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx72, align 4
  %call79 = call i32 @regmap_write(ptr noundef %39, i32 noundef 8, i32 noundef 29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end76.do.body111_crit_edge

if.end76.do.body111_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body111

if.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %active = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %active, align 2
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %41 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %strength, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %42 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %stat, align 1
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %43 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %cnr, align 1
  %stat88 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %44 = ptrtoint ptr %stat88 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %stat88, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %45 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %post_bit_error, align 4
  %stat93 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %46 = ptrtoint ptr %stat93 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %stat93, align 1
  %post_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %47 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %post_bit_count, align 1
  %stat98 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %48 = ptrtoint ptr %stat98 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %stat98, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %49 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %block_error, align 2
  %stat103 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %50 = ptrtoint ptr %stat103 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %stat103, align 1
  %block_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %51 = ptrtoint ptr %block_count to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %block_count, align 1
  %stat108 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %52 = ptrtoint ptr %stat108 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %stat108, align 1
  br label %cleanup

err_release_firmware:                             ; preds = %do.end44, %do.end23.err_release_firmware_crit_edge
  %ret.0 = phi i32 [ %call27, %do.end23.err_release_firmware_crit_edge ], [ %call39, %do.end44 ]
  %53 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %54) #7
  br label %do.body111

do.body111:                                       ; preds = %err_release_firmware, %if.end76.do.body111_crit_edge, %warm.do.body111_crit_edge, %if.end64.do.body111_crit_edge, %do.end62, %for.end.do.body111_crit_edge, %do.end18, %do.end.do.body111_crit_edge
  %ret.1 = phi i32 [ %call5, %do.end.do.body111_crit_edge ], [ %call13, %do.end18 ], [ %ret.0, %err_release_firmware ], [ %call53, %for.end.do.body111_crit_edge ], [ -22, %do.end62 ], [ %call67, %if.end64.do.body111_crit_edge ], [ %call73, %warm.do.body111_crit_edge ], [ %call79, %if.end76.do.body111_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_init.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_init, %if.then123)) #7
          to label %cleanup [label %if.then123], !srcloc !147

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #9
  %dev124 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_init.__UNIQUE_ID_ddebug304, ptr noundef %dev124, ptr noundef nonnull @.str.23, i32 noundef %ret.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then123, %do.body111, %if.end82
  %retval.0 = phi i32 [ 0, %if.end82 ], [ %ret.1, %if.then123 ], [ %ret.1, %do.body111 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88473_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_sleep.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_sleep, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_sleep.__UNIQUE_ID_ddebug305, ptr noundef %dev4, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %active, align 2
  %arrayidx = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 5, i32 noundef 62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %do.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_sleep.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_sleep, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !147

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_sleep.__UNIQUE_ID_ddebug306, ptr noundef %dev22, ptr noundef nonnull @.str.23, i32 noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body9, %do.end.cleanup_crit_edge
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88473_set_frontend(ptr noundef %fe) #2 align 64 {
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
  store i32 -1, ptr %if_frequency, align 4, !annotation !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_set_frontend.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_set_frontend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !147

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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_set_frontend.__UNIQUE_ID_ddebug290, ptr noundef %dev4, ptr noundef nonnull @.str.38, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %active, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not = icmp eq i8 %20, 0
  br i1 %tobool5.not, label %do.end.do.body496_crit_edge, label %if.end7

do.end.do.body496_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end7:                                          ; preds = %do.end
  %delivery_system8 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %21 = ptrtoint ptr %delivery_system8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %delivery_system8, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end7.do.body496_crit_edge [
    i32 3, label %if.end7.sw.bb12_crit_edge
    i32 16, label %sw.bb9
    i32 1, label %if.end7.sw.epilog21_crit_edge
  ]

if.end7.sw.epilog21_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

if.end7.sw.bb12_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

if.end7.do.body496_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb9, %if.end7.sw.bb12_crit_edge
  %reg_bank0_d2_val.0.ph = phi i32 [ 42, %if.end7.sw.bb12_crit_edge ], [ 41, %sw.bb9 ]
  %reg_bank2_2d_val.0.ph = phi i32 [ 35, %if.end7.sw.bb12_crit_edge ], [ 59, %sw.bb9 ]
  %delivery_system_val.0.ph = phi i32 [ 2, %if.end7.sw.bb12_crit_edge ], [ 3, %sw.bb9 ]
  %bandwidth_hz13 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %24 = ptrtoint ptr %bandwidth_hz13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bandwidth_hz13, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %25, label %sw.bb12.do.body496_crit_edge [
    i32 6000000, label %sw.bb12.sw.epilog21_crit_edge
    i32 7000000, label %sw.bb15
    i32 8000000, label %sw.bb16
  ]

sw.bb12.sw.epilog21_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.bb12.do.body496_crit_edge:                     ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

sw.bb15:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.bb16:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %sw.bb16, %sw.bb15, %sw.bb12.sw.epilog21_crit_edge, %if.end7.sw.epilog21_crit_edge
  %delivery_system_val.0732 = phi i32 [ %delivery_system_val.0.ph, %sw.bb16 ], [ %delivery_system_val.0.ph, %sw.bb15 ], [ %delivery_system_val.0.ph, %sw.bb12.sw.epilog21_crit_edge ], [ 4, %if.end7.sw.epilog21_crit_edge ]
  %reg_bank2_2d_val.0730 = phi i32 [ %reg_bank2_2d_val.0.ph, %sw.bb16 ], [ %reg_bank2_2d_val.0.ph, %sw.bb15 ], [ %reg_bank2_2d_val.0.ph, %sw.bb12.sw.epilog21_crit_edge ], [ 59, %if.end7.sw.epilog21_crit_edge ]
  %reg_bank0_d2_val.0728 = phi i32 [ %reg_bank0_d2_val.0.ph, %sw.bb16 ], [ %reg_bank0_d2_val.0.ph, %sw.bb15 ], [ %reg_bank0_d2_val.0.ph, %sw.bb12.sw.epilog21_crit_edge ], [ 41, %if.end7.sw.epilog21_crit_edge ]
  %conf_val_ptr.0 = phi ptr [ @.str.41, %sw.bb16 ], [ @.str.40, %sw.bb15 ], [ @.str.39, %sw.bb12.sw.epilog21_crit_edge ], [ @.str.42, %if.end7.sw.epilog21_crit_edge ]
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %27 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_params, align 4
  %tobool22.not = icmp eq ptr %28, null
  br i1 %tobool22.not, label %sw.epilog21.if.end31_crit_edge, label %if.then23

sw.epilog21.if.end31_crit_edge:                   ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then23:                                        ; preds = %sw.epilog21
  %call27 = tail call i32 %28(ptr noundef %fe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then23.if.end31_crit_edge, label %if.then23.do.body496_crit_edge

if.then23.do.body496_crit_edge:                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end31:                                         ; preds = %if.then23.if.end31_crit_edge, %sw.epilog21.if.end31_crit_edge
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %29 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_if_frequency, align 4
  %tobool34.not = icmp eq ptr %30, null
  br i1 %tobool34.not, label %if.end31.do.body496_crit_edge, label %if.then35

if.end31.do.body496_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.then35:                                        ; preds = %if.end31
  %call39 = call i32 %30(ptr noundef %fe, ptr noundef nonnull %if_frequency) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.body43, label %if.then35.do.body496_crit_edge

if.then35.do.body496_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

do.body43:                                        ; preds = %if.then35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_set_frontend.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_set_frontend, %if.then55)) #7
          to label %if.end60 [label %if.then55], !srcloc !147

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %dev56 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %if_frequency, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_set_frontend.__UNIQUE_ID_ddebug291, ptr noundef %dev56, ptr noundef nonnull @.str.43, i32 noundef %32) #7
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %do.body43
  %clk = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 5
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clk, align 4
  %35 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %if_frequency, align 4
  %conv = zext i32 %36 to i64
  %mul = shl nuw nsw i64 %conv, 24
  %div708 = lshr i32 %34, 1
  %conv61 = zext i32 %div708 to i64
  %add = add nuw nsw i64 %mul, %conv61
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp236 = icmp ult i64 %add, 4294967296
  br i1 %cmp236, label %if.then244, label %if.else250, !prof !149

if.then244:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %conv245 = trunc i64 %add to i32
  %div248 = udiv i32 %conv245, %34
  %extract743 = lshr i32 %div248, 8
  %extract751 = lshr i32 %div248, 16
  br label %if.end254

if.else250:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %37 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %34, i64 %add) #12, !srcloc !150
  %asmresult1.i = extractvalue { i64, i64 } %37, 1
  %extract.t740 = trunc i64 %asmresult1.i to i32
  %extract745 = lshr i64 %asmresult1.i, 8
  %extract.t746 = trunc i64 %extract745 to i32
  %extract753 = lshr i64 %asmresult1.i, 16
  %extract.t754 = trunc i64 %extract753 to i32
  br label %if.end254

if.end254:                                        ; preds = %if.else250, %if.then244
  %_tmp.0.off0 = phi i32 [ %div248, %if.then244 ], [ %extract.t740, %if.else250 ]
  %_tmp.0.off8 = phi i32 [ %extract743, %if.then244 ], [ %extract.t746, %if.else250 ]
  %_tmp.0.off16 = phi i32 [ %extract751, %if.then244 ], [ %extract.t754, %if.else250 ]
  %regmap = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 1
  %arrayidx269 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx269, align 4
  %call270 = call i32 @regmap_write(ptr noundef %39, i32 noundef 5, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %if.end273, label %if.end254.do.body496_crit_edge

if.end254.do.body496_crit_edge:                   ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end273:                                        ; preds = %if.end254
  %40 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx269, align 4
  %call276 = call i32 @regmap_write(ptr noundef %41, i32 noundef 251, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %if.end279, label %if.end273.do.body496_crit_edge

if.end273.do.body496_crit_edge:                   ; preds = %if.end273
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end279:                                        ; preds = %if.end273
  %42 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx269, align 4
  %call282 = call i32 @regmap_write(ptr noundef %43, i32 noundef 239, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %tobool283.not = icmp eq i32 %call282, 0
  br i1 %tobool283.not, label %if.end285, label %if.end279.do.body496_crit_edge

if.end279.do.body496_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end285:                                        ; preds = %if.end279
  %44 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx269, align 4
  %call288 = call i32 @regmap_write(ptr noundef %45, i32 noundef 249, i32 noundef 19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call288)
  %tobool289.not = icmp eq i32 %call288, 0
  br i1 %tobool289.not, label %if.end291, label %if.end285.do.body496_crit_edge

if.end285.do.body496_crit_edge:                   ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end291:                                        ; preds = %if.end285
  %46 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx269, align 4
  %call294 = call i32 @regmap_write(ptr noundef %47, i32 noundef 0, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call294)
  %tobool295.not = icmp eq i32 %call294, 0
  br i1 %tobool295.not, label %if.end297, label %if.end291.do.body496_crit_edge

if.end291.do.body496_crit_edge:                   ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end297:                                        ; preds = %if.end291
  %48 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx269, align 4
  %call300 = call i32 @regmap_write(ptr noundef %49, i32 noundef 1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call300)
  %tobool301.not = icmp eq i32 %call300, 0
  br i1 %tobool301.not, label %if.end303, label %if.end297.do.body496_crit_edge

if.end297.do.body496_crit_edge:                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end303:                                        ; preds = %if.end297
  %50 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx269, align 4
  %call306 = call i32 @regmap_write(ptr noundef %51, i32 noundef 2, i32 noundef 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %if.end309, label %if.end303.do.body496_crit_edge

if.end303.do.body496_crit_edge:                   ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end309:                                        ; preds = %if.end303
  %52 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx269, align 4
  %call313 = call i32 @regmap_write(ptr noundef %53, i32 noundef 3, i32 noundef %delivery_system_val.0732) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313)
  %tobool314.not = icmp eq i32 %call313, 0
  br i1 %tobool314.not, label %if.end316, label %if.end309.do.body496_crit_edge

if.end309.do.body496_crit_edge:                   ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end316:                                        ; preds = %if.end309
  %54 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx269, align 4
  %call319 = call i32 @regmap_write(ptr noundef %55, i32 noundef 11, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %for.body.preheader, label %if.end316.do.body496_crit_edge

if.end316.do.body496_crit_edge:                   ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.body.preheader:                               ; preds = %if.end316
  %56 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx269, align 4
  %conv329 = and i32 %_tmp.0.off16, 255
  %call330 = call i32 @regmap_write(ptr noundef %57, i32 noundef 16, i32 noundef %conv329) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %for.cond, label %for.body.preheader.do.body496_crit_edge

for.body.preheader.do.body496_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.cond:                                         ; preds = %for.body.preheader
  %58 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx269, align 4
  %conv329.1 = and i32 %_tmp.0.off8, 255
  %call330.1 = call i32 @regmap_write(ptr noundef %59, i32 noundef 17, i32 noundef %conv329.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330.1)
  %tobool331.not.1 = icmp eq i32 %call330.1, 0
  br i1 %tobool331.not.1, label %for.cond.1, label %for.cond.do.body496_crit_edge

for.cond.do.body496_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.cond.1:                                       ; preds = %for.cond
  %60 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx269, align 4
  %conv329.2 = and i32 %_tmp.0.off0, 255
  %call330.2 = call i32 @regmap_write(ptr noundef %61, i32 noundef 18, i32 noundef %conv329.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330.2)
  %tobool331.not.2 = icmp eq i32 %call330.2, 0
  br i1 %tobool331.not.2, label %for.cond.2, label %for.cond.1.do.body496_crit_edge

for.cond.1.do.body496_crit_edge:                  ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.cond.2:                                       ; preds = %for.cond.1
  %62 = ptrtoint ptr %delivery_system8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %delivery_system8, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %63, label %for.cond.2.sw.epilog360_crit_edge [
    i32 3, label %for.cond.2.sw.bb335_crit_edge
    i32 16, label %for.cond.2.sw.bb335_crit_edge763
    i32 1, label %sw.bb352
  ]

for.cond.2.sw.bb335_crit_edge763:                 ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb335

for.cond.2.sw.bb335_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb335

for.cond.2.sw.epilog360_crit_edge:                ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog360

sw.bb335:                                         ; preds = %for.cond.2.sw.bb335_crit_edge, %for.cond.2.sw.bb335_crit_edge763
  %65 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx269, align 4
  %67 = ptrtoint ptr %conf_val_ptr.0 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %conf_val_ptr.0, align 1
  %conv344 = zext i8 %68 to i32
  %call345 = call i32 @regmap_write(ptr noundef %66, i32 noundef 19, i32 noundef %conv344) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345)
  %tobool346.not = icmp eq i32 %call345, 0
  br i1 %tobool346.not, label %for.cond336, label %sw.bb335.do.body496_crit_edge

sw.bb335.do.body496_crit_edge:                    ; preds = %sw.bb335
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.cond336:                                      ; preds = %sw.bb335
  %69 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx269, align 4
  %arrayidx343.1 = getelementptr i8, ptr %conf_val_ptr.0, i32 1
  %71 = ptrtoint ptr %arrayidx343.1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx343.1, align 1
  %conv344.1 = zext i8 %72 to i32
  %call345.1 = call i32 @regmap_write(ptr noundef %70, i32 noundef 20, i32 noundef %conv344.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345.1)
  %tobool346.not.1 = icmp eq i32 %call345.1, 0
  br i1 %tobool346.not.1, label %for.cond336.1, label %for.cond336.do.body496_crit_edge

for.cond336.do.body496_crit_edge:                 ; preds = %for.cond336
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.cond336.1:                                    ; preds = %for.cond336
  %73 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx269, align 4
  %arrayidx343.2 = getelementptr i8, ptr %conf_val_ptr.0, i32 2
  %75 = ptrtoint ptr %arrayidx343.2 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx343.2, align 1
  %conv344.2 = zext i8 %76 to i32
  %call345.2 = call i32 @regmap_write(ptr noundef %74, i32 noundef 21, i32 noundef %conv344.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345.2)
  %tobool346.not.2 = icmp eq i32 %call345.2, 0
  br i1 %tobool346.not.2, label %for.cond336.2, label %for.cond336.1.do.body496_crit_edge

for.cond336.1.do.body496_crit_edge:               ; preds = %for.cond336.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.cond336.2:                                    ; preds = %for.cond336.1
  %77 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx269, align 4
  %arrayidx343.3 = getelementptr i8, ptr %conf_val_ptr.0, i32 3
  %79 = ptrtoint ptr %arrayidx343.3 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx343.3, align 1
  %conv344.3 = zext i8 %80 to i32
  %call345.3 = call i32 @regmap_write(ptr noundef %78, i32 noundef 22, i32 noundef %conv344.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345.3)
  %tobool346.not.3 = icmp eq i32 %call345.3, 0
  br i1 %tobool346.not.3, label %for.cond336.3, label %for.cond336.2.do.body496_crit_edge

for.cond336.2.do.body496_crit_edge:               ; preds = %for.cond336.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.cond336.3:                                    ; preds = %for.cond336.2
  %81 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx269, align 4
  %arrayidx343.4 = getelementptr i8, ptr %conf_val_ptr.0, i32 4
  %83 = ptrtoint ptr %arrayidx343.4 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx343.4, align 1
  %conv344.4 = zext i8 %84 to i32
  %call345.4 = call i32 @regmap_write(ptr noundef %82, i32 noundef 23, i32 noundef %conv344.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345.4)
  %tobool346.not.4 = icmp eq i32 %call345.4, 0
  br i1 %tobool346.not.4, label %for.cond336.4, label %for.cond336.3.do.body496_crit_edge

for.cond336.3.do.body496_crit_edge:               ; preds = %for.cond336.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.cond336.4:                                    ; preds = %for.cond336.3
  %85 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx269, align 4
  %arrayidx343.5 = getelementptr i8, ptr %conf_val_ptr.0, i32 5
  %87 = ptrtoint ptr %arrayidx343.5 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx343.5, align 1
  %conv344.5 = zext i8 %88 to i32
  %call345.5 = call i32 @regmap_write(ptr noundef %86, i32 noundef 24, i32 noundef %conv344.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345.5)
  %tobool346.not.5 = icmp eq i32 %call345.5, 0
  br i1 %tobool346.not.5, label %for.cond336.5, label %for.cond336.4.do.body496_crit_edge

for.cond336.4.do.body496_crit_edge:               ; preds = %for.cond336.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.cond336.5:                                    ; preds = %for.cond336.4
  %89 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx269, align 4
  %arrayidx343.6 = getelementptr i8, ptr %conf_val_ptr.0, i32 6
  %91 = ptrtoint ptr %arrayidx343.6 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx343.6, align 1
  %conv344.6 = zext i8 %92 to i32
  %call345.6 = call i32 @regmap_write(ptr noundef %90, i32 noundef 25, i32 noundef %conv344.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call345.6)
  %tobool346.not.6 = icmp eq i32 %call345.6, 0
  br i1 %tobool346.not.6, label %for.cond336.5.sw.epilog360_crit_edge, label %for.cond336.5.do.body496_crit_edge

for.cond336.5.do.body496_crit_edge:               ; preds = %for.cond336.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

for.cond336.5.sw.epilog360_crit_edge:             ; preds = %for.cond336.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog360

sw.bb352:                                         ; preds = %for.cond.2
  %arrayidx354 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx354, align 4
  %call355 = call i32 @regmap_bulk_write(ptr noundef %94, i32 noundef 16, ptr noundef nonnull %conf_val_ptr.0, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call355)
  %tobool356.not = icmp eq i32 %call355, 0
  br i1 %tobool356.not, label %sw.bb352.sw.epilog360_crit_edge, label %sw.bb352.do.body496_crit_edge

sw.bb352.do.body496_crit_edge:                    ; preds = %sw.bb352
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

sw.bb352.sw.epilog360_crit_edge:                  ; preds = %sw.bb352
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog360

sw.epilog360:                                     ; preds = %sw.bb352.sw.epilog360_crit_edge, %for.cond336.5.sw.epilog360_crit_edge, %for.cond.2.sw.epilog360_crit_edge
  %95 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx269, align 4
  %call364 = call i32 @regmap_write(ptr noundef %96, i32 noundef 45, i32 noundef %reg_bank2_2d_val.0730) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call364)
  %tobool365.not = icmp eq i32 %call364, 0
  br i1 %tobool365.not, label %if.end367, label %sw.epilog360.do.body496_crit_edge

sw.epilog360.do.body496_crit_edge:                ; preds = %sw.epilog360
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end367:                                        ; preds = %sw.epilog360
  %97 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx269, align 4
  %call370 = call i32 @regmap_write(ptr noundef %98, i32 noundef 46, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call370)
  %tobool371.not = icmp eq i32 %call370, 0
  br i1 %tobool371.not, label %if.end373, label %if.end367.do.body496_crit_edge

if.end367.do.body496_crit_edge:                   ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end373:                                        ; preds = %if.end367
  %99 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx269, align 4
  %call376 = call i32 @regmap_write(ptr noundef %100, i32 noundef 86, i32 noundef 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call376)
  %tobool377.not = icmp eq i32 %call376, 0
  br i1 %tobool377.not, label %if.end379, label %if.end373.do.body496_crit_edge

if.end373.do.body496_crit_edge:                   ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end379:                                        ; preds = %if.end373
  %101 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap, align 4
  %call382 = call i32 @regmap_bulk_write(ptr noundef %102, i32 noundef 1, ptr noundef nonnull @.str.44, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.end385, label %if.end379.do.body496_crit_edge

if.end379.do.body496_crit_edge:                   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end385:                                        ; preds = %if.end379
  %103 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap, align 4
  %call388 = call i32 @regmap_write(ptr noundef %104, i32 noundef 10, i32 noundef 26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call388)
  %tobool389.not = icmp eq i32 %call388, 0
  br i1 %tobool389.not, label %if.end391, label %if.end385.do.body496_crit_edge

if.end385.do.body496_crit_edge:                   ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end391:                                        ; preds = %if.end385
  %105 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap, align 4
  %call394 = call i32 @regmap_write(ptr noundef %106, i32 noundef 19, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call394)
  %tobool395.not = icmp eq i32 %call394, 0
  br i1 %tobool395.not, label %if.end397, label %if.end391.do.body496_crit_edge

if.end391.do.body496_crit_edge:                   ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end397:                                        ; preds = %if.end391
  %107 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap, align 4
  %call400 = call i32 @regmap_write(ptr noundef %108, i32 noundef 25, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call400)
  %tobool401.not = icmp eq i32 %call400, 0
  br i1 %tobool401.not, label %if.end403, label %if.end397.do.body496_crit_edge

if.end397.do.body496_crit_edge:                   ; preds = %if.end397
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end403:                                        ; preds = %if.end397
  %109 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap, align 4
  %call406 = call i32 @regmap_write(ptr noundef %110, i32 noundef 29, i32 noundef 176) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call406)
  %tobool407.not = icmp eq i32 %call406, 0
  br i1 %tobool407.not, label %if.end409, label %if.end403.do.body496_crit_edge

if.end403.do.body496_crit_edge:                   ; preds = %if.end403
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end409:                                        ; preds = %if.end403
  %111 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap, align 4
  %call412 = call i32 @regmap_write(ptr noundef %112, i32 noundef 42, i32 noundef 114) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412)
  %tobool413.not = icmp eq i32 %call412, 0
  br i1 %tobool413.not, label %if.end415, label %if.end409.do.body496_crit_edge

if.end409.do.body496_crit_edge:                   ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end415:                                        ; preds = %if.end409
  %113 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap, align 4
  %call418 = call i32 @regmap_write(ptr noundef %114, i32 noundef 45, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call418)
  %tobool419.not = icmp eq i32 %call418, 0
  br i1 %tobool419.not, label %if.end421, label %if.end415.do.body496_crit_edge

if.end415.do.body496_crit_edge:                   ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end421:                                        ; preds = %if.end415
  %115 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap, align 4
  %call424 = call i32 @regmap_write(ptr noundef %116, i32 noundef 60, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call424)
  %tobool425.not = icmp eq i32 %call424, 0
  br i1 %tobool425.not, label %if.end427, label %if.end421.do.body496_crit_edge

if.end421.do.body496_crit_edge:                   ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end427:                                        ; preds = %if.end421
  %117 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap, align 4
  %call430 = call i32 @regmap_write(ptr noundef %118, i32 noundef 63, i32 noundef 248) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call430)
  %tobool431.not = icmp eq i32 %call430, 0
  br i1 %tobool431.not, label %if.end433, label %if.end427.do.body496_crit_edge

if.end427.do.body496_crit_edge:                   ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end433:                                        ; preds = %if.end427
  %119 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap, align 4
  %call436 = call i32 @regmap_bulk_write(ptr noundef %120, i32 noundef 64, ptr noundef nonnull @.str.45, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call436)
  %tobool437.not = icmp eq i32 %call436, 0
  br i1 %tobool437.not, label %if.end439, label %if.end433.do.body496_crit_edge

if.end433.do.body496_crit_edge:                   ; preds = %if.end433
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end439:                                        ; preds = %if.end433
  %121 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap, align 4
  %call443 = call i32 @regmap_write(ptr noundef %122, i32 noundef 210, i32 noundef %reg_bank0_d2_val.0728) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call443)
  %tobool444.not = icmp eq i32 %call443, 0
  br i1 %tobool444.not, label %if.end446, label %if.end439.do.body496_crit_edge

if.end439.do.body496_crit_edge:                   ; preds = %if.end439
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end446:                                        ; preds = %if.end439
  %123 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap, align 4
  %call449 = call i32 @regmap_write(ptr noundef %124, i32 noundef 212, i32 noundef 85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call449)
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %if.end452, label %if.end446.do.body496_crit_edge

if.end446.do.body496_crit_edge:                   ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end452:                                        ; preds = %if.end446
  %arrayidx454 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx454, align 4
  %call455 = call i32 @regmap_write(ptr noundef %126, i32 noundef 190, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call455)
  %tobool456.not = icmp eq i32 %call455, 0
  br i1 %tobool456.not, label %if.end458, label %if.end452.do.body496_crit_edge

if.end452.do.body496_crit_edge:                   ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end458:                                        ; preds = %if.end452
  %127 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap, align 4
  %call461 = call i32 @regmap_write(ptr noundef %128, i32 noundef 178, i32 noundef 55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call461)
  %tobool462.not = icmp eq i32 %call461, 0
  br i1 %tobool462.not, label %if.end464, label %if.end458.do.body496_crit_edge

if.end458.do.body496_crit_edge:                   ; preds = %if.end458
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end464:                                        ; preds = %if.end458
  %129 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap, align 4
  %call467 = call i32 @regmap_write(ptr noundef %130, i32 noundef 215, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call467)
  %tobool468.not = icmp eq i32 %call467, 0
  br i1 %tobool468.not, label %if.end470, label %if.end464.do.body496_crit_edge

if.end464.do.body496_crit_edge:                   ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end470:                                        ; preds = %if.end464
  %131 = ptrtoint ptr %delivery_system8 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %delivery_system8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %132)
  %cmp472 = icmp eq i32 %132, 16
  br i1 %cmp472, label %if.then474, label %if.end470.if.end489_crit_edge

if.end470.if.end489_crit_edge:                    ; preds = %if.end470
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end489

if.then474:                                       ; preds = %if.end470
  %133 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx269, align 4
  %stream_id477 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %135 = ptrtoint ptr %stream_id477 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %stream_id477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %136)
  %cmp478 = icmp eq i32 %136, -1
  %spec.select = select i1 %cmp478, i32 0, i32 %136
  %call485 = call i32 @regmap_write(ptr noundef %134, i32 noundef 54, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call485)
  %tobool486.not = icmp eq i32 %call485, 0
  br i1 %tobool486.not, label %if.then474.if.end489_crit_edge, label %if.then474.do.body496_crit_edge

if.then474.do.body496_crit_edge:                  ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.then474.if.end489_crit_edge:                   ; preds = %if.then474
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end489

if.end489:                                        ; preds = %if.then474.if.end489_crit_edge, %if.end470.if.end489_crit_edge
  %137 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx269, align 4
  %call492 = call i32 @regmap_write(ptr noundef %138, i32 noundef 248, i32 noundef 159) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call492)
  %tobool493.not = icmp eq i32 %call492, 0
  br i1 %tobool493.not, label %if.end489.cleanup_crit_edge, label %if.end489.do.body496_crit_edge

if.end489.do.body496_crit_edge:                   ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body496

if.end489.cleanup_crit_edge:                      ; preds = %if.end489
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body496:                                       ; preds = %if.end489.do.body496_crit_edge, %if.then474.do.body496_crit_edge, %if.end464.do.body496_crit_edge, %if.end458.do.body496_crit_edge, %if.end452.do.body496_crit_edge, %if.end446.do.body496_crit_edge, %if.end439.do.body496_crit_edge, %if.end433.do.body496_crit_edge, %if.end427.do.body496_crit_edge, %if.end421.do.body496_crit_edge, %if.end415.do.body496_crit_edge, %if.end409.do.body496_crit_edge, %if.end403.do.body496_crit_edge, %if.end397.do.body496_crit_edge, %if.end391.do.body496_crit_edge, %if.end385.do.body496_crit_edge, %if.end379.do.body496_crit_edge, %if.end373.do.body496_crit_edge, %if.end367.do.body496_crit_edge, %sw.epilog360.do.body496_crit_edge, %sw.bb352.do.body496_crit_edge, %for.cond336.5.do.body496_crit_edge, %for.cond336.4.do.body496_crit_edge, %for.cond336.3.do.body496_crit_edge, %for.cond336.2.do.body496_crit_edge, %for.cond336.1.do.body496_crit_edge, %for.cond336.do.body496_crit_edge, %sw.bb335.do.body496_crit_edge, %for.cond.1.do.body496_crit_edge, %for.cond.do.body496_crit_edge, %for.body.preheader.do.body496_crit_edge, %if.end316.do.body496_crit_edge, %if.end309.do.body496_crit_edge, %if.end303.do.body496_crit_edge, %if.end297.do.body496_crit_edge, %if.end291.do.body496_crit_edge, %if.end285.do.body496_crit_edge, %if.end279.do.body496_crit_edge, %if.end273.do.body496_crit_edge, %if.end254.do.body496_crit_edge, %if.then35.do.body496_crit_edge, %if.end31.do.body496_crit_edge, %if.then23.do.body496_crit_edge, %sw.bb12.do.body496_crit_edge, %if.end7.do.body496_crit_edge, %do.end.do.body496_crit_edge
  %ret.0 = phi i32 [ %call27, %if.then23.do.body496_crit_edge ], [ %call39, %if.then35.do.body496_crit_edge ], [ %call270, %if.end254.do.body496_crit_edge ], [ %call276, %if.end273.do.body496_crit_edge ], [ %call282, %if.end279.do.body496_crit_edge ], [ %call288, %if.end285.do.body496_crit_edge ], [ %call294, %if.end291.do.body496_crit_edge ], [ %call300, %if.end297.do.body496_crit_edge ], [ %call306, %if.end303.do.body496_crit_edge ], [ %call313, %if.end309.do.body496_crit_edge ], [ %call319, %if.end316.do.body496_crit_edge ], [ %call364, %sw.epilog360.do.body496_crit_edge ], [ %call370, %if.end367.do.body496_crit_edge ], [ %call376, %if.end373.do.body496_crit_edge ], [ %call382, %if.end379.do.body496_crit_edge ], [ %call388, %if.end385.do.body496_crit_edge ], [ %call394, %if.end391.do.body496_crit_edge ], [ %call400, %if.end397.do.body496_crit_edge ], [ %call406, %if.end403.do.body496_crit_edge ], [ %call412, %if.end409.do.body496_crit_edge ], [ %call418, %if.end415.do.body496_crit_edge ], [ %call424, %if.end421.do.body496_crit_edge ], [ %call430, %if.end427.do.body496_crit_edge ], [ %call436, %if.end433.do.body496_crit_edge ], [ %call443, %if.end439.do.body496_crit_edge ], [ %call449, %if.end446.do.body496_crit_edge ], [ %call455, %if.end452.do.body496_crit_edge ], [ %call461, %if.end458.do.body496_crit_edge ], [ %call467, %if.end464.do.body496_crit_edge ], [ %call485, %if.then474.do.body496_crit_edge ], [ %call492, %if.end489.do.body496_crit_edge ], [ %call355, %sw.bb352.do.body496_crit_edge ], [ -11, %do.end.do.body496_crit_edge ], [ -22, %if.end7.do.body496_crit_edge ], [ -22, %sw.bb12.do.body496_crit_edge ], [ -22, %if.end31.do.body496_crit_edge ], [ %call345, %sw.bb335.do.body496_crit_edge ], [ %call345.1, %for.cond336.do.body496_crit_edge ], [ %call345.2, %for.cond336.1.do.body496_crit_edge ], [ %call345.3, %for.cond336.2.do.body496_crit_edge ], [ %call345.4, %for.cond336.3.do.body496_crit_edge ], [ %call345.5, %for.cond336.4.do.body496_crit_edge ], [ %call345.6, %for.cond336.5.do.body496_crit_edge ], [ %call330, %for.body.preheader.do.body496_crit_edge ], [ %call330.1, %for.cond.do.body496_crit_edge ], [ %call330.2, %for.cond.1.do.body496_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_set_frontend.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_set_frontend, %if.then508)) #7
          to label %cleanup [label %if.then508], !srcloc !147

if.then508:                                       ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #9
  %dev509 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_set_frontend.__UNIQUE_ID_ddebug292, ptr noundef %dev509, ptr noundef nonnull @.str.23, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then508, %do.body496, %if.end489.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end489.cleanup_crit_edge ], [ %ret.0, %if.then508 ], [ %ret.0, %do.body496 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_frequency) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mn88473_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %s, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mn88473_read_status(ptr noundef %fe, ptr nocapture noundef %status) #2 align 64 {
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
  store i32 -1, ptr %utmp, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #7
  %5 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %6 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %7 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %8 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %active = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 4
  %9 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active, align 2, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.do.body474_crit_edge, label %if.end

entry.do.body474_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

if.end:                                           ; preds = %entry
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %12 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delivery_system, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %13, label %if.end.do.body474_crit_edge [
    i32 3, label %sw.bb
    i32 16, label %sw.bb16
    i32 1, label %sw.bb42
  ]

if.end.do.body474_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

sw.bb:                                            ; preds = %if.end
  %regmap = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %16, i32 noundef 98, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %sw.bb.do.body474_crit_edge

sw.bb.do.body474_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

if.end4:                                          ; preds = %sw.bb
  %17 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %utmp, align 4
  %and = and i32 %18, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.sw.epilog.sink.split_crit_edge

if.end4.sw.epilog.sink.split_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then6:                                         ; preds = %if.end4
  %and7 = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and7)
  %cmp = icmp ugt i32 %and7, 8
  br i1 %cmp, label %if.then6.sw.epilog.sink.split_crit_edge, label %if.else

if.then6.sw.epilog.sink.split_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and7)
  %cmp10 = icmp ugt i32 %and7, 2
  br i1 %cmp10, label %if.else.sw.epilog.sink.split_crit_edge, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else.sw.epilog.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %if.end
  %arrayidx18 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18, align 4
  %call19 = call i32 @regmap_read(ptr noundef %20, i32 noundef 139, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %sw.bb16.do.body474_crit_edge

sw.bb16.do.body474_crit_edge:                     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

if.end22:                                         ; preds = %sw.bb16
  %21 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %utmp, align 4
  %and23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end22.sw.epilog.sink.split_crit_edge

if.end22.sw.epilog.sink.split_crit_edge:          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then25:                                        ; preds = %if.end22
  %and26 = and i32 %22, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and26)
  %cmp27 = icmp ugt i32 %and26, 12
  br i1 %cmp27, label %if.then25.sw.epilog.sink.split_crit_edge, label %if.else29

if.then25.sw.epilog.sink.split_crit_edge:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.else29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and26)
  %cmp31 = icmp ugt i32 %and26, 9
  br i1 %cmp31, label %if.else29.sw.epilog.sink.split_crit_edge, label %if.else33

if.else29.sw.epilog.sink.split_crit_edge:         ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.else33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and26)
  %cmp35 = icmp ugt i32 %and26, 6
  br i1 %cmp35, label %if.else33.sw.epilog.sink.split_crit_edge, label %if.else33.sw.epilog_crit_edge

if.else33.sw.epilog_crit_edge:                    ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.else33.sw.epilog.sink.split_crit_edge:         ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb42:                                          ; preds = %if.end
  %arrayidx44 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx44, align 4
  %call45 = call i32 @regmap_read(ptr noundef %24, i32 noundef 133, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %sw.bb42.do.body474_crit_edge

sw.bb42.do.body474_crit_edge:                     ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

if.end48:                                         ; preds = %sw.bb42
  %25 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %utmp, align 4
  %and49 = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %if.end48.sw.epilog.sink.split_crit_edge

if.end48.sw.epilog.sink.split_crit_edge:          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then51:                                        ; preds = %if.end48
  %27 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx44, align 4
  %call54 = call i32 @regmap_read(ptr noundef %28, i32 noundef 137, ptr noundef nonnull %utmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then51.do.body474_crit_edge

if.then51.do.body474_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

if.end57:                                         ; preds = %if.then51
  %29 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %utmp, align 4
  %and58 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.sw.epilog_crit_edge, label %if.end57.sw.epilog.sink.split_crit_edge

if.end57.sw.epilog.sink.split_crit_edge:          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end57.sw.epilog_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end57.sw.epilog.sink.split_crit_edge, %if.end48.sw.epilog.sink.split_crit_edge, %if.else33.sw.epilog.sink.split_crit_edge, %if.else29.sw.epilog.sink.split_crit_edge, %if.then25.sw.epilog.sink.split_crit_edge, %if.end22.sw.epilog.sink.split_crit_edge, %if.else.sw.epilog.sink.split_crit_edge, %if.then6.sw.epilog.sink.split_crit_edge, %if.end4.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 31, %if.then6.sw.epilog.sink.split_crit_edge ], [ 3, %if.else.sw.epilog.sink.split_crit_edge ], [ 0, %if.end4.sw.epilog.sink.split_crit_edge ], [ 31, %if.then25.sw.epilog.sink.split_crit_edge ], [ 7, %if.else29.sw.epilog.sink.split_crit_edge ], [ 3, %if.else33.sw.epilog.sink.split_crit_edge ], [ 0, %if.end22.sw.epilog.sink.split_crit_edge ], [ 31, %if.end57.sw.epilog.sink.split_crit_edge ], [ 0, %if.end48.sw.epilog.sink.split_crit_edge ]
  %31 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %status, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end57.sw.epilog_crit_edge, %if.else33.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %and64 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.else94, label %for.cond.preheader

for.cond.preheader:                               ; preds = %sw.epilog
  %arrayidx69 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx69, align 4
  %call71 = call i32 @regmap_bulk_read(ptr noundef %35, i32 noundef 134, ptr noundef nonnull %buf, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %for.cond, label %for.cond.preheader.do.body474_crit_edge

for.cond.preheader.do.body474_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

for.cond:                                         ; preds = %for.cond.preheader
  %36 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx69, align 4
  %call71.1 = call i32 @regmap_bulk_read(ptr noundef %37, i32 noundef 135, ptr noundef %5, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.1)
  %tobool72.not.1 = icmp eq i32 %call71.1, 0
  br i1 %tobool72.not.1, label %for.cond.1, label %for.cond.do.body474_crit_edge

for.cond.do.body474_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

for.cond.1:                                       ; preds = %for.cond
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %buf, align 1
  %conv = zext i8 %39 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %5, align 1
  %conv77 = zext i8 %41 to i32
  %or = or i32 %shl, %conv77
  %42 = lshr i32 %conv, 2
  %or81 = or i32 %or, %42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_read_status.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_read_status, %if.then86)) #7
          to label %do.end [label %if.then86], !srcloc !147

if.then86:                                        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %dev87 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_read_status.__UNIQUE_ID_ddebug293, ptr noundef %dev87, ptr noundef nonnull @.str.47, i32 noundef %or81) #7
  br label %do.end

do.end:                                           ; preds = %if.then86, %for.cond.1
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %43 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %stat, align 1
  %conv90 = zext i32 %or81 to i64
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 %conv90, ptr %44, align 1
  br label %if.end99

if.else94:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %stat96 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %46 = ptrtoint ptr %stat96 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %stat96, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.else94, %do.end
  %47 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status, align 4
  %and100 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end99.if.else319_crit_edge, label %land.lhs.true

if.end99.if.else319_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else319

land.lhs.true:                                    ; preds = %if.end99
  %49 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp103 = icmp eq i32 %50, 3
  br i1 %cmp103, label %if.then105, label %land.lhs.true155

if.then105:                                       ; preds = %land.lhs.true
  %regmap106 = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 1
  %51 = ptrtoint ptr %regmap106 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap106, align 4
  %call108 = call i32 @regmap_bulk_read(ptr noundef %52, i32 noundef 143, ptr noundef nonnull %buf, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.then105.do.body474_crit_edge

if.then105.do.body474_crit_edge:                  ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

if.end111:                                        ; preds = %if.then105
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %buf, align 1
  %conv113 = zext i8 %54 to i32
  %shl114 = shl nuw nsw i32 %conv113, 8
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %5, align 1
  %conv116 = zext i8 %56 to i32
  %or118 = or i32 %shl114, %conv116
  %57 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or118, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or118)
  %tobool119.not = icmp eq i32 %or118, 0
  br i1 %tobool119.not, label %if.end111.if.end144_crit_edge, label %if.then120

if.end111.if.end144_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

if.then120:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %call121 = call i32 @intlog10(i32 noundef %or118) #7
  %conv122 = zext i32 %call121 to i64
  %add123 = sub nsw i64 84162567, %conv122
  %mul = mul nsw i64 %add123, 10000
  %shr.i.i = lshr i64 %mul, 24
  %conv125 = trunc i64 %shr.i.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_read_status.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_read_status, %if.then138)) #7
          to label %if.end144 [label %if.then138], !srcloc !147

if.then138:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #9
  %dev139 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_read_status.__UNIQUE_ID_ddebug294, ptr noundef %dev139, ptr noundef nonnull @.str.48, i32 noundef %conv125, i32 noundef %59) #7
  br label %if.end144

if.end144:                                        ; preds = %if.then138, %if.then120, %if.end111.if.end144_crit_edge
  %stmp.0 = phi i32 [ %conv125, %if.then138 ], [ 0, %if.end111.if.end144_crit_edge ], [ %conv125, %if.then120 ]
  %conv145 = sext i32 %stmp.0 to i64
  %stat146 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %60 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %conv145, ptr %60, align 1
  %62 = ptrtoint ptr %stat146 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %stat146, align 1
  br label %if.end326

land.lhs.true155:                                 ; preds = %land.lhs.true
  %63 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %64)
  %cmp157 = icmp eq i32 %64, 16
  br i1 %cmp157, label %for.cond160.preheader, label %land.lhs.true253

for.cond160.preheader:                            ; preds = %land.lhs.true155
  %arrayidx165 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 2
  %65 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx165, align 4
  %call168 = call i32 @regmap_bulk_read(ptr noundef %66, i32 noundef 183, ptr noundef nonnull %buf, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %for.cond160, label %for.cond160.preheader.do.body474_crit_edge

for.cond160.preheader.do.body474_crit_edge:       ; preds = %for.cond160.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

for.cond160:                                      ; preds = %for.cond160.preheader
  %67 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx165, align 4
  %call168.1 = call i32 @regmap_bulk_read(ptr noundef %68, i32 noundef 184, ptr noundef %5, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.1)
  %tobool169.not.1 = icmp eq i32 %call168.1, 0
  br i1 %tobool169.not.1, label %for.cond160.1, label %for.cond160.do.body474_crit_edge

for.cond160.do.body474_crit_edge:                 ; preds = %for.cond160
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

for.cond160.1:                                    ; preds = %for.cond160
  %69 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx165, align 4
  %call168.2 = call i32 @regmap_bulk_read(ptr noundef %70, i32 noundef 185, ptr noundef %6, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.2)
  %tobool169.not.2 = icmp eq i32 %call168.2, 0
  br i1 %tobool169.not.2, label %for.cond160.2, label %for.cond160.1.do.body474_crit_edge

for.cond160.1.do.body474_crit_edge:               ; preds = %for.cond160.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

for.cond160.2:                                    ; preds = %for.cond160.1
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %5, align 1
  %conv176 = zext i8 %72 to i32
  %shl177 = shl nuw nsw i32 %conv176, 8
  %73 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %6, align 1
  %conv179 = zext i8 %74 to i32
  %or181 = or i32 %shl177, %conv179
  %75 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or181, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or181)
  %tobool186.not = icmp eq i32 %or181, 0
  br i1 %tobool186.not, label %for.cond160.2.if.end241_crit_edge, label %if.then187

for.cond160.2.if.end241_crit_edge:                ; preds = %for.cond160.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end241

if.then187:                                       ; preds = %for.cond160.2
  %76 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %buf, align 1
  %78 = and i8 %77, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool188.not = icmp eq i8 %78, 0
  %call215 = call i32 @intlog10(i32 noundef %or181) #7
  %conv216 = zext i32 %call215 to i64
  br i1 %tobool188.not, label %if.else214, label %if.then189

if.then189:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #9
  %sub193 = sub nsw i64 60639904, %conv216
  %mul194 = mul nsw i64 %sub193, 10000
  %shr.i.i621 = lshr i64 %mul194, 24
  %conv196 = trunc i64 %shr.i.i621 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_read_status.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_read_status, %if.then209)) #7
          to label %if.end241 [label %if.then209], !srcloc !147

if.then209:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %dev210 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %79 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_read_status.__UNIQUE_ID_ddebug295, ptr noundef %dev210, ptr noundef nonnull @.str.49, i32 noundef %conv196, i32 noundef %80) #7
  br label %if.end241

if.else214:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #9
  %add218 = sub nsw i64 84162567, %conv216
  %mul219 = mul nsw i64 %add218, 10000
  %shr.i.i622 = lshr i64 %mul219, 24
  %conv221 = trunc i64 %shr.i.i622 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_read_status.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_read_status, %if.then234)) #7
          to label %if.end241 [label %if.then234], !srcloc !147

if.then234:                                       ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #9
  %dev235 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %81 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_read_status.__UNIQUE_ID_ddebug296, ptr noundef %dev235, ptr noundef nonnull @.str.50, i32 noundef %conv221, i32 noundef %82) #7
  br label %if.end241

if.end241:                                        ; preds = %if.then234, %if.else214, %if.then209, %if.then189, %for.cond160.2.if.end241_crit_edge
  %stmp.1 = phi i32 [ %conv196, %if.then209 ], [ %conv221, %if.then234 ], [ 0, %for.cond160.2.if.end241_crit_edge ], [ %conv196, %if.then189 ], [ %conv221, %if.else214 ]
  %conv242 = sext i32 %stmp.1 to i64
  %stat244 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %83 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 8)
  store i64 %conv242, ptr %83, align 1
  %85 = ptrtoint ptr %stat244 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %stat244, align 1
  br label %if.end326

land.lhs.true253:                                 ; preds = %land.lhs.true155
  %86 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp255 = icmp eq i32 %87, 1
  br i1 %cmp255, label %if.then257, label %land.lhs.true253.if.else319_crit_edge

land.lhs.true253.if.else319_crit_edge:            ; preds = %land.lhs.true253
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else319

if.then257:                                       ; preds = %land.lhs.true253
  %arrayidx259 = getelementptr %struct.mn88473_dev, ptr %3, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx259, align 4
  %call261 = call i32 @regmap_bulk_read(ptr noundef %89, i32 noundef 161, ptr noundef nonnull %buf, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end264, label %if.then257.do.body474_crit_edge

if.then257.do.body474_crit_edge:                  ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

if.end264:                                        ; preds = %if.then257
  %90 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %buf, align 1
  %conv266 = zext i8 %91 to i32
  %shl267 = shl nuw nsw i32 %conv266, 8
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %5, align 1
  %conv269 = zext i8 %93 to i32
  %or271 = or i32 %shl267, %conv269
  %94 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %6, align 1
  %conv273 = zext i8 %95 to i32
  %shl274 = shl nuw nsw i32 %conv273, 8
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %7, align 1
  %conv276 = zext i8 %97 to i32
  %or278 = or i32 %shl274, %conv276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or271)
  %tobool279.not = icmp eq i32 %or271, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or278)
  %tobool281.not = icmp eq i32 %or278, 0
  %or.cond = select i1 %tobool279.not, i1 true, i1 %tobool281.not
  br i1 %or.cond, label %if.end264.if.end310_crit_edge, label %if.then282

if.end264.if.end310_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end310

if.then282:                                       ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #9
  %call283 = call i32 @intlog10(i32 noundef %or271) #7
  %conv284 = zext i32 %call283 to i64
  %add285 = add nuw nsw i64 %conv284, 15151336
  %call286 = call i32 @intlog10(i32 noundef %or278) #7
  %conv287 = zext i32 %call286 to i64
  %sub288 = sub nsw i64 %add285, %conv287
  %mul289 = mul nsw i64 %sub288, 10000
  %shr.i.i623 = lshr i64 %mul289, 24
  %conv291 = trunc i64 %shr.i.i623 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_read_status.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_read_status, %if.then304)) #7
          to label %if.end310 [label %if.then304], !srcloc !147

if.then304:                                       ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #9
  %dev305 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_read_status.__UNIQUE_ID_ddebug297, ptr noundef %dev305, ptr noundef nonnull @.str.51, i32 noundef %conv291, i32 noundef %or271, i32 noundef %or278) #7
  br label %if.end310

if.end310:                                        ; preds = %if.then304, %if.then282, %if.end264.if.end310_crit_edge
  %stmp.2 = phi i32 [ %conv291, %if.then304 ], [ 0, %if.end264.if.end310_crit_edge ], [ %conv291, %if.then282 ]
  %conv311 = sext i32 %stmp.2 to i64
  %stat313 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %98 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 %conv311, ptr %98, align 1
  %100 = ptrtoint ptr %stat313 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %stat313, align 1
  br label %if.end326

if.else319:                                       ; preds = %land.lhs.true253.if.else319_crit_edge, %if.end99.if.else319_crit_edge
  %stat321 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %101 = ptrtoint ptr %stat321 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %stat321, align 1
  br label %if.end326

if.end326:                                        ; preds = %if.else319, %if.end310, %if.end241, %if.end144
  %102 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %status, align 4
  %and327 = and i32 %103, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  br i1 %tobool328.not, label %if.end326.if.else397_crit_edge, label %land.lhs.true329

if.end326.if.else397_crit_edge:                   ; preds = %if.end326
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else397

land.lhs.true329:                                 ; preds = %if.end326
  %104 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %delivery_system, align 4
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %105, label %land.lhs.true329.if.else397_crit_edge [
    i32 3, label %land.lhs.true329.if.then336_crit_edge
    i32 1, label %land.lhs.true329.if.then336_crit_edge638
  ]

land.lhs.true329.if.then336_crit_edge638:         ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then336

land.lhs.true329.if.then336_crit_edge:            ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then336

land.lhs.true329.if.else397_crit_edge:            ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else397

if.then336:                                       ; preds = %land.lhs.true329.if.then336_crit_edge, %land.lhs.true329.if.then336_crit_edge638
  %regmap337 = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 1
  %107 = ptrtoint ptr %regmap337 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap337, align 4
  %call340 = call i32 @regmap_bulk_read(ptr noundef %108, i32 noundef 146, ptr noundef nonnull %buf, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call340)
  %tobool341.not = icmp eq i32 %call340, 0
  br i1 %tobool341.not, label %if.end343, label %if.then336.do.body474_crit_edge

if.then336.do.body474_crit_edge:                  ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

if.end343:                                        ; preds = %if.then336
  %109 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %buf, align 1
  %conv345 = zext i8 %110 to i32
  %shl346 = shl nuw nsw i32 %conv345, 16
  %111 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %5, align 1
  %conv348 = zext i8 %112 to i32
  %shl349 = shl nuw nsw i32 %conv348, 8
  %or350 = or i32 %shl349, %shl346
  %113 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %6, align 1
  %conv352 = zext i8 %114 to i32
  %or354 = or i32 %or350, %conv352
  %115 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %7, align 1
  %conv356 = zext i8 %116 to i32
  %117 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %8, align 1
  %conv359 = zext i8 %118 to i32
  %119 = shl nuw nsw i32 %conv356, 11
  %120 = shl nuw nsw i32 %conv359, 3
  %mul362 = or i32 %120, %119
  %mul363 = mul nuw nsw i32 %mul362, 204
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_read_status.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_read_status, %if.then376)) #7
          to label %do.end380 [label %if.then376], !srcloc !147

if.then376:                                       ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #9
  %dev377 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_read_status.__UNIQUE_ID_ddebug298, ptr noundef %dev377, ptr noundef nonnull @.str.52, i32 noundef %or354, i32 noundef %mul363) #7
  br label %do.end380

do.end380:                                        ; preds = %if.then376, %if.end343
  %stat381 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %121 = ptrtoint ptr %stat381 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 3, ptr %stat381, align 1
  %conv384 = zext i32 %or354 to i64
  %122 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_loadN_noabort(i32 %123, i32 8)
  %124 = load i64, ptr %122, align 1
  %add388 = add i64 %124, %conv384
  store i64 %add388, ptr %122, align 1
  %stat389 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %125 = ptrtoint ptr %stat389 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 3, ptr %stat389, align 1
  %conv392 = zext i32 %mul363 to i64
  %126 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 8)
  %128 = load i64, ptr %126, align 1
  %add396 = add i64 %128, %conv392
  store i64 %add396, ptr %126, align 1
  br label %if.end406

if.else397:                                       ; preds = %land.lhs.true329.if.else397_crit_edge, %if.end326.if.else397_crit_edge
  %stat399 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %129 = ptrtoint ptr %stat399 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %stat399, align 1
  %stat403 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %130 = ptrtoint ptr %stat403 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %stat403, align 1
  br label %if.end406

if.end406:                                        ; preds = %if.else397, %do.end380
  %131 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %status, align 4
  %and407 = and i32 %132, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and407)
  %tobool408.not = icmp eq i32 %and407, 0
  br i1 %tobool408.not, label %if.else464, label %if.then409

if.then409:                                       ; preds = %if.end406
  %regmap410 = getelementptr inbounds %struct.mn88473_dev, ptr %3, i32 0, i32 1
  %133 = ptrtoint ptr %regmap410 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regmap410, align 4
  %call413 = call i32 @regmap_bulk_read(ptr noundef %134, i32 noundef 221, ptr noundef nonnull %buf, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call413)
  %tobool414.not = icmp eq i32 %call413, 0
  br i1 %tobool414.not, label %if.end416, label %if.then409.do.body474_crit_edge

if.then409.do.body474_crit_edge:                  ; preds = %if.then409
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body474

if.end416:                                        ; preds = %if.then409
  %135 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %buf, align 1
  %conv418 = zext i8 %136 to i32
  %shl419 = shl nuw nsw i32 %conv418, 8
  %137 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %5, align 1
  %conv421 = zext i8 %138 to i32
  %or423 = or i32 %shl419, %conv421
  %139 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %6, align 1
  %conv425 = zext i8 %140 to i32
  %shl426 = shl nuw nsw i32 %conv425, 8
  %141 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %7, align 1
  %conv428 = zext i8 %142 to i32
  %or430 = or i32 %shl426, %conv428
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_read_status.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_read_status, %if.then443)) #7
          to label %do.end447 [label %if.then443], !srcloc !147

if.then443:                                       ; preds = %if.end416
  call void @__sanitizer_cov_trace_pc() #9
  %dev444 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_read_status.__UNIQUE_ID_ddebug299, ptr noundef %dev444, ptr noundef nonnull @.str.53, i32 noundef %or423, i32 noundef %or430) #7
  br label %do.end447

do.end447:                                        ; preds = %if.then443, %if.end416
  %stat448 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %143 = ptrtoint ptr %stat448 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 3, ptr %stat448, align 1
  %conv451 = zext i32 %or423 to i64
  %144 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 8)
  %146 = load i64, ptr %144, align 1
  %add455 = add i64 %146, %conv451
  store i64 %add455, ptr %144, align 1
  %stat456 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %147 = ptrtoint ptr %stat456 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 3, ptr %stat456, align 1
  %conv459 = zext i32 %or430 to i64
  %148 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_loadN_noabort(i32 %149, i32 8)
  %150 = load i64, ptr %148, align 1
  %add463 = add i64 %150, %conv459
  store i64 %add463, ptr %148, align 1
  br label %cleanup

if.else464:                                       ; preds = %if.end406
  call void @__sanitizer_cov_trace_pc() #9
  %stat466 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %151 = ptrtoint ptr %stat466 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %stat466, align 1
  %stat470 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %152 = ptrtoint ptr %stat470 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %stat470, align 1
  br label %cleanup

do.body474:                                       ; preds = %if.then409.do.body474_crit_edge, %if.then336.do.body474_crit_edge, %if.then257.do.body474_crit_edge, %for.cond160.1.do.body474_crit_edge, %for.cond160.do.body474_crit_edge, %for.cond160.preheader.do.body474_crit_edge, %if.then105.do.body474_crit_edge, %for.cond.do.body474_crit_edge, %for.cond.preheader.do.body474_crit_edge, %if.then51.do.body474_crit_edge, %sw.bb42.do.body474_crit_edge, %sw.bb16.do.body474_crit_edge, %sw.bb.do.body474_crit_edge, %if.end.do.body474_crit_edge, %entry.do.body474_crit_edge
  %ret.0 = phi i32 [ %call45, %sw.bb42.do.body474_crit_edge ], [ %call108, %if.then105.do.body474_crit_edge ], [ %call340, %if.then336.do.body474_crit_edge ], [ %call413, %if.then409.do.body474_crit_edge ], [ %call261, %if.then257.do.body474_crit_edge ], [ %call54, %if.then51.do.body474_crit_edge ], [ %call19, %sw.bb16.do.body474_crit_edge ], [ %call1, %sw.bb.do.body474_crit_edge ], [ -11, %entry.do.body474_crit_edge ], [ -22, %if.end.do.body474_crit_edge ], [ %call168, %for.cond160.preheader.do.body474_crit_edge ], [ %call168.1, %for.cond160.do.body474_crit_edge ], [ %call168.2, %for.cond160.1.do.body474_crit_edge ], [ %call71, %for.cond.preheader.do.body474_crit_edge ], [ %call71.1, %for.cond.do.body474_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mn88473_read_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mn88473_read_status, %if.then486)) #7
          to label %cleanup [label %if.then486], !srcloc !147

if.then486:                                       ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #9
  %dev487 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mn88473_read_status.__UNIQUE_ID_ddebug300, ptr noundef %dev487, ptr noundef nonnull @.str.23, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then486, %do.body474, %if.else464, %do.end447
  %retval.0 = phi i32 [ 0, %if.else464 ], [ 0, %do.end447 ], [ %ret.0, %if.then486 ], [ %ret.0, %do.body474 ]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
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
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !59, !61, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !85, !87, !89, !90, !91, !93, !95, !97, !99, !101, !102, !104, !106, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !134, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_mn88473__311_764_mn88473_driver_init6, !1, !"__initcall__kmod_mn88473__311_764_mn88473_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 764, i32 1}
!2 = !{ptr @__exitcall_mn88473_driver_exit, !1, !"__exitcall_mn88473_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author312, !4, !"__UNIQUE_ID_author312", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 766, i32 1}
!5 = !{ptr @__UNIQUE_ID_description313, !6, !"__UNIQUE_ID_description313", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 767, i32 1}
!7 = !{ptr @__UNIQUE_ID_file314, !8, !"__UNIQUE_ID_file314", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 768, i32 1}
!9 = !{ptr @__UNIQUE_ID_license315, !8, !"__UNIQUE_ID_license315", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware316, !11, !"__UNIQUE_ID_firmware316", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 769, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 756, i32 17}
!14 = !{ptr @mn88473_driver, !15, !"mn88473_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 754, i32 26}
!16 = !{ptr @mn88473_probe.regmap_config, !17, !"regmap_config", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 616, i32 36}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 621, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mn88473_probe.__UNIQUE_ID_ddebug307, !19, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 625, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mn88473_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @mn88473_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @mn88473_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 646, i32 19}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 663, i32 3}
!34 = !{ptr @mn88473_probe._entry.8, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mn88473_probe._entry_ptr.10, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mn88473_probe._key.11, !37, !"_key", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 666, i32 19}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 676, i32 3}
!41 = !{ptr @mn88473_probe._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mn88473_probe._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @mn88473_probe._key.16, !44, !"_key", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 679, i32 19}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 691, i32 2}
!48 = !{ptr @mn88473_probe.__UNIQUE_ID_ddebug308, !47, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 709, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @mn88473_probe._entry.19, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @mn88473_probe._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 725, i32 2}
!56 = !{ptr @mn88473_probe.__UNIQUE_ID_ddebug309, !55, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!57 = !{ptr @mn88473_ops, !58, !"mn88473_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 572, i32 38}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 467, i32 21}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 469, i32 2}
!63 = !{ptr @mn88473_init.__UNIQUE_ID_ddebug301, !62, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 482, i32 3}
!66 = !{ptr @mn88473_init._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mn88473_init._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 486, i32 2}
!70 = !{ptr @mn88473_init._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mn88473_init._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 497, i32 4}
!74 = !{ptr @mn88473_init._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mn88473_init._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 511, i32 3}
!78 = !{ptr @mn88473_init._entry.33, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mn88473_init._entry_ptr.35, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @mn88473_init.__UNIQUE_ID_ddebug304, !81, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 548, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 558, i32 2}
!84 = !{ptr @mn88473_sleep.__UNIQUE_ID_ddebug305, !83, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!85 = !{ptr @mn88473_sleep.__UNIQUE_ID_ddebug306, !86, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 568, i32 2}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 28, i32 2}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mn88473_set_frontend.__UNIQUE_ID_ddebug290, !88, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 64, i32 19}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 67, i32 19}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 70, i32 19}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 78, i32 18}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 96, i32 3}
!101 = !{ptr @mn88473_set_frontend.__UNIQUE_ID_ddebug291, !100, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 171, i32 5}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 198, i32 48}
!106 = !{ptr @mn88473_set_frontend.__UNIQUE_ID_ddebug292, !107, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 233, i32 2}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 322, i32 3}
!110 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @mn88473_read_status.__UNIQUE_ID_ddebug293, !109, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 343, i32 4}
!114 = !{ptr @mn88473_read_status.__UNIQUE_ID_ddebug294, !113, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 368, i32 5}
!117 = !{ptr @mn88473_read_status.__UNIQUE_ID_ddebug295, !116, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 375, i32 5}
!120 = !{ptr @mn88473_read_status.__UNIQUE_ID_ddebug296, !119, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 398, i32 4}
!123 = !{ptr @mn88473_read_status.__UNIQUE_ID_ddebug297, !122, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 421, i32 3}
!126 = !{ptr @mn88473_read_status.__UNIQUE_ID_ddebug298, !125, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 441, i32 3}
!129 = !{ptr @mn88473_read_status.__UNIQUE_ID_ddebug299, !128, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!130 = !{ptr @mn88473_read_status.__UNIQUE_ID_ddebug300, !131, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!131 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 455, i32 2}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 733, i32 2}
!134 = !{ptr @mn88473_remove.__UNIQUE_ID_ddebug310, !133, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!135 = !{ptr @mn88473_id_table, !136, !"mn88473_id_table", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/mn88473.c", i32 748, i32 35}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{i64 2148281687, i64 2148281692, i64 2148281705, i64 2148281749, i64 2148281783, i64 2148281804}
!148 = !{i8 0, i8 2}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{i64 2148306874, i64 2148307154, i64 2148307488, i64 2148307822}
