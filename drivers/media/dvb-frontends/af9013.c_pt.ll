; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/af9013.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/af9013.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.af9013_reg_mask_val = type { i16, i8, i8 }
%struct.af9013_coeff = type { i32, i32, [24 x i8] }
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
%struct.af9013_state = type { ptr, ptr, ptr, %struct.dvb_frontend, i32, i8, i32, i8, i8, i8, [4 x i8], [4 x i8], i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.af9013_platform_data = type { i32, i8, i32, i8, i8, i8, [4 x i8], [4 x i8], ptr, ptr, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.firmware = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__initcall__kmod_af9013__362_1574_af9013_driver_init6 = internal global ptr @af9013_driver_init, section ".initcall6.init", align 4
@af9013_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @af9013_probe, ptr @af9013_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @af9013_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_af9013_driver_exit = internal global ptr @af9013_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author363 = internal constant [45 x i8] c"af9013.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description364 = internal constant [59 x i8] c"af9013.description=Afatech AF9013 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file365 = internal constant [47 x i8] c"af9013.file=drivers/media/dvb-frontends/af9013\00", section ".modinfo", align 1
@__UNIQUE_ID_license366 = internal constant [19 x i8] c"af9013.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware367 = internal constant [33 x i8] c"af9013.firmware=dvb-fe-af9013.fw\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"af9013\00", [25 x i8] zeroinitializer }, align 32
@af9013_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"af9013\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@af9013_probe.regmap_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @af9013_regmap_write, ptr null, ptr null, ptr null, ptr null, ptr @af9013_regmap_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@af9013_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 24, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@af9013_probe.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"af9013_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/af9013.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@af9013_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"af9013:1471:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@af9013_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Afatech AF9013\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 250000, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @af9013_init, ptr @af9013_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @af9013_set_frontend, ptr @af9013_get_tune_settings, ptr @af9013_get_frontend, ptr @af9013_read_status, ptr @af9013_read_ber, ptr @af9013_read_signal_strength, ptr @af9013_read_snr, ptr @af9013_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@af9013_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1527, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Afatech AF9013 successfully attached\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@af9013_probe._entry_ptr = internal global ptr @af9013_probe._entry, section ".printk_index", align 4
@af9013_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1530, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"firmware version: %d.%d.%d.%d\0A\00", [33 x i8] zeroinitializer }, align 32
@af9013_probe._entry_ptr.10 = internal global ptr @af9013_probe._entry.8, section ".printk_index", align 4
@af9013_probe.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 1, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed %d\0A\00", [21 x i8] zeroinitializer }, align 32
@af9013_regmap_write.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.11, i8 1, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9013_regmap_write\00", [44 x i8] zeroinitializer }, align 32
@af9013_wregs.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.11, i8 1, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"af9013_wregs\00", [19 x i8] zeroinitializer }, align 32
@af9013_regmap_read.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.11, i8 1, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9013_regmap_read\00", [45 x i8] zeroinitializer }, align 32
@af9013_rregs.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.11, i8 1, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"af9013_rregs\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@af9013_select.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.3, i8 1, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"af9013_select\00", [18 x i8] zeroinitializer }, align 32
@af9013_select.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.11, i8 1, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_deselect.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.3, i8 1, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9013_deselect\00", [16 x i8] zeroinitializer }, align 32
@af9013_deselect.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.11, i8 1, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb-fe-af9013.fw\00", [47 x i8] zeroinitializer }, align 32
@af9013_download_firmware.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.3, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"af9013_download_firmware\00", [39 x i8] zeroinitializer }, align 32
@af9013_download_firmware.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware status %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@af9013_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 1048, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"found a '%s' in cold state, will try to load a firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@af9013_download_firmware._entry_ptr = internal global ptr @af9013_download_firmware._entry, section ".printk_index", align 4
@af9013_download_firmware._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.2, i32 1054, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"firmware file '%s' not found %d\0A\00", [63 x i8] zeroinitializer }, align 32
@af9013_download_firmware._entry_ptr.24 = internal global ptr @af9013_download_firmware._entry.22, section ".printk_index", align 4
@af9013_download_firmware._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.2, i32 1059, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"downloading firmware from file '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@af9013_download_firmware._entry_ptr.27 = internal global ptr @af9013_download_firmware._entry.25, section ".printk_index", align 4
@af9013_download_firmware._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.19, ptr @.str.2, i32 1083, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware download failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@af9013_download_firmware._entry_ptr.31 = internal global ptr @af9013_download_firmware._entry.28, section ".printk_index", align 4
@af9013_download_firmware.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_download_firmware._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.2, i32 1106, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware did not run\0A\00", [42 x i8] zeroinitializer }, align 32
@af9013_download_firmware._entry_ptr.34 = internal global ptr @af9013_download_firmware._entry.32, section ".printk_index", align 4
@af9013_download_firmware._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.2, i32 1110, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"firmware boot timeout\0A\00", [41 x i8] zeroinitializer }, align 32
@af9013_download_firmware._entry_ptr.37 = internal global ptr @af9013_download_firmware._entry.35, section ".printk_index", align 4
@af9013_download_firmware._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.19, ptr @.str.2, i32 1115, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"found a '%s' in warm state\0A\00", [36 x i8] zeroinitializer }, align 32
@af9013_download_firmware._entry_ptr.40 = internal global ptr @af9013_download_firmware._entry.38, section ".printk_index", align 4
@af9013_download_firmware.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.11, i8 1, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_set_gpio.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.42, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9013_set_gpio\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpio %u, gpioval %02x\0A\00", [41 x i8] zeroinitializer }, align 32
@af9013_set_gpio.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.11, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_init.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.3, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"af9013_init\00", [20 x i8] zeroinitializer }, align 32
@af9013_init.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"load demod core settings\0A\00", [38 x i8] zeroinitializer }, align 32
@demod_init_tab = internal constant { [77 x %struct.af9013_reg_mask_val], [76 x i8] } { [77 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -10438, i8 -1, i8 -95 }, %struct.af9013_reg_mask_val { i16 -10437, i8 -1, i8 31 }, %struct.af9013_reg_mask_val { i16 -10436, i8 -16, i8 -96 }, %struct.af9013_reg_mask_val { i16 -10446, i8 8, i8 0 }, %struct.af9013_reg_mask_val { i16 -10447, i8 48, i8 48 }, %struct.af9013_reg_mask_val { i16 -10435, i8 -128, i8 -128 }, %struct.af9013_reg_mask_val { i16 -10432, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -10432, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -10432, i8 4, i8 0 }, %struct.af9013_reg_mask_val { i16 -10432, i8 8, i8 8 }, %struct.af9013_reg_mask_val { i16 -11327, i8 16, i8 16 }, %struct.af9013_reg_mask_val { i16 -28380, i8 -1, i8 88 }, %struct.af9013_reg_mask_val { i16 -28379, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -11358, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -11357, i8 -1, i8 4 }, %struct.af9013_reg_mask_val { i16 -11515, i8 -1, i8 50 }, %struct.af9013_reg_mask_val { i16 -11514, i8 -1, i8 16 }, %struct.af9013_reg_mask_val { i16 -11516, i8 -1, i8 4 }, %struct.af9013_reg_mask_val { i16 -28398, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -28387, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -28390, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -28389, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25650, i8 15, i8 2 }, %struct.af9013_reg_mask_val { i16 -28394, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -28382, i8 -1, i8 -48 }, %struct.af9013_reg_mask_val { i16 -11552, i8 -1, i8 -48 }, %struct.af9013_reg_mask_val { i16 -11543, i8 15, i8 13 }, %struct.af9013_reg_mask_val { i16 -11380, i8 -1, i8 -4 }, %struct.af9013_reg_mask_val { i16 -11379, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -11378, i8 -1, i8 126 }, %struct.af9013_reg_mask_val { i16 -11377, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -11376, i8 -1, i8 47 }, %struct.af9013_reg_mask_val { i16 -11963, i8 16, i8 16 }, %struct.af9013_reg_mask_val { i16 -11863, i8 16, i8 16 }, %struct.af9013_reg_mask_val { i16 -11944, i8 -32, i8 32 }, %struct.af9013_reg_mask_val { i16 -11943, i8 63, i8 6 }, %struct.af9013_reg_mask_val { i16 -11929, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -11928, i8 15, i8 7 }, %struct.af9013_reg_mask_val { i16 -11837, i8 -32, i8 0 }, %struct.af9013_reg_mask_val { i16 -11836, i8 63, i8 0 }, %struct.af9013_reg_mask_val { i16 -11835, i8 127, i8 16 }, %struct.af9013_reg_mask_val { i16 -11834, i8 7, i8 2 }, %struct.af9013_reg_mask_val { i16 -12160, i8 124, i8 12 }, %struct.af9013_reg_mask_val { i16 -12159, i8 -16, i8 -112 }, %struct.af9013_reg_mask_val { i16 -12136, i8 -16, i8 -16 }, %struct.af9013_reg_mask_val { i16 -12136, i8 15, i8 3 }, %struct.af9013_reg_mask_val { i16 -9280, i8 16, i8 16 }, %struct.af9013_reg_mask_val { i16 -9273, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -9272, i8 -16, i8 0 }, %struct.af9013_reg_mask_val { i16 -9271, i8 31, i8 1 }, %struct.af9013_reg_mask_val { i16 -11648, i8 -1, i8 -32 }, %struct.af9013_reg_mask_val { i16 -11647, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -11646, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -11645, i8 -1, i8 -61 }, %struct.af9013_reg_mask_val { i16 -11644, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -11643, i8 15, i8 1 }, %struct.af9013_reg_mask_val { i16 -12048, i8 127, i8 26 }, %struct.af9013_reg_mask_val { i16 -12047, i8 16, i8 16 }, %struct.af9013_reg_mask_val { i16 -12046, i8 -1, i8 12 }, %struct.af9013_reg_mask_val { i16 -12031, i8 -32, i8 -64 }, %struct.af9013_reg_mask_val { i16 -12029, i8 15, i8 8 }, %struct.af9013_reg_mask_val { i16 -12040, i8 127, i8 32 }, %struct.af9013_reg_mask_val { i16 -12015, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12015, i8 64, i8 0 }, %struct.af9013_reg_mask_val { i16 -28405, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -28395, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -28404, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -28403, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -28402, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25610, i8 -1, i8 6 }, %struct.af9013_reg_mask_val { i16 -25608, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25609, i8 -1, i8 5 }, %struct.af9013_reg_mask_val { i16 -25607, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25604, i8 -1, i8 19 }, %struct.af9013_reg_mask_val { i16 -25645, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }], [76 x i8] zeroinitializer }, align 32
@af9013_init.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 0, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"load tuner specific settings\0A\00", [34 x i8] zeroinitializer }, align 32
@tuner_init_tab_mxl5003d = internal constant { [65 x %struct.af9013_reg_mask_val], [92 x i8] } { [65 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 9 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25604, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25610, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 51 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 64 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 108 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 61 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 69 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 7 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 82 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 61 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -94 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -96 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 86 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 86 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }], [92 x i8] zeroinitializer }, align 32
@tuner_init_tab_mxl5005 = internal constant { [73 x %struct.af9013_reg_mask_val], [92 x i8] } { [73 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 7 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 40 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 36 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 64 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 64 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 115 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 -6 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 35 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 85 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 -6 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -25645, i8 -1, i8 -107 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 112 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -5 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 112 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 -5 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25648, i8 -1, i8 -109 }, %struct.af9013_reg_mask_val { i16 -25628, i8 -1, i8 -2 }, %struct.af9013_reg_mask_val { i16 -25667, i8 -1, i8 99 }, %struct.af9013_reg_mask_val { i16 -25630, i8 -1, i8 -2 }, %struct.af9013_reg_mask_val { i16 -25618, i8 1, i8 1 }], [92 x i8] zeroinitializer }, align 32
@tuner_init_tab_env77h11d5 = internal constant { [61 x %struct.af9013_reg_mask_val], [44 x i8] } { [61 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 3 }, %struct.af9013_reg_mask_val { i16 -25666, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 68 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 -21 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 -12 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -7 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 -21 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 82 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 60 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -9 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 11 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 77 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }], [44 x i8] zeroinitializer }, align 32
@tuner_init_tab_mt2060 = internal constant { [72 x %struct.af9013_reg_mask_val], [64 x i8] } { [72 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 7 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 117 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 36 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 48 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 50 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 54 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 53 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 7 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 -112 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 54 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 3 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -55 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 121 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 16 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 69 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 -104 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 -49 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25648, i8 -1, i8 -52 }, %struct.af9013_reg_mask_val { i16 -25628, i8 -1, i8 -96 }, %struct.af9013_reg_mask_val { i16 -25667, i8 -1, i8 -114 }, %struct.af9013_reg_mask_val { i16 -25630, i8 -1, i8 77 }, %struct.af9013_reg_mask_val { i16 -25618, i8 1, i8 1 }], [64 x i8] zeroinitializer }, align 32
@tuner_init_tab_mc44s803 = internal constant { [77 x %struct.af9013_reg_mask_val], [76 x i8] } { [77 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 6 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25610, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25608, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25607, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25604, i8 -1, i8 31 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 36 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 36 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 123 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 124 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 -2 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 124 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -4 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -86 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 107 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -120 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 107 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 124 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25648, i8 -1, i8 -98 }, %struct.af9013_reg_mask_val { i16 -25628, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -25667, i8 -1, i8 -98 }, %struct.af9013_reg_mask_val { i16 -25630, i8 -1, i8 37 }, %struct.af9013_reg_mask_val { i16 -25618, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -10437, i8 8, i8 0 }], [76 x i8] zeroinitializer }, align 32
@tuner_init_tab_qt1010 = internal constant { [72 x %struct.af9013_reg_mask_val], [64 x i8] } { [72 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 9 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 40 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 32 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 -103 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -59 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -1 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 88 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -119 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 88 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 -119 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25648, i8 -1, i8 -51 }, %struct.af9013_reg_mask_val { i16 -25628, i8 -1, i8 -69 }, %struct.af9013_reg_mask_val { i16 -25667, i8 -1, i8 -109 }, %struct.af9013_reg_mask_val { i16 -25630, i8 -1, i8 -128 }, %struct.af9013_reg_mask_val { i16 -25618, i8 1, i8 1 }], [64 x i8] zeroinitializer }, align 32
@tuner_init_tab_mt2060_2 = internal constant { [62 x %struct.af9013_reg_mask_val], [40 x i8] } { [62 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 6 }, %struct.af9013_reg_mask_val { i16 -25666, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 50 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 54 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 53 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25657, i8 -1, i8 7 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 -112 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 15 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 54 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 3 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -55 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 121 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 16 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 69 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 -104 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 -49 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 3 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 -106 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 -128, i8 0 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }], [40 x i8] zeroinitializer }, align 32
@tuner_init_tab_tda18271 = internal constant { [72 x %struct.af9013_reg_mask_val], [64 x i8] } { [72 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 4 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 24 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 44 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 68 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 -10 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -7 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 -86 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -16 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 60 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -9 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 11 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 77 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }, %struct.af9013_reg_mask_val { i16 -25648, i8 -1, i8 -88 }, %struct.af9013_reg_mask_val { i16 -25628, i8 -1, i8 127 }, %struct.af9013_reg_mask_val { i16 -25667, i8 -1, i8 -88 }, %struct.af9013_reg_mask_val { i16 -25630, i8 -1, i8 32 }, %struct.af9013_reg_mask_val { i16 -25618, i8 1, i8 1 }], [64 x i8] zeroinitializer }, align 32
@tuner_init_tab_unknown = internal constant { [67 x %struct.af9013_reg_mask_val], [84 x i8] } { [67 x %struct.af9013_reg_mask_val] [%struct.af9013_reg_mask_val { i16 -25643, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25642, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12288, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12288, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 2, i8 2 }, %struct.af9013_reg_mask_val { i16 -12287, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12287, i8 32, i8 0 }, %struct.af9013_reg_mask_val { i16 -12286, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12285, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12284, i8 31, i8 25 }, %struct.af9013_reg_mask_val { i16 -12283, i8 31, i8 26 }, %struct.af9013_reg_mask_val { i16 -12274, i8 31, i8 16 }, %struct.af9013_reg_mask_val { i16 -12273, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12273, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12272, i8 7, i8 4 }, %struct.af9013_reg_mask_val { i16 -12272, i8 56, i8 40 }, %struct.af9013_reg_mask_val { i16 -12266, i8 -16, i8 48 }, %struct.af9013_reg_mask_val { i16 -12257, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -12256, i8 63, i8 10 }, %struct.af9013_reg_mask_val { i16 -25638, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25629, i8 -1, i8 1 }, %struct.af9013_reg_mask_val { i16 -11872, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25666, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25652, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -25671, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25651, i8 -1, i8 24 }, %struct.af9013_reg_mask_val { i16 -25601, i8 -1, i8 44 }, %struct.af9013_reg_mask_val { i16 -12267, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12266, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12220, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -12219, i8 1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12280, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -12279, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12282, i8 -1, i8 68 }, %struct.af9013_reg_mask_val { i16 -12281, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12276, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -12275, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12278, i8 -1, i8 -10 }, %struct.af9013_reg_mask_val { i16 -12277, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -25670, i8 -1, i8 -7 }, %struct.af9013_reg_mask_val { i16 -25656, i8 -1, i8 -86 }, %struct.af9013_reg_mask_val { i16 -25661, i8 -1, i8 -33 }, %struct.af9013_reg_mask_val { i16 -25660, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25659, i8 -1, i8 0 }, %struct.af9013_reg_mask_val { i16 -25658, i8 -1, i8 2 }, %struct.af9013_reg_mask_val { i16 -25655, i8 -1, i8 -16 }, %struct.af9013_reg_mask_val { i16 -12271, i8 -1, i8 60 }, %struct.af9013_reg_mask_val { i16 -12270, i8 3, i8 1 }, %struct.af9013_reg_mask_val { i16 -12269, i8 -1, i8 -9 }, %struct.af9013_reg_mask_val { i16 -12268, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12224, i8 -1, i8 11 }, %struct.af9013_reg_mask_val { i16 -12223, i8 3, i8 2 }, %struct.af9013_reg_mask_val { i16 -12222, i8 -1, i8 77 }, %struct.af9013_reg_mask_val { i16 -12221, i8 3, i8 0 }, %struct.af9013_reg_mask_val { i16 -12219, i8 2, i8 0 }, %struct.af9013_reg_mask_val { i16 -25649, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12219, i8 4, i8 4 }, %struct.af9013_reg_mask_val { i16 -12209, i8 -1, i8 -102 }, %struct.af9013_reg_mask_val { i16 -12208, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12207, i8 -1, i8 90 }, %struct.af9013_reg_mask_val { i16 -12206, i8 1, i8 1 }, %struct.af9013_reg_mask_val { i16 -12205, i8 -1, i8 80 }, %struct.af9013_reg_mask_val { i16 -12204, i8 -1, i8 70 }, %struct.af9013_reg_mask_val { i16 -25641, i8 -1, i8 10 }, %struct.af9013_reg_mask_val { i16 -25640, i8 -1, i8 20 }, %struct.af9013_reg_mask_val { i16 -25639, i8 -1, i8 8 }], [84 x i8] zeroinitializer }, align 32
@af9013_init.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.2, ptr @.str.11, i8 0, i8 -13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_sleep.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.3, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"af9013_sleep\00", [19 x i8] zeroinitializer }, align 32
@af9013_sleep.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.11, i8 0, i8 -2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_set_frontend.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9013_set_frontend\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"frequency %u, bandwidth_hz %u\0A\00", [33 x i8] zeroinitializer }, align 32
@coeff_lut = internal constant { [12 x %struct.af9013_coeff], [96 x i8] } { [12 x %struct.af9013_coeff] [%struct.af9013_coeff { i32 28800000, i32 8000000, [24 x i8] c"\02\8A(\A3\05\14Q\11\00\A2\8F=\00\A2\8A)\00\A2\85\14\01E\14\14" }, %struct.af9013_coeff { i32 28800000, i32 7000000, [24 x i8] c"\028\E3\8E\04q\C7\07\00\8E=U\00\8E8\E4\00\8E4r\01\1Cq2" }, %struct.af9013_coeff { i32 28800000, i32 6000000, [24 x i8] c"\01\E7\9Ez\03\CF<=\00y\EBn\00y\E7\9E\00y\E3\CF\00\F3\CF\0F" }, %struct.af9013_coeff { i32 20480000, i32 8000000, [24 x i8] c"\03\92I&\07$\92\13\00\E4\99n\00\E4\92I\00\E4\8B%\01\C9$%" }, %struct.af9013_coeff { i32 20480000, i32 7000000, [24 x i8] c"\03 \00\01\06@\00\00\00\C8\06@\00\C8\00\00\00\C7\F9\C0\01\90\00\00" }, %struct.af9013_coeff { i32 20480000, i32 6000000, [24 x i8] c"\02\AD\B6\DC\05[m.\00\ABs\13\00\ABm\B7\00\ABh\\\01V\DB\1C" }, %struct.af9013_coeff { i32 28000000, i32 8000000, [24 x i8] c"\02\9C\BC\15\059x\0A\00\A74?\00\A7/\05\00\A7)\CC\01N^\03" }, %struct.af9013_coeff { i32 28000000, i32 7000000, [24 x i8] c"\02I$\92\04\92I\09\00\92M\B7\00\92I%\00\92D\92\01$\92\12" }, %struct.af9013_coeff { i32 28000000, i32 6000000, [24 x i8] c"\01\F5\8D\10\03\EB\1A\08\00}g/\00}cD\00}_Y\00\FA\C6\22" }, %struct.af9013_coeff { i32 25000000, i32 8000000, [24 x i8] c"\02\EC\FB\9D\05\D9\F7\0E\00\BBD\C1\00\BB>\E7\00\BB9\0D\01v}4" }, %struct.af9013_coeff { i32 25000000, i32 7000000, [24 x i8] c"\02\8F\\)\05\1E\B8\14\00\A3\DC)\00\A3\D7\0A\00\A3\D1\EC\01G\AE\05" }, %struct.af9013_coeff { i32 25000000, i32 6000000, [24 x i8] c"\021\BC\B5\04cy\1B\00\8Cs\91\00\8Co-\00\8Cj\CA\01\18\DE\17" }], [96 x i8] zeroinitializer }, align 32
@af9013_set_frontend.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.49, i8 0, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"if_frequency %u\0A\00", [47 x i8] zeroinitializer }, align 32
@af9013_set_frontend.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.50, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid transmission_mode\0A\00", [37 x i8] zeroinitializer }, align 32
@af9013_set_frontend.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.51, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid guard_interval\0A\00", [40 x i8] zeroinitializer }, align 32
@af9013_set_frontend.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.52, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid hierarchy\0A\00", [45 x i8] zeroinitializer }, align 32
@af9013_set_frontend.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.53, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid modulation\0A\00", [44 x i8] zeroinitializer }, align 32
@af9013_set_frontend.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.54, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid code_rate_HP\0A\00", [42 x i8] zeroinitializer }, align 32
@af9013_set_frontend.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.55, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid code_rate_LP\0A\00", [42 x i8] zeroinitializer }, align 32
@af9013_set_frontend.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.56, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid bandwidth_hz\0A\00", [42 x i8] zeroinitializer }, align 32
@af9013_set_frontend.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.57, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"auto params\0A\00", [19 x i8] zeroinitializer }, align 32
@af9013_set_frontend.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.58, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"manual params\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@af9013_set_frontend.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.11, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_get_frontend.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.3, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9013_get_frontend\00", [44 x i8] zeroinitializer }, align 32
@af9013_get_frontend.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.11, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_read_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.3, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9013_read_status\00", [45 x i8] zeroinitializer }, align 32
@af9013_read_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.61, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fe_status %02x\0A\00", [16 x i8] zeroinitializer }, align 32
@af9013_read_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.62, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"rf_agc_50 %u, rf_agc_80 %u, if_agc_50 %u, if_agc_80 %u\0A\00", [40 x i8] zeroinitializer }, align 32
@af9013_read_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.63, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"strength %d, agc_gain %d, agc_gain_50dbm %d, agc_gain_80dbm %d\0A\00", [32 x i8] zeroinitializer }, align 32
@af9013_read_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.64, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cnr not ready\0A\00", [17 x i8] zeroinitializer }, align 32
@af9013_read_status.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.65, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid modulation %u\0A\00", [41 x i8] zeroinitializer }, align 32
@af9013_read_status.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.66, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cnr %u\0A\00", [24 x i8] zeroinitializer }, align 32
@af9013_read_status.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.67, i8 0, i8 -74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ber not ready\0A\00", [17 x i8] zeroinitializer }, align 32
@af9013_read_status.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.68, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"post_bit_error %u, post_bit_count %u\0A\00", [58 x i8] zeroinitializer }, align 32
@af9013_read_status.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.69, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"block_error %u, block_count %u\0A\00", [32 x i8] zeroinitializer }, align 32
@af9013_read_status.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.2, ptr @.str.11, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_get_dvb_frontend.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.3, i8 1, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"af9013_get_dvb_frontend\00", [40 x i8] zeroinitializer }, align 32
@af9013_get_i2c_adapter.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.3, i8 1, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9013_get_i2c_adapter\00", [41 x i8] zeroinitializer }, align 32
@af9013_pid_filter.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 1, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"af9013_pid_filter\00", [46 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"index %d, pid %04x, onoff %d\0A\00", [34 x i8] zeroinitializer }, align 32
@af9013_pid_filter.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.11, i8 1, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_pid_filter_ctrl.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9013_pid_filter_ctrl\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"onoff %d\0A\00", [22 x i8] zeroinitializer }, align 32
@af9013_pid_filter_ctrl.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.11, i8 1, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9013_remove.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.2, ptr @.str.3, i8 1, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"af9013_remove\00", [18 x i8] zeroinitializer }, align 32
@switch.table.af9013_set_gpio = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 55093, i32 55093, i32 55094, i32 55094], [16 x i8] zeroinitializer }, align 32
@switch.table.af9013_get_frontend = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.af9013_get_frontend.77 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@switch.table.af9013_get_frontend.78 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.81 = internal global [6 x i64] [i64 4, i64 32, i64 20480000, i64 25000000, i64 28000000, i64 28800000]
@__sancov_gen_cov_switch_values.82 = internal global [14 x i64] [i64 12, i64 8, i64 3, i64 13, i64 30, i64 129, i64 130, i64 133, i64 134, i64 147, i64 156, i64 162, i64 177, i64 179]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 20480000, i64 25000000, i64 28000000, i64 28800000]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.90 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.93 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.98 = private unnamed_addr constant [14 x i8] c"af9013_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1564, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1566, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"af9013_id_table\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1558, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"regmap_bus\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1441, i32 33 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1445, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1457, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1470, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant [11 x i8] c"af9013_ops\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1125, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1527, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1528, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1539, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1396, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1317, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1429, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1358, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1242, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1263, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1033, i32 21 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1035, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1042, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1047, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1053, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1058, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1082, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1106, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1110, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1114, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 50, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 838, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 892, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [15 x i8] c"demod_init_tab\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 83, i32 41 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 903, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [24 x i8] c"tuner_init_tab_mxl5003d\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 383, i32 41 }
@___asan_gen_.245 = private unnamed_addr constant [23 x i8] c"tuner_init_tab_mxl5005\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 457, i32 41 }
@___asan_gen_.248 = private unnamed_addr constant [26 x i8] c"tuner_init_tab_env77h11d5\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 167, i32 41 }
@___asan_gen_.251 = private unnamed_addr constant [22 x i8] c"tuner_init_tab_mt2060\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 235, i32 41 }
@___asan_gen_.254 = private unnamed_addr constant [24 x i8] c"tuner_init_tab_mc44s803\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 617, i32 41 }
@___asan_gen_.257 = private unnamed_addr constant [22 x i8] c"tuner_init_tab_qt1010\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 538, i32 41 }
@___asan_gen_.260 = private unnamed_addr constant [24 x i8] c"tuner_init_tab_mt2060_2\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 314, i32 41 }
@___asan_gen_.263 = private unnamed_addr constant [24 x i8] c"tuner_init_tab_tda18271\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 776, i32 41 }
@___asan_gen_.266 = private unnamed_addr constant [23 x i8] c"tuner_init_tab_unknown\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 701, i32 41 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 984, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 115, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [10 x i8] c"coeff_lut\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/af9013_priv.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 37, i32 34 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 158, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 231, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 251, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 271, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 288, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 314, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 339, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 353, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 368, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 379, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 405, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 524, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 555, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 590, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 620, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 649, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 700, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 706, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 731, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 759, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 761, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1217, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1226, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1189, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1169, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.363 = private constant [40 x i8] c"../drivers/media/dvb-frontends/af9013.c\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.363, i32 1547, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [29 x i8] c"switch.table.af9013_set_gpio\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [33 x i8] c"switch.table.af9013_get_frontend\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [36 x i8] c"switch.table.af9013_get_frontend.77\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [36 x i8] c"switch.table.af9013_get_frontend.78\00", align 1
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author363, ptr @__UNIQUE_ID_description364, ptr @__UNIQUE_ID_file365, ptr @__UNIQUE_ID_firmware367, ptr @__UNIQUE_ID_license366, ptr @__exitcall_af9013_driver_exit, ptr @__initcall__kmod_af9013__362_1574_af9013_driver_init6, ptr @af9013_download_firmware._entry, ptr @af9013_download_firmware._entry.22, ptr @af9013_download_firmware._entry.25, ptr @af9013_download_firmware._entry.28, ptr @af9013_download_firmware._entry.32, ptr @af9013_download_firmware._entry.35, ptr @af9013_download_firmware._entry.38, ptr @af9013_download_firmware._entry_ptr, ptr @af9013_download_firmware._entry_ptr.24, ptr @af9013_download_firmware._entry_ptr.27, ptr @af9013_download_firmware._entry_ptr.31, ptr @af9013_download_firmware._entry_ptr.34, ptr @af9013_download_firmware._entry_ptr.37, ptr @af9013_download_firmware._entry_ptr.40, ptr @af9013_driver_exit, ptr @af9013_probe._entry, ptr @af9013_probe._entry.8, ptr @af9013_probe._entry_ptr, ptr @af9013_probe._entry_ptr.10, ptr @af9013_driver, ptr @.str, ptr @af9013_id_table, ptr @af9013_probe.regmap_bus, ptr @af9013_probe.regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @af9013_probe._key, ptr @.str.4, ptr @af9013_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @demod_init_tab, ptr @.str.45, ptr @tuner_init_tab_mxl5003d, ptr @tuner_init_tab_mxl5005, ptr @tuner_init_tab_env77h11d5, ptr @tuner_init_tab_mt2060, ptr @tuner_init_tab_mc44s803, ptr @tuner_init_tab_qt1010, ptr @tuner_init_tab_mt2060_2, ptr @tuner_init_tab_tda18271, ptr @tuner_init_tab_unknown, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @coeff_lut, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @switch.table.af9013_set_gpio, ptr @switch.table.af9013_get_frontend, ptr @switch.table.af9013_get_frontend.77, ptr @switch.table.af9013_get_frontend.78], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_probe.regmap_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_download_firmware._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_download_firmware._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_download_firmware._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_download_firmware._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_download_firmware._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9013_download_firmware._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @demod_init_tab to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tab_mxl5003d to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tab_mxl5005 to i32), i32 292, i32 384, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tab_env77h11d5 to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tab_mt2060 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tab_mc44s803 to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tab_qt1010 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tab_mt2060_2 to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tab_tda18271 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tab_unknown to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coeff_lut to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.af9013_set_gpio to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.af9013_get_frontend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.af9013_get_frontend.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.af9013_get_frontend.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @af9013_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @af9013_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @af9013_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %firmware_version = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware_version) #9
  %2 = getelementptr inbounds [4 x i8], ptr %firmware_version, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %firmware_version, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %firmware_version, i32 0, i32 3
  %5 = ptrtoint ptr %firmware_version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %firmware_version, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1128) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body88_crit_edge, label %do.body

