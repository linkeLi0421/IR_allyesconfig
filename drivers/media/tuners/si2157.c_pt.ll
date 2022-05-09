; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/si2157.c_pt.bc'
source_filename = "../drivers/media/tuners/si2157.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.si2157_tuner_info = type { i32, i8, i8, ptr, ptr }
%struct.si2157_cmd = type { [30 x i8], i32, i32 }
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
%struct.si2157_dev = type { %struct.mutex, ptr, i8, i8, i8, i32, i32, i32, %struct.delayed_work, ptr, %struct.media_entity, [3 x %struct.media_pad] }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.91 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.si2157_config = type { ptr, ptr, i8, i8 }
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
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_tuner_lock_debug = internal constant [24 x i8] c"si2157.tuner_lock_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tuner_lock_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tuner_lock_debug = internal constant %struct.kernel_param { ptr @__param_str_tuner_lock_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tuner_lock_debug } }, section "__param", align 4
@__UNIQUE_ID_tuner_lock_debugtype292 = internal constant [37 x i8] c"si2157.parmtype=tuner_lock_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tuner_lock_debug293 = internal constant [91 x i8] c"si2157.parm=tuner_lock_debug:if set, signal lock is briefly waited on after setting params\00", section ".modinfo", align 1
@__initcall__kmod_si2157__321_1000_si2157_driver_init6 = internal global ptr @si2157_driver_init, section ".initcall6.init", align 4
@si2157_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @si2157_probe, ptr @si2157_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si2157_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si2157_driver_exit = internal global ptr @si2157_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description322 = internal constant [87 x i8] c"si2157.description=Silicon Labs Si2141/Si2146/2147/2148/2157/2158 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author323 = internal constant [45 x i8] c"si2157.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [40 x i8] c"si2157.file=drivers/media/tuners/si2157\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [19 x i8] c"si2157.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware326 = internal constant [43 x i8] c"si2157.firmware=dvb-tuner-si2158-a20-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware327 = internal constant [43 x i8] c"si2157.firmware=dvb-tuner-si2141-a10-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware328 = internal constant [43 x i8] c"si2157.firmware=dvb-tuner-si2157-a30-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware329 = internal constant [43 x i8] c"si2157.firmware=dvb_driver_si2141_rom60.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware330 = internal constant [43 x i8] c"si2157.firmware=dvb_driver_si2141_rom61.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware331 = internal constant [43 x i8] c"si2157.firmware=dvb_driver_si2146_rom11.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware332 = internal constant [43 x i8] c"si2157.firmware=dvb_driver_si2147_rom50.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware333 = internal constant [43 x i8] c"si2157.firmware=dvb_driver_si2148_rom32.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware334 = internal constant [43 x i8] c"si2157.firmware=dvb_driver_si2148_rom33.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware335 = internal constant [43 x i8] c"si2157.firmware=dvb_driver_si2157_rom50.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware336 = internal constant [43 x i8] c"si2157.firmware=dvb_driver_si2178_rom50.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware337 = internal constant [43 x i8] c"si2157.firmware=dvb_driver_si2158_rom51.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware338 = internal constant [43 x i8] c"si2157.firmware=dvb_driver_si2177_rom50.fw\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2157\00", [25 x i8] zeroinitializer }, align 32
@si2157_id_table = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si2157\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 57 }, %struct.i2c_device_id { [20 x i8] c"si2146\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 46 }, %struct.i2c_device_id { [20 x i8] c"si2141\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 41 }, %struct.i2c_device_id { [20 x i8] c"si2177\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 77 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@si2157_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 890, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kzalloc() failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si2157_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/si2157.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si2157_probe._entry_ptr = internal global ptr @si2157_probe._entry, section ".printk_index", align 4
@si2157_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->i2c_mutex\00", [16 x i8] zeroinitializer }, align 32
@si2157_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&dev->stat_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@si2157_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&dev->stat_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@si2157_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Silicon Labs Si2141/Si2146/2147/2148/2157/2158\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 42000000, i32 870000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @si2157_init, ptr @si2157_sleep, ptr null, ptr null, ptr @si2157_set_params, ptr @si2157_set_analog_params, ptr null, ptr @si2157_get_frequency, ptr @si2157_get_bandwidth, ptr @si2157_get_if_frequency, ptr null, ptr @si2157_get_rf_strength, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@si2157_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 943, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Silicon Labs Si21%d successfully attached\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@si2157_probe._entry_ptr.14 = internal global ptr @si2157_probe._entry.11, section ".printk_index", align 4
@si2157_probe.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.15, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@si2157_stat_work.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si2157_stat_work\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@si2157_stat_work.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.15, i8 0, i8 -38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@si2157_cmd_execute.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si2157_cmd_execute\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cmd execution took %d ms, status=%x\0A\00", [59 x i8] zeroinitializer }, align 32
@si2157_cmd_execute.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.15, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@si2157_init.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.17, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si2157_init\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\C0\05\01\00\00\0B\00\00\01\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\C0\00\0D\0E\00\01\01\01\01\03\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\C0\00\0C\00\00\01\01\01\01\01\01\02\00\00\01\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\C0\08\01\02\00\00\01\00", [24 x i8] zeroinitializer }, align 32
@si2157_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 289, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"firmware version: %c.%c.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@si2157_init._entry_ptr = internal global ptr @si2157_init._entry, section ".printk_index", align 4
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\01\05\01\00\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\01\06\01\00\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\01\07\01\00\00", [25 x i8] zeroinitializer }, align 32
@si2157_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.3, ptr @.str.15, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@si2157_find_and_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 153, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"device is buggy, skipping firmware download\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"si2157_find_and_load_firmware\00", [34 x i8] zeroinitializer }, align 32
@si2157_find_and_load_firmware._entry_ptr = internal global ptr @si2157_find_and_load_firmware._entry, section ".printk_index", align 4
@si2157_tuners = internal constant { [10 x %struct.si2157_tuner_info], [32 x i8] } { [10 x %struct.si2157_tuner_info] [%struct.si2157_tuner_info { i32 41, i8 0, i8 1, ptr @.str.51, ptr @.str.52 }, %struct.si2157_tuner_info { i32 41, i8 0, i8 1, ptr @.str.53, ptr @.str.52 }, %struct.si2157_tuner_info { i32 46, i8 0, i8 1, ptr @.str.54, ptr null }, %struct.si2157_tuner_info { i32 47, i8 0, i8 1, ptr @.str.55, ptr null }, %struct.si2157_tuner_info { i32 48, i8 1, i8 1, ptr @.str.56, ptr @.str.57 }, %struct.si2157_tuner_info { i32 48, i8 1, i8 1, ptr @.str.58, ptr @.str.57 }, %struct.si2157_tuner_info { i32 57, i8 0, i8 1, ptr @.str.59, ptr @.str.60 }, %struct.si2157_tuner_info { i32 58, i8 0, i8 1, ptr @.str.61, ptr @.str.57 }, %struct.si2157_tuner_info { i32 58, i8 0, i8 1, ptr @.str.62, ptr @.str.57 }, %struct.si2157_tuner_info { i32 77, i8 0, i8 1, ptr @.str.63, ptr @.str.60 }], [32 x i8] zeroinitializer }, align 32
@si2157_find_and_load_firmware._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unknown chip version Si21%d-%c%c%c ROM 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@si2157_find_and_load_firmware._entry_ptr.38 = internal global ptr @si2157_find_and_load_firmware._entry.36, section ".printk_index", align 4
@si2157_find_and_load_firmware._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.3, i32 193, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"found a 'Silicon Labs Si21%d-%c%c%c ROM 0x%02x'\0A\00", [47 x i8] zeroinitializer }, align 32
@si2157_find_and_load_firmware._entry_ptr.41 = internal global ptr @si2157_find_and_load_firmware._entry.39, section ".printk_index", align 4
@si2157_find_and_load_firmware._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.34, ptr @.str.3, i32 206, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Using ROM firmware.\0A\00", [43 x i8] zeroinitializer }, align 32
@si2157_find_and_load_firmware._entry_ptr.44 = internal global ptr @si2157_find_and_load_firmware._entry.42, section ".printk_index", align 4
@si2157_find_and_load_firmware._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.34, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't continue without a firmware.\0A\00", [60 x i8] zeroinitializer }, align 32
@si2157_find_and_load_firmware._entry_ptr.47 = internal global ptr @si2157_find_and_load_firmware._entry.45, section ".printk_index", align 4
@si2157_find_and_load_firmware._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.34, ptr @.str.3, i32 211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error %d when loading firmware\0A\00", [32 x i8] zeroinitializer }, align 32
@si2157_find_and_load_firmware._entry_ptr.50 = internal global ptr @si2157_find_and_load_firmware._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_driver_si2141_rom60.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-tuner-si2141-a10-01.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_driver_si2141_rom61.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_driver_si2146_rom11.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_driver_si2147_rom50.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_driver_si2148_rom32.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-tuner-si2158-a20-01.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_driver_si2148_rom33.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_driver_si2157_rom50.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-tuner-si2157-a30-01.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_driver_si2178_rom50.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_driver_si2158_rom51.fw\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_driver_si2177_rom50.fw\00", [37 x i8] zeroinitializer }, align 32
@si2157_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"firmware file '%s' is invalid\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si2157_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@si2157_load_firmware._entry_ptr = internal global ptr @si2157_load_firmware._entry, section ".printk_index", align 4
@si2157_load_firmware._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 114, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"downloading firmware from file '%s'\0A\00", [59 x i8] zeroinitializer }, align 32
@si2157_load_firmware._entry_ptr.68 = internal global ptr @si2157_load_firmware._entry.66, section ".printk_index", align 4
@si2157_load_firmware._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bad firmware length\0A\00", [43 x i8] zeroinitializer }, align 32
@si2157_load_firmware._entry_ptr.71 = internal global ptr @si2157_load_firmware._entry.69, section ".printk_index", align 4
@si2157_load_firmware._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.3, i32 129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"firmware download failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@si2157_load_firmware._entry_ptr.74 = internal global ptr @si2157_load_firmware._entry.72, section ".printk_index", align 4
@si2157_sleep.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.17, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si2157_sleep\00", [19 x i8] zeroinitializer }, align 32
@si2157_sleep.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.75, ptr @.str.3, ptr @.str.15, i8 0, i8 87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@si2157_set_params.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"si2157_set_params\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"delivery_system=%d frequency=%u bandwidth_hz=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\03\07\00\00\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\02\07\00\01\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\02\07\00\00\00", [25 x i8] zeroinitializer }, align 32
@si2157_set_params.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.15, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@si2157_tune_wait.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si2157_tune_wait\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tuning took %d ms, status=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@si2157_tune_wait.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.86, i8 0, i8 106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"tuning+lock took %d ms, status=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@si2157_tune_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.84, ptr @.str.3, i32 438, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@si2157_tune_wait._entry_ptr = internal global ptr @si2157_tune_wait._entry, section ".printk_index", align 4
@si2157_set_analog_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 587, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Analog tuning not supported yet for Si21%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si2157_set_analog_params\00", [39 x i8] zeroinitializer }, align 32
@si2157_set_analog_params._entry_ptr = internal global ptr @si2157_set_analog_params._entry, section ".printk_index", align 4
@si2157_set_analog_params._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 607, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"si2157 does not currently support FM radio\0A\00", [52 x i8] zeroinitializer }, align 32
@si2157_set_analog_params._entry_ptr.91 = internal global ptr @si2157_set_analog_params._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"palGH\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"secamGH\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"palB\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"secamB\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MN\00", [29 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"palI\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"palDK\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"secamDK\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"secamL\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"secamL'\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@si2157_set_analog_params.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.3, ptr @.str.103, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"mode=%d system=%u std='%s' params->frequency=%u center freq=%u if=%u bandwidth=%u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\03\06\08\02\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\0D\06\94d\00", [25 x i8] zeroinitializer }, align 32
@si2157_set_analog_params.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.3, ptr @.str.106, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IF Ctr freq=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\07\062\C8\00", [25 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\14\00\04\06\00\00\00", [25 x i8] zeroinitializer }, align 32
@si2157_set_analog_params.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.3, ptr @.str.15, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@si2157_get_frequency.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si2157_get_frequency\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"freq=%u\0A\00", [23 x i8] zeroinitializer }, align 32
@si2157_get_bandwidth.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.3, ptr @.str.114, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"si2157_get_bandwidth\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bandwidth=%u\0A\00", [18 x i8] zeroinitializer }, align 32
@si2157_get_if_frequency.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"si2157_get_if_frequency\00", [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"if_frequency=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@si2157_get_rf_strength.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.3, ptr @.str.17, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si2157_get_rf_strength\00", [41 x i8] zeroinitializer }, align 32
@si2157_get_rf_strength.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.3, ptr @.str.118, i8 0, i8 -50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"strength=%d rssi=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@si2157_get_rf_strength.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.3, ptr @.str.15, i8 0, i8 -49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@si2157_remove.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.17, i8 0, i8 -17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si2157_remove\00", [18 x i8] zeroinitializer }, align 32
@switch.table.si2157_set_params = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0\10 \00\00\00\00@\00\00\00\00`\00\00 \000", [46 x i8] zeroinitializer }, align 32
@switch.table.si2157_set_params.120 = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 5000000, i32 4000000, i32 5000000, i32 3250000, i32 3250000, i32 3250000, i32 3250000, i32 5000000, i32 3250000, i32 3250000, i32 3250000, i32 3250000, i32 5000000, i32 3250000, i32 3250000, i32 5000000, i32 3250000, i32 5000000], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 8, i64 41, i64 46]
@__sancov_gen_cov_switch_values.122 = internal global [9 x i64] [i64 7, i64 8, i64 41, i64 46, i64 47, i64 48, i64 57, i64 58, i64 77]
@__sancov_gen_cov_switch_values.123 = internal global [6 x i64] [i64 4, i64 8, i64 41, i64 47, i64 57, i64 77]
@__sancov_gen_cov_switch_values.124 = internal global [6 x i64] [i64 4, i64 8, i64 41, i64 47, i64 57, i64 77]
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"tuner_lock_debug\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 12, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"si2157_driver\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 990, i32 26 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 992, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"si2157_id_table\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 981, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 890, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 901, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 902, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [11 x i8] c"si2157_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 832, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 942, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 950, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 859, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 54, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 225, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 243, i32 20 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 247, i32 20 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 250, i32 20 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 260, i32 20 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 288, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 292, i32 19 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 299, i32 19 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 306, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 152, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [14 x i8] c"si2157_tuners\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 79, i32 39 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 182, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 191, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 206, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 209, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 211, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 80, i32 25 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 80, i32 45 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 81, i32 25 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 82, i32 25 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 83, i32 25 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 84, i32 25 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 84, i32 45 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 85, i32 25 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 86, i32 25 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 86, i32 45 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 87, i32 25 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 88, i32 25 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 89, i32 25 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 107, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 113, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 119, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 128, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 334, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 453, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 507, i32 19 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 519, i32 20 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 521, i32 20 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 396, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 423, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 438, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 586, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 607, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 622, i32 10 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 628, i32 11 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 632, i32 10 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 637, i32 11 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 642, i32 9 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 647, i32 9 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 652, i32 9 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 657, i32 10 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 661, i32 9 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 667, i32 9 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 673, i32 9 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 678, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 684, i32 19 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 698, i32 19 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 710, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 722, i32 19 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 730, i32 19 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 772, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 782, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 792, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 804, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 823, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.459 = private constant [33 x i8] c"../drivers/media/tuners/si2157.c\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 959, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant [31 x i8] c"switch.table.si2157_set_params\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [35 x i8] c"switch.table.si2157_set_params.120\00", align 1
@llvm.compiler.used = appending global [153 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_firmware326, ptr @__UNIQUE_ID_firmware327, ptr @__UNIQUE_ID_firmware328, ptr @__UNIQUE_ID_firmware329, ptr @__UNIQUE_ID_firmware330, ptr @__UNIQUE_ID_firmware331, ptr @__UNIQUE_ID_firmware332, ptr @__UNIQUE_ID_firmware333, ptr @__UNIQUE_ID_firmware334, ptr @__UNIQUE_ID_firmware335, ptr @__UNIQUE_ID_firmware336, ptr @__UNIQUE_ID_firmware337, ptr @__UNIQUE_ID_firmware338, ptr @__UNIQUE_ID_license325, ptr @__UNIQUE_ID_tuner_lock_debug293, ptr @__UNIQUE_ID_tuner_lock_debugtype292, ptr @__exitcall_si2157_driver_exit, ptr @__initcall__kmod_si2157__321_1000_si2157_driver_init6, ptr @__param_tuner_lock_debug, ptr @si2157_driver_exit, ptr @si2157_find_and_load_firmware._entry, ptr @si2157_find_and_load_firmware._entry.36, ptr @si2157_find_and_load_firmware._entry.39, ptr @si2157_find_and_load_firmware._entry.42, ptr @si2157_find_and_load_firmware._entry.45, ptr @si2157_find_and_load_firmware._entry.48, ptr @si2157_find_and_load_firmware._entry_ptr, ptr @si2157_find_and_load_firmware._entry_ptr.38, ptr @si2157_find_and_load_firmware._entry_ptr.41, ptr @si2157_find_and_load_firmware._entry_ptr.44, ptr @si2157_find_and_load_firmware._entry_ptr.47, ptr @si2157_find_and_load_firmware._entry_ptr.50, ptr @si2157_init._entry, ptr @si2157_init._entry_ptr, ptr @si2157_load_firmware._entry, ptr @si2157_load_firmware._entry.66, ptr @si2157_load_firmware._entry.69, ptr @si2157_load_firmware._entry.72, ptr @si2157_load_firmware._entry_ptr, ptr @si2157_load_firmware._entry_ptr.68, ptr @si2157_load_firmware._entry_ptr.71, ptr @si2157_load_firmware._entry_ptr.74, ptr @si2157_probe._entry, ptr @si2157_probe._entry.11, ptr @si2157_probe._entry_ptr, ptr @si2157_probe._entry_ptr.14, ptr @si2157_set_analog_params._entry, ptr @si2157_set_analog_params._entry.89, ptr @si2157_set_analog_params._entry_ptr, ptr @si2157_set_analog_params._entry_ptr.91, ptr @si2157_tune_wait._entry, ptr @si2157_tune_wait._entry_ptr, ptr @tuner_lock_debug, ptr @si2157_driver, ptr @.str, ptr @si2157_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @si2157_probe.__key, ptr @.str.6, ptr @si2157_probe.__key.7, ptr @.str.8, ptr @si2157_probe.__key.9, ptr @.str.10, ptr @si2157_ops, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @si2157_tuners, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @switch.table.si2157_set_params, ptr @switch.table.si2157_set_params.120], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_lock_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_id_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_find_and_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_tuners to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_find_and_load_firmware._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_find_and_load_firmware._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_find_and_load_firmware._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_find_and_load_firmware._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_find_and_load_firmware._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_load_firmware._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_load_firmware._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_load_firmware._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_tune_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_set_analog_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si2157_set_analog_params._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si2157_set_params to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si2157_set_params.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si2157_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si2157_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @si2157_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %cmd = alloca %struct.si2157_cmd, align 4
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 392) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %do.body87

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %fe5 = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %fe5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %fe5, align 4
  %inversion = getelementptr inbounds %struct.si2157_config, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %inversion, align 4
  %inversion6 = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %inversion6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load7 = load i8, ptr %inversion6, align 8
  %12 = lshr i8 %bf.load, 1
  %bf.shl = and i8 %12, 64
  %bf.clear = and i8 %bf.load7, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %inversion6, align 8
  %bf.load8 = load i8, ptr %inversion, align 4
  %13 = lshr i8 %bf.load8, 1
  %bf.shl15 = and i8 %13, 32
  %bf.clear16 = and i8 %bf.set, -33
  %bf.set17 = or i8 %bf.shl15, %bf.clear16
  store i8 %bf.set17, ptr %inversion6, align 8
  %if_port = getelementptr inbounds %struct.si2157_config, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %if_port, align 1
  %if_port19 = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %if_port19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %if_port19, align 2
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %17 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data, align 4
  %conv = trunc i32 %18 to i8
  %part_id = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %part_id to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %part_id, align 1
  %if_frequency = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 5000000, ptr %if_frequency, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @si2157_probe.__key) #7
  %stat_work = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %stat_work, i32 noundef 0) #7
  %21 = ptrtoint ptr %stat_work to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %stat_work, align 8
  %lockdep_map = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @si2157_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry31 = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1
  %22 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry31, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 8, i32 0, i32 2
  %24 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @si2157_stat_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 8, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @si2157_probe.__key.9) #7
  %wlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 1
  %25 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wlen, align 4
  %rlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 2
  %26 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %rlen, align 4
  %call42 = call fastcc i32 @si2157_cmd_execute(ptr noundef %client, ptr noundef nonnull %cmd)
  %27 = zext i32 %call42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call42, label %if.end.err_kfree_crit_edge [
    i32 0, label %if.end.if.end46_crit_edge
    i32 -11, label %if.end.if.end46_crit_edge150
  ]

if.end.if.end46_crit_edge150:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end.err_kfree_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end46:                                         ; preds = %if.end.if.end46_crit_edge, %if.end.if.end46_crit_edge150
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %28 = call ptr @memcpy(ptr %tuner_ops, ptr @si2157_ops, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %29 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %client, ptr %tuner_priv, align 4
  %mdev = getelementptr inbounds %struct.si2157_config, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev, align 4
  %tobool47.not = icmp eq ptr %31, null
  br i1 %tobool47.not, label %if.end46.do.end83_crit_edge, label %if.then48

if.end46.do.end83_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end83

if.then48:                                        ; preds = %if.end46
  %mdev50 = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 9
  %32 = ptrtoint ptr %mdev50 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %mdev50, align 4
  %ent = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 10
  %name = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str, ptr %name, align 8
  %function = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 10, i32 3
  %34 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 131077, ptr %function, align 8
  %pad = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 11
  %flags = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 4
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %flags, align 4
  %sig_type = getelementptr inbounds %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 3
  %36 = ptrtoint ptr %sig_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %sig_type, align 8
  %flags56 = getelementptr %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 4
  %37 = ptrtoint ptr %flags56 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %flags56, align 4
  %sig_type59 = getelementptr %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 3
  %38 = ptrtoint ptr %sig_type59 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %sig_type59, align 8
  %flags62 = getelementptr %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 11, i32 2, i32 4
  %39 = ptrtoint ptr %flags62 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %flags62, align 4
  %sig_type65 = getelementptr %struct.si2157_dev, ptr %call7.i.i, i32 0, i32 11, i32 2, i32 3
  %40 = ptrtoint ptr %sig_type65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %sig_type65, align 8
  %call69 = call i32 @media_entity_pads_init(ptr noundef %ent, i16 noundef zeroext 3, ptr noundef %pad) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.then48.err_kfree_crit_edge

if.then48.err_kfree_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end72:                                         ; preds = %if.then48
  %41 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdev, align 4
  %call75 = call i32 @media_device_register_entity(ptr noundef %42, ptr noundef %ent) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end72.do.end83_crit_edge, label %if.end72.err_kfree_crit_edge

if.end72.err_kfree_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_kfree

if.end72.do.end83_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end83

do.end83:                                         ; preds = %if.end72.do.end83_crit_edge, %if.end46.do.end83_crit_edge
  %43 = ptrtoint ptr %part_id to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %part_id, align 1
  %conv86 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv86) #11
  br label %cleanup

err_kfree:                                        ; preds = %if.end72.err_kfree_crit_edge, %if.then48.err_kfree_crit_edge, %if.end.err_kfree_crit_edge
  %ret.0 = phi i32 [ %call69, %if.then48.err_kfree_crit_edge ], [ %call42, %if.end.err_kfree_crit_edge ], [ %call75, %if.end72.err_kfree_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %do.body87

do.body87:                                        ; preds = %err_kfree, %if.then
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -12, %if.then ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_probe.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_probe, %if.then92)) #7
          to label %cleanup [label %if.then92], !srcloc !307

if.then92:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_probe.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %ret.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %do.body87, %do.end83
  %retval.0 = phi i32 [ 0, %do.end83 ], [ %ret.1, %if.then92 ], [ %ret.1, %do.body87 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fe1 = getelementptr inbounds %struct.si2157_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_remove.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_remove.__UNIQUE_ID_ddebug320, ptr noundef %dev5, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stat_work = getelementptr inbounds %struct.si2157_dev, ptr %1, i32 0, i32 8
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stat_work) #7
  %mdev = getelementptr inbounds %struct.si2157_dev, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %ent = getelementptr inbounds %struct.si2157_dev, ptr %1, i32 0, i32 10
  tail call void @media_device_unregister_entity(ptr noundef %ent) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %6 = call ptr @memset(ptr %tuner_ops, i32 0, i32 220)
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si2157_stat_work(ptr noundef %work) #2 align 64 {
entry:
  %cmd = alloca %struct.si2157_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fe1 = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe1, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_stat_work.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_stat_work, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_stat_work.__UNIQUE_ID_ddebug317, ptr noundef %dev5, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 16896, ptr %cmd, align 4
  %wlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %wlen, align 4
  %rlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %rlen, align 4
  %call6 = call fastcc i32 @si2157_cmd_execute(ptr noundef %3, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 42, i32 1
  br i1 %tobool7.not, label %if.end9, label %err

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %stat, align 1
  %arrayidx11 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 3
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx11, align 1
  %conv = sext i8 %10 to i32
  %mul = mul nsw i32 %conv, 1000
  %conv12 = sext i32 %mul to i64
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %conv12, ptr %11, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work, i32 noundef 200) #7
  br label %cleanup

err:                                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %stat, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_stat_work.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_stat_work, %if.then34)) #7
          to label %cleanup [label %if.then34], !srcloc !307

if.then34:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_stat_work.__UNIQUE_ID_ddebug318, ptr noundef %dev35, ptr noundef nonnull @.str.15, i32 noundef %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %err, %if.end9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2157_cmd_execute(ptr noundef %client, ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %wlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %wlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %cmd, i32 noundef %3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then.err_mutex_unlock_crit_edge, label %if.else

if.then.err_mutex_unlock_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.else:                                          ; preds = %if.then
  %4 = ptrtoint ptr %wlen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %5)
  %cmp5.not = icmp eq i32 %call.i, %5
  br i1 %cmp5.not, label %if.else.if.end8_crit_edge, label %if.else.err_mutex_unlock_crit_edge

if.else.err_mutex_unlock_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %rlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %if.end8.if.end59_crit_edge, label %if.then10

if.end8.if.end59_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then10:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 8
  br label %while.cond

while.cond:                                       ; preds = %if.end24.while.cond_crit_edge, %if.then10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp12 = icmp sgt i32 %sub, -1
  br i1 %cmp12, label %while.body, label %while.cond.do.body_crit_edge

while.cond.do.body_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

while.body:                                       ; preds = %while.cond
  %10 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rlen, align 4
  %call.i107 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %cmd, i32 noundef %11, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp17 = icmp slt i32 %call.i107, 0
  br i1 %cmp17, label %while.body.err_mutex_unlock_crit_edge, label %if.else19

while.body.err_mutex_unlock_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.else19:                                        ; preds = %while.body
  %12 = ptrtoint ptr %rlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i107, i32 %13)
  %cmp21.not = icmp eq i32 %call.i107, %13
  br i1 %cmp21.not, label %if.end24, label %if.else19.err_mutex_unlock_crit_edge

if.else19.err_mutex_unlock_crit_edge:             ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.end24:                                         ; preds = %if.else19
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd, align 4
  %tobool26.not = icmp sgt i8 %15, -1
  br i1 %tobool26.not, label %if.end24.while.cond_crit_edge, label %if.end24.do.body_crit_edge

if.end24.do.body_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end24.while.cond_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.body:                                          ; preds = %if.end24.do.body_crit_edge, %while.cond.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_cmd_execute.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_cmd_execute, %if.then34)) #7
          to label %do.end [label %if.then34], !srcloc !307

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %call36 = tail call i32 @jiffies_to_msecs(i32 noundef %16) #7
  %call37 = tail call i32 @jiffies_to_msecs(i32 noundef %add) #7
  %sub38.neg = add i32 %call36, 80
  %sub39 = sub i32 %sub38.neg, %call37
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cmd, align 4
  %conv42 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_cmd_execute.__UNIQUE_ID_ddebug294, ptr noundef %dev35, ptr noundef nonnull @.str.20, i32 noundef %sub39, i32 noundef %conv42) #7
  br label %do.end

do.end:                                           ; preds = %if.then34, %do.body
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool49.not = icmp sgt i8 %20, -1
  br i1 %tobool49.not, label %do.end.err_mutex_unlock_crit_edge, label %if.end51

do.end.err_mutex_unlock_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.end51:                                         ; preds = %do.end
  %21 = and i8 %20, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool56.not = icmp eq i8 %21, 0
  br i1 %tobool56.not, label %if.end51.if.end59_crit_edge, label %if.end51.err_mutex_unlock_crit_edge

if.end51.err_mutex_unlock_crit_edge:              ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.end59:                                         ; preds = %if.end51.if.end59_crit_edge, %if.end8.if.end59_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

err_mutex_unlock:                                 ; preds = %if.end51.err_mutex_unlock_crit_edge, %do.end.err_mutex_unlock_crit_edge, %if.else19.err_mutex_unlock_crit_edge, %while.body.err_mutex_unlock_crit_edge, %if.else.err_mutex_unlock_crit_edge, %if.then.err_mutex_unlock_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.then.err_mutex_unlock_crit_edge ], [ -121, %if.else.err_mutex_unlock_crit_edge ], [ -110, %do.end.err_mutex_unlock_crit_edge ], [ -11, %if.end51.err_mutex_unlock_crit_edge ], [ -121, %if.else19.err_mutex_unlock_crit_edge ], [ %call.i107, %while.body.err_mutex_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_cmd_execute.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_cmd_execute, %if.then74)) #7
          to label %cleanup [label %if.then74], !srcloc !307

if.then74:                                        ; preds = %err_mutex_unlock
  call void @__sanitizer_cov_trace_pc() #9
  %dev75 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_cmd_execute.__UNIQUE_ID_ddebug295, ptr noundef %dev75, ptr noundef nonnull @.str.15, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %err_mutex_unlock, %if.end59
  %retval.0 = phi i32 [ 0, %if.end59 ], [ %ret.0, %if.then74 ], [ %ret.0, %err_mutex_unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_init(ptr nocapture noundef %fe) #2 align 64 {
entry:
  %cmd.i = alloca %struct.si2157_cmd, align 4
  %cmd = alloca %struct.si2157_cmd, align 4
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_init.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_init.__UNIQUE_ID_ddebug296, ptr noundef %dev4, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 352322052, ptr %cmd, align 4
  %wlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %wlen, align 4
  %rlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %rlen, align 4
  %call5 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end
  %arrayidx = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %9 to i32
  %arrayidx8 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv9, 8
  %or = or i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %or)
  %cmp11 = icmp ult i32 %or, 16
  br i1 %cmp11, label %land.lhs.true.warm_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true.warm_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %warm

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %do.end.if.end14_crit_edge
  %if_frequency = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %if_frequency, align 4
  %part_id = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %part_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %part_id, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %14, label %if.else30 [
    i8 46, label %if.then18
    i8 41, label %if.then26
  ]

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %16 = call ptr @memcpy(ptr %cmd, ptr @.str.23, i32 9)
  br label %if.end35

if.then26:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %17 = call ptr @memcpy(ptr %cmd, ptr @.str.24, i32 10)
  br label %if.end35

if.else30:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %18 = call ptr @memcpy(ptr %cmd, ptr @.str.25, i32 15)
  br label %if.end35

if.end35:                                         ; preds = %if.else30, %if.then26, %if.then18
  %.sink = phi i32 [ 10, %if.then26 ], [ 15, %if.else30 ], [ 9, %if.then18 ]
  %19 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %wlen, align 4
  %20 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %rlen, align 4
  %call37 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  %21 = ptrtoint ptr %part_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %.pr = load i8, ptr %part_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %.pr)
  %cmp50 = icmp eq i8 %.pr, 41
  br i1 %tobool38.not, label %if.end47, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call37)
  %cmp44.not = icmp eq i32 %call37, -11
  %or.cond = select i1 %cmp50, i1 %cmp44.not, i1 false
  br i1 %or.cond, label %land.lhs.true39.if.then52_crit_edge, label %land.lhs.true39.do.body123_crit_edge

land.lhs.true39.do.body123_crit_edge:             ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body123

land.lhs.true39.if.then52_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

if.end47:                                         ; preds = %if.end35
  br i1 %cmp50, label %if.end47.if.then52_crit_edge, label %if.end47.if.end60_crit_edge

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end47.if.then52_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then52

if.then52:                                        ; preds = %if.end47.if.then52_crit_edge, %land.lhs.true39.if.then52_crit_edge
  %22 = call ptr @memcpy(ptr %cmd, ptr @.str.26, i32 7)
  %23 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 7, ptr %wlen, align 4
  %call56 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then52.if.end60_crit_edge, label %if.then52.do.body123_crit_edge

if.then52.do.body123_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body123

if.then52.if.end60_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end60:                                         ; preds = %if.then52.if.end60_crit_edge, %if.end47.if.end60_crit_edge
  %24 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tuner_priv, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd.i) #7
  %28 = call ptr @memset(ptr %cmd.i, i32 255, i32 32)
  %dont_load_firmware.i = getelementptr inbounds %struct.si2157_dev, ptr %27, i32 0, i32 2
  %29 = ptrtoint ptr %dont_load_firmware.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %dont_load_firmware.i, align 4
  %30 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.33) #11
  br label %si2157_find_and_load_firmware.exit.thread187

if.end.i:                                         ; preds = %if.end60
  %31 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 2, ptr %cmd.i, align 4
  %wlen.i = getelementptr inbounds %struct.si2157_cmd, ptr %cmd.i, i32 0, i32 1
  %32 = ptrtoint ptr %wlen.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %wlen.i, align 4
  %rlen.i = getelementptr inbounds %struct.si2157_cmd, ptr %cmd.i, i32 0, i32 2
  %33 = ptrtoint ptr %rlen.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 13, ptr %rlen.i, align 4
  %call2.i = call fastcc i32 @si2157_cmd_execute(ptr noundef %25, ptr noundef nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %si2157_find_and_load_firmware.exit

if.end5.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr inbounds [30 x i8], ptr %cmd.i, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 2
  %arrayidx8.i = getelementptr inbounds [30 x i8], ptr %cmd.i, i32 0, i32 12
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx8.i, align 4
  %conv.i = zext i8 %35 to i32
  %38 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %35, label %if.end5.i.for.end.i_crit_edge [
    i8 41, label %if.end14.i
    i8 46, label %if.end14.2.i
    i8 47, label %if.end14.3.i
    i8 48, label %if.end14.4.i
    i8 57, label %if.end14.6.i
    i8 58, label %if.end14.7.i
    i8 77, label %if.end14.9.i
  ]

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end14.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp24.i = icmp eq i8 %37, 0
  br i1 %cmp24.i, label %if.end14.i.if.then26.i_crit_edge, label %if.end14.i.if.end48.i_crit_edge

if.end14.i.if.end48.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.end14.i.if.then26.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.end14.9.i.if.then26.i_crit_edge, %if.end14.7.i.if.then26.i_crit_edge, %if.end14.6.i.if.then26.i_crit_edge, %if.end14.4.i.if.then26.i_crit_edge, %if.end14.3.i.if.then26.i_crit_edge, %if.end14.2.i.if.then26.i_crit_edge, %if.end14.i.if.then26.i_crit_edge
  %i.0156.lcssa.i = phi i32 [ 0, %if.end14.i.if.then26.i_crit_edge ], [ 2, %if.end14.2.i.if.then26.i_crit_edge ], [ 3, %if.end14.3.i.if.then26.i_crit_edge ], [ 4, %if.end14.4.i.if.then26.i_crit_edge ], [ 6, %if.end14.6.i.if.then26.i_crit_edge ], [ 7, %if.end14.7.i.if.then26.i_crit_edge ], [ 9, %if.end14.9.i.if.then26.i_crit_edge ]
  %.lcssa.i = phi ptr [ @.str.52, %if.end14.i.if.then26.i_crit_edge ], [ null, %if.end14.2.i.if.then26.i_crit_edge ], [ null, %if.end14.3.i.if.then26.i_crit_edge ], [ @.str.57, %if.end14.4.i.if.then26.i_crit_edge ], [ @.str.60, %if.end14.6.i.if.then26.i_crit_edge ], [ @.str.57, %if.end14.7.i.if.then26.i_crit_edge ], [ @.str.60, %if.end14.9.i.if.then26.i_crit_edge ]
  %fw_name28.i = getelementptr [10 x %struct.si2157_tuner_info], ptr @si2157_tuners, i32 0, i32 %i.0156.lcssa.i, i32 3
  %39 = ptrtoint ptr %fw_name28.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw_name28.i, align 4
  br label %for.end.i

if.end14.2.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp24.2.i = icmp eq i8 %37, 0
  br i1 %cmp24.2.i, label %if.end14.2.i.if.then26.i_crit_edge, label %if.end14.2.i.for.end.i_crit_edge

if.end14.2.i.for.end.i_crit_edge:                 ; preds = %if.end14.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end14.2.i.if.then26.i_crit_edge:               ; preds = %if.end14.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.end14.3.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp24.3.i = icmp eq i8 %37, 0
  br i1 %cmp24.3.i, label %if.end14.3.i.if.then26.i_crit_edge, label %if.end14.3.i.for.end.i_crit_edge

if.end14.3.i.for.end.i_crit_edge:                 ; preds = %if.end14.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end14.3.i.if.then26.i_crit_edge:               ; preds = %if.end14.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.end14.4.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp24.4.i = icmp eq i8 %37, 1
  br i1 %cmp24.4.i, label %if.end14.4.i.if.then26.i_crit_edge, label %if.end14.4.i.if.end48.i_crit_edge

if.end14.4.i.if.end48.i_crit_edge:                ; preds = %if.end14.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.end14.4.i.if.then26.i_crit_edge:               ; preds = %if.end14.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.end14.6.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp24.6.i = icmp eq i8 %37, 0
  br i1 %cmp24.6.i, label %if.end14.6.i.if.then26.i_crit_edge, label %if.end14.6.i.if.end48.i_crit_edge

if.end14.6.i.if.end48.i_crit_edge:                ; preds = %if.end14.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.end14.6.i.if.then26.i_crit_edge:               ; preds = %if.end14.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.end14.7.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp24.7.i = icmp eq i8 %37, 0
  br i1 %cmp24.7.i, label %if.end14.7.i.if.then26.i_crit_edge, label %if.end14.7.i.if.end48.i_crit_edge

if.end14.7.i.if.end48.i_crit_edge:                ; preds = %if.end14.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.end14.7.i.if.then26.i_crit_edge:               ; preds = %if.end14.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

if.end14.9.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp24.9.i = icmp eq i8 %37, 0
  br i1 %cmp24.9.i, label %if.end14.9.i.if.then26.i_crit_edge, label %if.end14.9.i.if.end48.i_crit_edge

if.end14.9.i.if.end48.i_crit_edge:                ; preds = %if.end14.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.end14.9.i.if.then26.i_crit_edge:               ; preds = %if.end14.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26.i

for.end.i:                                        ; preds = %if.end14.3.i.for.end.i_crit_edge, %if.end14.2.i.for.end.i_crit_edge, %if.then26.i, %if.end5.i.for.end.i_crit_edge
  %fw_alt_name.2.i = phi ptr [ %.lcssa.i, %if.then26.i ], [ null, %if.end14.3.i.for.end.i_crit_edge ], [ null, %if.end14.2.i.for.end.i_crit_edge ], [ null, %if.end5.i.for.end.i_crit_edge ]
  %fw_name.0.i = phi ptr [ %40, %if.then26.i ], [ null, %if.end14.3.i.for.end.i_crit_edge ], [ null, %if.end14.2.i.for.end.i_crit_edge ], [ null, %if.end5.i.for.end.i_crit_edge ]
  %tobool30.not.i = icmp eq ptr %fw_name.0.i, null
  %tobool31.not.i = icmp eq ptr %fw_alt_name.2.i, null
  %or.cond.i = and i1 %tobool31.not.i, %tobool30.not.i
  br i1 %or.cond.i, label %do.end35.i, label %for.end.i.if.end48.i_crit_edge

for.end.i.if.end48.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

do.end35.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev36.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %arrayidx39.i = getelementptr inbounds [30 x i8], ptr %cmd.i, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx39.i, align 1
  %conv40.i = zext i8 %42 to i32
  %arrayidx42.i = getelementptr inbounds [30 x i8], ptr %cmd.i, i32 0, i32 3
  %43 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %44 to i32
  %arrayidx45.i = getelementptr inbounds [30 x i8], ptr %cmd.i, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx45.i, align 4
  %conv46.i = zext i8 %46 to i32
  %conv47.i = zext i8 %37 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36.i, ptr noundef nonnull @.str.37, i32 noundef %conv.i, i32 noundef %conv40.i, i32 noundef %conv43.i, i32 noundef %conv46.i, i32 noundef %conv47.i) #11
  br label %si2157_find_and_load_firmware.exit.thread

if.end48.i:                                       ; preds = %for.end.i.if.end48.i_crit_edge, %if.end14.9.i.if.end48.i_crit_edge, %if.end14.7.i.if.end48.i_crit_edge, %if.end14.6.i.if.end48.i_crit_edge, %if.end14.4.i.if.end48.i_crit_edge, %if.end14.i.if.end48.i_crit_edge
  %tobool31.not192.i = phi i1 [ %tobool31.not.i, %for.end.i.if.end48.i_crit_edge ], [ false, %if.end14.9.i.if.end48.i_crit_edge ], [ false, %if.end14.7.i.if.end48.i_crit_edge ], [ false, %if.end14.6.i.if.end48.i_crit_edge ], [ false, %if.end14.4.i.if.end48.i_crit_edge ], [ false, %if.end14.i.if.end48.i_crit_edge ]
  %tobool30.not191.i = phi i1 [ %tobool30.not.i, %for.end.i.if.end48.i_crit_edge ], [ true, %if.end14.9.i.if.end48.i_crit_edge ], [ true, %if.end14.7.i.if.end48.i_crit_edge ], [ true, %if.end14.6.i.if.end48.i_crit_edge ], [ true, %if.end14.4.i.if.end48.i_crit_edge ], [ true, %if.end14.i.if.end48.i_crit_edge ]
  %fw_name.0190.i = phi ptr [ %fw_name.0.i, %for.end.i.if.end48.i_crit_edge ], [ null, %if.end14.9.i.if.end48.i_crit_edge ], [ null, %if.end14.7.i.if.end48.i_crit_edge ], [ null, %if.end14.6.i.if.end48.i_crit_edge ], [ null, %if.end14.4.i.if.end48.i_crit_edge ], [ null, %if.end14.i.if.end48.i_crit_edge ]
  %fw_alt_name.2189.i = phi ptr [ %fw_alt_name.2.i, %for.end.i.if.end48.i_crit_edge ], [ @.str.60, %if.end14.9.i.if.end48.i_crit_edge ], [ @.str.57, %if.end14.7.i.if.end48.i_crit_edge ], [ @.str.60, %if.end14.6.i.if.end48.i_crit_edge ], [ @.str.57, %if.end14.4.i.if.end48.i_crit_edge ], [ @.str.52, %if.end14.i.if.end48.i_crit_edge ]
  %part_id49.i = getelementptr inbounds %struct.si2157_dev, ptr %27, i32 0, i32 3
  %47 = ptrtoint ptr %part_id49.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %35, ptr %part_id49.i, align 1
  %dev53.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  %arrayidx56.i = getelementptr inbounds [30 x i8], ptr %cmd.i, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx56.i, align 1
  %conv57.i = zext i8 %49 to i32
  %arrayidx59.i = getelementptr inbounds [30 x i8], ptr %cmd.i, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx59.i, align 1
  %conv60.i = zext i8 %51 to i32
  %arrayidx62.i = getelementptr inbounds [30 x i8], ptr %cmd.i, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx62.i, align 4
  %conv63.i = zext i8 %53 to i32
  %conv64.i = zext i8 %37 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev53.i, ptr noundef nonnull @.str.40, i32 noundef %conv.i, i32 noundef %conv57.i, i32 noundef %conv60.i, i32 noundef %conv63.i, i32 noundef %conv64.i) #11
  br i1 %tobool30.not191.i, label %if.end48.i.land.lhs.true71.i_crit_edge, label %if.end68.i

if.end48.i.land.lhs.true71.i_crit_edge:           ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true71.i

if.end68.i:                                       ; preds = %if.end48.i
  %call67.i = call fastcc i32 @si2157_load_firmware(ptr noundef %fe, ptr noundef nonnull %fw_name.0190.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call67.i)
  %cmp69.i = icmp eq i32 %call67.i, -2
  br i1 %cmp69.i, label %if.end68.i.land.lhs.true71.i_crit_edge, label %if.end68.i.if.else90.i_crit_edge

if.end68.i.if.else90.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else90.i

if.end68.i.land.lhs.true71.i_crit_edge:           ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true71.i

land.lhs.true71.i:                                ; preds = %if.end68.i.land.lhs.true71.i_crit_edge, %if.end48.i.land.lhs.true71.i_crit_edge
  br i1 %tobool31.not192.i, label %land.lhs.true71.i.do.end88.i_crit_edge, label %if.end75.i

land.lhs.true71.i.do.end88.i_crit_edge:           ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end88.i

if.end75.i:                                       ; preds = %land.lhs.true71.i
  %call74.i = call fastcc i32 @si2157_load_firmware(ptr noundef %fe, ptr noundef nonnull %fw_alt_name.2189.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call74.i)
  %cmp76.i = icmp eq i32 %call74.i, -2
  br i1 %cmp76.i, label %if.end75.i.do.end88.i_crit_edge, label %if.end75.i.if.else90.i_crit_edge

if.end75.i.if.else90.i_crit_edge:                 ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else90.i

if.end75.i.do.end88.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end88.i

do.end88.i:                                       ; preds = %if.end75.i.do.end88.i_crit_edge, %land.lhs.true71.i.do.end88.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i, ptr noundef nonnull @.str.46) #11
  br label %si2157_find_and_load_firmware.exit.thread

if.else90.i:                                      ; preds = %if.end75.i.if.else90.i_crit_edge, %if.end68.i.if.else90.i_crit_edge
  %ret.1152.i = phi i32 [ %call74.i, %if.end75.i.if.else90.i_crit_edge ], [ %call67.i, %if.end68.i.if.else90.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1152.i)
  %cmp91.i = icmp slt i32 %ret.1152.i, 0
  br i1 %cmp91.i, label %do.end96.i, label %if.else90.i.si2157_find_and_load_firmware.exit.thread187_crit_edge

if.else90.i.si2157_find_and_load_firmware.exit.thread187_crit_edge: ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si2157_find_and_load_firmware.exit.thread187

do.end96.i:                                       ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i, ptr noundef nonnull @.str.49, i32 noundef %ret.1152.i) #11
  br label %si2157_find_and_load_firmware.exit.thread

si2157_find_and_load_firmware.exit.thread:        ; preds = %do.end96.i, %do.end88.i, %do.end35.i
  %retval.0.i180.ph = phi i32 [ -2, %do.end88.i ], [ %ret.1152.i, %do.end96.i ], [ -22, %do.end35.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd.i) #7
  br label %do.body123

si2157_find_and_load_firmware.exit.thread187:     ; preds = %if.else90.i.si2157_find_and_load_firmware.exit.thread187_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd.i) #7
  br label %if.end65

si2157_find_and_load_firmware.exit:               ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp62 = icmp slt i32 %call2.i, 0
  br i1 %cmp62, label %si2157_find_and_load_firmware.exit.do.body123_crit_edge, label %si2157_find_and_load_firmware.exit.if.end65_crit_edge

si2157_find_and_load_firmware.exit.if.end65_crit_edge: ; preds = %si2157_find_and_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

si2157_find_and_load_firmware.exit.do.body123_crit_edge: ; preds = %si2157_find_and_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body123

if.end65:                                         ; preds = %si2157_find_and_load_firmware.exit.if.end65_crit_edge, %si2157_find_and_load_firmware.exit.thread187
  %54 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 257, ptr %cmd, align 4
  %55 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %wlen, align 4
  %56 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %rlen, align 4
  %call70 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end65.do.body123_crit_edge

if.end65.do.body123_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body123

if.end73:                                         ; preds = %if.end65
  %57 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 17, ptr %cmd, align 4
  %58 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %wlen, align 4
  %59 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 10, ptr %rlen, align 4
  %call78 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %do.end84, label %if.end73.do.body123_crit_edge

if.end73.do.body123_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body123

do.end84:                                         ; preds = %if.end73
  %dev85 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %arrayidx87 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 6
  %60 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx87, align 2
  %conv88 = zext i8 %61 to i32
  %arrayidx90 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 7
  %62 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx90, align 1
  %conv91 = zext i8 %63 to i32
  %arrayidx93 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 8
  %64 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx93, align 4
  %conv94 = zext i8 %65 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev85, ptr noundef nonnull @.str.29, i32 noundef %conv88, i32 noundef %conv91, i32 noundef %conv94) #11
  %66 = call ptr @memcpy(ptr %cmd, ptr @.str.30, i32 6)
  %67 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 6, ptr %wlen, align 4
  %68 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %rlen, align 4
  %call99 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %do.end84.do.body123_crit_edge

do.end84.do.body123_crit_edge:                    ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body123

if.end102:                                        ; preds = %do.end84
  %69 = call ptr @memcpy(ptr %cmd, ptr @.str.31, i32 6)
  %70 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 6, ptr %wlen, align 4
  %71 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %rlen, align 4
  %call107 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end102.do.body123_crit_edge

if.end102.do.body123_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body123

if.end110:                                        ; preds = %if.end102
  %72 = call ptr @memcpy(ptr %cmd, ptr @.str.32, i32 6)
  %73 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 6, ptr %wlen, align 4
  %74 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %rlen, align 4
  %call115 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end110.warm_crit_edge, label %if.end110.do.body123_crit_edge

if.end110.do.body123_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body123

if.end110.warm_crit_edge:                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %warm

warm:                                             ; preds = %if.end110.warm_crit_edge, %land.lhs.true.warm_crit_edge
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %75 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %strength, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %76 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %stat, align 1
  %stat_work = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %77 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %77, ptr noundef %stat_work, i32 noundef 100) #7
  %active = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 2
  %78 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load = load i8, ptr %active, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %active, align 4
  br label %cleanup

do.body123:                                       ; preds = %if.end110.do.body123_crit_edge, %if.end102.do.body123_crit_edge, %do.end84.do.body123_crit_edge, %if.end73.do.body123_crit_edge, %if.end65.do.body123_crit_edge, %si2157_find_and_load_firmware.exit.do.body123_crit_edge, %si2157_find_and_load_firmware.exit.thread, %if.then52.do.body123_crit_edge, %land.lhs.true39.do.body123_crit_edge
  %ret.0 = phi i32 [ %call37, %land.lhs.true39.do.body123_crit_edge ], [ %call56, %if.then52.do.body123_crit_edge ], [ %call2.i, %si2157_find_and_load_firmware.exit.do.body123_crit_edge ], [ %call70, %if.end65.do.body123_crit_edge ], [ %call78, %if.end73.do.body123_crit_edge ], [ %call99, %do.end84.do.body123_crit_edge ], [ %call107, %if.end102.do.body123_crit_edge ], [ %call115, %if.end110.do.body123_crit_edge ], [ %retval.0.i180.ph, %si2157_find_and_load_firmware.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_init, %if.then135)) #7
          to label %cleanup [label %if.then135], !srcloc !307

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #9
  %dev136 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_init.__UNIQUE_ID_ddebug297, ptr noundef %dev136, ptr noundef nonnull @.str.15, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then135, %do.body123, %warm
  %retval.0 = phi i32 [ 0, %warm ], [ %ret.0, %if.then135 ], [ %ret.0, %do.body123 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %cmd = alloca %struct.si2157_cmd, align 4
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_sleep.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_sleep, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_sleep.__UNIQUE_ID_ddebug298, ptr noundef %dev4, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %active, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %active, align 4
  %stat_work = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 8
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %stat_work) #7
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 5632, ptr %cmd, align 4
  %wlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 1
  %7 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %wlen, align 4
  %rlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %rlen, align 4
  %call6 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %do.body10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_sleep.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_sleep, %if.then22)) #7
          to label %cleanup [label %if.then22], !srcloc !307

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_sleep.__UNIQUE_ID_ddebug299, ptr noundef %dev23, ptr noundef nonnull @.str.15, i32 noundef %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body10, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %cmd = alloca %struct.si2157_cmd, align 8
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_set_params.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_set_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %delivery_system5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %5 = ptrtoint ptr %delivery_system5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delivery_system5, align 4
  %7 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %9 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bandwidth_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_set_params.__UNIQUE_ID_ddebug302, ptr noundef %dev4, ptr noundef nonnull @.str.78, i32 noundef %6, i32 noundef %8, i32 noundef %10) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %do.end.err_crit_edge, label %if.end8

do.end.err_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end8:                                          ; preds = %do.end
  %part_id = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %part_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %part_id, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %13, label %if.end8.if.else_crit_edge [
    i8 41, label %if.end8.land.lhs.true_crit_edge
    i8 47, label %if.end8.land.lhs.true_crit_edge248
    i8 57, label %if.end8.land.lhs.true_crit_edge249
    i8 77, label %if.end8.land.lhs.true_crit_edge250
  ]

if.end8.land.lhs.true_crit_edge250:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end8.land.lhs.true_crit_edge249:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end8.land.lhs.true_crit_edge248:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end8.land.lhs.true_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end8.land.lhs.true_crit_edge, %if.end8.land.lhs.true_crit_edge248, %if.end8.land.lhs.true_crit_edge249, %if.end8.land.lhs.true_crit_edge250
  %bandwidth_hz24 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %15 = ptrtoint ptr %bandwidth_hz24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bandwidth_hz24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1700001, i32 %16)
  %cmp25 = icmp ult i32 %16, 1700001
  br i1 %cmp25, label %land.lhs.true.if.end66_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end8.if.else_crit_edge
  %bandwidth_hz28 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %17 = ptrtoint ptr %bandwidth_hz28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bandwidth_hz28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %18)
  %cmp29 = icmp ult i32 %18, 6000001
  br i1 %cmp29, label %if.else.if.end66_crit_edge, label %if.else32

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.else32:                                        ; preds = %if.else
  %19 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %13, label %if.else32.if.else57_crit_edge [
    i8 41, label %if.else32.land.lhs.true52_crit_edge
    i8 47, label %if.else32.land.lhs.true52_crit_edge251
    i8 57, label %if.else32.land.lhs.true52_crit_edge252
    i8 77, label %if.else32.land.lhs.true52_crit_edge253
  ]

if.else32.land.lhs.true52_crit_edge253:           ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true52

if.else32.land.lhs.true52_crit_edge252:           ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true52

if.else32.land.lhs.true52_crit_edge251:           ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true52

if.else32.land.lhs.true52_crit_edge:              ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true52

if.else32.if.else57_crit_edge:                    ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else57

land.lhs.true52:                                  ; preds = %if.else32.land.lhs.true52_crit_edge, %if.else32.land.lhs.true52_crit_edge251, %if.else32.land.lhs.true52_crit_edge252, %if.else32.land.lhs.true52_crit_edge253
  call void @__sanitizer_cov_trace_const_cmp4(i32 6100001, i32 %18)
  %cmp54 = icmp ult i32 %18, 6100001
  br i1 %cmp54, label %land.lhs.true52.if.end66_crit_edge, label %land.lhs.true52.if.else57_crit_edge

land.lhs.true52.if.else57_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else57

land.lhs.true52.if.end66_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.else57:                                        ; preds = %land.lhs.true52.if.else57_crit_edge, %if.else32.if.else57_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %18)
  %cmp59 = icmp ult i32 %18, 7000001
  %. = select i1 %cmp59, i8 7, i8 8
  %.240 = select i1 %cmp59, i32 7000000, i32 8000000
  br label %if.end66

if.end66:                                         ; preds = %if.else57, %land.lhs.true52.if.end66_crit_edge, %if.else.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge
  %bw.0 = phi i8 [ 9, %land.lhs.true.if.end66_crit_edge ], [ 6, %if.else.if.end66_crit_edge ], [ 10, %land.lhs.true52.if.end66_crit_edge ], [ %., %if.else57 ]
  %bandwidth.0 = phi i32 [ 1700000, %land.lhs.true.if.end66_crit_edge ], [ 6000000, %if.else.if.end66_crit_edge ], [ 6100000, %land.lhs.true52.if.end66_crit_edge ], [ %.240, %if.else57 ]
  %delivery_system67 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %20 = ptrtoint ptr %delivery_system67 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delivery_system67, align 4
  %switch.tableidx = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 18
  br i1 %22, label %switch.hole_check, label %if.end66.err_crit_edge

if.end66.err_crit_edge:                           ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

switch.hole_check:                                ; preds = %if.end66
  %switch.shifted = lshr i32 169095, %switch.tableidx
  %23 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %switch.lobit.not = icmp eq i32 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.err_crit_edge, label %switch.lookup

switch.hole_check.err_crit_edge:                  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [18 x i8], ptr @switch.table.si2157_set_params, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %24)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep246 = getelementptr inbounds [18 x i32], ptr @switch.table.si2157_set_params.120, i32 0, i32 %switch.tableidx
  %25 = ptrtoint ptr %switch.gep246 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load247 = load i32, ptr %switch.gep246, align 4
  %26 = call ptr @memcpy(ptr %cmd, ptr @.str.79, i32 6)
  %or = or i8 %switch.load, %bw.0
  %arrayidx = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %or, ptr %arrayidx, align 4
  %28 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool80.not = icmp eq i8 %28, 0
  br i1 %tobool80.not, label %switch.lookup.if.end84_crit_edge, label %if.then81

switch.lookup.if.end84_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then81:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx83 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx83, align 1
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %switch.lookup.if.end84_crit_edge
  %wlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 1
  %30 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 6, ptr %wlen, align 8
  %rlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 2
  %31 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %rlen, align 4
  %call85 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end84.err_crit_edge

if.end84.err_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end88:                                         ; preds = %if.end84
  %32 = ptrtoint ptr %part_id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %part_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 46, i8 %33)
  %cmp91 = icmp eq i8 %33, 46
  br i1 %cmp91, label %if.then93, label %if.else96

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %34 = call ptr @memcpy(ptr %cmd, ptr @.str.80, i32 6)
  br label %if.end99

if.else96:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %35 = call ptr @memcpy(ptr %cmd, ptr @.str.81, i32 6)
  br label %if.end99

if.end99:                                         ; preds = %if.else96, %if.then93
  %if_port = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 4
  %36 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %if_port, align 2
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx, align 4
  %39 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 6, ptr %wlen, align 8
  %40 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 4, ptr %rlen, align 4
  %call104 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end99.err_crit_edge

if.end99.err_crit_edge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end107:                                        ; preds = %if.end99
  %if_frequency108 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %if_frequency108 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %if_frequency108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load247, i32 %42)
  %cmp109.not = icmp eq i32 %switch.load247, %42
  br i1 %cmp109.not, label %if.end107.if.end129_crit_edge, label %if.then111

if.end107.if.end129_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129

if.then111:                                       ; preds = %if.end107
  %43 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 335545863, ptr %cmd, align 8
  %div = udiv i32 %switch.load247, 1000
  %conv114 = trunc i32 %div to i8
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv114, ptr %arrayidx, align 4
  %shr = lshr i32 %div, 8
  %conv119 = trunc i32 %shr to i8
  %arrayidx121 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %45 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv119, ptr %arrayidx121, align 1
  %46 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 6, ptr %wlen, align 8
  %47 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %rlen, align 4
  %call124 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.then111.err_crit_edge

if.then111.err_crit_edge:                         ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end127:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %if_frequency108 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %switch.load247, ptr %if_frequency108, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.end127, %if.end107.if.end129_crit_edge
  %49 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 4683743612465315840, ptr %cmd, align 8
  %50 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dtv_property_cache, align 4
  %conv135 = trunc i32 %51 to i8
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv135, ptr %arrayidx, align 4
  %shr139 = lshr i32 %51, 8
  %conv141 = trunc i32 %shr139 to i8
  %arrayidx143 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %53 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv141, ptr %arrayidx143, align 1
  %shr145 = lshr i32 %51, 16
  %conv147 = trunc i32 %shr145 to i8
  %arrayidx149 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 6
  %54 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv147, ptr %arrayidx149, align 2
  %shr151 = lshr i32 %51, 24
  %conv153 = trunc i32 %shr151 to i8
  %arrayidx155 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 7
  %55 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv153, ptr %arrayidx155, align 1
  %56 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %wlen, align 8
  %57 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %rlen, align 4
  %call158 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end161, label %if.end129.err_crit_edge

if.end129.err_crit_edge:                          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end161:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #9
  %bandwidth162 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 6
  %58 = ptrtoint ptr %bandwidth162 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %bandwidth.0, ptr %bandwidth162, align 4
  %59 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dtv_property_cache, align 4
  %frequency164 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 7
  %61 = ptrtoint ptr %frequency164 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %frequency164, align 4
  call fastcc void @si2157_tune_wait(ptr noundef %1, i8 noundef zeroext 1)
  br label %cleanup

err:                                              ; preds = %if.end129.err_crit_edge, %if.then111.err_crit_edge, %if.end99.err_crit_edge, %if.end84.err_crit_edge, %switch.hole_check.err_crit_edge, %if.end66.err_crit_edge, %do.end.err_crit_edge
  %ret.0 = phi i32 [ %call85, %if.end84.err_crit_edge ], [ %call104, %if.end99.err_crit_edge ], [ %call124, %if.then111.err_crit_edge ], [ %call158, %if.end129.err_crit_edge ], [ -11, %do.end.err_crit_edge ], [ -22, %if.end66.err_crit_edge ], [ -22, %switch.hole_check.err_crit_edge ]
  %bandwidth166 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 6
  %62 = ptrtoint ptr %bandwidth166 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %bandwidth166, align 4
  %frequency167 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 7
  %63 = ptrtoint ptr %frequency167 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %frequency167, align 4
  %if_frequency168 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 5
  %64 = ptrtoint ptr %if_frequency168 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %if_frequency168, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_set_params.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_set_params, %if.then181)) #7
          to label %cleanup [label %if.then181], !srcloc !307

if.then181:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %dev182 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_set_params.__UNIQUE_ID_ddebug303, ptr noundef %dev182, ptr noundef nonnull @.str.15, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then181, %err, %if.end161
  %retval.0 = phi i32 [ 0, %if.end161 ], [ %ret.0, %if.then181 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_set_analog_params(ptr nocapture noundef %fe, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  %cmd = alloca %struct.si2157_cmd, align 8
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %4 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  %part_id = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %part_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %part_id, align 1
  %.off = add i8 %6, -57
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %6 to i32
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef nonnull @.str.87, i32 noundef %conv) #11
  br label %err

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end11, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end11:                                         ; preds = %if.end
  %call10 = tail call i32 @si2157_init(ptr noundef %fe)
  %8 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load13.pr = load i8, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load13.pr)
  %tobool16.not = icmp sgt i8 %bf.load13.pr, -1
  br i1 %tobool16.not, label %if.end11.err_crit_edge, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end18:                                         ; preds = %if.end11.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp19 = icmp eq i32 %10, 1
  br i1 %cmp19, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.90) #11
  br label %err

if.end26:                                         ; preds = %if.end18
  %11 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %params, align 8
  %conv27 = zext i32 %12 to i64
  %mul = mul nuw nsw i64 %conv27, 625
  %div112598 = lshr i64 %mul, 1
  %13 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div112598, i64 3689348814741910323) #12, !srcloc !308
  %14 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div112598, i64 %13) #12, !srcloc !309
  %conv215 = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %conv215)
  %cmp216 = icmp ult i32 %conv215, 1000000
  %mul219 = mul i32 %conv215, 1000
  %freq.0 = select i1 %cmp216, i32 %mul219, i32 %conv215
  %frequency221 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %frequency221 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %freq.0, ptr %frequency221, align 4
  %std222 = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %16 = ptrtoint ptr %std222 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %std222, align 8
  %and223 = and i64 %17, 851983
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and223)
  %tobool224.not = icmp eq i64 %and223, 0
  br i1 %tobool224.not, label %if.else241, label %if.then225

if.then225:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 469999999, i32 %freq.0)
  %cmp226 = icmp ugt i32 %freq.0, 469999999
  br i1 %cmp226, label %if.then228, label %if.else234

if.then228:                                       ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #9
  %and230 = and i64 %17, 786432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and230)
  %tobool231.not = icmp eq i64 %and230, 0
  %spec.select = select i1 %tobool231.not, i32 0, i32 16
  %spec.select600 = select i1 %tobool231.not, ptr @.str.92, ptr @.str.93
  br label %if.end277

if.else234:                                       ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #9
  %and236 = and i64 %17, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and236)
  %tobool237.not = icmp eq i64 %and236, 0
  %18 = lshr exact i64 %and236, 12
  %19 = trunc i64 %18 to i32
  %spec.select602 = select i1 %tobool237.not, ptr @.str.94, ptr @.str.95
  br label %if.end277

if.else241:                                       ; preds = %if.end26
  %and243 = and i64 %17, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and243)
  %tobool244.not = icmp eq i64 %and243, 0
  br i1 %tobool244.not, label %if.else246, label %if.else241.if.end277_crit_edge

if.else241.if.end277_crit_edge:                   ; preds = %if.else241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277

if.else246:                                       ; preds = %if.else241
  %and248 = and i64 %17, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and248)
  %tobool249.not = icmp eq i64 %and248, 0
  br i1 %tobool249.not, label %if.else251, label %if.else246.if.end277_crit_edge

if.else246.if.end277_crit_edge:                   ; preds = %if.else246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277

if.else251:                                       ; preds = %if.else246
  %and253 = and i64 %17, 3277024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and253)
  %tobool254.not = icmp eq i64 %and253, 0
  br i1 %tobool254.not, label %if.else261, label %if.then255

if.then255:                                       ; preds = %if.else251
  call void @__sanitizer_cov_trace_pc() #9
  %and257 = and i64 %17, 3276800
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and257)
  %tobool258.not = icmp eq i64 %and257, 0
  %spec.select603 = select i1 %tobool258.not, i32 0, i32 16
  %spec.select604 = select i1 %tobool258.not, ptr @.str.98, ptr @.str.99
  br label %if.end277

if.else261:                                       ; preds = %if.else251
  %and263 = and i64 %17, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and263)
  %tobool264.not = icmp eq i64 %and263, 0
  br i1 %tobool264.not, label %if.else266, label %if.else261.if.end277_crit_edge

if.else261.if.end277_crit_edge:                   ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end277

if.else266:                                       ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #9
  %and268 = and i64 %17, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and268)
  %tobool269.not = icmp eq i64 %and268, 0
  %. = select i1 %tobool269.not, i32 0, i32 7
  %20 = lshr exact i64 %and268, 19
  %21 = trunc i64 %20 to i32
  %.606 = select i1 %tobool269.not, i32 0, i32 1250000
  %.607 = select i1 %tobool269.not, i32 0, i32 7000000
  %.str.102..str.101 = select i1 %tobool269.not, ptr @.str.102, ptr @.str.101
  br label %if.end277

if.end277:                                        ; preds = %if.else266, %if.else261.if.end277_crit_edge, %if.then255, %if.else246.if.end277_crit_edge, %if.else241.if.end277_crit_edge, %if.else234, %if.then228
  %system.0 = phi i32 [ 1, %if.then228 ], [ 0, %if.else234 ], [ 2, %if.else241.if.end277_crit_edge ], [ 4, %if.else246.if.end277_crit_edge ], [ 5, %if.then255 ], [ 6, %if.else261.if.end277_crit_edge ], [ %., %if.else266 ]
  %color.0 = phi i32 [ %spec.select, %if.then228 ], [ %19, %if.else234 ], [ 0, %if.else241.if.end277_crit_edge ], [ 0, %if.else246.if.end277_crit_edge ], [ %spec.select603, %if.then255 ], [ 16, %if.else261.if.end277_crit_edge ], [ %21, %if.else266 ]
  %if_frequency.0 = phi i32 [ 6000000, %if.then228 ], [ 6000000, %if.else234 ], [ 5400000, %if.else241.if.end277_crit_edge ], [ 7250000, %if.else246.if.end277_crit_edge ], [ 6900000, %if.then255 ], [ 6750000, %if.else261.if.end277_crit_edge ], [ %.606, %if.else266 ]
  %bandwidth.0 = phi i32 [ 8000000, %if.then228 ], [ 7000000, %if.else234 ], [ 6000000, %if.else241.if.end277_crit_edge ], [ 8000000, %if.else246.if.end277_crit_edge ], [ 8000000, %if.then255 ], [ 8000000, %if.else261.if.end277_crit_edge ], [ %.607, %if.else266 ]
  %std.0 = phi ptr [ %spec.select600, %if.then228 ], [ %spec.select602, %if.else234 ], [ @.str.96, %if.else241.if.end277_crit_edge ], [ @.str.97, %if.else246.if.end277_crit_edge ], [ %spec.select604, %if.then255 ], [ @.str.100, %if.else261.if.end277_crit_edge ], [ %.str.102..str.101, %if.else266 ]
  %sub278 = add i32 %freq.0, -1250000
  %div279599 = lshr exact i32 %bandwidth.0, 1
  %add280 = add i32 %sub278, %div279599
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_set_analog_params.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_set_analog_params, %if.then291)) #7
          to label %do.end298 [label %if.then291], !srcloc !307

if.then291:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #9
  %dev292 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 4
  %24 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %params, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_set_analog_params.__UNIQUE_ID_ddebug304, ptr noundef %dev292, ptr noundef nonnull @.str.103, i32 noundef %23, i32 noundef %system.0, ptr noundef nonnull %std.0, i32 noundef %25, i32 noundef %add280, i32 noundef %if_frequency.0, i32 noundef %bandwidth.0) #7
  br label %do.end298

do.end298:                                        ; preds = %if.then291, %if.end277
  %26 = call ptr @memcpy(ptr %cmd, ptr @.str.104, i32 6)
  %if_port = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp300 = icmp eq i8 %28, 1
  %conv303 = select i1 %cmp300, i8 8, i8 10
  %arrayidx = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv303, ptr %arrayidx, align 4
  %conv310 = select i1 %cmp300, i8 2, i8 1
  %arrayidx312 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv310, ptr %arrayidx312, align 1
  %wlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 1
  %31 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 6, ptr %wlen, align 8
  %rlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 2
  %32 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %rlen, align 4
  %call313 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call313)
  %tobool314.not = icmp eq i32 %call313, 0
  br i1 %tobool314.not, label %if.end316, label %do.end298.err_crit_edge

do.end298.err_crit_edge:                          ; preds = %do.end298
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end316:                                        ; preds = %do.end298
  %33 = call ptr @memcpy(ptr %cmd, ptr @.str.105, i32 6)
  %34 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 6, ptr %wlen, align 8
  %35 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %rlen, align 4
  %call321 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %if.end324, label %if.end316.err_crit_edge

if.end316.err_crit_edge:                          ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end324:                                        ; preds = %if.end316
  %or325 = or i32 %if_frequency.0, 1
  %if_frequency326 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %if_frequency326 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or325, ptr %if_frequency326, align 4
  %add327 = add nuw nsw i32 %if_frequency.0, 1250000
  %sub329 = sub nsw i32 %add327, %div279599
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_set_analog_params.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_set_analog_params, %if.then342)) #7
          to label %do.end346 [label %if.then342], !srcloc !307

if.then342:                                       ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #9
  %dev343 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_set_analog_params.__UNIQUE_ID_ddebug305, ptr noundef %dev343, ptr noundef nonnull @.str.106, i32 noundef %sub329) #7
  br label %do.end346

do.end346:                                        ; preds = %if.then342, %if.end324
  %37 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 335547398, ptr %cmd, align 8
  %div349 = udiv i32 %sub329, 1000
  %conv351 = trunc i32 %div349 to i8
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv351, ptr %arrayidx, align 4
  %shr355 = lshr i32 %div349, 8
  %conv357 = trunc i32 %shr355 to i8
  %39 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv357, ptr %arrayidx312, align 1
  %40 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %wlen, align 8
  %41 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %rlen, align 4
  %call362 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %if.end365, label %do.end346.err_crit_edge

do.end346.err_crit_edge:                          ; preds = %do.end346
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end365:                                        ; preds = %do.end346
  %42 = call ptr @memcpy(ptr %cmd, ptr @.str.108, i32 6)
  %43 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 6, ptr %wlen, align 8
  %44 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %rlen, align 4
  %call370 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call370)
  %tobool371.not = icmp eq i32 %call370, 0
  br i1 %tobool371.not, label %if.end373, label %if.end365.err_crit_edge

if.end365.err_crit_edge:                          ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end373:                                        ; preds = %if.end365
  %45 = call ptr @memcpy(ptr %cmd, ptr @.str.109, i32 6)
  %or378 = or i32 %color.0, %system.0
  %conv379 = trunc i32 %or378 to i8
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv379, ptr %arrayidx, align 4
  %47 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %arrayidx312, align 1
  %48 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 6, ptr %wlen, align 8
  %49 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %rlen, align 4
  %call392 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392)
  %tobool393.not = icmp eq i32 %call392, 0
  br i1 %tobool393.not, label %if.end395, label %if.end373.err_crit_edge

if.end373.err_crit_edge:                          ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end395:                                        ; preds = %if.end373
  %50 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 4684025087442026496, ptr %cmd, align 8
  %conv400 = trunc i32 %add280 to i8
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv400, ptr %arrayidx, align 4
  %shr403 = lshr i32 %add280, 8
  %conv405 = trunc i32 %shr403 to i8
  %52 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv405, ptr %arrayidx312, align 1
  %shr408 = lshr i32 %add280, 16
  %conv410 = trunc i32 %shr408 to i8
  %arrayidx412 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 6
  %53 = ptrtoint ptr %arrayidx412 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv410, ptr %arrayidx412, align 2
  %shr413 = lshr i32 %add280, 24
  %conv415 = trunc i32 %shr413 to i8
  %arrayidx417 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 7
  %54 = ptrtoint ptr %arrayidx417 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv415, ptr %arrayidx417, align 1
  %55 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8, ptr %wlen, align 8
  %56 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %rlen, align 4
  %call420 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call420)
  %tobool421.not = icmp eq i32 %call420, 0
  br i1 %tobool421.not, label %if.end423, label %if.end395.err_crit_edge

if.end395.err_crit_edge:                          ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end423:                                        ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #9
  %bandwidth424 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 6
  %57 = ptrtoint ptr %bandwidth424 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %bandwidth.0, ptr %bandwidth424, align 4
  call fastcc void @si2157_tune_wait(ptr noundef %1, i8 noundef zeroext 0)
  br label %cleanup

err:                                              ; preds = %if.end395.err_crit_edge, %if.end373.err_crit_edge, %if.end365.err_crit_edge, %do.end346.err_crit_edge, %if.end316.err_crit_edge, %do.end298.err_crit_edge, %do.end24, %if.end11.err_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end24 ], [ %call313, %do.end298.err_crit_edge ], [ %call321, %if.end316.err_crit_edge ], [ %call362, %do.end346.err_crit_edge ], [ %call370, %if.end365.err_crit_edge ], [ %call392, %if.end373.err_crit_edge ], [ %call420, %if.end395.err_crit_edge ], [ -22, %do.end ], [ -11, %if.end11.err_crit_edge ]
  %bandwidth426 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 6
  %58 = ptrtoint ptr %bandwidth426 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %bandwidth426, align 4
  %frequency427 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 7
  %59 = ptrtoint ptr %frequency427 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %frequency427, align 4
  %if_frequency428 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 5
  %60 = ptrtoint ptr %if_frequency428 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %if_frequency428, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_set_analog_params.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_set_analog_params, %if.then441)) #7
          to label %cleanup [label %if.then441], !srcloc !307

if.then441:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #9
  %dev442 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_set_analog_params.__UNIQUE_ID_ddebug306, ptr noundef %dev442, ptr noundef nonnull @.str.15, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then441, %err, %if.end423
  %retval.0 = phi i32 [ 0, %if.end423 ], [ %ret.0, %if.then441 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #2 align 64 {
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
  %frequency1 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frequency1, align 4
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %frequency, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_get_frequency.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_get_frequency, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %frequency1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frequency1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_get_frequency.__UNIQUE_ID_ddebug307, ptr noundef %dev5, ptr noundef nonnull @.str.112, i32 noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bandwidth) #2 align 64 {
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
  %bandwidth1 = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bandwidth1, align 4
  %6 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %bandwidth, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_get_bandwidth.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_get_bandwidth, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %bandwidth1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bandwidth1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_get_bandwidth.__UNIQUE_ID_ddebug308, ptr noundef %dev5, ptr noundef nonnull @.str.114, i32 noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef %frequency) #2 align 64 {
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
  %if_frequency = getelementptr inbounds %struct.si2157_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %if_frequency, align 4
  %and = and i32 %5, -2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %frequency, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_get_if_frequency.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_get_if_frequency, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frequency, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_get_if_frequency.__UNIQUE_ID_ddebug309, ptr noundef %dev4, ptr noundef nonnull @.str.116, i32 noundef %8) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si2157_get_rf_strength(ptr nocapture noundef %fe, ptr nocapture noundef %rssi) #2 align 64 {
entry:
  %cmd = alloca %struct.si2157_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_get_rf_strength.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_get_rf_strength, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !307

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_get_rf_strength.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 16896, ptr %cmd, align 4
  %wlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %wlen, align 4
  %rlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %rlen, align 4
  %call3 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.body49

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %6 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %stat, align 1
  %arrayidx9 = getelementptr inbounds [30 x i8], ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %conv = sext i8 %8 to i32
  %mul = mul nsw i32 %conv, 1000
  %conv10 = sext i32 %mul to i64
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %conv10, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -100, i8 %8)
  %cmp = icmp sgt i8 %8, -100
  %11 = call i32 @llvm.smin.i32(i32 %conv, i32 -20)
  %12 = mul nsw i32 %11, 65535
  %.op = add nsw i32 %12, 6553500
  %.op.op = sdiv i32 %.op, 80
  %13 = trunc i32 %.op.op to i16
  %conv27 = select i1 %cmp, i16 %13, i16 0
  %14 = ptrtoint ptr %rssi to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv27, ptr %rssi, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_get_rf_strength.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_get_rf_strength, %if.then40)) #7
          to label %cleanup [label %if.then40], !srcloc !307

if.then40:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %dev41 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9, align 1
  %conv44 = sext i8 %16 to i32
  %17 = ptrtoint ptr %rssi to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rssi, align 2
  %conv45 = zext i16 %18 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_get_rf_strength.__UNIQUE_ID_ddebug315, ptr noundef %dev41, ptr noundef nonnull @.str.118, i32 noundef %conv44, i32 noundef %conv45) #7
  br label %cleanup

do.body49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_get_rf_strength.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_get_rf_strength, %if.then61)) #7
          to label %cleanup [label %if.then61], !srcloc !307

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %dev62 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_get_rf_strength.__UNIQUE_ID_ddebug316, ptr noundef %dev62, ptr noundef nonnull @.str.15, i32 noundef %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %if.then40, %if.end6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si2157_load_firmware(ptr nocapture noundef readonly %fe, ptr noundef %fw_name) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  %cmd = alloca %struct.si2157_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !310
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cmd) #7
  %3 = call ptr @memset(ptr %cmd, i32 255, i32 40)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = call i32 @firmware_request_nowarn(ptr noundef nonnull %fw, ptr noundef %fw_name, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %rem = urem i32 %7, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %do.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef %fw_name) #11
  br label %err_release_firmware

do.end6:                                          ; preds = %if.end
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.67, ptr noundef %fw_name) #11
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp953 = icmp sgt i32 %11, 0
  br i1 %cmp953, label %for.body.lr.ph, label %do.end6.err_release_firmware_crit_edge

do.end6.err_release_firmware_crit_edge:           ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_firmware

for.body.lr.ph:                                   ; preds = %do.end6
  %wlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 1
  %rlen = getelementptr inbounds %struct.si2157_cmd, ptr %cmd, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %if.end18
  %sub31 = add nsw i32 %remaining.054, -17
  %cmp9 = icmp sgt i32 %remaining.054, 17
  br i1 %cmp9, label %for.cond.for.body_crit_edge, label %for.cond.err_release_firmware_crit_edge

for.cond.err_release_firmware_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_firmware

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %remaining.054 = phi i32 [ %11, %for.body.lr.ph ], [ %sub31, %for.cond.for.body_crit_edge ]
  %12 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %sub = sub i32 %17, %remaining.054
  %arrayidx = getelementptr i8, ptr %15, i32 %sub
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %19)
  %cmp11 = icmp ugt i8 %19, 30
  br i1 %cmp11, label %do.end16, label %if.end18

do.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70) #11
  br label %err_release_firmware

if.end18:                                         ; preds = %for.body
  %conv = zext i8 %19 to i32
  %add = add i32 %sub, 1
  %arrayidx22 = getelementptr i8, ptr %15, i32 %add
  %20 = call ptr @memcpy(ptr %cmd, ptr %arrayidx22, i32 %conv)
  %21 = ptrtoint ptr %wlen to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %wlen, align 4
  %22 = ptrtoint ptr %rlen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %rlen, align 4
  %call23 = call fastcc i32 @si2157_cmd_execute(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.cond, label %do.end28

do.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %call23) #11
  br label %err_release_firmware

err_release_firmware:                             ; preds = %do.end28, %do.end16, %for.cond.err_release_firmware_crit_edge, %do.end6.err_release_firmware_crit_edge, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ %call23, %do.end28 ], [ 0, %do.end6.err_release_firmware_crit_edge ], [ 0, %for.cond.err_release_firmware_crit_edge ]
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %err_release_firmware, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_release_firmware ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cmd) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @firmware_request_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @si2157_tune_wait(ptr noundef %client, i8 noundef zeroext %is_digital) unnamed_addr #2 align 64 {
entry:
  %wait_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wait_status) #7
  %2 = ptrtoint ptr %wait_status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %wait_status, align 1, !annotation !310
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %is_digital)
  %tobool.not = icmp eq i8 %is_digital, 0
  %. = select i1 %tobool.not, i32 2, i32 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 4
  %call.i11 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %wait_status, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp13 = icmp slt i32 %call.i11, 0
  br i1 %cmp13, label %entry.err_mutex_unlock_crit_edge, label %entry.if.else4_crit_edge

entry.if.else4_crit_edge:                         ; preds = %entry
  br label %if.else4

entry.err_mutex_unlock_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.else4:                                         ; preds = %if.end15.if.else4_crit_edge, %entry.if.else4_crit_edge
  %call.i14 = phi i32 [ %call.i, %if.end15.if.else4_crit_edge ], [ %call.i11, %entry.if.else4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14)
  %cmp5.not = icmp eq i32 %call.i14, 1
  br i1 %cmp5.not, label %if.end8, label %if.else4.err_mutex_unlock_crit_edge

if.else4.err_mutex_unlock_crit_edge:              ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.end8:                                          ; preds = %if.else4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %if.end8.do.body_crit_edge, label %if.end11

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end11:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %wait_status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wait_status, align 1
  %7 = and i8 %6, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %7)
  %cmp12 = icmp eq i8 %7, -127
  br i1 %cmp12, label %if.end11.do.body_crit_edge, label %if.end15

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end15:                                         ; preds = %if.end11
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %wait_status, i32 noundef 1, i16 noundef zeroext 1) #7
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end15.err_mutex_unlock_crit_edge, label %if.end15.if.else4_crit_edge

if.end15.if.else4_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else4

if.end15.err_mutex_unlock_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

do.body:                                          ; preds = %if.end11.do.body_crit_edge, %if.end8.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_tune_wait.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_tune_wait, %if.then20)) #7
          to label %do.end [label %if.then20], !srcloc !307

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %call22 = call i32 @jiffies_to_msecs(i32 noundef %8) #7
  %call23 = call i32 @jiffies_to_msecs(i32 noundef %3) #7
  %sub24 = sub i32 %call22, %call23
  %9 = ptrtoint ptr %wait_status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %wait_status, align 1
  %conv25 = zext i8 %10 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_tune_wait.__UNIQUE_ID_ddebug300, ptr noundef %dev21, ptr noundef nonnull @.str.85, i32 noundef %sub24, i32 noundef %conv25) #7
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %11 = load i32, ptr @tuner_lock_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool27.not = icmp eq i32 %11, 0
  br i1 %tobool27.not, label %do.end.if.end86_crit_edge, label %land.lhs.true

do.end.if.end86_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

land.lhs.true:                                    ; preds = %do.end
  %12 = ptrtoint ptr %wait_status to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wait_status, align 1
  %14 = and i8 %13, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %14)
  %cmp30 = icmp eq i8 %14, -127
  br i1 %cmp30, label %if.then32, label %land.lhs.true.if.end86_crit_edge

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then32:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %.22 = select i1 %tobool.not, i32 15, i32 3
  %add39 = add i32 %15, %.22
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub4216 = sub i32 %add39, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub4216)
  %cmp4317 = icmp sgt i32 %sub4216, -1
  br i1 %cmp4317, label %if.then32.while.body47_crit_edge, label %if.then32.do.body65_crit_edge

if.then32.do.body65_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

if.then32.while.body47_crit_edge:                 ; preds = %if.then32
  br label %while.body47

while.body47:                                     ; preds = %if.end63.while.body47_crit_edge, %if.then32.while.body47_crit_edge
  %call.i6 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %wait_status, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %cmp49 = icmp slt i32 %call.i6, 0
  br i1 %cmp49, label %while.body47.err_mutex_unlock_crit_edge, label %if.else52

while.body47.err_mutex_unlock_crit_edge:          ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.else52:                                        ; preds = %while.body47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i6)
  %cmp53.not = icmp eq i32 %call.i6, 1
  br i1 %cmp53.not, label %if.end57, label %if.else52.err_mutex_unlock_crit_edge

if.else52.err_mutex_unlock_crit_edge:             ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.end57:                                         ; preds = %if.else52
  %17 = ptrtoint ptr %wait_status to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wait_status, align 1
  %conv58 = zext i8 %18 to i32
  %and60 = and i32 %., %conv58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end57.do.body65_crit_edge

if.end57.do.body65_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

if.end63:                                         ; preds = %if.end57
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub42 = sub i32 %add39, %19
  %cmp43 = icmp sgt i32 %sub42, -1
  br i1 %cmp43, label %if.end63.while.body47_crit_edge, label %if.end63.do.body65_crit_edge

if.end63.do.body65_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65

if.end63.while.body47_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body47

do.body65:                                        ; preds = %if.end63.do.body65_crit_edge, %if.end57.do.body65_crit_edge, %if.then32.do.body65_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si2157_tune_wait.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si2157_tune_wait, %if.then77)) #7
          to label %if.end86 [label %if.then77], !srcloc !307

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %dev78 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %call79 = call i32 @jiffies_to_msecs(i32 noundef %20) #7
  %call80 = call i32 @jiffies_to_msecs(i32 noundef %3) #7
  %sub81 = sub i32 %call79, %call80
  %21 = ptrtoint ptr %wait_status to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wait_status, align 1
  %conv82 = zext i8 %22 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si2157_tune_wait.__UNIQUE_ID_ddebug301, ptr noundef %dev78, ptr noundef nonnull @.str.86, i32 noundef %sub81, i32 noundef %conv82) #7
  br label %if.end86

if.end86:                                         ; preds = %if.then77, %do.body65, %land.lhs.true.if.end86_crit_edge, %do.end.if.end86_crit_edge
  %23 = ptrtoint ptr %wait_status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wait_status, align 1
  %25 = and i8 %24, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %25)
  %cmp89.not = icmp eq i8 %25, -128
  br i1 %cmp89.not, label %if.end92, label %if.end86.err_mutex_unlock_crit_edge

if.end86.err_mutex_unlock_crit_edge:              ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_mutex_unlock

if.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

err_mutex_unlock:                                 ; preds = %if.end86.err_mutex_unlock_crit_edge, %if.else52.err_mutex_unlock_crit_edge, %while.body47.err_mutex_unlock_crit_edge, %if.end15.err_mutex_unlock_crit_edge, %if.else4.err_mutex_unlock_crit_edge, %entry.err_mutex_unlock_crit_edge
  %ret.0 = phi i32 [ -110, %if.end86.err_mutex_unlock_crit_edge ], [ %call.i11, %entry.err_mutex_unlock_crit_edge ], [ -121, %if.else52.err_mutex_unlock_crit_edge ], [ %call.i6, %while.body47.err_mutex_unlock_crit_edge ], [ %call.i, %if.end15.err_mutex_unlock_crit_edge ], [ -121, %if.else4.err_mutex_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #7
  %dev98 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev98, ptr noundef nonnull @.str.15, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %err_mutex_unlock, %if.end92
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wait_status) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister_entity(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
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
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !51, !52, !53, !54, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !75, !76, !78, !80, !82, !83, !84, !86, !88, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !111, !113, !115, !117, !119, !120, !121, !122, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !191, !192, !194, !196, !198, !199, !200, !202, !204, !206, !208, !210, !212, !214, !215, !216, !218, !219, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !256, !258, !260, !262, !263, !265, !267, !269, !271, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !290, !291, !293, !295, !296}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304, !305}
!llvm.ident = !{!306}

!0 = !{ptr @__param_tuner_lock_debug, !1, !"__param_tuner_lock_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/si2157.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_tuner_lock_debugtype292, !1, !"__UNIQUE_ID_tuner_lock_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_tuner_lock_debug293, !4, !"__UNIQUE_ID_tuner_lock_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/si2157.c", i32 14, i32 1}
!5 = !{ptr @__initcall__kmod_si2157__321_1000_si2157_driver_init6, !6, !"__initcall__kmod_si2157__321_1000_si2157_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/si2157.c", i32 1000, i32 1}
!7 = !{ptr @__exitcall_si2157_driver_exit, !6, !"__exitcall_si2157_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description322, !9, !"__UNIQUE_ID_description322", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/si2157.c", i32 1002, i32 1}
!10 = !{ptr @__UNIQUE_ID_author323, !11, !"__UNIQUE_ID_author323", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/si2157.c", i32 1003, i32 1}
!12 = !{ptr @__UNIQUE_ID_file324, !13, !"__UNIQUE_ID_file324", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/si2157.c", i32 1004, i32 1}
!14 = !{ptr @__UNIQUE_ID_license325, !13, !"__UNIQUE_ID_license325", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_firmware326, !16, !"__UNIQUE_ID_firmware326", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/si2157.c", i32 1005, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware327, !18, !"__UNIQUE_ID_firmware327", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/si2157.c", i32 1006, i32 1}
!19 = !{ptr @__UNIQUE_ID_firmware328, !20, !"__UNIQUE_ID_firmware328", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/si2157.c", i32 1007, i32 1}
!21 = !{ptr @__UNIQUE_ID_firmware329, !22, !"__UNIQUE_ID_firmware329", i1 false, i1 false}
!22 = !{!"../drivers/media/tuners/si2157.c", i32 1008, i32 1}
!23 = !{ptr @__UNIQUE_ID_firmware330, !24, !"__UNIQUE_ID_firmware330", i1 false, i1 false}
!24 = !{!"../drivers/media/tuners/si2157.c", i32 1009, i32 1}
!25 = !{ptr @__UNIQUE_ID_firmware331, !26, !"__UNIQUE_ID_firmware331", i1 false, i1 false}
!26 = !{!"../drivers/media/tuners/si2157.c", i32 1010, i32 1}
!27 = !{ptr @__UNIQUE_ID_firmware332, !28, !"__UNIQUE_ID_firmware332", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/si2157.c", i32 1011, i32 1}
!29 = !{ptr @__UNIQUE_ID_firmware333, !30, !"__UNIQUE_ID_firmware333", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/si2157.c", i32 1012, i32 1}
!31 = !{ptr @__UNIQUE_ID_firmware334, !32, !"__UNIQUE_ID_firmware334", i1 false, i1 false}
!32 = !{!"../drivers/media/tuners/si2157.c", i32 1013, i32 1}
!33 = !{ptr @__UNIQUE_ID_firmware335, !34, !"__UNIQUE_ID_firmware335", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/si2157.c", i32 1014, i32 1}
!35 = !{ptr @__UNIQUE_ID_firmware336, !36, !"__UNIQUE_ID_firmware336", i1 false, i1 false}
!36 = !{!"../drivers/media/tuners/si2157.c", i32 1015, i32 1}
!37 = !{ptr @__UNIQUE_ID_firmware337, !38, !"__UNIQUE_ID_firmware337", i1 false, i1 false}
!38 = !{!"../drivers/media/tuners/si2157.c", i32 1016, i32 1}
!39 = !{ptr @__UNIQUE_ID_firmware338, !40, !"__UNIQUE_ID_firmware338", i1 false, i1 false}
!40 = !{!"../drivers/media/tuners/si2157.c", i32 1017, i32 1}
!41 = !{ptr @tuner_lock_debug, !42, !"tuner_lock_debug", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/si2157.c", i32 12, i32 12}
!43 = !{ptr @__param_str_tuner_lock_debug, !1, !"__param_str_tuner_lock_debug", i1 false, i1 false}
!44 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/tuners/si2157.c", i32 992, i32 17}
!46 = !{ptr @si2157_driver, !47, !"si2157_driver", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/si2157.c", i32 990, i32 26}
!48 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/si2157.c", i32 890, i32 3}
!50 = !{ptr @.str.2, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @si2157_probe._entry, !49, !"_entry", i1 false, i1 false}
!55 = !{ptr @si2157_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @si2157_probe.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/media/tuners/si2157.c", i32 901, i32 2}
!58 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @si2157_probe.__key.7, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/media/tuners/si2157.c", i32 902, i32 2}
!61 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @si2157_probe.__key.9, !60, !"__key", i1 false, i1 false}
!63 = !{ptr @.str.10, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.12, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/tuners/si2157.c", i32 942, i32 2}
!66 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @si2157_probe._entry.11, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @si2157_probe._entry_ptr.14, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/si2157.c", i32 950, i32 2}
!71 = !{ptr @si2157_probe.__UNIQUE_ID_ddebug319, !70, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/tuners/si2157.c", i32 859, i32 2}
!74 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @si2157_stat_work.__UNIQUE_ID_ddebug317, !73, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/tuners/si2157.c", i32 861, i32 19}
!78 = !{ptr @si2157_stat_work.__UNIQUE_ID_ddebug318, !79, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/si2157.c", i32 875, i32 2}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/tuners/si2157.c", i32 54, i32 3}
!82 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @si2157_cmd_execute.__UNIQUE_ID_ddebug294, !81, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!84 = !{ptr @si2157_cmd_execute.__UNIQUE_ID_ddebug295, !85, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!85 = !{!"../drivers/media/tuners/si2157.c", i32 75, i32 2}
!86 = !{ptr @si2157_ops, !87, !"si2157_ops", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/si2157.c", i32 832, i32 35}
!88 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/si2157.c", i32 225, i32 2}
!90 = !{ptr @si2157_init.__UNIQUE_ID_ddebug296, !89, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/tuners/si2157.c", i32 228, i32 19}
!93 = !{ptr @.str.23, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/tuners/si2157.c", i32 243, i32 20}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/tuners/si2157.c", i32 247, i32 20}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/tuners/si2157.c", i32 250, i32 20}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/tuners/si2157.c", i32 260, i32 20}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/tuners/si2157.c", i32 273, i32 19}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/tuners/si2157.c", i32 281, i32 19}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/tuners/si2157.c", i32 288, i32 2}
!107 = !{ptr @si2157_init._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @si2157_init._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.30, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/tuners/si2157.c", i32 292, i32 19}
!111 = !{ptr @.str.31, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/tuners/si2157.c", i32 299, i32 19}
!113 = !{ptr @.str.32, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/tuners/si2157.c", i32 306, i32 19}
!115 = !{ptr @si2157_init.__UNIQUE_ID_ddebug297, !116, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!116 = !{!"../drivers/media/tuners/si2157.c", i32 323, i32 2}
!117 = !{ptr @.str.33, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/tuners/si2157.c", i32 152, i32 3}
!119 = !{ptr @.str.34, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @si2157_find_and_load_firmware._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @si2157_find_and_load_firmware._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/tuners/si2157.c", i32 158, i32 19}
!124 = !{ptr @.str.37, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/tuners/si2157.c", i32 182, i32 3}
!126 = !{ptr @si2157_find_and_load_firmware._entry.36, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @si2157_find_and_load_firmware._entry_ptr.38, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/tuners/si2157.c", i32 191, i32 2}
!130 = !{ptr @si2157_find_and_load_firmware._entry.39, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @si2157_find_and_load_firmware._entry_ptr.41, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/tuners/si2157.c", i32 206, i32 4}
!134 = !{ptr @si2157_find_and_load_firmware._entry.42, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @si2157_find_and_load_firmware._entry_ptr.44, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/tuners/si2157.c", i32 209, i32 3}
!138 = !{ptr @si2157_find_and_load_firmware._entry.45, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @si2157_find_and_load_firmware._entry_ptr.47, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/tuners/si2157.c", i32 211, i32 3}
!142 = !{ptr @si2157_find_and_load_firmware._entry.48, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @si2157_find_and_load_firmware._entry_ptr.50, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/tuners/si2157.c", i32 80, i32 25}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/tuners/si2157.c", i32 80, i32 45}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/tuners/si2157.c", i32 81, i32 25}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/tuners/si2157.c", i32 82, i32 25}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/tuners/si2157.c", i32 83, i32 25}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/tuners/si2157.c", i32 84, i32 25}
!156 = !{ptr @.str.57, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/tuners/si2157.c", i32 84, i32 45}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/tuners/si2157.c", i32 85, i32 25}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/tuners/si2157.c", i32 86, i32 25}
!162 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/tuners/si2157.c", i32 86, i32 45}
!164 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/tuners/si2157.c", i32 87, i32 25}
!166 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/tuners/si2157.c", i32 88, i32 25}
!168 = !{ptr @.str.63, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/tuners/si2157.c", i32 89, i32 25}
!170 = !{ptr @si2157_tuners, !171, !"si2157_tuners", i1 false, i1 false}
!171 = !{!"../drivers/media/tuners/si2157.c", i32 79, i32 39}
!172 = !{ptr @.str.64, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/tuners/si2157.c", i32 107, i32 3}
!174 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @si2157_load_firmware._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @si2157_load_firmware._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/tuners/si2157.c", i32 113, i32 2}
!179 = !{ptr @si2157_load_firmware._entry.66, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @si2157_load_firmware._entry_ptr.68, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/tuners/si2157.c", i32 119, i32 4}
!183 = !{ptr @si2157_load_firmware._entry.69, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @si2157_load_firmware._entry_ptr.71, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.73, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/tuners/si2157.c", i32 128, i32 4}
!187 = !{ptr @si2157_load_firmware._entry.72, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @si2157_load_firmware._entry_ptr.74, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/tuners/si2157.c", i32 334, i32 2}
!191 = !{ptr @si2157_sleep.__UNIQUE_ID_ddebug298, !190, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!192 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/tuners/si2157.c", i32 342, i32 19}
!194 = !{ptr @si2157_sleep.__UNIQUE_ID_ddebug299, !195, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!195 = !{!"../drivers/media/tuners/si2157.c", i32 351, i32 2}
!196 = !{ptr @.str.77, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/tuners/si2157.c", i32 453, i32 2}
!198 = !{ptr @.str.78, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @si2157_set_params.__UNIQUE_ID_ddebug302, !197, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!200 = !{ptr @.str.79, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/tuners/si2157.c", i32 507, i32 19}
!202 = !{ptr @.str.80, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/tuners/si2157.c", i32 519, i32 20}
!204 = !{ptr @.str.81, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/tuners/si2157.c", i32 521, i32 20}
!206 = distinct !{null, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/tuners/si2157.c", i32 531, i32 20}
!208 = distinct !{null, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/tuners/si2157.c", i32 544, i32 19}
!210 = !{ptr @si2157_set_params.__UNIQUE_ID_ddebug303, !211, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!211 = !{!"../drivers/media/tuners/si2157.c", i32 565, i32 2}
!212 = !{ptr @.str.84, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/tuners/si2157.c", i32 396, i32 2}
!214 = !{ptr @.str.85, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @si2157_tune_wait.__UNIQUE_ID_ddebug300, !213, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!216 = !{ptr @.str.86, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/tuners/si2157.c", i32 423, i32 3}
!218 = !{ptr @si2157_tune_wait.__UNIQUE_ID_ddebug301, !217, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!219 = !{ptr @si2157_tune_wait._entry, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../drivers/media/tuners/si2157.c", i32 438, i32 2}
!221 = !{ptr @si2157_tune_wait._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.87, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/tuners/si2157.c", i32 586, i32 3}
!224 = !{ptr @.str.88, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @si2157_set_analog_params._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @si2157_set_analog_params._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.90, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/tuners/si2157.c", i32 607, i32 3}
!229 = !{ptr @si2157_set_analog_params._entry.89, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @si2157_set_analog_params._entry_ptr.91, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.92, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/tuners/si2157.c", i32 622, i32 10}
!233 = !{ptr @.str.93, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/tuners/si2157.c", i32 628, i32 11}
!235 = !{ptr @.str.94, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/tuners/si2157.c", i32 632, i32 10}
!237 = !{ptr @.str.95, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/tuners/si2157.c", i32 637, i32 11}
!239 = !{ptr @.str.96, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/tuners/si2157.c", i32 642, i32 9}
!241 = !{ptr @.str.97, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/tuners/si2157.c", i32 647, i32 9}
!243 = !{ptr @.str.98, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/tuners/si2157.c", i32 652, i32 9}
!245 = !{ptr @.str.99, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/tuners/si2157.c", i32 657, i32 10}
!247 = !{ptr @.str.100, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/tuners/si2157.c", i32 661, i32 9}
!249 = !{ptr @.str.101, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/tuners/si2157.c", i32 667, i32 9}
!251 = !{ptr @.str.102, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/tuners/si2157.c", i32 673, i32 9}
!253 = !{ptr @.str.103, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/tuners/si2157.c", i32 678, i32 2}
!255 = !{ptr @si2157_set_analog_params.__UNIQUE_ID_ddebug304, !254, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!256 = !{ptr @.str.104, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/tuners/si2157.c", i32 684, i32 19}
!258 = !{ptr @.str.105, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/media/tuners/si2157.c", i32 698, i32 19}
!260 = !{ptr @.str.106, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/tuners/si2157.c", i32 710, i32 2}
!262 = !{ptr @si2157_set_analog_params.__UNIQUE_ID_ddebug305, !261, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!263 = distinct !{null, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/tuners/si2157.c", i32 712, i32 19}
!265 = !{ptr @.str.108, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/tuners/si2157.c", i32 722, i32 19}
!267 = !{ptr @.str.109, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/tuners/si2157.c", i32 730, i32 19}
!269 = distinct !{null, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/tuners/si2157.c", i32 742, i32 19}
!271 = !{ptr @si2157_set_analog_params.__UNIQUE_ID_ddebug306, !272, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!272 = !{!"../drivers/media/tuners/si2157.c", i32 762, i32 2}
!273 = !{ptr @.str.111, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/tuners/si2157.c", i32 772, i32 2}
!275 = !{ptr @.str.112, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @si2157_get_frequency.__UNIQUE_ID_ddebug307, !274, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!277 = !{ptr @.str.113, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/tuners/si2157.c", i32 782, i32 2}
!279 = !{ptr @.str.114, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @si2157_get_bandwidth.__UNIQUE_ID_ddebug308, !278, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!281 = !{ptr @.str.115, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/tuners/si2157.c", i32 792, i32 2}
!283 = !{ptr @.str.116, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @si2157_get_if_frequency.__UNIQUE_ID_ddebug309, !282, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!285 = !{ptr @.str.117, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/tuners/si2157.c", i32 804, i32 2}
!287 = !{ptr @si2157_get_rf_strength.__UNIQUE_ID_ddebug310, !286, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!288 = !{ptr @.str.118, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/tuners/si2157.c", i32 823, i32 2}
!290 = !{ptr @si2157_get_rf_strength.__UNIQUE_ID_ddebug315, !289, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!291 = !{ptr @si2157_get_rf_strength.__UNIQUE_ID_ddebug316, !292, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!292 = !{!"../drivers/media/tuners/si2157.c", i32 828, i32 2}
!293 = !{ptr @.str.119, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/tuners/si2157.c", i32 959, i32 2}
!295 = !{ptr @si2157_remove.__UNIQUE_ID_ddebug320, !294, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!296 = !{ptr @si2157_id_table, !297, !"si2157_id_table", i1 false, i1 false}
!297 = !{!"../drivers/media/tuners/si2157.c", i32 981, i32 35}
!298 = !{i32 1, !"wchar_size", i32 2}
!299 = !{i32 1, !"min_enum_size", i32 4}
!300 = !{i32 8, !"branch-target-enforcement", i32 0}
!301 = !{i32 8, !"sign-return-address", i32 0}
!302 = !{i32 8, !"sign-return-address-all", i32 0}
!303 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!304 = !{i32 7, !"uwtable", i32 1}
!305 = !{i32 7, !"frame-pointer", i32 2}
!306 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!307 = !{i64 2148206506, i64 2148206511, i64 2148206524, i64 2148206568, i64 2148206602, i64 2148206623}
!308 = !{i64 949904, i64 949931}
!309 = !{i64 950244, i64 950271, i64 950305, i64 950326}
!310 = !{!"auto-init"}