entry.do.body88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body88

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_probe.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_probe, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !255

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_probe.__UNIQUE_ID_ddebug359, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %clk9 = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %clk9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %clk9, align 4
  %tuner = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tuner, align 4
  %tuner10 = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %tuner10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tuner10, align 8
  %if_frequency = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %if_frequency, align 4
  %if_frequency11 = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %if_frequency11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %if_frequency11, align 4
  %ts_mode = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ts_mode, align 4
  %ts_mode12 = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %ts_mode12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ts_mode12, align 8
  %ts_output_pin = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ts_output_pin to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ts_output_pin, align 1
  %ts_output_pin13 = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %ts_output_pin13 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ts_output_pin13, align 1
  %spec_inv = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %spec_inv to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %spec_inv, align 2, !range !256
  %spec_inv15 = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 9
  %26 = ptrtoint ptr %spec_inv15 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %spec_inv15, align 2
  %api_version = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 10
  %api_version17 = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %api_version17 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %api_version17, align 1
  %29 = ptrtoint ptr %api_version to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %28, ptr %api_version, align 1
  %gpio = getelementptr %struct.af9013_state, ptr %call7.i.i, i32 0, i32 11
  %gpio18 = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %gpio18 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %gpio18, align 1
  %32 = ptrtoint ptr %gpio to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %31, ptr %gpio, align 1
  %call22 = tail call ptr @__regmap_init(ptr noundef %dev, ptr noundef nonnull @af9013_probe.regmap_bus, ptr noundef %client, ptr noundef nonnull @af9013_probe.regmap_config, ptr noundef nonnull @af9013_probe._key, ptr noundef nonnull @.str.4) #9
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call22, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.end28

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %call22 to i32
  br label %err_kfree

if.end28:                                         ; preds = %do.end
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %call30 = tail call ptr @i2c_mux_alloc(ptr noundef %36, ptr noundef %dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @af9013_select, ptr noundef nonnull @af9013_deselect) #9
  %muxc = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %muxc to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call30, ptr %muxc, align 8
  %tobool32.not = icmp eq ptr %call30, null
  br i1 %tobool32.not, label %if.end28.err_regmap_exit_crit_edge, label %if.end34

if.end28.err_regmap_exit_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end34:                                         ; preds = %if.end28
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call30, i32 0, i32 3
  %38 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %priv, align 4
  %39 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %muxc, align 8
  %call37 = tail call i32 @i2c_mux_add_adapter(ptr noundef %40, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.err_regmap_exit_crit_edge

if.end34.err_regmap_exit_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end40:                                         ; preds = %if.end34
  %41 = ptrtoint ptr %ts_mode12 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ts_mode12, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp.not = icmp eq i8 %42, 0
  br i1 %cmp.not, label %if.end40.if.end48_crit_edge, label %if.then43

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then43:                                        ; preds = %if.end40
  %call44 = tail call fastcc i32 @af9013_download_firmware(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end48_crit_edge, label %if.then43.err_i2c_mux_del_adapters_crit_edge

if.then43.err_i2c_mux_del_adapters_crit_edge:     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_mux_del_adapters

if.then43.if.end48_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end48:                                         ; preds = %if.then43.if.end48_crit_edge, %if.end40.if.end48_crit_edge
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call51 = call i32 @regmap_bulk_read(ptr noundef %44, i32 noundef 20739, ptr noundef nonnull %firmware_version, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %for.body.preheader, label %if.end48.err_i2c_mux_del_adapters_crit_edge

if.end48.err_i2c_mux_del_adapters_crit_edge:      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_mux_del_adapters

for.body.preheader:                               ; preds = %if.end48
  %45 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %gpio, align 1
  %call59 = call fastcc i32 @af9013_set_gpio(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0, i8 noundef zeroext %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %for.cond, label %for.body.preheader.err_i2c_mux_del_adapters_crit_edge

for.body.preheader.err_i2c_mux_del_adapters_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_mux_del_adapters

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr %struct.af9013_state, ptr %call7.i.i, i32 0, i32 11, i32 1
  %47 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.1, align 8
  %call59.1 = call fastcc i32 @af9013_set_gpio(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 1, i8 noundef zeroext %48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.1)
  %tobool60.not.1 = icmp eq i32 %call59.1, 0
  br i1 %tobool60.not.1, label %for.cond.1, label %for.cond.err_i2c_mux_del_adapters_crit_edge

for.cond.err_i2c_mux_del_adapters_crit_edge:      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_mux_del_adapters

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.af9013_state, ptr %call7.i.i, i32 0, i32 11, i32 2
  %49 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.2, align 1
  %call59.2 = call fastcc i32 @af9013_set_gpio(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 2, i8 noundef zeroext %50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.2)
  %tobool60.not.2 = icmp eq i32 %call59.2, 0
  br i1 %tobool60.not.2, label %for.cond.2, label %for.cond.1.err_i2c_mux_del_adapters_crit_edge

for.cond.1.err_i2c_mux_del_adapters_crit_edge:    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_mux_del_adapters

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.af9013_state, ptr %call7.i.i, i32 0, i32 11, i32 3
  %51 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.3, align 2
  %call59.3 = call fastcc i32 @af9013_set_gpio(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 3, i8 noundef zeroext %52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.3)
  %tobool60.not.3 = icmp eq i32 %call59.3, 0
  br i1 %tobool60.not.3, label %for.cond.3, label %for.cond.2.err_i2c_mux_del_adapters_crit_edge

for.cond.2.err_i2c_mux_del_adapters_crit_edge:    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_i2c_mux_del_adapters

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  %ops = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %53 = call ptr @memcpy(ptr %ops, ptr @af9013_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  %get_dvb_frontend = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @af9013_get_dvb_frontend, ptr %get_dvb_frontend, align 4
  %get_i2c_adapter = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 9
  %56 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @af9013_get_i2c_adapter, ptr %get_i2c_adapter, align 4
  %pid_filter = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 11
  %57 = ptrtoint ptr %pid_filter to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @af9013_pid_filter, ptr %pid_filter, align 4
  %pid_filter_ctrl = getelementptr inbounds %struct.af9013_platform_data, ptr %1, i32 0, i32 10
  %58 = ptrtoint ptr %pid_filter_ctrl to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @af9013_pid_filter_ctrl, ptr %pid_filter_ctrl, align 4
  %strength = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 3, i32 8, i32 42
  %59 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %strength, align 8
  %cnr = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 3, i32 8, i32 43
  %60 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %cnr, align 1
  %post_bit_error = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 3, i32 8, i32 46
  %61 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %post_bit_error, align 4
  %post_bit_count = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 3, i32 8, i32 47
  %62 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %post_bit_count, align 1
  %block_error = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 3, i32 8, i32 48
  %63 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %block_error, align 2
  %block_count = getelementptr inbounds %struct.af9013_state, ptr %call7.i.i, i32 0, i32 3, i32 8, i32 49
  %64 = ptrtoint ptr %block_count to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %block_count, align 1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5) #13
  %65 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %firmware_version, align 4
  %conv79 = zext i8 %66 to i32
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %2, align 1
  %conv81 = zext i8 %68 to i32
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %3, align 2
  %conv83 = zext i8 %70 to i32
  %71 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %4, align 1
  %conv85 = zext i8 %72 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv79, i32 noundef %conv81, i32 noundef %conv83, i32 noundef %conv85) #13
  br label %cleanup

err_i2c_mux_del_adapters:                         ; preds = %for.cond.2.err_i2c_mux_del_adapters_crit_edge, %for.cond.1.err_i2c_mux_del_adapters_crit_edge, %for.cond.err_i2c_mux_del_adapters_crit_edge, %for.body.preheader.err_i2c_mux_del_adapters_crit_edge, %if.end48.err_i2c_mux_del_adapters_crit_edge, %if.then43.err_i2c_mux_del_adapters_crit_edge
  %ret.0 = phi i32 [ %call44, %if.then43.err_i2c_mux_del_adapters_crit_edge ], [ %call51, %if.end48.err_i2c_mux_del_adapters_crit_edge ], [ %call59, %for.body.preheader.err_i2c_mux_del_adapters_crit_edge ], [ %call59.1, %for.cond.err_i2c_mux_del_adapters_crit_edge ], [ %call59.2, %for.cond.1.err_i2c_mux_del_adapters_crit_edge ], [ %call59.3, %for.cond.2.err_i2c_mux_del_adapters_crit_edge ]
  %73 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %muxc, align 8
  call void @i2c_mux_del_adapters(ptr noundef %74) #9
  br label %err_regmap_exit

err_regmap_exit:                                  ; preds = %err_i2c_mux_del_adapters, %if.end34.err_regmap_exit_crit_edge, %if.end28.err_regmap_exit_crit_edge
  %ret.1 = phi i32 [ %call37, %if.end34.err_regmap_exit_crit_edge ], [ %ret.0, %err_i2c_mux_del_adapters ], [ -12, %if.end28.err_regmap_exit_crit_edge ]
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  call void @regmap_exit(ptr noundef %76) #9
  br label %err_kfree

err_kfree:                                        ; preds = %err_regmap_exit, %if.then25
  %ret.2 = phi i32 [ %34, %if.then25 ], [ %ret.1, %err_regmap_exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body88

do.body88:                                        ; preds = %err_kfree, %entry.do.body88_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_kfree ], [ -12, %entry.do.body88_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_probe.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_probe, %if.then100)) #9
          to label %cleanup [label %if.then100], !srcloc !255

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_probe.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %ret.3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %do.body88, %for.cond.3
  %retval.0 = phi i32 [ 0, %for.cond.3 ], [ %ret.3, %if.then100 ], [ %ret.3, %do.body88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware_version) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_remove.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_remove.__UNIQUE_ID_ddebug361, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %muxc = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %3) #9
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regmap_exit(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_regmap_write(ptr noundef %context, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %conv = zext i1 %tobool.not to i8
  %arrayidx1 = getelementptr i8, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i16
  %shl = shl nuw i16 %conv2, 8
  %arrayidx3 = getelementptr i8, ptr %data, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i16
  %or = or i16 %shl, %conv4
  %arrayidx7 = getelementptr i8, ptr %data, i32 3
  %sub = add i32 %count, -3
  %ts_mode = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ts_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -82, i8 %5)
  %cmp11.not = icmp eq i8 %5, -82
  %or.cond = select i1 %cmp, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %count.tr97 = trunc i32 %count to i8
  %10 = shl i8 %count.tr97, 2
  %conv18 = add i8 %10, -13
  %call19 = tail call fastcc i32 @af9013_wregs(ptr noundef %context, i8 noundef zeroext %conv18, i16 noundef zeroext %or, ptr noundef %arrayidx7, i32 noundef %sub, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then.cleanup_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %11 = add i16 %or, -20736
  call void @__sanitizer_cov_trace_const_cmp2(i16 16127, i16 %11)
  %12 = icmp ult i16 %11, 16127
  br i1 %12, label %if.then29, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp41100.not = icmp eq i32 %sub, 0
  br i1 %cmp41100.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then29:                                        ; preds = %if.else
  %count.tr = trunc i32 %count to i8
  %13 = shl i8 %count.tr, 2
  %14 = add i8 %13, 48
  %conv35 = or i8 %14, -61
  %call36 = tail call fastcc i32 @af9013_wregs(ptr noundef %context, i8 noundef zeroext %conv35, i16 noundef zeroext %or, ptr noundef %arrayidx7, i32 noundef %sub, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then29.cleanup_crit_edge, label %if.then29.do.body_crit_edge

if.then29.do.body_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0101 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %15 = trunc i32 %i.0101 to i16
  %conv44 = add i16 %or, %15
  %add.ptr = getelementptr i8, ptr %arrayidx7, i32 %i.0101
  %call45 = tail call fastcc i32 @af9013_wregs(ptr noundef %context, i8 noundef zeroext 3, i16 noundef zeroext %conv44, ptr noundef %add.ptr, i32 noundef 1, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %for.cond, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %if.then29.do.body_crit_edge, %if.then.do.body_crit_edge
  %ret.0 = phi i32 [ %call19, %if.then.do.body_crit_edge ], [ %call36, %if.then29.do.body_crit_edge ], [ %call45, %for.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_regmap_write.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_regmap_write, %if.then58)) #9
          to label %cleanup [label %if.then58], !srcloc !255

if.then58:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_regmap_write.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.body, %for.cond.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then29.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ %ret.0, %if.then58 ], [ %ret.0, %do.body ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_regmap_read(ptr noundef %context, ptr nocapture noundef readonly %reg_buf, i32 noundef %reg_size, ptr noundef %val_buf, i32 noundef %val_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %reg_buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %conv = zext i1 %tobool.not to i8
  %arrayidx1 = getelementptr i8, ptr %reg_buf, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i16
  %shl = shl nuw i16 %conv2, 8
  %arrayidx3 = getelementptr i8, ptr %reg_buf, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i16
  %or = or i16 %shl, %conv4
  %ts_mode = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ts_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -82, i8 %5)
  %cmp11.not = icmp eq i8 %5, -82
  %or.cond = select i1 %cmp, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size)
  %cmp2166.not = icmp eq i32 %val_size, 0
  br i1 %cmp2166.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %val_size.tr = trunc i32 %val_size to i8
  %10 = shl i8 %val_size.tr, 2
  %conv17 = add i8 %10, -2
  %call18 = tail call fastcc i32 @af9013_rregs(ptr noundef %context, i8 noundef zeroext %conv17, i16 noundef zeroext %or, ptr noundef %val_buf, i32 noundef %val_size, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then.cleanup_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %val_size
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %11 = trunc i32 %i.067 to i16
  %conv24 = add i16 %or, %11
  %add.ptr = getelementptr i8, ptr %val_buf, i32 %i.067
  %call25 = tail call fastcc i32 @af9013_rregs(ptr noundef %context, i8 noundef zeroext 2, i16 noundef zeroext %conv24, ptr noundef %add.ptr, i32 noundef 1, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %if.then.do.body_crit_edge
  %ret.0 = phi i32 [ %call18, %if.then.do.body_crit_edge ], [ %call25, %for.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_regmap_read.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_regmap_read, %if.then37)) #9
          to label %cleanup [label %if.then37], !srcloc !255

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_regmap_read.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body, %for.cond.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ %ret.0, %if.then37 ], [ %ret.0, %do.body ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_select.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_select, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_select.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ts_mode = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ts_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 119831, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end10

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 120327, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %ret.0 = phi i32 [ %call.i, %if.then6 ], [ %call.i42, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %do.body14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_select.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_select, %if.then26)) #9
          to label %cleanup [label %if.then26], !srcloc !255

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %dev27 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_select.__UNIQUE_ID_ddebug352, ptr noundef %dev27, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body14, %if.end10.cleanup_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_deselect(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_deselect.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_deselect, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_deselect.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ts_mode = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ts_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp = icmp eq i8 %5, 0
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 119831, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end10

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 120327, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %ret.0 = phi i32 [ %call.i, %if.then6 ], [ %call.i42, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %do.body14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_deselect.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_deselect, %if.then26)) #9
          to label %cleanup [label %if.then26], !srcloc !255

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %dev27 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_deselect.__UNIQUE_ID_ddebug354, ptr noundef %dev27, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body14, %if.end10.cleanup_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9013_download_firmware(ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  %buf = alloca [4 x i8], align 4
  %firmware = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #9
  %2 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %utmp, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware) #9
  %7 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware, align 4, !annotation !257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_download_firmware.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_download_firmware, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_download_firmware.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %9, i32 noundef 39102, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body8, label %do.end.do.body197_crit_edge

do.end.do.body197_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body197

do.body8:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_download_firmware.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_download_firmware, %if.then20)) #9
          to label %do.end24 [label %if.then20], !srcloc !255

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_download_firmware.__UNIQUE_ID_ddebug340, ptr noundef %dev21, ptr noundef nonnull @.str.20, i32 noundef %11) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %do.body8
  %12 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %13)
  %cmp = icmp eq i32 %13, 12
  br i1 %cmp, label %do.end24.cleanup_crit_edge, label %do.end29

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end29:                                         ; preds = %do.end24
  %dev30 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.21, ptr noundef nonnull @af9013_ops) #13
  %call32 = call i32 @request_firmware(ptr noundef nonnull %firmware, ptr noundef nonnull @.str.18, ptr noundef %dev30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end42, label %do.end37

do.end37:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, i32 noundef %call32) #13
  br label %do.body197

do.end42:                                         ; preds = %do.end29
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18) #13
  %14 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %firmware, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp44296.not = icmp eq i32 %17, 0
  br i1 %cmp44296.not, label %do.end42.for.end_crit_edge, label %for.body.lr.ph

do.end42.for.end_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end42
  %data = getelementptr inbounds %struct.firmware, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0298 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %checksum.0297 = phi i16 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %19, i32 %i.0298
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %21 to i16
  %add = add i16 %checksum.0297, %conv
  %inc = add nuw i32 %i.0298, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %extract = lshr i16 %add, 8
  %extract.t305 = trunc i16 %extract to i8
  %extract.t = trunc i16 %add to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %do.end42.for.end_crit_edge
  %checksum.0.lcssa.off0 = phi i8 [ 0, %do.end42.for.end_crit_edge ], [ %extract.t, %for.end.loopexit ]
  %checksum.0.lcssa.off8 = phi i8 [ 0, %do.end42.for.end_crit_edge ], [ %extract.t305, %for.end.loopexit ]
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %checksum.0.lcssa.off8, ptr %buf, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %checksum.0.lcssa.off0, ptr %3, align 1
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %15, align 4
  %shr56 = lshr i32 %25, 8
  %conv58 = trunc i32 %shr56 to i8
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv58, ptr %4, align 2
  %27 = load i32, ptr %15, align 4
  %conv63 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv63, ptr %5, align 1
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call66 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 20732, ptr noundef nonnull %buf, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %for.end.err_release_firmware_crit_edge

for.end.err_release_firmware_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_release_firmware

if.end69:                                         ; preds = %for.end
  %31 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %firmware, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp72300 = icmp sgt i32 %34, 0
  br i1 %cmp72300, label %if.end69.for.body74_crit_edge, label %if.end69.for.end95_crit_edge

if.end69.for.end95_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end95

if.end69.for.body74_crit_edge:                    ; preds = %if.end69
  br label %for.body74

for.cond71:                                       ; preds = %for.body74
  %sub94 = add nsw i32 %rem.0301, -16
  %cmp72 = icmp sgt i32 %rem.0301, 16
  br i1 %cmp72, label %for.cond71.for.body74_crit_edge, label %for.cond71.for.end95_crit_edge

for.cond71.for.end95_crit_edge:                   ; preds = %for.cond71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end95

for.cond71.for.body74_crit_edge:                  ; preds = %for.cond71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74

for.body74:                                       ; preds = %for.cond71.for.body74_crit_edge, %if.end69.for.body74_crit_edge
  %rem.0301 = phi i32 [ %sub94, %for.cond71.for.body74_crit_edge ], [ %34, %if.end69.for.body74_crit_edge ]
  %35 = call i32 @llvm.umin.i32(i32 %rem.0301, i32 16)
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %38 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %firmware, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add80 = sub nsw i32 20736, %rem.0301
  %sub = add i32 %add80, %41
  %data81 = getelementptr inbounds %struct.firmware, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %data81 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data81, align 4
  %sub83 = sub i32 %41, %rem.0301
  %arrayidx84 = getelementptr i8, ptr %43, i32 %sub83
  %call85 = call i32 @regmap_bulk_write(ptr noundef %37, i32 noundef %sub, ptr noundef %arrayidx84, i32 noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %for.cond71, label %do.end90

do.end90:                                         ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.29, i32 noundef %call85) #13
  br label %err_release_firmware

for.end95:                                        ; preds = %for.cond71.for.end95_crit_edge, %if.end69.for.end95_crit_edge
  %44 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %45) #9
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call97 = call i32 @regmap_write(ptr noundef %47, i32 noundef 57861, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %for.end95.do.body197_crit_edge

for.end95.do.body197_crit_edge:                   ; preds = %for.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body197

if.end100:                                        ; preds = %for.end95
  %call101 = call i64 @ktime_get() #9
  %add.i = add i64 %call101, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1098) #9
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call118302 = call i32 @regmap_read(ptr noundef %49, i32 noundef 39102, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118302)
  %tobool119.not303 = icmp eq i32 %call118302, 0
  br i1 %tobool119.not303, label %if.end100.lor.lhs.false_crit_edge, label %if.end100.do.body197_crit_edge

if.end100.do.body197_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body197

if.end100.lor.lhs.false_crit_edge:                ; preds = %if.end100
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then137.lor.lhs.false_crit_edge, %if.end100.lor.lhs.false_crit_edge
  %50 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %utmp, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values)
  switch i32 %51, label %land.lhs.true [
    i32 12, label %lor.lhs.false.lor.rhs_crit_edge
    i32 4, label %lor.lhs.false.lor.rhs_crit_edge323
  ]

lor.lhs.false.lor.rhs_crit_edge323:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call128 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call128, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call128, %add.i
  br i1 %cmp3.i, label %for.end141, label %if.then137

if.then137:                                       ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #9
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call118 = call i32 @regmap_read(ptr noundef %54, i32 noundef 39102, ptr noundef nonnull %utmp) #9
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then137.lor.lhs.false_crit_edge, label %if.then137.do.body197_crit_edge

if.then137.do.body197_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body197

if.then137.lor.lhs.false_crit_edge:               ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.end141:                                       ; preds = %land.lhs.true
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call134 = call i32 @regmap_read(ptr noundef %56, i32 noundef 39102, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool143.not = icmp eq i32 %call134, 0
  br i1 %tobool143.not, label %lor.rhsthread-pre-split, label %for.end141.do.body197_crit_edge

for.end141.do.body197_crit_edge:                  ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body197

lor.rhsthread-pre-split:                          ; preds = %for.end141
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load i32, ptr %utmp, align 4
  br label %lor.rhs

lor.rhs:                                          ; preds = %lor.rhsthread-pre-split, %lor.lhs.false.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge323
  %58 = phi i32 [ %.pr, %lor.rhsthread-pre-split ], [ %51, %lor.lhs.false.lor.rhs_crit_edge ], [ %51, %lor.lhs.false.lor.rhs_crit_edge323 ]
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %58, label %lor.rhs.do.body197_crit_edge [
    i32 12, label %lor.rhs.do.body160_crit_edge
    i32 4, label %lor.rhs.do.body160_crit_edge324
  ]

lor.rhs.do.body160_crit_edge324:                  ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

lor.rhs.do.body160_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

lor.rhs.do.body197_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body197

do.body160:                                       ; preds = %lor.rhs.do.body160_crit_edge, %lor.rhs.do.body160_crit_edge324
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_download_firmware.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_download_firmware, %if.then172)) #9
          to label %do.end176 [label %if.then172], !srcloc !255

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %utmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_download_firmware.__UNIQUE_ID_ddebug343, ptr noundef %dev30, ptr noundef nonnull @.str.20, i32 noundef %61) #9
  br label %do.end176

do.end176:                                        ; preds = %if.then172, %do.body160
  %62 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %utmp, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %63, label %if.then186 [
    i32 4, label %if.then179
    i32 12, label %do.end195
  ]

if.then179:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.33) #13
  br label %do.body197

if.then186:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.36) #13
  br label %do.body197

do.end195:                                        ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev30, ptr noundef nonnull @.str.39, ptr noundef nonnull @af9013_ops) #13
  br label %cleanup

err_release_firmware:                             ; preds = %do.end90, %for.end.err_release_firmware_crit_edge
  %ret.0 = phi i32 [ %call66, %for.end.err_release_firmware_crit_edge ], [ %call85, %do.end90 ]
  %65 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %firmware, align 4
  call void @release_firmware(ptr noundef %66) #9
  br label %do.body197

do.body197:                                       ; preds = %err_release_firmware, %if.then186, %if.then179, %lor.rhs.do.body197_crit_edge, %for.end141.do.body197_crit_edge, %if.then137.do.body197_crit_edge, %if.end100.do.body197_crit_edge, %for.end95.do.body197_crit_edge, %do.end37, %do.end.do.body197_crit_edge
  %ret.1 = phi i32 [ %call4, %do.end.do.body197_crit_edge ], [ %call32, %do.end37 ], [ %ret.0, %err_release_firmware ], [ %call97, %for.end95.do.body197_crit_edge ], [ -19, %if.then179 ], [ -19, %if.then186 ], [ %call118302, %if.end100.do.body197_crit_edge ], [ %call134, %for.end141.do.body197_crit_edge ], [ -110, %lor.rhs.do.body197_crit_edge ], [ %call118, %if.then137.do.body197_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_download_firmware.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_download_firmware, %if.then209)) #9
          to label %cleanup [label %if.then209], !srcloc !255

if.then209:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #11
  %dev210 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_download_firmware.__UNIQUE_ID_ddebug344, ptr noundef %dev210, ptr noundef nonnull @.str.11, i32 noundef %ret.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then209, %do.body197, %do.end195, %do.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end195 ], [ 0, %do.end24.cleanup_crit_edge ], [ %ret.1, %if.then209 ], [ %ret.1, %do.body197 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9013_set_gpio(ptr nocapture noundef readonly %state, i8 noundef zeroext %gpio, i8 noundef zeroext %gpioval) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_gpio.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_gpio, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv = zext i8 %gpio to i32
  %conv4 = zext i8 %gpioval to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_gpio.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %conv, i32 noundef %conv4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %gpio)
  %2 = icmp ult i8 %gpio, 4
  br i1 %2, label %switch.lookup, label %do.end.do.body21_crit_edge

do.end.do.body21_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

switch.lookup:                                    ; preds = %do.end
  %3 = sext i8 %gpio to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.af9013_set_gpio, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.and = and i8 %gpio, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %5 = select i1 %switch.selectcmp, i32 0, i32 4
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 15, %5
  %conv14 = zext i8 %gpioval to i32
  %shl16 = shl nuw nsw i32 %conv14, %5
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %switch.load, i32 noundef %shl, i32 noundef %shl16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %switch.lookup.cleanup_crit_edge, label %switch.lookup.do.body21_crit_edge

switch.lookup.do.body21_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body21

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body21:                                        ; preds = %switch.lookup.do.body21_crit_edge, %do.end.do.body21_crit_edge
  %ret.0 = phi i32 [ %call.i, %switch.lookup.do.body21_crit_edge ], [ -22, %do.end.do.body21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_gpio.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_gpio, %if.then33)) #9
          to label %cleanup [label %if.then33], !srcloc !255

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_gpio.__UNIQUE_ID_ddebug291, ptr noundef %dev34, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %do.body21, %switch.lookup.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup.cleanup_crit_edge ], [ %ret.0, %if.then33 ], [ %ret.0, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @af9013_get_dvb_frontend(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_get_dvb_frontend.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_get_dvb_frontend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_get_dvb_frontend.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 3
  ret ptr %fe
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @af9013_get_i2c_adapter(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_get_i2c_adapter.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_get_i2c_adapter, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_get_i2c_adapter.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %muxc = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  %adapter = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_pid_filter(ptr nocapture noundef readonly %fe, i8 noundef zeroext %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #9
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !257
  %5 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_pid_filter.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_pid_filter, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv = zext i8 %index to i32
  %conv4 = zext i16 %pid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_pid_filter.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %conv, i32 noundef %conv4, i32 noundef %onoff) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %pid)
  %cmp = icmp ugt i16 %pid, 8191
  br i1 %cmp, label %do.end.do.body27_crit_edge, label %if.end8

do.end.do.body27_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end8:                                          ; preds = %do.end
  %conv10 = trunc i16 %pid to i8
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv10, ptr %buf, align 1
  %8 = lshr i16 %pid, 8
  %conv14 = trunc i16 %8 to i8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv14, ptr %5, align 1
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call16 = call i32 @regmap_bulk_write(ptr noundef %11, i32 noundef 54533, ptr noundef nonnull %buf, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end8.do.body27_crit_edge

if.end8.do.body27_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end19:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %onoff, 5
  %conv21 = zext i8 %index to i32
  %or = or i32 %shl, %conv21
  %call23 = call i32 @regmap_write(ptr noundef %13, i32 noundef 54532, i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end19.cleanup_crit_edge, label %if.end19.do.body27_crit_edge

if.end19.do.body27_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body27:                                        ; preds = %if.end19.do.body27_crit_edge, %if.end8.do.body27_crit_edge, %do.end.do.body27_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end8.do.body27_crit_edge ], [ %call23, %if.end19.do.body27_crit_edge ], [ 0, %do.end.do.body27_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_pid_filter.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_pid_filter, %if.then39)) #9
          to label %cleanup [label %if.then39], !srcloc !255

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %dev40 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_pid_filter.__UNIQUE_ID_ddebug348, ptr noundef %dev40, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body27, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19.cleanup_crit_edge ], [ %ret.0, %if.then39 ], [ %ret.0, %do.body27 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_pid_filter_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_pid_filter_ctrl.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_pid_filter_ctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_pid_filter_ctrl.__UNIQUE_ID_ddebug345, ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %onoff) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 54531, i32 noundef 1, i32 noundef %onoff, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %do.body8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_pid_filter_ctrl.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_pid_filter_ctrl, %if.then20)) #9
          to label %cleanup [label %if.then20], !srcloc !255

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_pid_filter_ctrl.__UNIQUE_ID_ddebug346, ptr noundef %dev21, ptr noundef nonnull @.str.11, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body8, %do.end.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9013_wregs(ptr noundef %client, i8 noundef zeroext %cmd, i16 noundef zeroext %reg, ptr nocapture noundef readonly %val, i32 noundef %len, i8 noundef zeroext %lock) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [21 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 21)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %1 = getelementptr inbounds i8, ptr %msg, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1, align 2
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %add = add i32 %len, 3
  %conv = trunc i32 %add to i16
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %len2, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %buf3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %add)
  %cmp = icmp ugt i32 %add, 21
  br i1 %cmp, label %entry.do.body_crit_edge, label %if.end

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 3
  %10 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 2
  %11 = getelementptr inbounds [21 x i8], ptr %buf, i32 0, i32 1
  %12 = lshr i16 %reg, 8
  %conv7 = trunc i16 %12 to i8
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7, ptr %buf, align 1
  %conv11 = trunc i16 %reg to i8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11, ptr %11, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %cmd, ptr %10, align 1
  %16 = call ptr @memcpy(ptr %9, ptr %val, i32 %len)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %lock)
  %tobool.not = icmp eq i8 %lock, 0
  %adapter1751 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %17 = ptrtoint ptr %adapter1751 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter1751, align 8
  br i1 %tobool.not, label %if.end16.thread, label %if.then20

if.end16.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = call i32 @__i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #9
  br label %if.end22

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock_ops.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  call void %22(ptr noundef %18, i32 noundef 2) #9
  %23 = ptrtoint ptr %adapter1751 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter1751, align 8
  %call = call i32 @__i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg, i32 noundef 1) #9
  %25 = ptrtoint ptr %adapter1751 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter1751, align 8
  %lock_ops.i50 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %lock_ops.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lock_ops.i50, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %unlock_bus.i, align 4
  call void %30(ptr noundef %26, i32 noundef 2) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.thread
  %call53 = phi i32 [ %call52, %if.end16.thread ], [ %call, %if.then20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp23 = icmp slt i32 %call53, 0
  br i1 %cmp23, label %if.end22.do.body_crit_edge, label %if.else

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call53)
  %cmp26.not = icmp eq i32 %call53, 1
  br i1 %cmp26.not, label %if.else.cleanup_crit_edge, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.end22.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0 = phi i32 [ %call53, %if.end22.do.body_crit_edge ], [ -22, %entry.do.body_crit_edge ], [ -121, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_wregs.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_wregs, %if.then35)) #9
          to label %cleanup [label %if.then35], !srcloc !255

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_wregs.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %do.body, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ %ret.0, %if.then35 ], [ %ret.0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9013_rregs(ptr noundef %client, i8 noundef zeroext %cmd, i16 noundef zeroext %reg, ptr noundef %val, i32 noundef %len, i8 noundef zeroext %lock) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr1, align 2
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 3, ptr %len2, align 4
  %buf3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %buf3, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %5, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %11 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %conv = trunc i32 %len to i16
  %12 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %13 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %val, ptr %buf8, align 4
  %14 = lshr i16 %reg, 8
  %conv10 = trunc i16 %14 to i8
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10, ptr %buf, align 1
  %conv14 = trunc i16 %reg to i8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv14, ptr %0, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %cmd, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %lock)
  %tobool.not = icmp eq i8 %lock, 0
  %adapter1749 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %18 = ptrtoint ptr %adapter1749 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter1749, align 8
  br i1 %tobool.not, label %if.end.thread, label %if.then20

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = call i32 @__i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 2) #9
  br label %if.end22

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock_ops.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  call void %23(ptr noundef %19, i32 noundef 2) #9
  %24 = ptrtoint ptr %adapter1749 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter1749, align 8
  %call = call i32 @__i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg, i32 noundef 2) #9
  %26 = ptrtoint ptr %adapter1749 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter1749, align 8
  %lock_ops.i48 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %lock_ops.i48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock_ops.i48, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unlock_bus.i, align 4
  call void %31(ptr noundef %27, i32 noundef 2) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end.thread
  %call51 = phi i32 [ %call50, %if.end.thread ], [ %call, %if.then20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp = icmp slt i32 %call51, 0
  br i1 %cmp, label %if.end22.do.body_crit_edge, label %if.else

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call51)
  %cmp25.not = icmp eq i32 %call51, 2
  br i1 %cmp25.not, label %if.else.cleanup_crit_edge, label %if.else.do.body_crit_edge

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.end22.do.body_crit_edge
  %ret.0 = phi i32 [ %call51, %if.end22.do.body_crit_edge ], [ -121, %if.else.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_rregs.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_rregs, %if.then34)) #9
          to label %cleanup [label %if.then34], !srcloc !255

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_rregs.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ %ret.0, %if.then34 ], [ %ret.0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !257
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !257
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_init.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_init.__UNIQUE_ID_ddebug333, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 55098, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.do.body148_crit_edge

do.end.do.body148_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

if.end7:                                          ; preds = %do.end
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i234 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 54295, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool10.not = icmp eq i32 %call.i234, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.do.body148_crit_edge

if.end7.do.body148_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

if.end12:                                         ; preds = %if.end7
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i235 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 54295, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235)
  %tobool15.not = icmp eq i32 %call.i235, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.do.body148_crit_edge

if.end12.do.body148_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

if.end17:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %api_version = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 10
  %call19 = tail call i32 @regmap_bulk_write(ptr noundef %16, i32 noundef 39922, ptr noundef %api_version, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.do.body148_crit_edge

if.end17.do.body148_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

if.end22:                                         ; preds = %if.end17
  %clk = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %18, label %if.end22.do.body148_crit_edge [
    i32 28800000, label %if.end22.sw.epilog_crit_edge
    i32 20480000, label %sw.bb23
    i32 28000000, label %sw.bb24
    i32 25000000, label %sw.bb25
  ]

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end22.do.body148_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

sw.bb23:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb24, %sw.bb23, %if.end22.sw.epilog_crit_edge
  %utmp.0 = phi i32 [ 3, %sw.bb25 ], [ 2, %sw.bb24 ], [ 1, %sw.bb23 ], [ 0, %if.end22.sw.epilog_crit_edge ]
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i236 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 39890, i32 noundef 15, i32 noundef %utmp.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %tobool28.not = icmp eq i32 %call.i236, 0
  br i1 %tobool28.not, label %if.end30, label %sw.epilog.do.body148_crit_edge

sw.epilog.do.body148_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

if.end30:                                         ; preds = %sw.epilog
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clk, align 4
  %conv = zext i32 %23 to i64
  %mul = shl nuw nsw i64 %conv, 19
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul) #14, !srcloc !258
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul, i64 %24, i32 0) #14, !srcloc !259
  %asmresult10.i.i.i = extractvalue { i64, i32 } %25, 0
  %div158.i.i245 = lshr i64 %asmresult10.i.i.i, 18
  %conv34 = trunc i64 %div158.i.i245 to i8
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv34, ptr %buf, align 1
  %shr35223 = lshr i64 %asmresult10.i.i.i, 26
  %conv37 = trunc i64 %shr35223 to i8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv37, ptr %5, align 1
  %shr39224 = lshr i64 %asmresult10.i.i.i, 34
  %conv41 = trunc i64 %shr39224 to i8
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv41, ptr %7, align 1
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call45 = call i32 @regmap_bulk_write(ptr noundef %30, i32 noundef 53632, ptr noundef nonnull %buf, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body49, label %if.end30.do.body148_crit_edge

if.end30.do.body148_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

do.body49:                                        ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_init.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_init, %if.then61)) #9
          to label %for.body [label %if.then61], !srcloc !255

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %dev62 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_init.__UNIQUE_ID_ddebug334, ptr noundef %dev62, ptr noundef nonnull @.str.44) #9
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0247, 1
  %exitcond.not = icmp eq i32 %inc, 77
  br i1 %exitcond.not, label %do.body78, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then61, %do.body49
  %i.0247 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.body49 ], [ 0, %if.then61 ]
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %arrayidx68 = getelementptr %struct.af9013_reg_mask_val, ptr @demod_init_tab, i32 %i.0247
  %33 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx68, align 2
  %conv69 = zext i16 %34 to i32
  %mask = getelementptr %struct.af9013_reg_mask_val, ptr @demod_init_tab, i32 %i.0247, i32 1
  %35 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mask, align 2
  %conv71 = zext i8 %36 to i32
  %val = getelementptr %struct.af9013_reg_mask_val, ptr @demod_init_tab, i32 %i.0247, i32 2
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %val, align 1
  %conv73 = zext i8 %38 to i32
  %call.i237 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %conv69, i32 noundef %conv71, i32 noundef %conv73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool75.not = icmp eq i32 %call.i237, 0
  br i1 %tobool75.not, label %for.cond, label %for.body.do.body148_crit_edge

for.body.do.body148_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

do.body78:                                        ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_init.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_init, %if.then90)) #9
          to label %do.end94 [label %if.then90], !srcloc !255

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %dev91 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_init.__UNIQUE_ID_ddebug335, ptr noundef %dev91, ptr noundef nonnull @.str.45) #9
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %do.body78
  %tuner = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %tuner, align 4
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %40, label %sw.default105 [
    i8 3, label %do.end94.sw.epilog106_crit_edge
    i8 13, label %do.end94.sw.bb97_crit_edge
    i8 30, label %do.end94.sw.bb97_crit_edge264
    i8 -79, label %do.end94.sw.bb97_crit_edge265
    i8 -127, label %sw.bb98
    i8 -126, label %sw.bb99
    i8 -123, label %sw.bb100
    i8 -122, label %do.end94.sw.bb101_crit_edge
    i8 -94, label %do.end94.sw.bb101_crit_edge266
    i8 -109, label %sw.bb102
    i8 -100, label %do.end94.sw.bb103_crit_edge
    i8 -77, label %do.end94.sw.bb103_crit_edge267
  ]

do.end94.sw.bb103_crit_edge267:                   ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb103

do.end94.sw.bb103_crit_edge:                      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb103

do.end94.sw.bb101_crit_edge266:                   ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

do.end94.sw.bb101_crit_edge:                      ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb101

do.end94.sw.bb97_crit_edge265:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb97

do.end94.sw.bb97_crit_edge264:                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb97

do.end94.sw.bb97_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb97

do.end94.sw.epilog106_crit_edge:                  ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog106

sw.bb97:                                          ; preds = %do.end94.sw.bb97_crit_edge, %do.end94.sw.bb97_crit_edge264, %do.end94.sw.bb97_crit_edge265
  br label %sw.epilog106

sw.bb98:                                          ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog106

sw.bb99:                                          ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog106

sw.bb100:                                         ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog106

sw.bb101:                                         ; preds = %do.end94.sw.bb101_crit_edge, %do.end94.sw.bb101_crit_edge266
  br label %sw.epilog106

sw.bb102:                                         ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog106

sw.bb103:                                         ; preds = %do.end94.sw.bb103_crit_edge, %do.end94.sw.bb103_crit_edge267
  br label %sw.epilog106

sw.default105:                                    ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog106

sw.epilog106:                                     ; preds = %sw.default105, %sw.bb103, %sw.bb102, %sw.bb101, %sw.bb100, %sw.bb99, %sw.bb98, %sw.bb97, %do.end94.sw.epilog106_crit_edge
  %tab.0 = phi ptr [ @tuner_init_tab_unknown, %sw.default105 ], [ @tuner_init_tab_tda18271, %sw.bb103 ], [ @tuner_init_tab_mt2060_2, %sw.bb102 ], [ @tuner_init_tab_qt1010, %sw.bb101 ], [ @tuner_init_tab_mc44s803, %sw.bb100 ], [ @tuner_init_tab_mt2060, %sw.bb99 ], [ @tuner_init_tab_env77h11d5, %sw.bb98 ], [ @tuner_init_tab_mxl5005, %sw.bb97 ], [ @tuner_init_tab_mxl5003d, %do.end94.sw.epilog106_crit_edge ]
  %len.0 = phi i32 [ 67, %sw.default105 ], [ 72, %sw.bb103 ], [ 62, %sw.bb102 ], [ 72, %sw.bb101 ], [ 77, %sw.bb100 ], [ 72, %sw.bb99 ], [ 61, %sw.bb98 ], [ 73, %sw.bb97 ], [ 65, %do.end94.sw.epilog106_crit_edge ]
  br label %for.body110

for.cond107:                                      ; preds = %for.body110
  %inc126 = add nuw nsw i32 %i.1248, 1
  %exitcond252.not = icmp eq i32 %inc126, %len.0
  br i1 %exitcond252.not, label %for.end127, label %for.cond107.for.body110_crit_edge

for.cond107.for.body110_crit_edge:                ; preds = %for.cond107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body110

for.body110:                                      ; preds = %for.cond107.for.body110_crit_edge, %sw.epilog106
  %i.1248 = phi i32 [ 0, %sw.epilog106 ], [ %inc126, %for.cond107.for.body110_crit_edge ]
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %arrayidx112 = getelementptr %struct.af9013_reg_mask_val, ptr %tab.0, i32 %i.1248
  %44 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx112, align 2
  %conv114 = zext i16 %45 to i32
  %mask116 = getelementptr %struct.af9013_reg_mask_val, ptr %tab.0, i32 %i.1248, i32 1
  %46 = ptrtoint ptr %mask116 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mask116, align 2
  %conv117 = zext i8 %47 to i32
  %val119 = getelementptr %struct.af9013_reg_mask_val, ptr %tab.0, i32 %i.1248, i32 2
  %48 = ptrtoint ptr %val119 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %val119, align 1
  %conv120 = zext i8 %49 to i32
  %call.i238 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef %conv114, i32 noundef %conv117, i32 noundef %conv120, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool122.not = icmp eq i32 %call.i238, 0
  br i1 %tobool122.not, label %for.cond107, label %for.body110.do.body148_crit_edge

for.body110.do.body148_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

for.end127:                                       ; preds = %for.cond107
  %ts_output_pin = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %ts_output_pin to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ts_output_pin, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %51)
  %cmp129 = icmp eq i8 %51, 7
  %ts_mode = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 7
  %52 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ts_mode, align 4
  %conv132 = zext i8 %53 to i32
  %shl = shl nuw nsw i32 %conv132, 1
  %or = or i32 %shl, 8
  %utmp.1 = select i1 %cmp129, i32 %or, i32 %shl
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call.i239 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 54528, i32 noundef 14, i32 noundef %utmp.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool140.not = icmp eq i32 %call.i239, 0
  br i1 %tobool140.not, label %if.end142, label %for.end127.do.body148_crit_edge

for.end127.do.body148_crit_edge:                  ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

if.end142:                                        ; preds = %for.end127
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call.i240 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 55088, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool145.not = icmp eq i32 %call.i240, 0
  br i1 %tobool145.not, label %if.end147, label %if.end142.do.body148_crit_edge

if.end142.do.body148_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body148

if.end147:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  %first_tune = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 28
  %58 = ptrtoint ptr %first_tune to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %first_tune, align 4
  br label %cleanup

do.body148:                                       ; preds = %if.end142.do.body148_crit_edge, %for.end127.do.body148_crit_edge, %for.body110.do.body148_crit_edge, %for.body.do.body148_crit_edge, %if.end30.do.body148_crit_edge, %sw.epilog.do.body148_crit_edge, %if.end22.do.body148_crit_edge, %if.end17.do.body148_crit_edge, %if.end12.do.body148_crit_edge, %if.end7.do.body148_crit_edge, %do.end.do.body148_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end.do.body148_crit_edge ], [ %call.i234, %if.end7.do.body148_crit_edge ], [ %call.i235, %if.end12.do.body148_crit_edge ], [ %call19, %if.end17.do.body148_crit_edge ], [ %call.i236, %sw.epilog.do.body148_crit_edge ], [ %call45, %if.end30.do.body148_crit_edge ], [ %call.i239, %for.end127.do.body148_crit_edge ], [ %call.i240, %if.end142.do.body148_crit_edge ], [ -22, %if.end22.do.body148_crit_edge ], [ %call.i238, %for.body110.do.body148_crit_edge ], [ %call.i237, %for.body.do.body148_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_init.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_init, %if.then160)) #9
          to label %cleanup [label %if.then160], !srcloc !255

if.then160:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #11
  %dev161 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_init.__UNIQUE_ID_ddebug336, ptr noundef %dev161, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then160, %do.body148, %if.end147
  %retval.0 = phi i32 [ 0, %if.end147 ], [ %ret.0, %if.then160 ], [ %ret.0, %do.body148 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #9
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_sleep.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_sleep, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_sleep.__UNIQUE_ID_ddebug337, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 55088, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.do.body70_crit_edge

do.end.do.body70_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

if.end7:                                          ; preds = %do.end
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i112 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 54295, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool10.not = icmp eq i32 %call.i112, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.do.body70_crit_edge

if.end7.do.body70_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

if.end12:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 44799, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.do.body70_crit_edge

if.end12.do.body70_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call18, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1003) #9
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call32128 = call i32 @regmap_read(ptr noundef %12, i32 noundef 54295, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32128)
  %tobool33.not129 = icmp eq i32 %call32128, 0
  br i1 %tobool33.not129, label %if.end17.lor.lhs.false_crit_edge, label %if.end17.do.body70_crit_edge

if.end17.do.body70_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

if.end17.lor.lhs.false_crit_edge:                 ; preds = %if.end17
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then46.lor.lhs.false_crit_edge, %if.end17.lor.lhs.false_crit_edge
  %13 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %utmp, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool34.not = icmp eq i32 %15, 0
  br i1 %tobool34.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call38 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call38, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call38, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then46

if.then46:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #9
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call32 = call i32 @regmap_read(ptr noundef %17, i32 noundef 54295, ptr noundef nonnull %utmp) #9
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then46.lor.lhs.false_crit_edge, label %if.then46.do.body70_crit_edge

if.then46.do.body70_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

if.then46.lor.lhs.false_crit_edge:                ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call43 = call i32 @regmap_read(ptr noundef %19, i32 noundef 54295, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool50.not = icmp eq i32 %call43, 0
  br i1 %tobool50.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.body70_crit_edge

for.end.do.body70_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %20 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %utmp, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool53.not = icmp eq i32 %22, 0
  br i1 %tobool53.not, label %lor.rhs.do.body70_crit_edge, label %if.end59

lor.rhs.do.body70_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

if.end59:                                         ; preds = %lor.rhs
  %23 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %utmp, align 4
  %25 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool62.not = icmp eq i32 %25, 0
  br i1 %tobool62.not, label %if.end59.do.body70_crit_edge, label %if.end64

if.end59.do.body70_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

if.end64:                                         ; preds = %if.end59
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i114 = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 55098, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool67.not = icmp eq i32 %call.i114, 0
  br i1 %tobool67.not, label %if.end64.cleanup_crit_edge, label %if.end64.do.body70_crit_edge

if.end64.do.body70_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body70

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body70:                                        ; preds = %if.end64.do.body70_crit_edge, %if.end59.do.body70_crit_edge, %lor.rhs.do.body70_crit_edge, %for.end.do.body70_crit_edge, %if.then46.do.body70_crit_edge, %if.end17.do.body70_crit_edge, %if.end12.do.body70_crit_edge, %if.end7.do.body70_crit_edge, %do.end.do.body70_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end.do.body70_crit_edge ], [ %call.i112, %if.end7.do.body70_crit_edge ], [ %call14, %if.end12.do.body70_crit_edge ], [ %call.i114, %if.end64.do.body70_crit_edge ], [ -110, %if.end59.do.body70_crit_edge ], [ %call32128, %if.end17.do.body70_crit_edge ], [ %call43, %for.end.do.body70_crit_edge ], [ -110, %lor.rhs.do.body70_crit_edge ], [ %call32, %if.then46.do.body70_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_sleep.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_sleep, %if.then82)) #9
          to label %cleanup [label %if.then82], !srcloc !255

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  %dev83 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_sleep.__UNIQUE_ID_ddebug338, ptr noundef %dev83, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %do.body70, %if.end64.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64.cleanup_crit_edge ], [ %ret.0, %if.then82 ], [ %ret.0, %do.body70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  %if_frequency = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #9
  %4 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 5
  %9 = call ptr @memset(ptr %buf, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_frequency) #9
  %10 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %if_frequency, align 4, !annotation !257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %13 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bandwidth_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.48, i32 noundef %12, i32 noundef %14) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %15 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_params, align 4
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %do.end.if.end13_crit_edge, label %if.then5

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then5:                                         ; preds = %do.end
  %call9 = tail call i32 %16(ptr noundef %fe) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then5.if.end13_crit_edge, label %if.then5.do.body653_crit_edge

if.then5.do.body653_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %if.then5.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %bandwidth_hz14 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %17 = ptrtoint ptr %bandwidth_hz14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bandwidth_hz14, align 4
  %bandwidth_hz15 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %bandwidth_hz15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth_hz15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not = icmp eq i32 %18, %20
  br i1 %cmp.not, label %if.end13.if.end33_crit_edge, label %for.cond.preheader

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

for.cond.preheader:                               ; preds = %if.end13
  %clk = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clk, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %22, label %for.cond.preheader.do.body653_crit_edge [
    i32 28800000, label %land.lhs.true
    i32 20480000, label %land.lhs.true.3
    i32 28000000, label %land.lhs.true.6
    i32 25000000, label %land.lhs.true.9
  ]

for.cond.preheader.do.body653_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

land.lhs.true:                                    ; preds = %for.cond.preheader
  %24 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %18, label %land.lhs.true.do.body653_crit_edge [
    i32 8000000, label %land.lhs.true.if.end27_crit_edge
    i32 7000000, label %if.end27.fold.split
    i32 6000000, label %if.end27.fold.split980
  ]

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true.do.body653_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

land.lhs.true.3:                                  ; preds = %for.cond.preheader
  %25 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %18, label %land.lhs.true.3.do.body653_crit_edge [
    i32 8000000, label %land.lhs.true.3.if.end27_crit_edge
    i32 7000000, label %if.end27.fold.split981
    i32 6000000, label %if.end27.fold.split982
  ]

land.lhs.true.3.if.end27_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true.3.do.body653_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

land.lhs.true.6:                                  ; preds = %for.cond.preheader
  %26 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %18, label %land.lhs.true.6.do.body653_crit_edge [
    i32 8000000, label %land.lhs.true.6.if.end27_crit_edge
    i32 7000000, label %if.end27.fold.split983
    i32 6000000, label %if.end27.fold.split984
  ]

land.lhs.true.6.if.end27_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true.6.do.body653_crit_edge:             ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

land.lhs.true.9:                                  ; preds = %for.cond.preheader
  %27 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %18, label %land.lhs.true.9.do.body653_crit_edge [
    i32 8000000, label %land.lhs.true.9.if.end27_crit_edge
    i32 7000000, label %if.end27.fold.split985
    i32 6000000, label %if.end27.fold.split986
  ]

land.lhs.true.9.if.end27_crit_edge:               ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true.9.do.body653_crit_edge:             ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end27.fold.split:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27.fold.split980:                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27.fold.split981:                           ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27.fold.split982:                           ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27.fold.split983:                           ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27.fold.split984:                           ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27.fold.split985:                           ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27.fold.split986:                           ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %if.end27.fold.split986, %if.end27.fold.split985, %if.end27.fold.split984, %if.end27.fold.split983, %if.end27.fold.split982, %if.end27.fold.split981, %if.end27.fold.split980, %if.end27.fold.split, %land.lhs.true.9.if.end27_crit_edge, %land.lhs.true.6.if.end27_crit_edge, %land.lhs.true.3.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge
  %i.0949.lcssa = phi i32 [ 0, %land.lhs.true.if.end27_crit_edge ], [ 3, %land.lhs.true.3.if.end27_crit_edge ], [ 6, %land.lhs.true.6.if.end27_crit_edge ], [ 9, %land.lhs.true.9.if.end27_crit_edge ], [ 1, %if.end27.fold.split ], [ 2, %if.end27.fold.split980 ], [ 4, %if.end27.fold.split981 ], [ 5, %if.end27.fold.split982 ], [ 7, %if.end27.fold.split983 ], [ 8, %if.end27.fold.split984 ], [ 10, %if.end27.fold.split985 ], [ 11, %if.end27.fold.split986 ]
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %val = getelementptr [12 x %struct.af9013_coeff], ptr @coeff_lut, i32 0, i32 %i.0949.lcssa, i32 2
  %call29 = tail call i32 @regmap_bulk_write(ptr noundef %29, i32 noundef 44544, ptr noundef %val, i32 noundef 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end27.if.end33_crit_edge, label %if.end27.do.body653_crit_edge

if.end27.do.body653_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end33:                                         ; preds = %if.end27.if.end33_crit_edge, %if.end13.if.end33_crit_edge
  %30 = ptrtoint ptr %bandwidth_hz14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bandwidth_hz14, align 4
  %32 = ptrtoint ptr %bandwidth_hz15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bandwidth_hz15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp36.not = icmp eq i32 %31, %33
  br i1 %cmp36.not, label %lor.lhs.false, label %if.end33.if.then38_crit_edge

if.end33.if.then38_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

lor.lhs.false:                                    ; preds = %if.end33
  %first_tune = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 28
  %34 = ptrtoint ptr %first_tune to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %first_tune, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool37.not = icmp eq i8 %35, 0
  br i1 %tobool37.not, label %lor.lhs.false.if.end328_crit_edge, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

lor.lhs.false.if.end328_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end328

if.then38:                                        ; preds = %lor.lhs.false.if.then38_crit_edge, %if.end33.if.then38_crit_edge
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %36 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %get_if_frequency, align 4
  %tobool41.not = icmp eq ptr %37, null
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.then38
  %call46 = call i32 %37(ptr noundef %fe, ptr noundef nonnull %if_frequency) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then42.do.body52_crit_edge, label %if.then42.do.body653_crit_edge

if.then42.do.body653_crit_edge:                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.then42.do.body52_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body52

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %if_frequency50 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %if_frequency50 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %if_frequency50, align 4
  %40 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %if_frequency, align 4
  br label %do.body52

do.body52:                                        ; preds = %if.else, %if.then42.do.body52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then64)) #9
          to label %do.end68 [label %if.then64], !srcloc !255

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %dev65 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %41 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %if_frequency, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug293, ptr noundef %dev65, ptr noundef nonnull @.str.49, i32 noundef %42) #9
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body52
  %43 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %if_frequency, align 4
  %clk69 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %clk69 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clk69, align 4
  %div868 = lshr i32 %46, 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.end68
  %sampling_freq.0 = phi i32 [ %44, %do.end68 ], [ %sub, %while.cond.while.cond_crit_edge ]
  %cmp70 = icmp ugt i32 %sampling_freq.0, %div868
  %sub = sub i32 %sampling_freq.0, %46
  br i1 %cmp70, label %while.cond.while.cond_crit_edge, label %if.else77

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.else77:                                        ; preds = %while.cond
  %spec_inv78 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 9
  %47 = ptrtoint ptr %spec_inv78 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %spec_inv78, align 2, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool79.not = icmp eq i8 %48, 0
  %conv = sext i32 %sampling_freq.0 to i64
  %mul85 = shl nsw i64 %conv, 23
  %conv87 = zext i32 %div868 to i64
  %add = add nsw i64 %mul85, %conv87
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp265 = icmp ult i64 %add, 4294967296
  br i1 %cmp265, label %if.then273, label %if.else279, !prof !260

if.then273:                                       ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #11
  %conv274 = trunc i64 %add to i32
  %div277 = udiv i32 %conv274, %46
  br label %if.end283

if.else279:                                       ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #11
  %49 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %46, i64 %add) #14, !srcloc !261
  %asmresult1.i = extractvalue { i64, i64 } %49, 1
  %extract.t945 = trunc i64 %asmresult1.i to i32
  br label %if.end283

if.end283:                                        ; preds = %if.else279, %if.then273
  %_tmp.0.off0 = phi i32 [ %div277, %if.then273 ], [ %extract.t945, %if.else279 ]
  %sub289 = sub i32 8388608, %_tmp.0.off0
  %spec.select = select i1 %tobool79.not, i32 %sub289, i32 %_tmp.0.off0
  %conv293 = trunc i32 %spec.select to i8
  %50 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv293, ptr %buf, align 1
  %shr295 = lshr i32 %spec.select, 8
  %conv297 = trunc i32 %shr295 to i8
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv297, ptr %4, align 1
  %shr299 = lshr i32 %spec.select, 16
  %52 = trunc i32 %shr299 to i8
  %conv301 = and i8 %52, 127
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv301, ptr %5, align 1
  %sub303 = sub i32 8388608, %spec.select
  %conv306 = trunc i32 %sub303 to i8
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv306, ptr %6, align 1
  %shr308 = lshr i32 %sub303, 8
  %conv310 = trunc i32 %shr308 to i8
  %55 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv310, ptr %7, align 1
  %shr312 = lshr i32 %sub303, 16
  %56 = trunc i32 %shr312 to i8
  %conv314 = and i8 %56, 127
  %57 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv314, ptr %8, align 1
  %regmap316 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %regmap316 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap316, align 4
  %call318 = call i32 @regmap_bulk_write(ptr noundef %59, i32 noundef 53568, ptr noundef nonnull %buf, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call318)
  %tobool319.not = icmp eq i32 %call318, 0
  br i1 %tobool319.not, label %if.end321, label %if.end283.do.body653_crit_edge

if.end283.do.body653_crit_edge:                   ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end321:                                        ; preds = %if.end283
  %60 = ptrtoint ptr %regmap316 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap316, align 4
  %call324 = call i32 @regmap_bulk_write(ptr noundef %61, i32 noundef 39911, ptr noundef nonnull %buf, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324)
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %if.end321.if.end328_crit_edge, label %if.end321.do.body653_crit_edge

if.end321.do.body653_crit_edge:                   ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end321.if.end328_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end328

if.end328:                                        ; preds = %if.end321.if.end328_crit_edge, %lor.lhs.false.if.end328_crit_edge
  %regmap329 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %regmap329 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap329, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 54064, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool331.not = icmp eq i32 %call.i, 0
  br i1 %tobool331.not, label %if.end333, label %if.end328.do.body653_crit_edge

if.end328.do.body653_crit_edge:                   ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end333:                                        ; preds = %if.end328
  %64 = ptrtoint ptr %regmap329 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap329, align 4
  %call.i906 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 54535, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i906)
  %tobool336.not = icmp eq i32 %call.i906, 0
  br i1 %tobool336.not, label %if.end338, label %if.end333.do.body653_crit_edge

if.end333.do.body653_crit_edge:                   ; preds = %if.end333
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end338:                                        ; preds = %if.end333
  %66 = ptrtoint ptr %regmap329 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap329, align 4
  %call.i907 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 39934, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i907)
  %tobool341.not = icmp eq i32 %call.i907, 0
  br i1 %tobool341.not, label %if.end343, label %if.end338.do.body653_crit_edge

if.end338.do.body653_crit_edge:                   ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end343:                                        ; preds = %if.end338
  %68 = ptrtoint ptr %regmap329 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap329, align 4
  %call.i908 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 39874, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i908)
  %tobool346.not = icmp eq i32 %call.i908, 0
  br i1 %tobool346.not, label %if.end348, label %if.end343.do.body653_crit_edge

if.end343.do.body653_crit_edge:                   ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end348:                                        ; preds = %if.end343
  %70 = call ptr @memset(ptr %buf, i32 0, i32 3)
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %71 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %transmission_mode, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %72, label %do.body355 [
    i32 2, label %sw.bb
    i32 0, label %if.end348.sw.epilog_crit_edge
    i32 1, label %sw.bb350
  ]

if.end348.sw.epilog_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb350:                                         ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %buf, align 1
  %76 = or i8 %75, 1
  store i8 %76, ptr %buf, align 1
  br label %sw.epilog

do.body355:                                       ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then367)) #9
          to label %sw.epilog [label %if.then367], !srcloc !255

if.then367:                                       ; preds = %do.body355
  call void @__sanitizer_cov_trace_pc() #11
  %dev368 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug294, ptr noundef %dev368, ptr noundef nonnull @.str.50) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then367, %do.body355, %sw.bb350, %sw.bb, %if.end348.sw.epilog_crit_edge
  %auto_mode.0.off0 = phi i1 [ false, %sw.bb350 ], [ false, %if.end348.sw.epilog_crit_edge ], [ true, %sw.bb ], [ true, %if.then367 ], [ true, %do.body355 ]
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %77 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %guard_interval, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %78, label %do.body389 [
    i32 4, label %sw.bb372
    i32 0, label %sw.epilog.sw.epilog406_crit_edge
    i32 1, label %sw.bb373
    i32 2, label %sw.bb378
    i32 3, label %sw.bb383
  ]

sw.epilog.sw.epilog406_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog406

sw.bb372:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog406

sw.bb373:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %buf, align 1
  %82 = or i8 %81, 4
  store i8 %82, ptr %buf, align 1
  br label %sw.epilog406

sw.bb378:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %buf, align 1
  %85 = or i8 %84, 8
  store i8 %85, ptr %buf, align 1
  br label %sw.epilog406

sw.bb383:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %buf, align 1
  %88 = or i8 %87, 12
  store i8 %88, ptr %buf, align 1
  br label %sw.epilog406

do.body389:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then401)) #9
          to label %sw.epilog406 [label %if.then401], !srcloc !255

if.then401:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #11
  %dev402 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug295, ptr noundef %dev402, ptr noundef nonnull @.str.51) #9
  br label %sw.epilog406

sw.epilog406:                                     ; preds = %if.then401, %do.body389, %sw.bb383, %sw.bb378, %sw.bb373, %sw.bb372, %sw.epilog.sw.epilog406_crit_edge
  %auto_mode.1.off0 = phi i1 [ %auto_mode.0.off0, %sw.bb383 ], [ %auto_mode.0.off0, %sw.bb378 ], [ %auto_mode.0.off0, %sw.bb373 ], [ %auto_mode.0.off0, %sw.epilog.sw.epilog406_crit_edge ], [ true, %sw.bb372 ], [ true, %if.then401 ], [ true, %do.body389 ]
  %hierarchy = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %89 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %hierarchy, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %90, label %do.body424 [
    i32 4, label %sw.bb407
    i32 0, label %sw.epilog406.sw.epilog441_crit_edge
    i32 1, label %sw.bb408
    i32 2, label %sw.bb413
    i32 3, label %sw.bb418
  ]

sw.epilog406.sw.epilog441_crit_edge:              ; preds = %sw.epilog406
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog441

sw.bb407:                                         ; preds = %sw.epilog406
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog441

sw.bb408:                                         ; preds = %sw.epilog406
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %buf, align 1
  %94 = or i8 %93, 16
  store i8 %94, ptr %buf, align 1
  br label %sw.epilog441

sw.bb413:                                         ; preds = %sw.epilog406
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %buf, align 1
  %97 = or i8 %96, 32
  store i8 %97, ptr %buf, align 1
  br label %sw.epilog441

sw.bb418:                                         ; preds = %sw.epilog406
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %buf, align 1
  %100 = or i8 %99, 48
  store i8 %100, ptr %buf, align 1
  br label %sw.epilog441

do.body424:                                       ; preds = %sw.epilog406
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then436)) #9
          to label %sw.epilog441 [label %if.then436], !srcloc !255

if.then436:                                       ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #11
  %dev437 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug296, ptr noundef %dev437, ptr noundef nonnull @.str.52) #9
  br label %sw.epilog441

sw.epilog441:                                     ; preds = %if.then436, %do.body424, %sw.bb418, %sw.bb413, %sw.bb408, %sw.bb407, %sw.epilog406.sw.epilog441_crit_edge
  %auto_mode.2.off0 = phi i1 [ %auto_mode.1.off0, %sw.bb418 ], [ %auto_mode.1.off0, %sw.bb413 ], [ %auto_mode.1.off0, %sw.bb408 ], [ %auto_mode.1.off0, %sw.epilog406.sw.epilog441_crit_edge ], [ true, %sw.bb407 ], [ true, %if.then436 ], [ true, %do.body424 ]
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %101 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %modulation, align 4
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %102, label %do.body454 [
    i32 6, label %sw.bb442
    i32 0, label %sw.epilog441.sw.epilog471_crit_edge
    i32 1, label %sw.bb443
    i32 3, label %sw.bb448
  ]

sw.epilog441.sw.epilog471_crit_edge:              ; preds = %sw.epilog441
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog471

sw.bb442:                                         ; preds = %sw.epilog441
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog471

sw.bb443:                                         ; preds = %sw.epilog441
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %4, align 1
  %106 = or i8 %105, 64
  store i8 %106, ptr %4, align 1
  br label %sw.epilog471

sw.bb448:                                         ; preds = %sw.epilog441
  call void @__sanitizer_cov_trace_pc() #11
  %107 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %4, align 1
  %109 = or i8 %108, -128
  store i8 %109, ptr %4, align 1
  br label %sw.epilog471

do.body454:                                       ; preds = %sw.epilog441
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then466)) #9
          to label %sw.epilog471 [label %if.then466], !srcloc !255

if.then466:                                       ; preds = %do.body454
  call void @__sanitizer_cov_trace_pc() #11
  %dev467 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug297, ptr noundef %dev467, ptr noundef nonnull @.str.53) #9
  br label %sw.epilog471

sw.epilog471:                                     ; preds = %if.then466, %do.body454, %sw.bb448, %sw.bb443, %sw.bb442, %sw.epilog441.sw.epilog471_crit_edge
  %auto_mode.3.off0 = phi i1 [ %auto_mode.2.off0, %sw.bb448 ], [ %auto_mode.2.off0, %sw.bb443 ], [ %auto_mode.2.off0, %sw.epilog441.sw.epilog471_crit_edge ], [ true, %sw.bb442 ], [ true, %if.then466 ], [ true, %do.body454 ]
  %110 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %4, align 1
  %112 = or i8 %111, 16
  store i8 %112, ptr %4, align 1
  %code_rate_HP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %113 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %code_rate_HP, align 4
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %114, label %do.body498 [
    i32 9, label %sw.bb476
    i32 1, label %sw.epilog471.sw.epilog515_crit_edge
    i32 2, label %sw.bb477
    i32 3, label %sw.bb482
    i32 5, label %sw.bb487
    i32 7, label %sw.bb492
  ]

sw.epilog471.sw.epilog515_crit_edge:              ; preds = %sw.epilog471
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog515

sw.bb476:                                         ; preds = %sw.epilog471
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog515

sw.bb477:                                         ; preds = %sw.epilog471
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %5, align 1
  %118 = or i8 %117, 1
  store i8 %118, ptr %5, align 1
  br label %sw.epilog515

sw.bb482:                                         ; preds = %sw.epilog471
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %5, align 1
  %121 = or i8 %120, 2
  store i8 %121, ptr %5, align 1
  br label %sw.epilog515

sw.bb487:                                         ; preds = %sw.epilog471
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %5, align 1
  %124 = or i8 %123, 3
  store i8 %124, ptr %5, align 1
  br label %sw.epilog515

sw.bb492:                                         ; preds = %sw.epilog471
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %5, align 1
  %127 = or i8 %126, 4
  store i8 %127, ptr %5, align 1
  br label %sw.epilog515

do.body498:                                       ; preds = %sw.epilog471
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then510)) #9
          to label %sw.epilog515 [label %if.then510], !srcloc !255

if.then510:                                       ; preds = %do.body498
  call void @__sanitizer_cov_trace_pc() #11
  %dev511 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug298, ptr noundef %dev511, ptr noundef nonnull @.str.54) #9
  br label %sw.epilog515

sw.epilog515:                                     ; preds = %if.then510, %do.body498, %sw.bb492, %sw.bb487, %sw.bb482, %sw.bb477, %sw.bb476, %sw.epilog471.sw.epilog515_crit_edge
  %auto_mode.4.off0 = phi i1 [ %auto_mode.3.off0, %sw.bb492 ], [ %auto_mode.3.off0, %sw.bb487 ], [ %auto_mode.3.off0, %sw.bb482 ], [ %auto_mode.3.off0, %sw.bb477 ], [ %auto_mode.3.off0, %sw.epilog471.sw.epilog515_crit_edge ], [ true, %sw.bb476 ], [ true, %if.then510 ], [ true, %do.body498 ]
  %code_rate_LP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %128 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %code_rate_LP, align 4
  %130 = zext i32 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %129, label %do.body538 [
    i32 9, label %sw.bb516
    i32 1, label %sw.epilog515.sw.epilog555_crit_edge
    i32 2, label %sw.bb517
    i32 3, label %sw.bb522
    i32 5, label %sw.bb527
    i32 7, label %sw.bb532
    i32 0, label %sw.epilog515.sw.epilog555_crit_edge989
  ]

sw.epilog515.sw.epilog555_crit_edge989:           ; preds = %sw.epilog515
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog555

sw.epilog515.sw.epilog555_crit_edge:              ; preds = %sw.epilog515
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog555

sw.bb516:                                         ; preds = %sw.epilog515
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog555

sw.bb517:                                         ; preds = %sw.epilog515
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %5, align 1
  %133 = or i8 %132, 8
  store i8 %133, ptr %5, align 1
  br label %sw.epilog555

sw.bb522:                                         ; preds = %sw.epilog515
  call void @__sanitizer_cov_trace_pc() #11
  %134 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %5, align 1
  %136 = or i8 %135, 16
  store i8 %136, ptr %5, align 1
  br label %sw.epilog555

sw.bb527:                                         ; preds = %sw.epilog515
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %5, align 1
  %139 = or i8 %138, 24
  store i8 %139, ptr %5, align 1
  br label %sw.epilog555

sw.bb532:                                         ; preds = %sw.epilog515
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %5, align 1
  %142 = or i8 %141, 32
  store i8 %142, ptr %5, align 1
  br label %sw.epilog555

do.body538:                                       ; preds = %sw.epilog515
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then550)) #9
          to label %sw.epilog555 [label %if.then550], !srcloc !255

if.then550:                                       ; preds = %do.body538
  call void @__sanitizer_cov_trace_pc() #11
  %dev551 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug299, ptr noundef %dev551, ptr noundef nonnull @.str.55) #9
  br label %sw.epilog555

sw.epilog555:                                     ; preds = %if.then550, %do.body538, %sw.bb532, %sw.bb527, %sw.bb522, %sw.bb517, %sw.bb516, %sw.epilog515.sw.epilog555_crit_edge, %sw.epilog515.sw.epilog555_crit_edge989
  %auto_mode.5.off0 = phi i1 [ %auto_mode.4.off0, %sw.bb532 ], [ %auto_mode.4.off0, %sw.bb527 ], [ %auto_mode.4.off0, %sw.bb522 ], [ %auto_mode.4.off0, %sw.bb517 ], [ %auto_mode.4.off0, %sw.epilog515.sw.epilog555_crit_edge ], [ %auto_mode.4.off0, %sw.epilog515.sw.epilog555_crit_edge989 ], [ true, %sw.bb516 ], [ true, %if.then550 ], [ true, %do.body538 ]
  %143 = ptrtoint ptr %bandwidth_hz14 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bandwidth_hz14, align 4
  %145 = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %144, label %do.body568 [
    i32 6000000, label %sw.epilog555.sw.epilog585_crit_edge
    i32 7000000, label %sw.epilog555.sw.epilog585.sink.split_crit_edge
    i32 8000000, label %sw.bb562
  ]

sw.epilog555.sw.epilog585.sink.split_crit_edge:   ; preds = %sw.epilog555
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog585.sink.split

sw.epilog555.sw.epilog585_crit_edge:              ; preds = %sw.epilog555
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog585

sw.bb562:                                         ; preds = %sw.epilog555
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog585.sink.split

do.body568:                                       ; preds = %sw.epilog555
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then580)) #9
          to label %do.body653 [label %if.then580], !srcloc !255

if.then580:                                       ; preds = %do.body568
  call void @__sanitizer_cov_trace_pc() #11
  %dev581 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug300, ptr noundef %dev581, ptr noundef nonnull @.str.56) #9
  br label %do.body653

sw.epilog585.sink.split:                          ; preds = %sw.bb562, %sw.epilog555.sw.epilog585.sink.split_crit_edge
  %.sink988 = phi i8 [ 8, %sw.bb562 ], [ 4, %sw.epilog555.sw.epilog585.sink.split_crit_edge ]
  %146 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %4, align 1
  %148 = or i8 %147, %.sink988
  store i8 %148, ptr %4, align 1
  br label %sw.epilog585

sw.epilog585:                                     ; preds = %sw.epilog585.sink.split, %sw.epilog555.sw.epilog585_crit_edge
  %149 = ptrtoint ptr %regmap329 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap329, align 4
  %call588 = call i32 @regmap_bulk_write(ptr noundef %150, i32 noundef 54208, ptr noundef nonnull %buf, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call588)
  %tobool589.not = icmp eq i32 %call588, 0
  br i1 %tobool589.not, label %if.end591, label %sw.epilog585.do.body653_crit_edge

sw.epilog585.do.body653_crit_edge:                ; preds = %sw.epilog585
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end591:                                        ; preds = %sw.epilog585
  %151 = ptrtoint ptr %regmap329 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regmap329, align 4
  br i1 %auto_mode.5.off0, label %if.then593, label %if.else616

if.then593:                                       ; preds = %if.end591
  %call595 = call i32 @regmap_write(ptr noundef %152, i32 noundef 44797, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call595)
  %tobool596.not = icmp eq i32 %call595, 0
  br i1 %tobool596.not, label %do.body599, label %if.then593.do.body653_crit_edge

if.then593.do.body653_crit_edge:                  ; preds = %if.then593
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

do.body599:                                       ; preds = %if.then593
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then611)) #9
          to label %if.end644 [label %if.then611], !srcloc !255

if.then611:                                       ; preds = %do.body599
  call void @__sanitizer_cov_trace_pc() #11
  %dev612 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug301, ptr noundef %dev612, ptr noundef nonnull @.str.57) #9
  br label %if.end644

if.else616:                                       ; preds = %if.end591
  %call618 = call i32 @regmap_write(ptr noundef %152, i32 noundef 44797, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call618)
  %tobool619.not = icmp eq i32 %call618, 0
  br i1 %tobool619.not, label %if.end621, label %if.else616.do.body653_crit_edge

if.else616.do.body653_crit_edge:                  ; preds = %if.else616
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end621:                                        ; preds = %if.else616
  %153 = ptrtoint ptr %regmap329 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regmap329, align 4
  %call623 = call i32 @regmap_write(ptr noundef %154, i32 noundef 44798, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call623)
  %tobool624.not = icmp eq i32 %call623, 0
  br i1 %tobool624.not, label %do.body627, label %if.end621.do.body653_crit_edge

if.end621.do.body653_crit_edge:                   ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

do.body627:                                       ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then639)) #9
          to label %if.end644 [label %if.then639], !srcloc !255

if.then639:                                       ; preds = %do.body627
  call void @__sanitizer_cov_trace_pc() #11
  %dev640 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug302, ptr noundef %dev640, ptr noundef nonnull @.str.58) #9
  br label %if.end644

if.end644:                                        ; preds = %if.then639, %do.body627, %if.then611, %do.body599
  %155 = ptrtoint ptr %regmap329 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regmap329, align 4
  %call646 = call i32 @regmap_write(ptr noundef %156, i32 noundef 65535, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call646)
  %tobool647.not = icmp eq i32 %call646, 0
  br i1 %tobool647.not, label %if.end649, label %if.end644.do.body653_crit_edge

if.end644.do.body653_crit_edge:                   ; preds = %if.end644
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body653

if.end649:                                        ; preds = %if.end644
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %bandwidth_hz14 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %bandwidth_hz14, align 4
  %159 = ptrtoint ptr %bandwidth_hz15 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %bandwidth_hz15, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %160 = load volatile i32, ptr @jiffies, align 128
  %set_frontend_jiffies = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 19
  %161 = ptrtoint ptr %set_frontend_jiffies to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %set_frontend_jiffies, align 4
  %first_tune652 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 28
  %162 = ptrtoint ptr %first_tune652 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %first_tune652, align 4
  br label %cleanup

do.body653:                                       ; preds = %if.end644.do.body653_crit_edge, %if.end621.do.body653_crit_edge, %if.else616.do.body653_crit_edge, %if.then593.do.body653_crit_edge, %sw.epilog585.do.body653_crit_edge, %if.then580, %do.body568, %if.end343.do.body653_crit_edge, %if.end338.do.body653_crit_edge, %if.end333.do.body653_crit_edge, %if.end328.do.body653_crit_edge, %if.end321.do.body653_crit_edge, %if.end283.do.body653_crit_edge, %if.then42.do.body653_crit_edge, %if.end27.do.body653_crit_edge, %land.lhs.true.9.do.body653_crit_edge, %land.lhs.true.6.do.body653_crit_edge, %land.lhs.true.3.do.body653_crit_edge, %land.lhs.true.do.body653_crit_edge, %for.cond.preheader.do.body653_crit_edge, %if.then5.do.body653_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then5.do.body653_crit_edge ], [ %call29, %if.end27.do.body653_crit_edge ], [ %call46, %if.then42.do.body653_crit_edge ], [ %call318, %if.end283.do.body653_crit_edge ], [ %call324, %if.end321.do.body653_crit_edge ], [ %call.i, %if.end328.do.body653_crit_edge ], [ %call.i906, %if.end333.do.body653_crit_edge ], [ %call.i907, %if.end338.do.body653_crit_edge ], [ %call.i908, %if.end343.do.body653_crit_edge ], [ %call588, %sw.epilog585.do.body653_crit_edge ], [ %call595, %if.then593.do.body653_crit_edge ], [ %call646, %if.end644.do.body653_crit_edge ], [ %call618, %if.else616.do.body653_crit_edge ], [ %call623, %if.end621.do.body653_crit_edge ], [ -22, %if.then580 ], [ -22, %do.body568 ], [ -22, %land.lhs.true.do.body653_crit_edge ], [ -22, %land.lhs.true.3.do.body653_crit_edge ], [ -22, %land.lhs.true.6.do.body653_crit_edge ], [ -22, %for.cond.preheader.do.body653_crit_edge ], [ -22, %land.lhs.true.9.do.body653_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_set_frontend.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_set_frontend, %if.then665)) #9
          to label %cleanup [label %if.then665], !srcloc !255

if.then665:                                       ; preds = %do.body653
  call void @__sanitizer_cov_trace_pc() #11
  %dev666 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_set_frontend.__UNIQUE_ID_ddebug303, ptr noundef %dev666, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then665, %do.body653, %if.end649
  %retval.0 = phi i32 [ 0, %if.end649 ], [ %ret.0, %if.then665 ], [ %ret.0, %do.body653 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_frequency) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @af9013_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 800, ptr %fesettings, align 4
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
define internal i32 @af9013_get_frontend(ptr nocapture noundef readonly %fe, ptr noundef writeonly %c) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !257
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !257
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !257
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_get_frontend.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_get_frontend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_get_frontend.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 54208, ptr noundef nonnull %buf, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.body82

if.end7:                                          ; preds = %do.end
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %5, align 1
  %13 = lshr i8 %12, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %.not = icmp eq i8 %13, 3
  br i1 %.not, label %if.end7.sw.epilog_crit_edge, label %switch.lookup

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %14 = zext i8 %13 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.af9013_get_frontend, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %modulation11 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %16 = ptrtoint ptr %modulation11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %switch.load, ptr %modulation11, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end7.sw.epilog_crit_edge
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf, align 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %switch = icmp ult i8 %19, 2
  br i1 %switch, label %sw.epilog19.sink.split, label %sw.epilog.sw.epilog19_crit_edge

sw.epilog.sw.epilog19_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog19

sw.epilog19.sink.split:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %and15 = zext i8 %19 to i32
  %transmission_mode18 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %20 = ptrtoint ptr %transmission_mode18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and15, ptr %transmission_mode18, align 4
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.epilog19.sink.split, %sw.epilog.sw.epilog19_crit_edge
  %21 = lshr i8 %18, 2
  %22 = and i8 %21, 3
  %and23 = zext i8 %22 to i32
  %guard_interval30 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %23 = ptrtoint ptr %guard_interval30 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and23, ptr %guard_interval30, align 4
  %24 = lshr i8 %18, 4
  %25 = and i8 %24, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %switch147 = icmp ult i8 %25, 4
  br i1 %switch147, label %sw.epilog43.sink.split, label %sw.epilog19.sw.epilog43_crit_edge

sw.epilog19.sw.epilog43_crit_edge:                ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog43

sw.epilog43.sink.split:                           ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #11
  %and35 = zext i8 %25 to i32
  %hierarchy42 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %26 = ptrtoint ptr %hierarchy42 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and35, ptr %hierarchy42, align 4
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %sw.epilog43.sink.split, %sw.epilog19.sw.epilog43_crit_edge
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %7, align 1
  %29 = and i8 %28, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %29)
  %30 = icmp ult i8 %29, 5
  br i1 %30, label %switch.lookup141, label %sw.epilog43.sw.epilog57_crit_edge

sw.epilog43.sw.epilog57_crit_edge:                ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog57

switch.lookup141:                                 ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #11
  %and47 = zext i8 %29 to i32
  %switch.gep142 = getelementptr inbounds [5 x i32], ptr @switch.table.af9013_get_frontend.77, i32 0, i32 %and47
  %31 = ptrtoint ptr %switch.gep142 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load143 = load i32, ptr %switch.gep142, align 4
  %code_rate_HP56 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %32 = ptrtoint ptr %code_rate_HP56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %switch.load143, ptr %code_rate_HP56, align 4
  br label %sw.epilog57

sw.epilog57:                                      ; preds = %switch.lookup141, %sw.epilog43.sw.epilog57_crit_edge
  %33 = lshr i8 %28, 3
  %34 = and i8 %33, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %34)
  %35 = icmp ult i8 %34, 5
  br i1 %35, label %switch.lookup144, label %sw.epilog57.sw.epilog71_crit_edge

sw.epilog57.sw.epilog71_crit_edge:                ; preds = %sw.epilog57
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog71

switch.lookup144:                                 ; preds = %sw.epilog57
  call void @__sanitizer_cov_trace_pc() #11
  %and61 = zext i8 %34 to i32
  %switch.gep145 = getelementptr inbounds [5 x i32], ptr @switch.table.af9013_get_frontend.78, i32 0, i32 %and61
  %36 = ptrtoint ptr %switch.gep145 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load146 = load i32, ptr %switch.gep145, align 4
  %code_rate_LP70 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %37 = ptrtoint ptr %code_rate_LP70 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %switch.load146, ptr %code_rate_LP70, align 4
  br label %sw.epilog71

sw.epilog71:                                      ; preds = %switch.lookup144, %sw.epilog57.sw.epilog71_crit_edge
  %38 = lshr i8 %12, 2
  %39 = and i8 %38, 3
  %and75 = zext i8 %39 to i32
  %40 = zext i32 %and75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %and75, label %sw.epilog71.cleanup_crit_edge [
    i32 0, label %sw.bb76
    i32 1, label %sw.bb77
    i32 2, label %sw.bb79
  ]

sw.epilog71.cleanup_crit_edge:                    ; preds = %sw.epilog71
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb76:                                          ; preds = %sw.epilog71
  call void @__sanitizer_cov_trace_pc() #11
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 7
  %41 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 6000000, ptr %bandwidth_hz, align 4
  br label %cleanup

sw.bb77:                                          ; preds = %sw.epilog71
  call void @__sanitizer_cov_trace_pc() #11
  %bandwidth_hz78 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 7
  %42 = ptrtoint ptr %bandwidth_hz78 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 7000000, ptr %bandwidth_hz78, align 4
  br label %cleanup

sw.bb79:                                          ; preds = %sw.epilog71
  call void @__sanitizer_cov_trace_pc() #11
  %bandwidth_hz80 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 7
  %43 = ptrtoint ptr %bandwidth_hz80 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 8000000, ptr %bandwidth_hz80, align 4
  br label %cleanup

do.body82:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_get_frontend.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_get_frontend, %if.then94)) #9
          to label %cleanup [label %if.then94], !srcloc !255

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %dev95 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_get_frontend.__UNIQUE_ID_ddebug305, ptr noundef %dev95, ptr noundef nonnull @.str.11, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %do.body82, %sw.bb79, %sw.bb77, %sw.bb76, %sw.epilog71.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9013_read_status(ptr nocapture noundef %fe, ptr nocapture noundef writeonly %status) #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  %utmp1 = alloca i32, align 4
  %utmp2 = alloca i32, align 4
  %utmp3 = alloca i32, align 4
  %utmp4 = alloca i32, align 4
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #9
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp1) #9
  %5 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %utmp1, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp2) #9
  %6 = ptrtoint ptr %utmp2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %utmp2, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp3) #9
  %7 = ptrtoint ptr %utmp3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %utmp3, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp4) #9
  %8 = ptrtoint ptr %utmp4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %utmp4, align 4, !annotation !257
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #9
  %9 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %10 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %11 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %12 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %13 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %14 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %15 = call ptr @memset(ptr %buf, i32 255, i32 7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !255

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %read_status_jiffies = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %read_status_jiffies to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_status_jiffies, align 4
  %add.neg = add i32 %16, -200
  %sub = sub i32 %add.neg, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %do.end.if.else_crit_edge

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %set_frontend_jiffies = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 19
  %19 = ptrtoint ptr %set_frontend_jiffies to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %set_frontend_jiffies, align 4
  %add6 = add i32 %20, 400
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub7 = sub i32 %add6, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7)
  %cmp8 = icmp slt i32 %sub7, 0
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %fe_status = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fe_status, align 4
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %regmap = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %25, i32 noundef 54535, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.else.do.body565_crit_edge

if.else.do.body565_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end13:                                         ; preds = %if.else
  %26 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %utmp, align 4
  %28 = and i32 %27, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool14.not = icmp eq i32 %28, 0
  br i1 %tobool14.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 31, ptr %utmp1, align 4
  br label %do.body29

if.else16:                                        ; preds = %if.end13
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_read(ptr noundef %31, i32 noundef 54064, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.else16.do.body565_crit_edge

if.else16.do.body565_crit_edge:                   ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end21:                                         ; preds = %if.else16
  %32 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %utmp, align 4
  %34 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool24.not = icmp eq i32 %34, 0
  br i1 %tobool24.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 7, ptr %utmp1, align 4
  br label %do.body29

if.else26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %utmp1, align 4
  br label %do.body29

do.body29:                                        ; preds = %if.else26, %if.then25, %if.then15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then41)) #9
          to label %do.end45 [label %if.then41], !srcloc !255

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %utmp1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug307, ptr noundef %dev42, ptr noundef nonnull @.str.61, i32 noundef %38) #9
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %40 = ptrtoint ptr %read_status_jiffies to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %read_status_jiffies, align 4
  %41 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %utmp1, align 4
  %fe_status47 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 13
  %43 = ptrtoint ptr %fe_status47 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fe_status47, align 4
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.then9
  %storemerge = phi i32 [ %42, %do.end45 ], [ %23, %if.then9 ]
  %44 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %storemerge, ptr %status, align 4
  %strength_en = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 14
  %45 = ptrtoint ptr %strength_en to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %strength_en, align 4
  %47 = zext i8 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %46, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %if.end48.sw.bb103_crit_edge
  ]

if.end48.sw.bb103_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb103

sw.bb:                                            ; preds = %if.end48
  %regmap49 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap49, align 4
  %call50 = call i32 @regmap_read(ptr noundef %49, i32 noundef 39918, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %sw.bb.do.body565_crit_edge

sw.bb.do.body565_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end53:                                         ; preds = %sw.bb
  %50 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %utmp, align 4
  %and55 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else100, label %if.then57

if.then57:                                        ; preds = %if.end53
  %52 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap49, align 4
  %call59 = call i32 @regmap_read(ptr noundef %53, i32 noundef 39869, ptr noundef nonnull %utmp1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.then57.do.body565_crit_edge

if.then57.do.body565_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end62:                                         ; preds = %if.then57
  %54 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap49, align 4
  %call64 = call i32 @regmap_read(ptr noundef %55, i32 noundef 39888, ptr noundef nonnull %utmp2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %if.end62.do.body565_crit_edge

if.end62.do.body565_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end67:                                         ; preds = %if.end62
  %56 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap49, align 4
  %call69 = call i32 @regmap_read(ptr noundef %57, i32 noundef 39906, ptr noundef nonnull %utmp3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end67.do.body565_crit_edge

if.end67.do.body565_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end72:                                         ; preds = %if.end67
  %58 = ptrtoint ptr %regmap49 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap49, align 4
  %call74 = call i32 @regmap_read(ptr noundef %59, i32 noundef 39908, ptr noundef nonnull %utmp4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.end72.do.body565_crit_edge

if.end72.do.body565_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end77:                                         ; preds = %if.end72
  %60 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %utmp1, align 4
  %conv78 = trunc i32 %61 to i8
  %rf_agc_50 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 15
  %62 = ptrtoint ptr %rf_agc_50 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv78, ptr %rf_agc_50, align 1
  %63 = ptrtoint ptr %utmp2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %utmp2, align 4
  %conv79 = trunc i32 %64 to i8
  %rf_agc_80 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 16
  %65 = ptrtoint ptr %rf_agc_80 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv79, ptr %rf_agc_80, align 2
  %66 = ptrtoint ptr %utmp3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %utmp3, align 4
  %conv80 = trunc i32 %67 to i8
  %if_agc_50 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 17
  %68 = ptrtoint ptr %if_agc_50 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv80, ptr %if_agc_50, align 1
  %69 = ptrtoint ptr %utmp4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %utmp4, align 4
  %conv81 = trunc i32 %70 to i8
  %if_agc_80 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 18
  %71 = ptrtoint ptr %if_agc_80 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv81, ptr %if_agc_80, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then94)) #9
          to label %do.end98 [label %if.then94], !srcloc !255

if.then94:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  %dev95 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %72 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %utmp1, align 4
  %74 = ptrtoint ptr %utmp2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %utmp2, align 4
  %76 = ptrtoint ptr %utmp3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %utmp3, align 4
  %78 = ptrtoint ptr %utmp4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %utmp4, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug308, ptr noundef %dev95, ptr noundef nonnull @.str.62, i32 noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef %79) #9
  br label %do.end98

do.end98:                                         ; preds = %if.then94, %if.end77
  %80 = ptrtoint ptr %strength_en to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %strength_en, align 4
  br label %sw.bb103

if.else100:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %strength_en to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 2, ptr %strength_en, align 4
  br label %sw.epilog

sw.bb103:                                         ; preds = %do.end98, %if.end48.sw.bb103_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %82 = load volatile i32, ptr @jiffies, align 128
  %strength_jiffies = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 21
  %83 = ptrtoint ptr %strength_jiffies to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %strength_jiffies, align 4
  %add105.neg = add i32 %82, -200
  %sub106 = sub i32 %add105.neg, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub106)
  %cmp107 = icmp slt i32 %sub106, 0
  br i1 %cmp107, label %sw.bb103.sw.epilog_crit_edge, label %if.end110

sw.bb103.sw.epilog_crit_edge:                     ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end110:                                        ; preds = %sw.bb103
  %regmap111 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %85 = ptrtoint ptr %regmap111 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap111, align 4
  %call112 = call i32 @regmap_bulk_read(ptr noundef %86, i32 noundef 53372, ptr noundef nonnull %buf, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end110.do.body565_crit_edge

if.end110.do.body565_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end115:                                        ; preds = %if.end110
  %87 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %buf, align 1
  %conv116 = zext i8 %88 to i32
  %89 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %9, align 1
  %conv118 = zext i8 %90 to i32
  %add119 = add nuw nsw i32 %conv118, %conv116
  %rf_agc_80120 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 16
  %91 = ptrtoint ptr %rf_agc_80120 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %rf_agc_80120, align 2
  %conv121 = zext i8 %92 to i32
  %if_agc_80122 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 18
  %93 = ptrtoint ptr %if_agc_80122 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %if_agc_80122, align 4
  %conv123 = zext i8 %94 to i32
  %add124 = add nuw nsw i32 %conv123, %conv121
  %sub125 = sub nsw i32 %add119, %add124
  %mul = mul nsw i32 %sub125, 30000
  %rf_agc_50126 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 15
  %95 = ptrtoint ptr %rf_agc_50126 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %rf_agc_50126, align 1
  %conv127 = zext i8 %96 to i32
  %if_agc_50128 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 17
  %97 = ptrtoint ptr %if_agc_50128 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %if_agc_50128, align 1
  %conv129 = zext i8 %98 to i32
  %add130 = sub nsw i32 %conv127, %add124
  %sub136 = add nsw i32 %add130, %conv129
  %div = sdiv i32 %mul, %sub136
  %sub137 = add nsw i32 %div, -80000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then150)) #9
          to label %do.end169 [label %if.then150], !srcloc !255

if.then150:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  %dev151 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %99 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %buf, align 1
  %conv153 = zext i8 %100 to i32
  %101 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %9, align 1
  %conv155 = zext i8 %102 to i32
  %add156 = add nuw nsw i32 %conv155, %conv153
  %103 = ptrtoint ptr %rf_agc_50126 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %rf_agc_50126, align 1
  %conv158 = zext i8 %104 to i32
  %105 = ptrtoint ptr %if_agc_50128 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %if_agc_50128, align 1
  %conv160 = zext i8 %106 to i32
  %add161 = add nuw nsw i32 %conv160, %conv158
  %107 = ptrtoint ptr %rf_agc_80120 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %rf_agc_80120, align 2
  %conv163 = zext i8 %108 to i32
  %109 = ptrtoint ptr %if_agc_80122 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %if_agc_80122, align 4
  %conv165 = zext i8 %110 to i32
  %add166 = add nuw nsw i32 %conv165, %conv163
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug309, ptr noundef %dev151, ptr noundef nonnull @.str.63, i32 noundef %sub137, i32 noundef %add156, i32 noundef %add161, i32 noundef %add166) #9
  br label %do.end169

do.end169:                                        ; preds = %if.then150, %if.end115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %111 = load volatile i32, ptr @jiffies, align 128
  %112 = ptrtoint ptr %strength_jiffies to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %strength_jiffies, align 4
  %113 = call i32 @llvm.smax.i32(i32 %div, i32 -10000)
  %114 = add nsw i32 %113, 10000
  %115 = call i32 @llvm.umin.i32(i32 %114, i32 60000)
  %116 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %utmp1, align 4
  %narrow = mul nuw i32 %115, 65535
  %mul183 = zext i32 %narrow to i64
  %117 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8372362243587641827, i64 %mul183, i32 0) #14, !srcloc !262
  %asmresult.i.i.i = extractvalue { i64, i32 } %117, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %117, 1
  %118 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8372362243587641827, i64 %mul183, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #14, !srcloc !259
  %asmresult10.i.i.i = extractvalue { i64, i32 } %118, 0
  %div158.i.i756 = lshr i64 %asmresult10.i.i.i, 15
  %conv185 = trunc i64 %div158.i.i756 to i16
  %dvbv3_strength = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 25
  %119 = ptrtoint ptr %dvbv3_strength to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv185, ptr %dvbv3_strength, align 2
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %120 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %stat, align 1
  %conv187 = sext i32 %sub137 to i64
  %121 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 8)
  store i64 %conv187, ptr %121, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %stat192 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %123 = ptrtoint ptr %stat192 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %stat192, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end169, %sw.bb103.sw.epilog_crit_edge, %if.else100
  %fe_status195 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 13
  %124 = ptrtoint ptr %fe_status195 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %fe_status195, align 4
  %and196 = and i32 %125, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %cond592.not = icmp eq i32 %and196, 0
  br i1 %cond592.not, label %sw.default379, label %sw.bb197

sw.bb197:                                         ; preds = %sw.epilog
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %126 = load volatile i32, ptr @jiffies, align 128
  %cnr_jiffies = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 22
  %127 = ptrtoint ptr %cnr_jiffies to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cnr_jiffies, align 4
  %add199.neg = add i32 %126, -200
  %sub200 = sub i32 %add199.neg, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub200)
  %cmp201 = icmp slt i32 %sub200, 0
  br i1 %cmp201, label %sw.bb197.sw.epilog384_crit_edge, label %if.end204

sw.bb197.sw.epilog384_crit_edge:                  ; preds = %sw.bb197
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog384

if.end204:                                        ; preds = %sw.bb197
  %regmap205 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %129 = ptrtoint ptr %regmap205 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap205, align 4
  %call206 = call i32 @regmap_read(ptr noundef %130, i32 noundef 53985, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end209, label %if.end204.do.body565_crit_edge

if.end204.do.body565_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end209:                                        ; preds = %if.end204
  %131 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %utmp, align 4
  %133 = and i32 %132, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool212.not = icmp eq i32 %133, 0
  br i1 %tobool212.not, label %do.body214, label %if.end231

do.body214:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then226)) #9
          to label %sw.epilog384 [label %if.then226], !srcloc !255

if.then226:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #11
  %dev227 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug314, ptr noundef %dev227, ptr noundef nonnull @.str.64) #9
  br label %sw.epilog384

if.end231:                                        ; preds = %if.end209
  %134 = ptrtoint ptr %regmap205 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap205, align 4
  %call234 = call i32 @regmap_bulk_read(ptr noundef %135, i32 noundef 53987, ptr noundef nonnull %buf, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %if.end237, label %if.end231.do.body565_crit_edge

if.end231.do.body565_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end237:                                        ; preds = %if.end231
  %136 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %10, align 1
  %conv239 = zext i8 %137 to i32
  %shl = shl nuw nsw i32 %conv239, 16
  %138 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %9, align 1
  %conv241 = zext i8 %139 to i32
  %shl242 = shl nuw nsw i32 %conv241, 8
  %or = or i32 %shl242, %shl
  %140 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %buf, align 1
  %conv244 = zext i8 %141 to i32
  %or246 = or i32 %or, %conv244
  %142 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %or246, ptr %utmp1, align 4
  %143 = ptrtoint ptr %regmap205 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regmap205, align 4
  %call248 = call i32 @regmap_read(ptr noundef %144, i32 noundef 54209, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %tobool249.not = icmp eq i32 %call248, 0
  br i1 %tobool249.not, label %if.end251, label %if.end237.do.body565_crit_edge

if.end237.do.body565_crit_edge:                   ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end251:                                        ; preds = %if.end237
  %145 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %utmp, align 4
  %shr252 = lshr i32 %146, 6
  %and253 = and i32 %shr252, 3
  %147 = zext i32 %and253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %and253, label %do.body332 [
    i32 0, label %sw.bb254
    i32 1, label %sw.bb279
    i32 2, label %sw.bb305
  ]

sw.bb254:                                         ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #11
  %148 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %utmp1, align 4
  %150 = call i32 @llvm.umax.i32(i32 %149, i32 653799)
  %151 = call i32 @llvm.umin.i32(i32 %150, i32 1689999)
  %152 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %utmp1, align 4
  %call269 = call i32 @intlog10(i32 noundef %151) #9
  %153 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %utmp1, align 4
  %sub270 = sub i32 1690000, %154
  %call271 = call i32 @intlog10(i32 noundef %sub270) #9
  %sub272 = add i32 %call269, 3355443
  %add273 = sub i32 %sub272, %call271
  %conv274 = zext i32 %add273 to i64
  %mul276 = mul nuw nsw i64 %conv274, 13000
  %shr277 = lshr i64 %mul276, 24
  %conv278 = trunc i64 %shr277 to i32
  %155 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv278, ptr %utmp1, align 4
  br label %do.body352

sw.bb279:                                         ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #11
  %156 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %utmp1, align 4
  %158 = call i32 @llvm.umax.i32(i32 %157, i32 371105)
  %159 = call i32 @llvm.umin.i32(i32 %158, i32 827999)
  %160 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %utmp1, align 4
  %sub294 = add nsw i32 %159, -370000
  %call295 = call i32 @intlog10(i32 noundef %sub294) #9
  %161 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %utmp1, align 4
  %sub296 = sub i32 828000, %162
  %call297 = call i32 @intlog10(i32 noundef %sub296) #9
  %sub298 = add i32 %call295, 43900382
  %add299 = sub i32 %sub298, %call297
  %conv300 = zext i32 %add299 to i64
  %mul302 = mul nuw nsw i64 %conv300, 6000
  %shr303 = lshr i64 %mul302, 24
  %conv304 = trunc i64 %shr303 to i32
  %163 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %conv304, ptr %utmp1, align 4
  br label %do.body352

sw.bb305:                                         ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %utmp1, align 4
  %166 = call i32 @llvm.umax.i32(i32 %165, i32 193246)
  %167 = call i32 @llvm.umin.i32(i32 %166, i32 424999)
  %168 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %utmp1, align 4
  %sub320 = add nsw i32 %167, -193000
  %call321 = call i32 @intlog10(i32 noundef %sub320) #9
  %169 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %utmp1, align 4
  %sub322 = sub i32 425000, %170
  %call323 = call i32 @intlog10(i32 noundef %sub322) #9
  %sub324 = add i32 %call321, 49912218
  %add325 = sub i32 %sub324, %call323
  %conv326 = zext i32 %add325 to i64
  %mul328 = mul nuw nsw i64 %conv326, 8000
  %shr329 = lshr i64 %mul328, 24
  %conv330 = trunc i64 %shr329 to i32
  %171 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %conv330, ptr %utmp1, align 4
  br label %do.body352

do.body332:                                       ; preds = %if.end251
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then344)) #9
          to label %do.end350 [label %if.then344], !srcloc !255

if.then344:                                       ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #11
  %dev345 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %172 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %utmp, align 4
  %shr346 = lshr i32 %173, 6
  %and347 = and i32 %shr346, 3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug327, ptr noundef %dev345, ptr noundef nonnull @.str.65, i32 noundef %and347) #9
  br label %do.end350

do.end350:                                        ; preds = %if.then344, %do.body332
  %174 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %utmp1, align 4
  br label %do.body352

do.body352:                                       ; preds = %do.end350, %sw.bb305, %sw.bb279, %sw.bb254
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then364)) #9
          to label %do.end368 [label %if.then364], !srcloc !255

if.then364:                                       ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #11
  %dev365 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %175 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %utmp1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug328, ptr noundef %dev365, ptr noundef nonnull @.str.66, i32 noundef %176) #9
  br label %do.end368

do.end368:                                        ; preds = %if.then364, %do.body352
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %177 = load volatile i32, ptr @jiffies, align 128
  %178 = ptrtoint ptr %cnr_jiffies to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %cnr_jiffies, align 4
  %179 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %utmp1, align 4
  %div370 = udiv i32 %180, 100
  %conv371 = trunc i32 %div370 to i16
  %dvbv3_snr = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 24
  %181 = ptrtoint ptr %dvbv3_snr to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv371, ptr %dvbv3_snr, align 4
  %stat372 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %182 = ptrtoint ptr %stat372 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %stat372, align 1
  %conv375 = zext i32 %180 to i64
  %183 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_storeN_noabort(i32 %184, i32 8)
  store i64 %conv375, ptr %183, align 1
  br label %sw.epilog384

sw.default379:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %stat381 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %185 = ptrtoint ptr %stat381 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %stat381, align 1
  br label %sw.epilog384

sw.epilog384:                                     ; preds = %sw.default379, %do.end368, %if.then226, %do.body214, %sw.bb197.sw.epilog384_crit_edge
  %186 = ptrtoint ptr %fe_status195 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %fe_status195, align 4
  %and386 = and i32 %187, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and386)
  %cond593.not = icmp eq i32 %and386, 0
  br i1 %cond593.not, label %sw.default547, label %sw.bb387

sw.bb387:                                         ; preds = %sw.epilog384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %188 = load volatile i32, ptr @jiffies, align 128
  %ber_ucb_jiffies = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 23
  %189 = ptrtoint ptr %ber_ucb_jiffies to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ber_ucb_jiffies, align 4
  %add389.neg = add i32 %188, -200
  %sub390 = sub i32 %add389.neg, %190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub390)
  %cmp391 = icmp slt i32 %sub390, 0
  br i1 %cmp391, label %sw.bb387.cleanup_crit_edge, label %if.end394

sw.bb387.cleanup_crit_edge:                       ; preds = %sw.bb387
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end394:                                        ; preds = %sw.bb387
  %regmap395 = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 1
  %191 = ptrtoint ptr %regmap395 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regmap395, align 4
  %call396 = call i32 @regmap_read(ptr noundef %192, i32 noundef 54161, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call396)
  %tobool397.not = icmp eq i32 %call396, 0
  br i1 %tobool397.not, label %if.end399, label %if.end394.do.body565_crit_edge

if.end394.do.body565_crit_edge:                   ; preds = %if.end394
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end399:                                        ; preds = %if.end394
  %193 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %utmp, align 4
  %195 = and i32 %194, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool402.not = icmp eq i32 %195, 0
  br i1 %tobool402.not, label %do.body404, label %if.end421

do.body404:                                       ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then416)) #9
          to label %cleanup [label %if.then416], !srcloc !255

if.then416:                                       ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #11
  %dev417 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug329, ptr noundef %dev417, ptr noundef nonnull @.str.67) #9
  br label %cleanup

if.end421:                                        ; preds = %if.end399
  %196 = ptrtoint ptr %regmap395 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regmap395, align 4
  %call424 = call i32 @regmap_bulk_read(ptr noundef %197, i32 noundef 54149, ptr noundef nonnull %buf, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call424)
  %tobool425.not = icmp eq i32 %call424, 0
  br i1 %tobool425.not, label %if.end427, label %if.end421.do.body565_crit_edge

if.end421.do.body565_crit_edge:                   ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.end427:                                        ; preds = %if.end421
  %198 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %12, align 1
  %conv429 = zext i8 %199 to i32
  %shl430 = shl nuw nsw i32 %conv429, 16
  %200 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %11, align 1
  %conv432 = zext i8 %201 to i32
  %shl433 = shl nuw nsw i32 %conv432, 8
  %or434 = or i32 %shl433, %shl430
  %202 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %10, align 1
  %conv436 = zext i8 %203 to i32
  %or438 = or i32 %or434, %conv436
  %204 = ptrtoint ptr %utmp1 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %or438, ptr %utmp1, align 4
  %205 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %9, align 1
  %conv440 = zext i8 %206 to i32
  %shl441 = shl nuw nsw i32 %conv440, 8
  %207 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %buf, align 1
  %conv443 = zext i8 %208 to i32
  %or445 = or i32 %shl441, %conv443
  %mul447 = mul nuw nsw i32 %or445, 1632
  %209 = ptrtoint ptr %utmp2 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %mul447, ptr %utmp2, align 4
  %210 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %14, align 1
  %conv449 = zext i8 %211 to i32
  %shl450 = shl nuw nsw i32 %conv449, 8
  %212 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %13, align 1
  %conv452 = zext i8 %213 to i32
  %or454 = or i32 %shl450, %conv452
  %214 = ptrtoint ptr %utmp3 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %or454, ptr %utmp3, align 4
  %215 = ptrtoint ptr %utmp4 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %or445, ptr %utmp4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %or445)
  %cmp462.not = icmp eq i32 %or445, 10000
  br i1 %cmp462.not, label %if.end427.if.end473_crit_edge, label %if.then464

if.end427.if.end473_crit_edge:                    ; preds = %if.end427
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end473

if.then464:                                       ; preds = %if.end427
  %216 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 16, ptr %buf, align 1
  %217 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 39, ptr %9, align 1
  %218 = ptrtoint ptr %regmap395 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regmap395, align 4
  %call469 = call i32 @regmap_bulk_write(ptr noundef %219, i32 noundef 54149, ptr noundef nonnull %buf, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call469)
  %tobool470.not = icmp eq i32 %call469, 0
  br i1 %tobool470.not, label %if.then464.if.end473_crit_edge, label %if.then464.do.body565_crit_edge

if.then464.do.body565_crit_edge:                  ; preds = %if.then464
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

if.then464.if.end473_crit_edge:                   ; preds = %if.then464
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end473

if.end473:                                        ; preds = %if.then464.if.end473_crit_edge, %if.end427.if.end473_crit_edge
  %220 = ptrtoint ptr %regmap395 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %regmap395, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %221, i32 noundef 54161, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool476.not = icmp eq i32 %call.i, 0
  br i1 %tobool476.not, label %do.body479, label %if.end473.do.body565_crit_edge

if.end473.do.body565_crit_edge:                   ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body565

do.body479:                                       ; preds = %if.end473
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then491)) #9
          to label %do.body496 [label %if.then491], !srcloc !255

if.then491:                                       ; preds = %do.body479
  call void @__sanitizer_cov_trace_pc() #11
  %dev492 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %222 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %utmp1, align 4
  %224 = ptrtoint ptr %utmp2 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %utmp2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug330, ptr noundef %dev492, ptr noundef nonnull @.str.68, i32 noundef %223, i32 noundef %225) #9
  br label %do.body496

do.body496:                                       ; preds = %if.then491, %do.body479
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then508)) #9
          to label %do.end512 [label %if.then508], !srcloc !255

if.then508:                                       ; preds = %do.body496
  call void @__sanitizer_cov_trace_pc() #11
  %dev509 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %226 = ptrtoint ptr %utmp3 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %utmp3, align 4
  %228 = ptrtoint ptr %utmp4 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %utmp4, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug331, ptr noundef %dev509, ptr noundef nonnull @.str.69, i32 noundef %227, i32 noundef %229) #9
  br label %do.end512

do.end512:                                        ; preds = %if.then508, %do.body496
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %230 = load volatile i32, ptr @jiffies, align 128
  %231 = ptrtoint ptr %ber_ucb_jiffies to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %ber_ucb_jiffies, align 4
  %232 = ptrtoint ptr %utmp1 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %utmp1, align 4
  %dvbv3_ber = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 26
  %234 = ptrtoint ptr %dvbv3_ber to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %dvbv3_ber, align 4
  %235 = ptrtoint ptr %utmp3 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %utmp3, align 4
  %dvbv3_ucblocks = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 27
  %237 = ptrtoint ptr %dvbv3_ucblocks to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %dvbv3_ucblocks, align 4
  %add514 = add i32 %238, %236
  store i32 %add514, ptr %dvbv3_ucblocks, align 4
  %stat515 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %239 = ptrtoint ptr %stat515 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 3, ptr %stat515, align 1
  %conv518 = zext i32 %233 to i64
  %240 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_loadN_noabort(i32 %241, i32 8)
  %242 = load i64, ptr %240, align 1
  %add522 = add i64 %242, %conv518
  store i64 %add522, ptr %240, align 1
  %stat523 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %243 = ptrtoint ptr %stat523 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 3, ptr %stat523, align 1
  %244 = ptrtoint ptr %utmp2 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %utmp2, align 4
  %conv526 = zext i32 %245 to i64
  %246 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_loadN_noabort(i32 %247, i32 8)
  %248 = load i64, ptr %246, align 1
  %add530 = add i64 %248, %conv526
  store i64 %add530, ptr %246, align 1
  %stat531 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %249 = ptrtoint ptr %stat531 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 3, ptr %stat531, align 1
  %conv534 = zext i32 %236 to i64
  %250 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_loadN_noabort(i32 %251, i32 8)
  %252 = load i64, ptr %250, align 1
  %add538 = add i64 %252, %conv534
  store i64 %add538, ptr %250, align 1
  %stat539 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %253 = ptrtoint ptr %stat539 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 3, ptr %stat539, align 1
  %254 = ptrtoint ptr %utmp4 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %utmp4, align 4
  %conv542 = zext i32 %255 to i64
  %256 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_loadN_noabort(i32 %257, i32 8)
  %258 = load i64, ptr %256, align 1
  %add546 = add i64 %258, %conv542
  store i64 %add546, ptr %256, align 1
  br label %cleanup

sw.default547:                                    ; preds = %sw.epilog384
  call void @__sanitizer_cov_trace_pc() #11
  %stat549 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %259 = ptrtoint ptr %stat549 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %stat549, align 1
  %stat553 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %260 = ptrtoint ptr %stat553 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %stat553, align 1
  %stat557 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %261 = ptrtoint ptr %stat557 to i32
  call void @__asan_store1_noabort(i32 %261)
  store i8 0, ptr %stat557, align 1
  %stat561 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %262 = ptrtoint ptr %stat561 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 0, ptr %stat561, align 1
  br label %cleanup

do.body565:                                       ; preds = %if.end473.do.body565_crit_edge, %if.then464.do.body565_crit_edge, %if.end421.do.body565_crit_edge, %if.end394.do.body565_crit_edge, %if.end237.do.body565_crit_edge, %if.end231.do.body565_crit_edge, %if.end204.do.body565_crit_edge, %if.end110.do.body565_crit_edge, %if.end72.do.body565_crit_edge, %if.end67.do.body565_crit_edge, %if.end62.do.body565_crit_edge, %if.then57.do.body565_crit_edge, %sw.bb.do.body565_crit_edge, %if.else16.do.body565_crit_edge, %if.else.do.body565_crit_edge
  %ret.0 = phi i32 [ %call396, %if.end394.do.body565_crit_edge ], [ %call424, %if.end421.do.body565_crit_edge ], [ %call469, %if.then464.do.body565_crit_edge ], [ %call.i, %if.end473.do.body565_crit_edge ], [ %call206, %if.end204.do.body565_crit_edge ], [ %call234, %if.end231.do.body565_crit_edge ], [ %call248, %if.end237.do.body565_crit_edge ], [ %call112, %if.end110.do.body565_crit_edge ], [ %call50, %sw.bb.do.body565_crit_edge ], [ %call59, %if.then57.do.body565_crit_edge ], [ %call64, %if.end62.do.body565_crit_edge ], [ %call69, %if.end67.do.body565_crit_edge ], [ %call74, %if.end72.do.body565_crit_edge ], [ %call10, %if.else.do.body565_crit_edge ], [ %call18, %if.else16.do.body565_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9013_read_status.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9013_read_status, %if.then577)) #9
          to label %cleanup [label %if.then577], !srcloc !255

if.then577:                                       ; preds = %do.body565
  call void @__sanitizer_cov_trace_pc() #11
  %dev578 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9013_read_status.__UNIQUE_ID_ddebug332, ptr noundef %dev578, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then577, %do.body565, %sw.default547, %do.end512, %if.then416, %do.body404, %sw.bb387.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then416 ], [ 0, %sw.bb387.cleanup_crit_edge ], [ 0, %sw.default547 ], [ 0, %do.end512 ], [ %ret.0, %if.then577 ], [ 0, %do.body404 ], [ %ret.0, %do.body565 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9013_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dvbv3_ber = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %dvbv3_ber to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dvbv3_ber, align 4
  %4 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9013_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dvbv3_strength = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %dvbv3_strength to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dvbv3_strength, align 2
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9013_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dvbv3_snr = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %dvbv3_snr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dvbv3_snr, align 4
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9013_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dvbv3_ucblocks = getelementptr inbounds %struct.af9013_state, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dvbv3_ucblocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dvbv3_ucblocks, align 4
  %4 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !60, !61, !63, !65, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !106, !107, !108, !110, !112, !114, !115, !117, !118, !120, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !148, !150, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !186, !188, !189, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !225, !226, !228, !229, !231, !232, !233, !235, !237, !238, !239, !241, !243, !244}
!llvm.module.flags = !{!246, !247, !248, !249, !250, !251, !252, !253}
!llvm.ident = !{!254}

!0 = !{ptr @__initcall__kmod_af9013__362_1574_af9013_driver_init6, !1, !"__initcall__kmod_af9013__362_1574_af9013_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1574, i32 1}
!2 = !{ptr @__exitcall_af9013_driver_exit, !1, !"__exitcall_af9013_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author363, !4, !"__UNIQUE_ID_author363", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1576, i32 1}
!5 = !{ptr @__UNIQUE_ID_description364, !6, !"__UNIQUE_ID_description364", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1577, i32 1}
!7 = !{ptr @__UNIQUE_ID_file365, !8, !"__UNIQUE_ID_file365", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1578, i32 1}
!9 = !{ptr @__UNIQUE_ID_license366, !8, !"__UNIQUE_ID_license366", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware367, !11, !"__UNIQUE_ID_firmware367", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1579, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1566, i32 11}
!14 = !{ptr @af9013_driver, !15, !"af9013_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1564, i32 26}
!16 = !{ptr @af9013_probe.regmap_bus, !17, !"regmap_bus", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1441, i32 33}
!18 = !{ptr @af9013_probe.regmap_config, !19, !"regmap_config", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1445, i32 36}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1457, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @af9013_probe.__UNIQUE_ID_ddebug359, !21, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!25 = !{ptr @af9013_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1470, i32 18}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1527, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @af9013_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @af9013_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1528, i32 2}
!36 = !{ptr @af9013_probe._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @af9013_probe._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1539, i32 2}
!40 = !{ptr @af9013_probe.__UNIQUE_ID_ddebug360, !39, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1396, i32 2}
!43 = !{ptr @af9013_regmap_write.__UNIQUE_ID_ddebug357, !42, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1317, i32 2}
!46 = !{ptr @af9013_wregs.__UNIQUE_ID_ddebug355, !45, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1429, i32 2}
!49 = !{ptr @af9013_regmap_read.__UNIQUE_ID_ddebug358, !48, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1358, i32 2}
!52 = !{ptr @af9013_rregs.__UNIQUE_ID_ddebug356, !51, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1242, i32 2}
!55 = !{ptr @af9013_select.__UNIQUE_ID_ddebug351, !54, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!56 = !{ptr @af9013_select.__UNIQUE_ID_ddebug352, !57, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1253, i32 2}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1263, i32 2}
!60 = !{ptr @af9013_deselect.__UNIQUE_ID_ddebug353, !59, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!61 = !{ptr @af9013_deselect.__UNIQUE_ID_ddebug354, !62, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1274, i32 2}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1033, i32 21}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1035, i32 2}
!67 = !{ptr @af9013_download_firmware.__UNIQUE_ID_ddebug339, !66, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1042, i32 2}
!70 = !{ptr @af9013_download_firmware.__UNIQUE_ID_ddebug340, !69, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1047, i32 2}
!73 = !{ptr @af9013_download_firmware._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @af9013_download_firmware._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1053, i32 3}
!77 = !{ptr @af9013_download_firmware._entry.22, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @af9013_download_firmware._entry_ptr.24, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1058, i32 2}
!81 = !{ptr @af9013_download_firmware._entry.25, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @af9013_download_firmware._entry_ptr.27, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1082, i32 4}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @af9013_download_firmware._entry.28, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @af9013_download_firmware._entry_ptr.31, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @af9013_download_firmware.__UNIQUE_ID_ddebug343, !89, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1102, i32 2}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1106, i32 3}
!92 = !{ptr @af9013_download_firmware._entry.32, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @af9013_download_firmware._entry_ptr.34, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1110, i32 3}
!96 = !{ptr @af9013_download_firmware._entry.35, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @af9013_download_firmware._entry_ptr.37, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1114, i32 2}
!100 = !{ptr @af9013_download_firmware._entry.38, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @af9013_download_firmware._entry_ptr.40, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @af9013_download_firmware.__UNIQUE_ID_ddebug344, !103, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1121, i32 2}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 50, i32 2}
!106 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @af9013_set_gpio.__UNIQUE_ID_ddebug290, !105, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!108 = !{ptr @af9013_set_gpio.__UNIQUE_ID_ddebug291, !109, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 91, i32 2}
!110 = !{ptr @af9013_ops, !111, !"af9013_ops", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1125, i32 38}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 838, i32 2}
!114 = !{ptr @af9013_init.__UNIQUE_ID_ddebug333, !113, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!115 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 892, i32 2}
!117 = !{ptr @af9013_init.__UNIQUE_ID_ddebug334, !116, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 903, i32 2}
!120 = !{ptr @af9013_init.__UNIQUE_ID_ddebug335, !119, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!121 = !{ptr @af9013_init.__UNIQUE_ID_ddebug336, !122, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 973, i32 2}
!123 = !{ptr @demod_init_tab, !124, !"demod_init_tab", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 83, i32 41}
!125 = !{ptr @tuner_init_tab_mxl5003d, !126, !"tuner_init_tab_mxl5003d", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 383, i32 41}
!127 = !{ptr @tuner_init_tab_mxl5005, !128, !"tuner_init_tab_mxl5005", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 457, i32 41}
!129 = !{ptr @tuner_init_tab_env77h11d5, !130, !"tuner_init_tab_env77h11d5", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 167, i32 41}
!131 = !{ptr @tuner_init_tab_mt2060, !132, !"tuner_init_tab_mt2060", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 235, i32 41}
!133 = !{ptr @tuner_init_tab_mc44s803, !134, !"tuner_init_tab_mc44s803", i1 false, i1 false}
!134 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 617, i32 41}
!135 = !{ptr @tuner_init_tab_qt1010, !136, !"tuner_init_tab_qt1010", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 538, i32 41}
!137 = !{ptr @tuner_init_tab_mt2060_2, !138, !"tuner_init_tab_mt2060_2", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 314, i32 41}
!139 = !{ptr @tuner_init_tab_tda18271, !140, !"tuner_init_tab_tda18271", i1 false, i1 false}
!140 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 776, i32 41}
!141 = !{ptr @tuner_init_tab_unknown, !142, !"tuner_init_tab_unknown", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 701, i32 41}
!143 = !{ptr @.str.46, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 984, i32 2}
!145 = !{ptr @af9013_sleep.__UNIQUE_ID_ddebug337, !144, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!146 = !{ptr @af9013_sleep.__UNIQUE_ID_ddebug338, !147, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1019, i32 2}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 115, i32 2}
!150 = !{ptr @.str.48, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug292, !149, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!152 = !{ptr @.str.49, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 158, i32 3}
!154 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug293, !153, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!155 = !{ptr @.str.50, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 231, i32 3}
!157 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug294, !156, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!158 = !{ptr @.str.51, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 251, i32 3}
!160 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug295, !159, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!161 = !{ptr @.str.52, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 271, i32 3}
!163 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug296, !162, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!164 = !{ptr @.str.53, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 288, i32 3}
!166 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug297, !165, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!167 = !{ptr @.str.54, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 314, i32 3}
!169 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug298, !168, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!170 = !{ptr @.str.55, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 339, i32 3}
!172 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug299, !171, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!173 = !{ptr @.str.56, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 353, i32 3}
!175 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug300, !174, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!176 = !{ptr @.str.57, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 368, i32 3}
!178 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug301, !177, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!179 = !{ptr @.str.58, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 379, i32 3}
!181 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug302, !180, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!182 = !{ptr @af9013_set_frontend.__UNIQUE_ID_ddebug303, !183, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!183 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 393, i32 2}
!184 = !{ptr @coeff_lut, !185, !"coeff_lut", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-frontends/af9013_priv.h", i32 37, i32 34}
!186 = !{ptr @.str.59, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 405, i32 2}
!188 = !{ptr @af9013_get_frontend.__UNIQUE_ID_ddebug304, !187, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!189 = !{ptr @af9013_get_frontend.__UNIQUE_ID_ddebug305, !190, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!190 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 511, i32 2}
!191 = !{ptr @.str.60, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 524, i32 2}
!193 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug306, !192, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!194 = !{ptr @.str.61, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 555, i32 3}
!196 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug307, !195, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!197 = !{ptr @.str.62, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 590, i32 4}
!199 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug308, !198, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!200 = !{ptr @.str.63, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 620, i32 3}
!202 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug309, !201, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!203 = !{ptr @.str.64, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 649, i32 4}
!205 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug314, !204, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!206 = !{ptr @.str.65, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 700, i32 4}
!208 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug327, !207, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!209 = !{ptr @.str.66, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 706, i32 3}
!211 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug328, !210, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!212 = !{ptr @.str.67, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 731, i32 4}
!214 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug329, !213, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!215 = !{ptr @.str.68, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 759, i32 3}
!217 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug330, !216, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!218 = !{ptr @.str.69, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 761, i32 3}
!220 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug331, !219, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!221 = !{ptr @af9013_read_status.__UNIQUE_ID_ddebug332, !222, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!222 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 789, i32 2}
!223 = !{ptr @.str.70, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1217, i32 2}
!225 = !{ptr @af9013_get_dvb_frontend.__UNIQUE_ID_ddebug349, !224, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!226 = !{ptr @.str.71, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1226, i32 2}
!228 = !{ptr @af9013_get_i2c_adapter.__UNIQUE_ID_ddebug350, !227, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!229 = !{ptr @.str.72, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1189, i32 2}
!231 = !{ptr @.str.73, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @af9013_pid_filter.__UNIQUE_ID_ddebug347, !230, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!233 = !{ptr @af9013_pid_filter.__UNIQUE_ID_ddebug348, !234, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!234 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1209, i32 2}
!235 = !{ptr @.str.74, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1169, i32 2}
!237 = !{ptr @.str.75, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @af9013_pid_filter_ctrl.__UNIQUE_ID_ddebug345, !236, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!239 = !{ptr @af9013_pid_filter_ctrl.__UNIQUE_ID_ddebug346, !240, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!240 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1177, i32 2}
!241 = !{ptr @.str.76, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1547, i32 2}
!243 = !{ptr @af9013_remove.__UNIQUE_ID_ddebug361, !242, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!244 = !{ptr @af9013_id_table, !245, !"af9013_id_table", i1 false, i1 false}
!245 = !{!"../drivers/media/dvb-frontends/af9013.c", i32 1558, i32 35}
!246 = !{i32 1, !"wchar_size", i32 2}
!247 = !{i32 1, !"min_enum_size", i32 4}
!248 = !{i32 8, !"branch-target-enforcement", i32 0}
!249 = !{i32 8, !"sign-return-address", i32 0}
!250 = !{i32 8, !"sign-return-address-all", i32 0}
!251 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!252 = !{i32 7, !"uwtable", i32 1}
!253 = !{i32 7, !"frame-pointer", i32 2}
!254 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!255 = !{i64 2148317906, i64 2148317911, i64 2148317924, i64 2148317968, i64 2148318002, i64 2148318023}
!256 = !{i8 0, i8 2}
!257 = !{!"auto-init"}
!258 = !{i64 857262, i64 857289}
!259 = !{i64 857957, i64 857984, i64 858017, i64 858038, i64 858065, i64 858091}
!260 = !{!"branch_weights", i32 2000, i32 1}
!261 = !{i64 2148343093, i64 2148343373, i64 2148343707, i64 2148344041}
!262 = !{i64 857549, i64 857576, i64 857598, i64 857626}
