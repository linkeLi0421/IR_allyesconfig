; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/rtl2832.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/rtl2832.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rtl2832_reg_value = type { i32, i32 }
%struct.rtl2832_reg_entry = type { i16, i8, i8 }
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
%struct.rtl2832_dev = type { ptr, ptr, %struct.regmap_config, ptr, ptr, %struct.dvb_frontend, i32, i64, i64, i64, i8, %struct.delayed_work, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.rtl2832_platform_data = type { i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__initcall__kmod_rtl2832__322_1146_rtl2832_driver_init6 = internal global ptr @rtl2832_driver_init, section ".initcall6.init", align 4
@rtl2832_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rtl2832_probe, ptr @rtl2832_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rtl2832_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rtl2832_driver_exit = internal global ptr @rtl2832_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author323 = internal constant [53 x i8] c"rtl2832.author=Thomas Mair <mair.thomas86@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [46 x i8] c"rtl2832.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description325 = internal constant [61 x i8] c"rtl2832.description=Realtek RTL2832 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [49 x i8] c"rtl2832.file=drivers/media/dvb-frontends/rtl2832\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [20 x i8] c"rtl2832.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtl2832\00", [24 x i8] zeroinitializer }, align 32
@rtl2832_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rtl2832\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rtl2832_probe.regmap_range_cfg = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 1280, i32 0, i32 255, i32 0, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@rtl2832_probe.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl2832_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/rtl2832.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rtl2832_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&dev->i2c_gate_work)->work)\00", [48 x i8] zeroinitializer }, align 32
@rtl2832_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&dev->i2c_gate_work)->timer\00", [34 x i8] zeroinitializer }, align 32
@rtl2832_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"rtl2832:1067:(&dev->regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@rtl2832_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Realtek RTL2832 (DVB-T)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @rtl2832_init, ptr @rtl2832_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2832_set_frontend, ptr @rtl2832_get_tune_settings, ptr @rtl2832_get_frontend, ptr @rtl2832_read_status, ptr @rtl2832_read_ber, ptr null, ptr @rtl2832_read_snr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@rtl2832_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1102, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Realtek RTL2832 successfully attached\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl2832_probe._entry_ptr = internal global ptr @rtl2832_probe._entry, section ".printk_index", align 4
@rtl2832_probe.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 1, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rtl2832_i2c_gate_work.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.11, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl2832_i2c_gate_work\00", [42 x i8] zeroinitializer }, align 32
@rtl2832_select.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.11, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl2832_select\00", [17 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__const.rtl2832_init.rtl2832_initial_regs = private unnamed_addr constant [42 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 24, i32 1 }, %struct.rtl2832_reg_value { i32 25, i32 1 }, %struct.rtl2832_reg_value { i32 3, i32 10240 }, %struct.rtl2832_reg_value { i32 27, i32 16 }, %struct.rtl2832_reg_value { i32 28, i32 32 }, %struct.rtl2832_reg_value { i32 29, i32 32 }, %struct.rtl2832_reg_value { i32 30, i32 64 }, %struct.rtl2832_reg_value { i32 31, i32 34 }, %struct.rtl2832_reg_value { i32 32, i32 50 }, %struct.rtl2832_reg_value { i32 33, i32 55 }, %struct.rtl2832_reg_value { i32 34, i32 57 }, %struct.rtl2832_reg_value { i32 4, i32 0 }, %struct.rtl2832_reg_value { i32 35, i32 0 }, %struct.rtl2832_reg_value { i32 36, i32 42 }, %struct.rtl2832_reg_value { i32 5, i32 6 }, %struct.rtl2832_reg_value { i32 37, i32 0 }, %struct.rtl2832_reg_value { i32 128, i32 8 }, %struct.rtl2832_reg_value { i32 129, i32 8 }, %struct.rtl2832_reg_value { i32 38, i32 4 }, %struct.rtl2832_reg_value { i32 39, i32 176 }, %struct.rtl2832_reg_value { i32 40, i32 120 }, %struct.rtl2832_reg_value { i32 41, i32 40 }, %struct.rtl2832_reg_value { i32 42, i32 89 }, %struct.rtl2832_reg_value { i32 43, i32 131 }, %struct.rtl2832_reg_value { i32 44, i32 212 }, %struct.rtl2832_reg_value { i32 45, i32 101 }, %struct.rtl2832_reg_value { i32 46, i32 67 }, %struct.rtl2832_reg_value { i32 47, i32 1 }, %struct.rtl2832_reg_value { i32 48, i32 4 }, %struct.rtl2832_reg_value { i32 49, i32 7 }, %struct.rtl2832_reg_value { i32 53, i32 10 }, %struct.rtl2832_reg_value { i32 181, i32 1 }, %struct.rtl2832_reg_value { i32 126, i32 0 }, %struct.rtl2832_reg_value { i32 128, i32 9 }, %struct.rtl2832_reg_value { i32 129, i32 9 }, %struct.rtl2832_reg_value { i32 130, i32 0 }, %struct.rtl2832_reg_value { i32 131, i32 0 }, %struct.rtl2832_reg_value { i32 54, i32 4 }, %struct.rtl2832_reg_value { i32 55, i32 7 }, %struct.rtl2832_reg_value { i32 56, i32 6 }, %struct.rtl2832_reg_value { i32 58, i32 5 }, %struct.rtl2832_reg_value { i32 59, i32 1 }], align 4
@rtl2832_init.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.3, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtl2832_init\00", [19 x i8] zeroinitializer }, align 32
@rtl2832_init.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"load settings for tuner=%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl2832_tuner_init_fc2580 = internal constant { [21 x %struct.rtl2832_reg_value], [56 x i8] } { [21 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 57 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 90 }, %struct.rtl2832_reg_value { i32 100, i32 22 }, %struct.rtl2832_reg_value { i32 101, i32 6 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 22 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 156 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59892 }], [56 x i8] zeroinitializer }, align 32
@rtl2832_tuner_init_fc0012 = internal constant { [31 x %struct.rtl2832_reg_value], [40 x i8] } { [31 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 90 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 90 }, %struct.rtl2832_reg_value { i32 100, i32 22 }, %struct.rtl2832_reg_value { i32 101, i32 6 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 22 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 128 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59839 }, %struct.rtl2832_reg_value { i32 111, i32 0 }, %struct.rtl2832_reg_value { i32 112, i32 0 }, %struct.rtl2832_reg_value { i32 113, i32 0 }, %struct.rtl2832_reg_value { i32 114, i32 17 }, %struct.rtl2832_reg_value { i32 115, i32 239 }, %struct.rtl2832_reg_value { i32 116, i32 12 }, %struct.rtl2832_reg_value { i32 117, i32 0 }, %struct.rtl2832_reg_value { i32 118, i32 1 }, %struct.rtl2832_reg_value { i32 88, i32 0 }, %struct.rtl2832_reg_value { i32 61, i32 0 }], [40 x i8] zeroinitializer }, align 32
@rtl2832_tuner_init_tua9001 = internal constant { [25 x %struct.rtl2832_reg_value], [56 x i8] } { [25 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 57 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 90 }, %struct.rtl2832_reg_value { i32 100, i32 22 }, %struct.rtl2832_reg_value { i32 101, i32 6 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 22 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 156 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59892 }, %struct.rtl2832_reg_value { i32 50, i32 1 }, %struct.rtl2832_reg_value { i32 51, i32 0 }, %struct.rtl2832_reg_value { i32 52, i32 0 }, %struct.rtl2832_reg_value { i32 61, i32 0 }], [56 x i8] zeroinitializer }, align 32
@rtl2832_tuner_init_e4000 = internal constant { [35 x %struct.rtl2832_reg_value], [72 x i8] } { [35 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 90 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 90 }, %struct.rtl2832_reg_value { i32 100, i32 24 }, %struct.rtl2832_reg_value { i32 101, i32 8 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 24 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 128 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59860 }, %struct.rtl2832_reg_value { i32 111, i32 0 }, %struct.rtl2832_reg_value { i32 112, i32 0 }, %struct.rtl2832_reg_value { i32 113, i32 0 }, %struct.rtl2832_reg_value { i32 114, i32 20 }, %struct.rtl2832_reg_value { i32 115, i32 236 }, %struct.rtl2832_reg_value { i32 116, i32 12 }, %struct.rtl2832_reg_value { i32 117, i32 0 }, %struct.rtl2832_reg_value { i32 118, i32 1 }, %struct.rtl2832_reg_value { i32 181, i32 1 }, %struct.rtl2832_reg_value { i32 182, i32 1 }, %struct.rtl2832_reg_value { i32 180, i32 1 }, %struct.rtl2832_reg_value { i32 179, i32 1 }, %struct.rtl2832_reg_value { i32 183, i32 0 }, %struct.rtl2832_reg_value { i32 61, i32 0 }], [72 x i8] zeroinitializer }, align 32
@rtl2832_tuner_init_r820t = internal constant { [22 x %struct.rtl2832_reg_value], [48 x i8] } { [22 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 57 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 64 }, %struct.rtl2832_reg_value { i32 100, i32 22 }, %struct.rtl2832_reg_value { i32 101, i32 8 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 24 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 128 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59892 }, %struct.rtl2832_reg_value { i32 61, i32 1 }], [48 x i8] zeroinitializer }, align 32
@rtl2832_tuner_init_si2157 = internal constant { [22 x %struct.rtl2832_reg_value], [48 x i8] } { [22 x %struct.rtl2832_reg_value] [%struct.rtl2832_reg_value { i32 92, i32 57 }, %struct.rtl2832_reg_value { i32 98, i32 0 }, %struct.rtl2832_reg_value { i32 99, i32 64 }, %struct.rtl2832_reg_value { i32 100, i32 22 }, %struct.rtl2832_reg_value { i32 101, i32 8 }, %struct.rtl2832_reg_value { i32 102, i32 1 }, %struct.rtl2832_reg_value { i32 103, i32 24 }, %struct.rtl2832_reg_value { i32 104, i32 53 }, %struct.rtl2832_reg_value { i32 105, i32 33 }, %struct.rtl2832_reg_value { i32 106, i32 33 }, %struct.rtl2832_reg_value { i32 107, i32 0 }, %struct.rtl2832_reg_value { i32 108, i32 64 }, %struct.rtl2832_reg_value { i32 109, i32 16 }, %struct.rtl2832_reg_value { i32 110, i32 16 }, %struct.rtl2832_reg_value { i32 84, i32 128 }, %struct.rtl2832_reg_value { i32 85, i32 127 }, %struct.rtl2832_reg_value { i32 86, i32 128 }, %struct.rtl2832_reg_value { i32 87, i32 127 }, %struct.rtl2832_reg_value { i32 79, i32 0 }, %struct.rtl2832_reg_value { i32 80, i32 0 }, %struct.rtl2832_reg_value { i32 176, i32 59892 }, %struct.rtl2832_reg_value { i32 61, i32 0 }], [48 x i8] zeroinitializer }, align 32
@rtl2832_init.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.11, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@registers = internal constant { [184 x %struct.rtl2832_reg_entry], [160 x i8] } { [184 x %struct.rtl2832_reg_entry] [%struct.rtl2832_reg_entry { i16 257, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 257, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 392, i8 11, i8 2 }, %struct.rtl2832_reg_entry { i16 399, i8 15, i8 0 }, %struct.rtl2832_reg_entry { i16 422, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 10, i8 2, i8 0 }, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry { i16 8, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 8, i8 6, i8 6 }, %struct.rtl2832_reg_entry { i16 433, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 405, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 406, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 407, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 408, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 409, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 410, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 411, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 412, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 353, i8 4, i8 4 }, %struct.rtl2832_reg_entry { i16 9, i8 6, i8 0 }, %struct.rtl2832_reg_entry { i16 33, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 658, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 659, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 679, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 681, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 682, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 683, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 684, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 688, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 689, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 356, i8 3, i8 1 }, %struct.rtl2832_reg_entry { i16 356, i8 6, i8 4 }, %struct.rtl2832_reg_entry { i16 357, i8 2, i8 0 }, %struct.rtl2832_reg_entry { i16 6, i8 5, i8 4 }, %struct.rtl2832_reg_entry { i16 9, i8 1, i8 0 }, %struct.rtl2832_reg_entry { i16 9, i8 3, i8 2 }, %struct.rtl2832_reg_entry { i16 685, i8 9, i8 4 }, %struct.rtl2832_reg_entry { i16 367, i8 2, i8 0 }, %struct.rtl2832_reg_entry { i16 368, i8 5, i8 3 }, %struct.rtl2832_reg_entry { i16 370, i8 3, i8 0 }, %struct.rtl2832_reg_entry { i16 371, i8 5, i8 3 }, %struct.rtl2832_reg_entry { i16 373, i8 2, i8 0 }, %struct.rtl2832_reg_entry { i16 374, i8 7, i8 6 }, %struct.rtl2832_reg_entry { i16 281, i8 21, i8 0 }, %struct.rtl2832_reg_entry { i16 277, i8 0, i8 0 }, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry { i16 415, i8 27, i8 2 }, %struct.rtl2832_reg_entry { i16 413, i8 23, i8 4 }, %struct.rtl2832_reg_entry { i16 849, i8 6, i8 3 }, %struct.rtl2832_reg_entry { i16 828, i8 3, i8 2 }, %struct.rtl2832_reg_entry { i16 828, i8 6, i8 4 }, %struct.rtl2832_reg_entry { i16 829, i8 2, i8 0 }, %struct.rtl2832_reg_entry { i16 829, i8 5, i8 3 }, %struct.rtl2832_reg_entry { i16 849, i8 1, i8 0 }, %struct.rtl2832_reg_entry { i16 849, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 846, i8 15, i8 0 }, %struct.rtl2832_reg_entry { i16 1036, i8 15, i8 0 }, %struct.rtl2832_reg_entry { i16 859, i8 13, i8 0 }, %struct.rtl2832_reg_entry { i16 857, i8 13, i8 0 }, %struct.rtl2832_reg_entry { i16 773, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 792, i8 13, i8 0 }, %struct.rtl2832_reg_entry { i16 863, i8 17, i8 0 }, %struct.rtl2832_reg_entry { i16 14, i8 1, i8 1 }, %struct.rtl2832_reg_entry { i16 14, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 260, i8 5, i8 5 }, %struct.rtl2832_reg_entry { i16 260, i8 6, i8 6 }, %struct.rtl2832_reg_entry { i16 260, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 264, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 265, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 266, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 267, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 268, i8 6, i8 6 }, %struct.rtl2832_reg_entry { i16 268, i8 13, i8 0 }, %struct.rtl2832_reg_entry { i16 270, i8 6, i8 6 }, %struct.rtl2832_reg_entry { i16 270, i8 13, i8 0 }, %struct.rtl2832_reg_entry { i16 274, i8 7, i8 0 }, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry { i16 258, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 259, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 455, i8 5, i8 1 }, %struct.rtl2832_reg_entry { i16 260, i8 4, i8 1 }, %struct.rtl2832_reg_entry { i16 261, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 456, i8 4, i8 0 }, %struct.rtl2832_reg_entry { i16 262, i8 5, i8 0 }, %struct.rtl2832_reg_entry { i16 457, i8 5, i8 0 }, %struct.rtl2832_reg_entry { i16 458, i8 5, i8 0 }, %struct.rtl2832_reg_entry { i16 459, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 263, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 461, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 462, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 485, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 473, i8 8, i8 0 }, %struct.rtl2832_reg_entry { i16 475, i8 8, i8 0 }, %struct.rtl2832_reg_entry { i16 477, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 478, i8 7, i8 0 }, %struct.rtl2832_reg_entry { i16 472, i8 3, i8 0 }, %struct.rtl2832_reg_entry { i16 486, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 471, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 379, i8 5, i8 5 }, %struct.rtl2832_reg_entry { i16 379, i8 6, i8 6 }, %struct.rtl2832_reg_entry { i16 379, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 380, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 380, i8 1, i8 1 }, %struct.rtl2832_reg_entry { i16 380, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 380, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 380, i8 4, i8 4 }, %struct.rtl2832_reg_entry { i16 380, i8 5, i8 5 }, %struct.rtl2832_reg_entry { i16 381, i8 3, i8 0 }, %struct.rtl2832_reg_entry { i16 381, i8 7, i8 4 }, %struct.rtl2832_reg_entry { i16 6, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 7, i8 7, i8 6 }, %struct.rtl2832_reg_entry { i16 183, i8 4, i8 4 }, %struct.rtl2832_reg_entry { i16 183, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 183, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 183, i8 1, i8 1 }, %struct.rtl2832_reg_entry { i16 183, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 185, i8 4, i8 4 }, %struct.rtl2832_reg_entry { i16 185, i8 3, i8 3 }, %struct.rtl2832_reg_entry { i16 185, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 185, i8 1, i8 1 }, %struct.rtl2832_reg_entry { i16 185, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 403, i8 11, i8 0 }, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry zeroinitializer, %struct.rtl2832_reg_entry { i16 17, i8 15, i8 0 }, %struct.rtl2832_reg_entry { i16 769, i8 6, i8 0 }, %struct.rtl2832_reg_entry { i16 786, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 13, i8 1, i8 0 }, %struct.rtl2832_reg_entry { i16 13, i8 2, i8 2 }, %struct.rtl2832_reg_entry { i16 13, i8 7, i8 7 }, %struct.rtl2832_reg_entry { i16 16, i8 0, i8 0 }, %struct.rtl2832_reg_entry { i16 19, i8 0, i8 0 }], [160 x i8] zeroinitializer }, align 32
@rtl2832_wr_demod_reg.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.11, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl2832_wr_demod_reg\00", [43 x i8] zeroinitializer }, align 32
@rtl2832_sleep.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.3, i8 0, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl2832_sleep\00", [18 x i8] zeroinitializer }, align 32
@rtl2832_sleep.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.11, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832_set_frontend.bw_params = internal global { [3 x [32 x i8]], [32 x i8] } { [3 x [32 x i8]] [[32 x i8] c"\F5\FF\158]mR\07\FA/S\F5?\CA\0B\91\EA0c\B2\13\DA\0B\C4\18~\16f\08g\19\E0", [32 x i8] c"\E7\CC\B5\BA\E8/ga\00\AF\86\F2\BFY\04\11\B63\A40\15\10\0AB\18\F8\17\D9\07\22\19\10", [32 x i8] c"\09\F6\D2\A7\9A\C9'w\06\BF\EC\F4O\0B\FC\01c5T\A7\16f\08\B4\19n\19e\05\C8\19\E0"], [32 x i8] zeroinitializer }, align 32
@rtl2832_set_frontend.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl2832_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"frequency=%u bandwidth_hz=%u inversion=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl2832_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 472, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid bandwidth_hz %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtl2832_set_frontend._entry_ptr = internal global ptr @rtl2832_set_frontend._entry, section ".printk_index", align 4
@rtl2832_set_frontend.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.11, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832_set_if.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl2832_set_if\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"if_frequency=%d pset_iffreq=%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@rtl2832_set_if.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.11, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832_get_tune_settings.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.3, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl2832_get_tune_settings\00", [38 x i8] zeroinitializer }, align 32
@rtl2832_get_frontend.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl2832_get_frontend\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TPS=%*ph\0A\00", [22 x i8] zeroinitializer }, align 32
@rtl2832_get_frontend.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.11, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832_read_status.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.3, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl2832_read_status\00", [44 x i8] zeroinitializer }, align 32
@rtl2832_read_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"digital agc=%02x\00", [47 x i8] zeroinitializer }, align 32
@rtl2832_read_status.constant = internal constant { [3 x [4 x i32]], [48 x i8] } { [3 x [4 x i32]] [[4 x i32] [i32 85387325, i32 85387325, i32 85387325, i32 85387325], [4 x i32] [i32 86676178, i32 86676178, i32 87167949, i32 87795660], [4 x i32] [i32 87659938, i32 87659938, i32 87885178, i32 88241743]], [48 x i8] zeroinitializer }, align 32
@rtl2832_read_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.29, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cnr raw=%u\0A\00", [20 x i8] zeroinitializer }, align 32
@rtl2832_read_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ber errors=%u total=1000000\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl2832_read_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.11, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832_rd_demod_reg.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.11, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl2832_rd_demod_reg\00", [43 x i8] zeroinitializer }, align 32
@rtl2832_get_dvb_frontend.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.3, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl2832_get_dvb_frontend\00", [39 x i8] zeroinitializer }, align 32
@rtl2832_get_i2c_adapter.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.3, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl2832_get_i2c_adapter\00", [40 x i8] zeroinitializer }, align 32
@rtl2832_slave_ts_ctrl.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl2832_slave_ts_ctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enable=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"_\FF\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\18\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\7F\F7\FF\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\0F\FF\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\08\00", [30 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } zeroinitializer, align 32
@rtl2832_slave_ts_ctrl.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.11, i8 0, i8 -21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832_pid_filter.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl2832_pid_filter\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"index=%d pid=%04x onoff=%d slave_ts=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@rtl2832_pid_filter.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.11, i8 0, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832_pid_filter_ctrl.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl2832_pid_filter_ctrl\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"onoff=%d, slave_ts=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@rtl2832_pid_filter_ctrl.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.11, i8 0, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2832_remove.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.3, i8 1, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl2832_remove\00", [17 x i8] zeroinitializer }, align 32
@switch.table.rtl2832_init = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 21, i32 21, i32 21, i32 25, i32 21, i32 31, i32 35, i32 21, i32 31, i32 22, i32 22, i32 22], [48 x i8] zeroinitializer }, align 32
@switch.table.rtl2832_init.47 = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_tua9001, ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_fc0012, ptr @rtl2832_tuner_init_e4000, ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_fc0012, ptr @rtl2832_tuner_init_r820t, ptr @rtl2832_tuner_init_r820t, ptr @rtl2832_tuner_init_si2157], [48 x i8] zeroinitializer }, align 32
@switch.table.rtl2832_get_frontend = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.rtl2832_get_frontend.48 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 773, i64 828, i64 846, i64 849, i64 1036, i64 1037]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"rtl2832_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1136, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1138, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"rtl2832_id_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1130, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"regmap_range_cfg\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1032, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1044, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1058, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1067, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"rtl2832_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 828, i32 38 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1102, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1109, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 797, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 816, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 298, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 312, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"rtl2832_tuner_init_fc2580\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 241, i32 39 }
@___asan_gen_.124 = private unnamed_addr constant [26 x i8] c"rtl2832_tuner_init_fc0012\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 293, i32 39 }
@___asan_gen_.127 = private unnamed_addr constant [27 x i8] c"rtl2832_tuner_init_tua9001\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 265, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant [25 x i8] c"rtl2832_tuner_init_e4000\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 327, i32 39 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"rtl2832_tuner_init_r820t\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 365, i32 39 }
@___asan_gen_.136 = private unnamed_addr constant [26 x i8] c"rtl2832_tuner_init_si2157\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [46 x i8] c"../drivers/media/dvb-frontends/rtl2832_priv.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 390, i32 39 }
@___asan_gen_.139 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 13, i32 39 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 207, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 375, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [10 x i8] c"bw_params\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 411, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 437, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 471, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 228, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 396, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 543, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 647, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 674, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 690, i32 20 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 720, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 738, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 169, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 885, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 893, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 902, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 908, i32 47 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 914, i32 47 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 917, i32 47 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 921, i32 47 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 924, i32 47 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 930, i32 47 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 982, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 953, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [41 x i8] c"../drivers/media/dvb-frontends/rtl2832.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 1117, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [26 x i8] c"switch.table.rtl2832_init\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [29 x i8] c"switch.table.rtl2832_init.47\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [34 x i8] c"switch.table.rtl2832_get_frontend\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [37 x i8] c"switch.table.rtl2832_get_frontend.48\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__exitcall_rtl2832_driver_exit, ptr @__initcall__kmod_rtl2832__322_1146_rtl2832_driver_init6, ptr @rtl2832_driver_exit, ptr @rtl2832_probe._entry, ptr @rtl2832_probe._entry_ptr, ptr @rtl2832_set_frontend._entry, ptr @rtl2832_set_frontend._entry_ptr, ptr @rtl2832_driver, ptr @.str, ptr @rtl2832_id_table, ptr @rtl2832_probe.regmap_range_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtl2832_probe.__key, ptr @.str.4, ptr @rtl2832_probe.__key.5, ptr @.str.6, ptr @rtl2832_probe._key, ptr @.str.7, ptr @rtl2832_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rtl2832_tuner_init_fc2580, ptr @rtl2832_tuner_init_fc0012, ptr @rtl2832_tuner_init_tua9001, ptr @rtl2832_tuner_init_e4000, ptr @rtl2832_tuner_init_r820t, ptr @rtl2832_tuner_init_si2157, ptr @registers, ptr @.str.16, ptr @.str.17, ptr @rtl2832_set_frontend.bw_params, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @rtl2832_read_status.constant, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @switch.table.rtl2832_init, ptr @switch.table.rtl2832_init.47, ptr @switch.table.rtl2832_get_frontend, ptr @switch.table.rtl2832_get_frontend.48], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_probe.regmap_range_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_tuner_init_fc2580 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_tuner_init_fc0012 to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_tuner_init_tua9001 to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_tuner_init_e4000 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_tuner_init_r820t to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_tuner_init_si2157 to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registers to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_set_frontend.bw_params to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2832_read_status.constant to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl2832_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl2832_init.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl2832_get_frontend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl2832_get_frontend.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rtl2832_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl2832_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @rtl2832_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #8
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %tmp, align 1, !annotation !175
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_probe.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_probe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_probe.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 1368) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end.do.body72_crit_edge, label %if.end8

do.end.do.body72_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72

if.end8:                                          ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %client9 = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %client9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client9, align 4
  %8 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data, align 8
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call7.i.i, align 8
  %sleeping = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %sleeping to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %sleeping, align 8
  %i2c_gate_work = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_work(ptr noundef %i2c_gate_work, i32 noundef 0) #8
  %12 = ptrtoint ptr %i2c_gate_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %i2c_gate_work, align 4
  %lockdep_map = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @rtl2832_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry21 = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1
  %13 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry21, ptr %entry21, align 8
  %prev.i = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry21, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 2
  %15 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rtl2832_i2c_gate_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 11, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @rtl2832_probe.__key.5) #8
  %regmap_config = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 2
  %reg_bits = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %reg_bits to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %reg_bits, align 4
  %val_bits = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %val_bits to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %val_bits, align 8
  %volatile_reg = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %volatile_reg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rtl2832_volatile_reg, ptr %volatile_reg, align 4
  %max_register = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 2, i32 19
  %19 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1280, ptr %max_register, align 4
  %ranges = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 2, i32 40
  %20 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rtl2832_probe.regmap_range_cfg, ptr %ranges, align 4
  %num_ranges = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 2, i32 41
  %21 = ptrtoint ptr %num_ranges to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %num_ranges, align 8
  %cache_type = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 2, i32 28
  %22 = ptrtoint ptr %cache_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %cache_type, align 8
  %call40 = tail call ptr @__regmap_init_i2c(ptr noundef %client, ptr noundef %regmap_config, ptr noundef nonnull @rtl2832_probe._key, ptr noundef nonnull @.str.7) #8
  %regmap = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call40, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call40 to i32
  br label %err_kfree

if.end46:                                         ; preds = %if.end8
  %call48 = call i32 @regmap_bulk_read(ptr noundef %call40, i32 noundef 0, ptr noundef nonnull %tmp, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.err_regmap_exit_crit_edge

if.end46.err_regmap_exit_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_regmap_exit

if.end51:                                         ; preds = %if.end46
  %dev52 = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  %call53 = call ptr @i2c_mux_alloc(ptr noundef %3, ptr noundef %dev52, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @rtl2832_select, ptr noundef nonnull @rtl2832_deselect) #8
  %muxc = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %muxc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call53, ptr %muxc, align 8
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %if.end51.err_regmap_exit_crit_edge, label %if.end57

if.end51.err_regmap_exit_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_regmap_exit

if.end57:                                         ; preds = %if.end51
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call53, i32 0, i32 3
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %priv, align 4
  %27 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %muxc, align 8
  %call60 = call i32 @i2c_mux_add_adapter(ptr noundef %28, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end57.err_regmap_exit_crit_edge

if.end57.err_regmap_exit_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_regmap_exit

if.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 5, i32 1
  %29 = call ptr @memcpy(ptr %ops, ptr @rtl2832_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.rtl2832_dev, ptr %call7.i.i, i32 0, i32 5, i32 3
  %30 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  %get_dvb_frontend = getelementptr inbounds %struct.rtl2832_platform_data, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @rtl2832_get_dvb_frontend, ptr %get_dvb_frontend, align 4
  %get_i2c_adapter = getelementptr inbounds %struct.rtl2832_platform_data, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @rtl2832_get_i2c_adapter, ptr %get_i2c_adapter, align 4
  %slave_ts_ctrl = getelementptr inbounds %struct.rtl2832_platform_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %slave_ts_ctrl to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @rtl2832_slave_ts_ctrl, ptr %slave_ts_ctrl, align 4
  %pid_filter = getelementptr inbounds %struct.rtl2832_platform_data, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %pid_filter to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @rtl2832_pid_filter, ptr %pid_filter, align 4
  %pid_filter_ctrl = getelementptr inbounds %struct.rtl2832_platform_data, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %pid_filter_ctrl to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rtl2832_pid_filter_ctrl, ptr %pid_filter_ctrl, align 4
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %regmap66 = getelementptr inbounds %struct.rtl2832_platform_data, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %regmap66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %regmap66, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8) #12
  br label %cleanup

err_regmap_exit:                                  ; preds = %if.end57.err_regmap_exit_crit_edge, %if.end51.err_regmap_exit_crit_edge, %if.end46.err_regmap_exit_crit_edge
  %ret.0 = phi i32 [ %call48, %if.end46.err_regmap_exit_crit_edge ], [ %call60, %if.end57.err_regmap_exit_crit_edge ], [ -12, %if.end51.err_regmap_exit_crit_edge ]
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  call void @regmap_exit(ptr noundef %40) #8
  br label %err_kfree

err_kfree:                                        ; preds = %err_regmap_exit, %if.then43
  %ret.1 = phi i32 [ %24, %if.then43 ], [ %ret.0, %err_regmap_exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %do.body72

do.body72:                                        ; preds = %err_kfree, %do.end.do.body72_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_kfree ], [ -12, %do.end.do.body72_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_probe.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_probe, %if.then84)) #8
          to label %cleanup [label %if.then84], !srcloc !176

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_probe.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %ret.2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %do.body72, %if.end63
  %retval.0 = phi i32 [ 0, %if.end63 ], [ %ret.2, %if.then84 ], [ %ret.2, %do.body72 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_remove.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_remove, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_remove.__UNIQUE_ID_ddebug321, ptr noundef %dev4, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c_gate_work = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 11
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %i2c_gate_work) #8
  %muxc = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 8
  tail call void @i2c_mux_del_adapters(ptr noundef %3) #8
  %regmap = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regmap_exit(ptr noundef %5) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl2832_i2c_gate_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %work, i32 -1256
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %regmap = getelementptr i8, ptr %work, i32 -1080
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 257, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_i2c_gate_work.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_i2c_gate_work, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !176

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_i2c_gate_work.__UNIQUE_ID_ddebug309, ptr noundef %dev8, ptr noundef nonnull @.str.11, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rtl2832_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.epilog [
    i32 773, label %entry.return_crit_edge
    i32 828, label %entry.return_crit_edge2
    i32 846, label %entry.return_crit_edge3
    i32 849, label %entry.return_crit_edge4
    i32 1036, label %entry.return_crit_edge5
    i32 1037, label %entry.return_crit_edge6
  ]

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %i2c_gate_work = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 11
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %i2c_gate_work) #8
  %regmap = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 257, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_select.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_select, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !176

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_select.__UNIQUE_ID_ddebug310, ptr noundef %dev9, ptr noundef nonnull @.str.11, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_deselect(ptr nocapture noundef readonly %muxc, i32 noundef %chan_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %i2c_gate_work = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 11
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 100
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %i2c_gate_work, i32 noundef %spec.select.i) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rtl2832_get_dvb_frontend(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_get_dvb_frontend.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_get_dvb_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_get_dvb_frontend.__UNIQUE_ID_ddebug311, ptr noundef %dev4, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 5
  ret ptr %fe
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rtl2832_get_i2c_adapter(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_get_i2c_adapter.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_get_i2c_adapter, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_get_i2c_adapter.__UNIQUE_ID_ddebug312, ptr noundef %dev4, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %muxc = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 8
  %adapter = getelementptr inbounds %struct.i2c_mux_core, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_slave_ts_ctrl(ptr noundef %client, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_slave_ts_ctrl.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_slave_ts_ctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i1 %enable to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_slave_ts_ctrl.__UNIQUE_ID_ddebug313, ptr noundef %dev5, ptr noundef nonnull @.str.35, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %enable, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end
  %call9 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then8.do.body57_crit_edge

if.then8.do.body57_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end12:                                         ; preds = %if.then8
  %regmap = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call13 = tail call i32 @regmap_bulk_write(ptr noundef %3, i32 noundef 268, ptr noundef nonnull @.str.36, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.do.body57_crit_edge

if.end12.do.body57_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end16:                                         ; preds = %if.end12
  %call17 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 37, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.do.body57_crit_edge

if.end16.do.body57_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end20:                                         ; preds = %if.end16
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call22 = tail call i32 @regmap_bulk_write(ptr noundef %5, i32 noundef 188, ptr noundef nonnull @.str.37, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.do.body57_crit_edge

if.end20.do.body57_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end25:                                         ; preds = %if.end20
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call27 = tail call i32 @regmap_bulk_write(ptr noundef %7, i32 noundef 402, ptr noundef nonnull @.str.38, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.if.end54_crit_edge, label %if.end25.do.body57_crit_edge

if.end25.do.body57_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end25.if.end54_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.else:                                          ; preds = %do.end
  %regmap31 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap31, align 4
  %call32 = tail call i32 @regmap_bulk_write(ptr noundef %9, i32 noundef 402, ptr noundef nonnull @.str.39, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.else.do.body57_crit_edge

if.else.do.body57_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end35:                                         ; preds = %if.else
  %10 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap31, align 4
  %call37 = tail call i32 @regmap_bulk_write(ptr noundef %11, i32 noundef 188, ptr noundef nonnull @.str.40, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end35.do.body57_crit_edge

if.end35.do.body57_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end40:                                         ; preds = %if.end35
  %call41 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 37, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.do.body57_crit_edge

if.end40.do.body57_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end44:                                         ; preds = %if.end40
  %12 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap31, align 4
  %call46 = tail call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef 268, ptr noundef nonnull @.str.41, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.do.body57_crit_edge

if.end44.do.body57_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end49:                                         ; preds = %if.end44
  %call50 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.if.end54_crit_edge, label %if.end49.do.body57_crit_edge

if.end49.do.body57_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end54:                                         ; preds = %if.end49.if.end54_crit_edge, %if.end25.if.end54_crit_edge
  %slave_ts = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %slave_ts to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %slave_ts, align 4
  br label %cleanup

do.body57:                                        ; preds = %if.end49.do.body57_crit_edge, %if.end44.do.body57_crit_edge, %if.end40.do.body57_crit_edge, %if.end35.do.body57_crit_edge, %if.else.do.body57_crit_edge, %if.end25.do.body57_crit_edge, %if.end20.do.body57_crit_edge, %if.end16.do.body57_crit_edge, %if.end12.do.body57_crit_edge, %if.then8.do.body57_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then8.do.body57_crit_edge ], [ %call13, %if.end12.do.body57_crit_edge ], [ %call17, %if.end16.do.body57_crit_edge ], [ %call22, %if.end20.do.body57_crit_edge ], [ %call27, %if.end25.do.body57_crit_edge ], [ %call32, %if.else.do.body57_crit_edge ], [ %call37, %if.end35.do.body57_crit_edge ], [ %call41, %if.end40.do.body57_crit_edge ], [ %call46, %if.end44.do.body57_crit_edge ], [ %call50, %if.end49.do.body57_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_slave_ts_ctrl.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_slave_ts_ctrl, %if.then69)) #8
          to label %cleanup [label %if.then69], !srcloc !176

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %dev70 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_slave_ts_ctrl.__UNIQUE_ID_ddebug314, ptr noundef %dev70, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %do.body57, %if.end54
  %retval.0 = phi i32 [ 0, %if.end54 ], [ %ret.0, %if.then69 ], [ %ret.0, %do.body57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_pid_filter(ptr nocapture noundef readonly %fe, i8 noundef zeroext %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #8
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_pid_filter.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_pid_filter, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv = zext i8 %index to i32
  %conv5 = zext i16 %pid to i32
  %slave_ts = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %slave_ts to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %slave_ts, align 4, !range !177
  %9 = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_pid_filter.__UNIQUE_ID_ddebug317, ptr noundef %dev4, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %conv5, i32 noundef %onoff, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %pid)
  %cmp = icmp ugt i16 %pid, 8191
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %conv10 = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %index)
  %cmp11 = icmp ugt i8 %index, 32
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool15.not = icmp eq i32 %onoff, 0
  %filters19 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 12
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef %conv10, ptr noundef %filters19) #8
  br label %if.end20

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %conv10, ptr noundef %filters19) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then16
  %filters21 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %filters21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filters21, align 8
  %conv22 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22, ptr %buf, align 1
  %shr24 = lshr i32 %11, 8
  %conv26 = trunc i32 %shr24 to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv26, ptr %4, align 1
  %shr29 = lshr i32 %11, 16
  %conv31 = trunc i32 %shr29 to i8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv31, ptr %5, align 1
  %shr34 = lshr i32 %11, 24
  %conv36 = trunc i32 %shr34 to i8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv36, ptr %6, align 1
  %slave_ts38 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %slave_ts38 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %slave_ts38, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool39.not = icmp eq i8 %17, 0
  %regmap43 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %regmap43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap43, align 4
  %. = select i1 %tobool39.not, i32 98, i32 34
  %call45 = call i32 @regmap_bulk_write(ptr noundef %19, i32 noundef %., ptr noundef nonnull %buf, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool47.not = icmp eq i32 %call45, 0
  br i1 %tobool47.not, label %if.end49, label %if.end20.do.body78_crit_edge

if.end20.do.body78_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body78

if.end49:                                         ; preds = %if.end20
  %20 = lshr i16 %pid, 8
  %conv53 = trunc i16 %20 to i8
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv53, ptr %buf, align 1
  %conv58 = trunc i16 %pid to i8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv58, ptr %4, align 1
  %23 = ptrtoint ptr %slave_ts38 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %slave_ts38, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool61.not = icmp eq i8 %24, 0
  %regmap68 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %regmap68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap68, align 4
  %mul70 = shl nuw nsw i32 %conv10, 1
  %.130 = select i1 %tobool61.not, i32 102, i32 38
  %add71 = add nuw nsw i32 %mul70, %.130
  %call73 = call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef %add71, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool75.not = icmp eq i32 %call73, 0
  br i1 %tobool75.not, label %if.end49.cleanup_crit_edge, label %if.end49.do.body78_crit_edge

if.end49.do.body78_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body78

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body78:                                        ; preds = %if.end49.do.body78_crit_edge, %if.end20.do.body78_crit_edge
  %ret.2 = phi i32 [ %call45, %if.end20.do.body78_crit_edge ], [ %call73, %if.end49.do.body78_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_pid_filter.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_pid_filter, %if.then90)) #8
          to label %cleanup [label %if.then90], !srcloc !176

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  %dev91 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_pid_filter.__UNIQUE_ID_ddebug318, ptr noundef %dev91, ptr noundef nonnull @.str.11, i32 noundef %ret.2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %do.body78, %if.end49.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ %ret.2, %if.then90 ], [ %ret.2, %do.body78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_pid_filter_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_pid_filter_ctrl.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_pid_filter_ctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %slave_ts = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %slave_ts to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %slave_ts, align 4, !range !177
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_pid_filter_ctrl.__UNIQUE_ID_ddebug315, ptr noundef %dev4, ptr noundef nonnull @.str.45, i32 noundef %onoff, i32 noundef %6) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool6.not = icmp eq i32 %onoff, 0
  %. = select i1 %tobool6.not, i32 0, i32 128
  %slave_ts9 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %slave_ts9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %slave_ts9, align 4, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  %regmap15 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %regmap15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap15, align 4
  %.57 = select i1 %tobool10.not, i32 97, i32 33
  %call.i54 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %.57, i32 noundef 192, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool19.not = icmp eq i32 %call.i54, 0
  br i1 %tobool19.not, label %do.end.cleanup_crit_edge, label %do.body22

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_pid_filter_ctrl.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_pid_filter_ctrl, %if.then34)) #8
          to label %cleanup [label %if.then34], !srcloc !176

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_pid_filter_ctrl.__UNIQUE_ID_ddebug316, ptr noundef %dev35, ptr noundef nonnull @.str.11, i32 noundef %call.i54) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %do.body22, %do.end.cleanup_crit_edge
  ret i32 %call.i54
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_init.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_init.__UNIQUE_ID_ddebug294, ptr noundef %dev5, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call6 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end.for.body_crit_edge, label %do.end.do.body73_crit_edge

do.end.do.body73_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body73

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, 42
  br i1 %exitcond.not, label %do.body15, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0135 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %arrayidx = getelementptr [42 x %struct.rtl2832_reg_value], ptr @__const.rtl2832_init.rtl2832_initial_regs, i32 0, i32 %i.0135
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr [42 x %struct.rtl2832_reg_value], ptr @__const.rtl2832_init.rtl2832_initial_regs, i32 0, i32 %i.0135, i32 1
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  %call11 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef %5, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond, label %for.body.do.body73_crit_edge

for.body.do.body73_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body73

do.body15:                                        ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_init.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_init, %if.then27)) #8
          to label %do.end31 [label %if.then27], !srcloc !176

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %tuner = getelementptr inbounds %struct.rtl2832_platform_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tuner, align 4
  %conv = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_init.__UNIQUE_ID_ddebug295, ptr noundef %dev28, ptr noundef nonnull @.str.15, i32 noundef %conv) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %do.body15
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %tuner33 = getelementptr inbounds %struct.rtl2832_platform_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %tuner33 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tuner33, align 4
  %switch.tableidx = add i8 %15, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %switch.tableidx)
  %16 = icmp ult i8 %switch.tableidx, 12
  br i1 %16, label %switch.hole_check, label %do.end31.do.body73_crit_edge

do.end31.do.body73_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body73

switch.hole_check:                                ; preds = %do.end31
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 3945, %switch.maskindex
  %17 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %switch.lobit.not = icmp eq i16 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body73_crit_edge, label %switch.lookup

switch.hole_check.do.body73_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body73

switch.lookup:                                    ; preds = %switch.hole_check
  %18 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.rtl2832_init, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  %20 = sext i8 %switch.tableidx to i32
  %switch.gep147 = getelementptr inbounds [12 x ptr], ptr @switch.table.rtl2832_init.47, i32 0, i32 %20
  %21 = ptrtoint ptr %switch.gep147 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load148 = load ptr, ptr %switch.gep147, align 4
  br label %for.body43

for.cond40:                                       ; preds = %for.body43
  %inc53 = add nuw nsw i32 %i.1136, 1
  %exitcond140.not = icmp eq i32 %inc53, %switch.load
  br i1 %exitcond140.not, label %for.end54, label %for.cond40.for.body43_crit_edge

for.cond40.for.body43_crit_edge:                  ; preds = %for.cond40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.body43:                                       ; preds = %for.cond40.for.body43_crit_edge, %switch.lookup
  %i.1136 = phi i32 [ 0, %switch.lookup ], [ %inc53, %for.cond40.for.body43_crit_edge ]
  %arrayidx44 = getelementptr %struct.rtl2832_reg_value, ptr %switch.load148, i32 %i.1136
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx44, align 4
  %value47 = getelementptr %struct.rtl2832_reg_value, ptr %switch.load148, i32 %i.1136, i32 1
  %24 = ptrtoint ptr %value47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value47, align 4
  %call48 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef %23, i32 noundef %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %for.cond40, label %for.body43.do.body73_crit_edge

for.body43.do.body73_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body73

for.end54:                                        ; preds = %for.cond40
  call void @__sanitizer_cov_trace_pc() #10
  %strength = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 5, i32 8, i32 42
  %26 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %strength, align 4
  %stat = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 5, i32 8, i32 42, i32 1
  %27 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %stat, align 1
  %cnr = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 5, i32 8, i32 43
  %28 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %cnr, align 1
  %stat60 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 5, i32 8, i32 43, i32 1
  %29 = ptrtoint ptr %stat60 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %stat60, align 1
  %post_bit_error = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 5, i32 8, i32 46
  %30 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %post_bit_error, align 4
  %stat65 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 5, i32 8, i32 46, i32 1
  %31 = ptrtoint ptr %stat65 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %stat65, align 1
  %post_bit_count = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 5, i32 8, i32 47
  %32 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %post_bit_count, align 1
  %stat70 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 5, i32 8, i32 47, i32 1
  %33 = ptrtoint ptr %stat70 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %stat70, align 1
  %sleeping = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 10
  %34 = ptrtoint ptr %sleeping to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %sleeping, align 8
  br label %cleanup

do.body73:                                        ; preds = %for.body43.do.body73_crit_edge, %switch.hole_check.do.body73_crit_edge, %do.end31.do.body73_crit_edge, %for.body.do.body73_crit_edge, %do.end.do.body73_crit_edge
  %ret.0 = phi i32 [ %call6, %do.end.do.body73_crit_edge ], [ -22, %do.end31.do.body73_crit_edge ], [ -22, %switch.hole_check.do.body73_crit_edge ], [ %call48, %for.body43.do.body73_crit_edge ], [ %call11, %for.body.do.body73_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_init.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_init, %if.then85)) #8
          to label %cleanup [label %if.then85], !srcloc !176

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %dev86 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_init.__UNIQUE_ID_ddebug296, ptr noundef %dev86, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %do.body73, %for.end54
  %retval.0 = phi i32 [ 0, %for.end54 ], [ %ret.0, %if.then85 ], [ %ret.0, %do.body73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sleep.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sleep, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sleep.__UNIQUE_ID_ddebug297, ptr noundef %dev4, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sleeping = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %sleeping to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %sleeping, align 8
  %fe_status = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fe_status, align 4
  %call5 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %do.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_sleep.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_sleep, %if.then21)) #8
          to label %cleanup [label %if.then21], !srcloc !176

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_sleep.__UNIQUE_ID_ddebug298, ptr noundef %dev22, ptr noundef nonnull @.str.11, i32 noundef %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body9, %do.end.cleanup_crit_edge
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %if_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_set_frontend.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_set_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %6 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bandwidth_hz, align 4
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %8 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %inversion, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_set_frontend.__UNIQUE_ID_ddebug300, ptr noundef %dev4, ptr noundef nonnull @.str.19, i32 noundef %5, i32 noundef %7, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %10 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_params, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %do.end.if.end11_crit_edge, label %if.then6

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 %11(ptr noundef %fe) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %do.end.if.end11_crit_edge
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %12 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_if_frequency, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end11.if.end27_crit_edge, label %if.then15

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then15:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_freq) #8
  %14 = ptrtoint ptr %if_freq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %if_freq, align 4, !annotation !175
  %call19 = call i32 %13(ptr noundef %fe, ptr noundef nonnull %if_freq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.then15.cleanup.thread_crit_edge

if.then15.cleanup.thread_crit_edge:               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end22:                                         ; preds = %if.then15
  %15 = ptrtoint ptr %if_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %if_freq, align 4
  %call23 = call fastcc i32 @rtl2832_set_if(ptr noundef %fe, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %cleanup, label %if.end22.cleanup.thread_crit_edge

if.end22.cleanup.thread_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end22.cleanup.thread_crit_edge, %if.then15.cleanup.thread_crit_edge
  %ret.0.ph = phi i32 [ %call23, %if.end22.cleanup.thread_crit_edge ], [ %call19, %if.then15.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_freq) #8
  br label %do.body69

cleanup:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_freq) #8
  br label %if.end27

if.end27:                                         ; preds = %cleanup, %if.end11.if.end27_crit_edge
  %bandwidth_hz28 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %17 = ptrtoint ptr %bandwidth_hz28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bandwidth_hz28, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %18, label %do.end33 [
    i32 6000000, label %if.end27.sw.epilog_crit_edge
    i32 7000000, label %sw.bb29
    i32 8000000, label %sw.bb30
  ]

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.20, i32 noundef %18) #12
  br label %do.body69

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb29, %if.end27.sw.epilog_crit_edge
  %i.0 = phi i32 [ 2, %sw.bb30 ], [ 1, %sw.bb29 ], [ 0, %if.end27.sw.epilog_crit_edge ]
  %bw_mode.0 = phi i64 [ 64000000, %sw.bb30 ], [ 56000000, %sw.bb29 ], [ 48000000, %if.end27.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %j.0264, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %sw.epilog
  %j.0264 = phi i32 [ 0, %sw.epilog ], [ %inc, %for.cond.for.body_crit_edge ]
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %add = add nuw nsw i32 %j.0264, 284
  %arrayidx36 = getelementptr [3 x [32 x i8]], ptr @rtl2832_set_frontend.bw_params, i32 0, i32 %i.0, i32 %j.0264
  %call37 = call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef %add, ptr noundef %arrayidx36, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.cond, label %for.body.do.body69_crit_edge

for.body.do.body69_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

for.end:                                          ; preds = %for.cond
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %conv = zext i32 %25 to i64
  %mul41 = mul nuw nsw i64 %conv, 29360128
  %conv42 = trunc i64 %bw_mode.0 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul41)
  %cmp164.i.i = icmp ult i64 %mul41, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !178

if.then168.i.i:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul41 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv42
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv42, i64 %mul41) #13, !srcloc !179
  %asmresult1.i.i.i = extractvalue { i64, i64 } %26, 1
  %extract.t258 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t258, %if.else174.i.i ]
  %conv44 = and i32 %dividend.addr.0.i.i.off0, 67108863
  %call45 = call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 63, i32 noundef %conv44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.else174.i.i249, label %div_u64.exit.do.body69_crit_edge

div_u64.exit.do.body69_crit_edge:                 ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

if.else174.i.i249:                                ; preds = %div_u64.exit
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %mul52 = mul i32 %30, 7
  %shl = shl nuw nsw i64 %bw_mode.0, 20
  %31 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul52, i64 %shl) #13, !srcloc !179
  %asmresult1.i.i.i248 = extractvalue { i64, i64 } %31, 1
  %extract.t269 = trunc i64 %asmresult1.i.i.i248 to i32
  %32 = sub i32 0, %extract.t269
  %conv56 = and i32 %32, 1048575
  %call57 = call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 64, i32 noundef %conv56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.else174.i.i249.do.body69_crit_edge

if.else174.i.i249.do.body69_crit_edge:            ; preds = %if.else174.i.i249
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

if.end60:                                         ; preds = %if.else174.i.i249
  %call61 = call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end60.do.body69_crit_edge

if.end60.do.body69_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

if.end64:                                         ; preds = %if.end60
  %call65 = call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end64.cleanup86_crit_edge, label %if.end64.do.body69_crit_edge

if.end64.do.body69_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

if.end64.cleanup86_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup86

do.body69:                                        ; preds = %if.end64.do.body69_crit_edge, %if.end60.do.body69_crit_edge, %if.else174.i.i249.do.body69_crit_edge, %div_u64.exit.do.body69_crit_edge, %for.body.do.body69_crit_edge, %do.end33, %cleanup.thread
  %ret.1 = phi i32 [ -22, %do.end33 ], [ %call45, %div_u64.exit.do.body69_crit_edge ], [ %call57, %if.else174.i.i249.do.body69_crit_edge ], [ %call61, %if.end60.do.body69_crit_edge ], [ %call65, %if.end64.do.body69_crit_edge ], [ %ret.0.ph, %cleanup.thread ], [ %call37, %for.body.do.body69_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_set_frontend.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_set_frontend, %if.then81)) #8
          to label %cleanup86 [label %if.then81], !srcloc !176

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  %dev82 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_set_frontend.__UNIQUE_ID_ddebug301, ptr noundef %dev82, ptr noundef nonnull @.str.11, i32 noundef %ret.1) #8
  br label %cleanup86

cleanup86:                                        ; preds = %if.then81, %do.body69, %if.end64.cleanup86_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64.cleanup86_crit_edge ], [ %ret.1, %if.then81 ], [ %ret.1, %do.body69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_get_tune_settings(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_get_tune_settings.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_get_tune_settings, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_get_tune_settings.__UNIQUE_ID_ddebug299, ptr noundef %dev4, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1000, ptr %s, align 4
  %frequency_stepsize_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %frequency_stepsize_hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %frequency_stepsize_hz, align 4
  %mul = shl i32 %6, 1
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 1
  %7 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %step_size, align 4
  %8 = load i32, ptr %frequency_stepsize_hz, align 4
  %mul8 = shl i32 %8, 1
  %add = or i32 %mul8, 1
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 2
  %9 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_get_frontend(ptr nocapture noundef readonly %fe, ptr noundef writeonly %c) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !175
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !175
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !175
  %sleeping = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %sleeping to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sleeping, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 828, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.body83_crit_edge

if.end.do.body83_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_bulk_read(ptr noundef %14, i32 noundef 849, ptr noundef %7, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body, label %if.end4.do.body83_crit_edge

if.end4.do.body83_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_get_frontend.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_get_frontend, %if.then14)) #8
          to label %do.end [label %if.then14], !srcloc !176

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_get_frontend.__UNIQUE_ID_ddebug302, ptr noundef %dev15, ptr noundef nonnull @.str.26, i32 noundef 3, ptr noundef nonnull %buf) #8
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 1
  %17 = lshr i8 %16, 2
  %18 = and i8 %17, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %.not = icmp eq i8 %18, 3
  br i1 %.not, label %do.end.sw.epilog_crit_edge, label %switch.lookup

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %and = zext i8 %18 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rtl2832_get_frontend, i32 0, i32 %and
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  %modulation22 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %20 = ptrtoint ptr %modulation22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %switch.load, ptr %modulation22, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end.sw.epilog_crit_edge
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %7, align 1
  %23 = lshr i8 %22, 2
  %.lobit = and i8 %23, 1
  %24 = zext i8 %.lobit to i32
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %25, align 4
  %27 = and i8 %22, 3
  %and34 = zext i8 %27 to i32
  %guard_interval41 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %28 = ptrtoint ptr %guard_interval41 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and34, ptr %guard_interval41, align 4
  %29 = lshr i8 %16, 4
  %30 = and i8 %29, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %switch = icmp ult i8 %30, 4
  br i1 %switch, label %sw.epilog54.sink.split, label %sw.epilog.sw.epilog54_crit_edge

sw.epilog.sw.epilog54_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog54

sw.epilog54.sink.split:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %and46 = zext i8 %30 to i32
  %hierarchy53 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %31 = ptrtoint ptr %hierarchy53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and46, ptr %hierarchy53, align 4
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %sw.epilog54.sink.split, %sw.epilog.sw.epilog54_crit_edge
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %5, align 1
  %34 = lshr i8 %33, 3
  %35 = and i8 %34, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %35)
  %36 = icmp ult i8 %35, 5
  br i1 %36, label %switch.lookup142, label %sw.epilog54.sw.epilog68_crit_edge

sw.epilog54.sw.epilog68_crit_edge:                ; preds = %sw.epilog54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog68

switch.lookup142:                                 ; preds = %sw.epilog54
  call void @__sanitizer_cov_trace_pc() #10
  %and58 = zext i8 %35 to i32
  %switch.gep143 = getelementptr inbounds [5 x i32], ptr @switch.table.rtl2832_get_frontend.48, i32 0, i32 %and58
  %37 = ptrtoint ptr %switch.gep143 to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load144 = load i32, ptr %switch.gep143, align 4
  %code_rate_HP67 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %38 = ptrtoint ptr %code_rate_HP67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %switch.load144, ptr %code_rate_HP67, align 4
  br label %sw.epilog68

sw.epilog68:                                      ; preds = %switch.lookup142, %sw.epilog54.sw.epilog68_crit_edge
  %39 = and i8 %33, 7
  %and72 = zext i8 %39 to i32
  %40 = zext i32 %and72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and72, label %sw.epilog68.cleanup_crit_edge [
    i32 0, label %sw.bb73
    i32 1, label %sw.bb74
    i32 2, label %sw.bb76
    i32 3, label %sw.bb78
    i32 4, label %sw.bb80
  ]

sw.epilog68.cleanup_crit_edge:                    ; preds = %sw.epilog68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb73:                                          ; preds = %sw.epilog68
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %41 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %code_rate_LP, align 4
  br label %cleanup

sw.bb74:                                          ; preds = %sw.epilog68
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP75 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %42 = ptrtoint ptr %code_rate_LP75 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %code_rate_LP75, align 4
  br label %cleanup

sw.bb76:                                          ; preds = %sw.epilog68
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP77 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %43 = ptrtoint ptr %code_rate_LP77 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %code_rate_LP77, align 4
  br label %cleanup

sw.bb78:                                          ; preds = %sw.epilog68
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP79 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %44 = ptrtoint ptr %code_rate_LP79 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %code_rate_LP79, align 4
  br label %cleanup

sw.bb80:                                          ; preds = %sw.epilog68
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP81 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %45 = ptrtoint ptr %code_rate_LP81 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 7, ptr %code_rate_LP81, align 4
  br label %cleanup

do.body83:                                        ; preds = %if.end4.do.body83_crit_edge, %if.end.do.body83_crit_edge
  %ret.0 = phi i32 [ %call, %if.end.do.body83_crit_edge ], [ %call6, %if.end4.do.body83_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_get_frontend.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_get_frontend, %if.then95)) #8
          to label %cleanup [label %if.then95], !srcloc !176

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  %dev96 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_get_frontend.__UNIQUE_ID_ddebug303, ptr noundef %dev96, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %do.body83, %sw.bb80, %sw.bb78, %sw.bb76, %sw.bb74, %sw.bb73, %sw.epilog68.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog68.cleanup_crit_edge ], [ 0, %sw.bb80 ], [ 0, %sw.bb78 ], [ 0, %sw.bb76 ], [ 0, %sw.bb74 ], [ 0, %sw.bb73 ], [ %ret.0, %if.then95 ], [ %ret.0, %do.body83 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %reading.i = alloca [4 x i8], align 4
  %u8tmp = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #8
  %4 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %u8tmp, align 1, !annotation !175
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !175
  %6 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !175
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_read_status.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_read_status, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_read_status.__UNIQUE_ID_ddebug304, ptr noundef %dev5, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %status, align 4
  %sleeping = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %sleeping to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sleeping, align 8, !range !177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup216_crit_edge

do.end.cleanup216_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup216

if.end8:                                          ; preds = %do.end
  %11 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reading.i) #8
  %regmap.i = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %reading.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %reading.i, align 4
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 849, ptr noundef nonnull %reading.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12, label %do.body.i

do.body.i:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_rd_demod_reg.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_read_status, %if.then27.i)) #8
          to label %rtl2832_rd_demod_reg.exit [label %if.then27.i], !srcloc !176

if.then27.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev28.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_rd_demod_reg.__UNIQUE_ID_ddebug290, ptr noundef %dev28.i, ptr noundef nonnull @.str.11, i32 noundef %call.i) #8
  br label %rtl2832_rd_demod_reg.exit

rtl2832_rd_demod_reg.exit:                        ; preds = %if.then27.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reading.i) #8
  br label %do.body199

if.end12:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %reading.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reading.i, align 4
  %18 = lshr i8 %17, 3
  %19 = and i8 %18, 15
  %and.i = zext i8 %19 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reading.i) #8
  %20 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %and.i, label %if.end12.if.end18_crit_edge [
    i32 11, label %if.end12.if.end18.sink.split_crit_edge
    i32 10, label %if.then15
  ]

if.end12.if.end18.sink.split_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.sink.split

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.then15, %if.end12.if.end18.sink.split_crit_edge
  %.sink294 = phi i32 [ 7, %if.then15 ], [ 31, %if.end12.if.end18.sink.split_crit_edge ]
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %or16 = or i32 %22, %.sink294
  store i32 %or16, ptr %status, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.end12.if.end18_crit_edge
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %fe_status = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fe_status, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.else54, label %if.then21

if.then21:                                        ; preds = %if.end18
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call22 = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef 773, ptr noundef nonnull %u8tmp, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.body26, label %if.then21.do.body199_crit_edge

if.then21.do.body199_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body199

do.body26:                                        ; preds = %if.then21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_read_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_read_status, %if.then38)) #8
          to label %do.end42 [label %if.then38], !srcloc !176

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %dev39 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %u8tmp, align 1
  %conv = zext i8 %29 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_read_status.__UNIQUE_ID_ddebug305, ptr noundef %dev39, ptr noundef nonnull @.str.28, i32 noundef %conv) #8
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body26
  %30 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %u8tmp, align 1
  %neg = xor i8 %31, -1
  store i8 %neg, ptr %u8tmp, align 1
  %conv45 = zext i8 %neg to i32
  %or48 = mul nuw nsw i32 %conv45, 257
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %32 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %stat, align 1
  %conv50 = zext i32 %or48 to i64
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %conv50, ptr %33, align 1
  br label %if.end59

if.else54:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %stat56 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %35 = ptrtoint ptr %stat56 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %stat56, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.else54, %do.end42
  %36 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fe_status, align 4
  %and61 = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else129, label %if.then63

if.then63:                                        ; preds = %if.end59
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %call65 = call i32 @regmap_bulk_read(ptr noundef %39, i32 noundef 828, ptr noundef nonnull %u8tmp, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.then63.do.body199_crit_edge

if.then63.do.body199_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body199

if.end68:                                         ; preds = %if.then63
  %40 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %u8tmp, align 1
  %conv69 = zext i8 %41 to i32
  %42 = lshr i32 %conv69, 2
  %and70 = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and70)
  %cmp71 = icmp eq i32 %and70, 3
  br i1 %cmp71, label %if.end68.do.body199_crit_edge, label %if.end74

if.end68.do.body199_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body199

if.end74:                                         ; preds = %if.end68
  %43 = lshr i32 %conv69, 4
  %and77 = and i32 %43, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and77)
  %cmp78 = icmp ugt i32 %and77, 3
  br i1 %cmp78, label %if.end74.do.body199_crit_edge, label %if.end81

if.end74.do.body199_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body199

if.end81:                                         ; preds = %if.end74
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %call83 = call i32 @regmap_bulk_read(ptr noundef %45, i32 noundef 1036, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end81.do.body199_crit_edge

if.end81.do.body199_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body199

if.end86:                                         ; preds = %if.end81
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %buf, align 1
  %conv88 = zext i8 %47 to i16
  %shl89 = shl nuw i16 %conv88, 8
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %6, align 1
  %conv91 = zext i8 %49 to i16
  %or93 = or i16 %shl89, %conv91
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or93)
  %tobool95.not = icmp eq i16 %or93, 0
  br i1 %tobool95.not, label %if.end86.do.body103_crit_edge, label %if.then96

if.end86.do.body103_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body103

if.then96:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx98 = getelementptr [3 x [4 x i32]], ptr @rtl2832_read_status.constant, i32 0, i32 %and70, i32 %and77
  %50 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx98, align 4
  %conv99 = zext i16 %or93 to i32
  %call100 = call i32 @intlog10(i32 noundef %conv99) #8
  %sub = sub i32 %51, %call100
  %div = udiv i32 %sub, 1677
  br label %do.body103

do.body103:                                       ; preds = %if.then96, %if.end86.do.body103_crit_edge
  %storemerge = phi i32 [ %div, %if.then96 ], [ 0, %if.end86.do.body103_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_read_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_read_status, %if.then115)) #8
          to label %cleanup [label %if.then115], !srcloc !176

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #10
  %dev116 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv117 = zext i16 %or93 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_read_status.__UNIQUE_ID_ddebug306, ptr noundef %dev116, ptr noundef nonnull @.str.29, i32 noundef %conv117) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then115, %do.body103
  %stat121 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %52 = ptrtoint ptr %stat121 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %stat121, align 1
  %conv124 = zext i32 %storemerge to i64
  %53 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 8)
  store i64 %conv124, ptr %53, align 1
  br label %if.end134

if.else129:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %stat131 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %55 = ptrtoint ptr %stat131 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %stat131, align 1
  br label %if.end134

if.end134:                                        ; preds = %if.else129, %cleanup
  %56 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fe_status, align 4
  %and136 = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.else189, label %if.then138

if.then138:                                       ; preds = %if.end134
  %58 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i, align 4
  %call141 = call i32 @regmap_bulk_read(ptr noundef %59, i32 noundef 846, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %if.then138.do.body199_crit_edge

if.then138.do.body199_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body199

if.end144:                                        ; preds = %if.then138
  %60 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %buf, align 1
  %conv146 = zext i8 %61 to i16
  %shl147 = shl nuw i16 %conv146, 8
  %62 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %6, align 1
  %conv149 = zext i8 %63 to i16
  %or151 = or i16 %shl147, %conv149
  %conv153 = zext i16 %or151 to i64
  %post_bit_error = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 8
  %64 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %post_bit_error, align 8
  %add = add i64 %65, %conv153
  store i64 %add, ptr %post_bit_error, align 8
  %post_bit_count = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 9
  %66 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %post_bit_count, align 8
  %add154 = add i64 %67, 1000000
  store i64 %add154, ptr %post_bit_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_read_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_read_status, %if.then167)) #8
          to label %do.end172 [label %if.then167], !srcloc !176

if.then167:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  %dev168 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv169 = zext i16 %or151 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_read_status.__UNIQUE_ID_ddebug307, ptr noundef %dev168, ptr noundef nonnull @.str.30, i32 noundef %conv169) #8
  br label %do.end172

do.end172:                                        ; preds = %if.then167, %if.end144
  %stat174 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %68 = ptrtoint ptr %stat174 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %stat174, align 1
  %69 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %post_bit_error, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %70, ptr %71, align 1
  %stat182 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %73 = ptrtoint ptr %stat182 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 3, ptr %stat182, align 1
  %74 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %post_bit_count, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_storeN_noabort(i32 %77, i32 8)
  store i64 %75, ptr %76, align 1
  br label %cleanup216

if.else189:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %stat191 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %78 = ptrtoint ptr %stat191 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %stat191, align 1
  %stat195 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %79 = ptrtoint ptr %stat195 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %stat195, align 1
  br label %cleanup216

do.body199:                                       ; preds = %if.then138.do.body199_crit_edge, %if.end81.do.body199_crit_edge, %if.end74.do.body199_crit_edge, %if.end68.do.body199_crit_edge, %if.then63.do.body199_crit_edge, %if.then21.do.body199_crit_edge, %rtl2832_rd_demod_reg.exit
  %ret.1 = phi i32 [ %call.i, %rtl2832_rd_demod_reg.exit ], [ %call22, %if.then21.do.body199_crit_edge ], [ %call141, %if.then138.do.body199_crit_edge ], [ %call83, %if.end81.do.body199_crit_edge ], [ -22, %if.end74.do.body199_crit_edge ], [ -22, %if.end68.do.body199_crit_edge ], [ %call65, %if.then63.do.body199_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_read_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_read_status, %if.then211)) #8
          to label %cleanup216 [label %if.then211], !srcloc !176

if.then211:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #10
  %dev212 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_read_status.__UNIQUE_ID_ddebug308, ptr noundef %dev212, ptr noundef nonnull @.str.11, i32 noundef %ret.1) #8
  br label %cleanup216

cleanup216:                                       ; preds = %if.then211, %do.body199, %if.else189, %do.end172, %do.end.cleanup216_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup216_crit_edge ], [ 0, %if.else189 ], [ 0, %do.end172 ], [ %ret.1, %if.then211 ], [ %ret.1, %do.body199 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl2832_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %post_bit_error = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %post_bit_error, align 8
  %post_bit_error_prev = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %post_bit_error_prev to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %post_bit_error_prev, align 8
  %sub = sub i64 %3, %5
  %conv = trunc i64 %sub to i32
  %6 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %ber, align 4
  %7 = load i64, ptr %post_bit_error, align 8
  store i64 %7, ptr %post_bit_error_prev, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2832_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #8
  %5 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %remainder.i, align 4, !annotation !175
  %call.i = call i64 @div_s64_rem(i64 noundef %4, i32 noundef 100, ptr noundef nonnull %remainder.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #8
  %conv5 = trunc i64 %call.i to i16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i16 [ %conv5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %storemerge, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832_wr_demod_reg(ptr nocapture noundef readonly %dev, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %reading = alloca [4 x i8], align 4
  %writing = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reading) #8
  %2 = ptrtoint ptr %reading to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reading, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %writing) #8
  %arrayidx = getelementptr [184 x %struct.rtl2832_reg_entry], ptr @registers, i32 0, i32 %reg
  %3 = ptrtoint ptr %writing to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %writing, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %msb3 = getelementptr [184 x %struct.rtl2832_reg_entry], ptr @registers, i32 0, i32 %reg, i32 1
  %6 = ptrtoint ptr %msb3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msb3, align 2
  %lsb5 = getelementptr [184 x %struct.rtl2832_reg_entry], ptr @registers, i32 0, i32 %reg, i32 2
  %8 = ptrtoint ptr %lsb5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lsb5, align 1
  %conv = zext i8 %7 to i32
  %10 = lshr i8 %7, 3
  %add = add nuw nsw i8 %10, 1
  %conv8 = zext i8 %9 to i32
  %sub = add nuw nsw i32 %conv, 1
  %add9 = sub nsw i32 %sub, %conv8
  %notmask = shl nsw i32 -1, %add9
  %sub10 = xor i32 %notmask, -1
  %regmap = getelementptr inbounds %struct.rtl2832_dev, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %conv11 = zext i16 %5 to i32
  %conv12 = zext i8 %add to i32
  %call = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef %conv11, ptr noundef nonnull %reading, i32 noundef %conv12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %reading_tmp.097 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.096 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx15 = getelementptr [4 x i8], ptr %reading, i32 0, i32 %i.096
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %14 to i32
  %15 = xor i32 %i.096, -1
  %sub19 = add nsw i32 %15, %conv12
  %mul = shl i32 %sub19, 3
  %shl20 = shl i32 %conv16, %mul
  %or = or i32 %shl20, %reading_tmp.097
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %conv12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %shl22 = shl i32 %sub10, %conv8
  %neg = xor i32 %shl22, -1
  %and = and i32 %or, %neg
  %and23 = and i32 %sub10, %val
  %shl25 = shl i32 %and23, %conv8
  %or26 = or i32 %and, %shl25
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.end
  %i.198 = phi i32 [ 0, %for.end ], [ %inc41, %for.body31.for.body31_crit_edge ]
  %16 = xor i32 %i.198, -1
  %sub34 = add nsw i32 %16, %conv12
  %mul35 = shl i32 %sub34, 3
  %shr36 = lshr i32 %or26, %mul35
  %conv38 = trunc i32 %shr36 to i8
  %arrayidx39 = getelementptr [4 x i8], ptr %writing, i32 0, i32 %i.198
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv38, ptr %arrayidx39, align 1
  %inc41 = add nuw nsw i32 %i.198, 1
  %exitcond99.not = icmp eq i32 %inc41, %conv12
  br i1 %exitcond99.not, label %for.end42, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.end42:                                        ; preds = %for.body31
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call47 = call i32 @regmap_bulk_write(ptr noundef %19, i32 noundef %conv11, ptr noundef nonnull %writing, i32 noundef %conv12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %for.end42.cleanup_crit_edge, label %for.end42.do.body_crit_edge

for.end42.do.body_crit_edge:                      ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end42.cleanup_crit_edge:                      ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %for.end42.do.body_crit_edge, %entry.do.body_crit_edge
  %ret.0 = phi i32 [ %call, %entry.do.body_crit_edge ], [ %call47, %for.end42.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_wr_demod_reg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_wr_demod_reg, %if.then55)) #8
          to label %cleanup [label %if.then55], !srcloc !176

if.then55:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev56 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_wr_demod_reg.__UNIQUE_ID_ddebug291, ptr noundef %dev56, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %do.body, %for.end42.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end42.cleanup_crit_edge ], [ %ret.0, %if.then55 ], [ %ret.0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %writing) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reading) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2832_set_if(ptr nocapture noundef readonly %fe, i32 noundef %if_freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %client1 = getelementptr inbounds %struct.rtl2832_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %if_freq)
  %cmp = icmp eq i32 %if_freq, 0
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %rem = urem i32 %if_freq, %7
  %conv2 = zext i32 %rem to i64
  %mul = shl nuw nsw i64 %conv2, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %rem)
  %cmp164.i.i = icmp ult i32 %rem, 1024
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !178

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %7
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %7, i64 %mul) #13, !srcloc !179
  %asmresult1.i.i.i = extractvalue { i64, i64 } %8, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %sub = sub i64 0, %dividend.addr.0.i.i
  %and = and i64 %sub, 4194303
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_set_if.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_set_if, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !176

if.then:                                          ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %conv9 = trunc i64 %and to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_set_if.__UNIQUE_ID_ddebug292, ptr noundef %dev8, ptr noundef nonnull @.str.23, i32 noundef %if_freq, i32 noundef %conv9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %div_u64.exit
  %conv10 = zext i1 %cmp to i32
  %call11 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 26, i32 noundef %conv10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end.do.body20_crit_edge

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.end14:                                         ; preds = %do.end
  %conv15 = trunc i64 %and to i32
  %call16 = tail call fastcc i32 @rtl2832_wr_demod_reg(ptr noundef %1, i32 noundef 60, i32 noundef %conv15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end14.do.body20_crit_edge

if.end14.do.body20_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body20:                                        ; preds = %if.end14.do.body20_crit_edge, %do.end.do.body20_crit_edge
  %ret.0 = phi i32 [ %call11, %do.end.do.body20_crit_edge ], [ %call16, %if.end14.do.body20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2832_set_if.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2832_set_if, %if.then32)) #8
          to label %cleanup [label %if.then32], !srcloc !176

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2832_set_if.__UNIQUE_ID_ddebug293, ptr noundef %dev33, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %do.body20, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14.cleanup_crit_edge ], [ %ret.0, %if.then32 ], [ %ret.0, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !40, !42, !43, !45, !46, !48, !50, !51, !53, !54, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !82, !83, !84, !86, !87, !88, !89, !91, !93, !94, !95, !97, !99, !100, !102, !103, !104, !106, !108, !109, !111, !112, !114, !116, !117, !119, !120, !122, !124, !125, !127, !128, !130, !131, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !155, !157, !158, !159, !161, !163, !164}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172, !173}
!llvm.ident = !{!174}

!0 = !{ptr @__initcall__kmod_rtl2832__322_1146_rtl2832_driver_init6, !1, !"__initcall__kmod_rtl2832__322_1146_rtl2832_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1146, i32 1}
!2 = !{ptr @__exitcall_rtl2832_driver_exit, !1, !"__exitcall_rtl2832_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author323, !4, !"__UNIQUE_ID_author323", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1148, i32 1}
!5 = !{ptr @__UNIQUE_ID_author324, !6, !"__UNIQUE_ID_author324", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1149, i32 1}
!7 = !{ptr @__UNIQUE_ID_description325, !8, !"__UNIQUE_ID_description325", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1150, i32 1}
!9 = !{ptr @__UNIQUE_ID_file326, !10, !"__UNIQUE_ID_file326", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1151, i32 1}
!11 = !{ptr @__UNIQUE_ID_license327, !10, !"__UNIQUE_ID_license327", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1138, i32 11}
!14 = !{ptr @rtl2832_driver, !15, !"rtl2832_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1136, i32 26}
!16 = !{ptr @rtl2832_probe.regmap_range_cfg, !17, !"regmap_range_cfg", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1032, i32 39}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1044, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rtl2832_probe.__UNIQUE_ID_ddebug319, !19, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!23 = !{ptr @rtl2832_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1058, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rtl2832_probe.__key.5, !24, !"__key", i1 false, i1 false}
!27 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtl2832_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1067, i32 16}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1102, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rtl2832_probe._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @rtl2832_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1109, i32 2}
!39 = !{ptr @rtl2832_probe.__UNIQUE_ID_ddebug320, !38, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 797, i32 2}
!42 = !{ptr @rtl2832_i2c_gate_work.__UNIQUE_ID_ddebug309, !41, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 816, i32 2}
!45 = !{ptr @rtl2832_select.__UNIQUE_ID_ddebug310, !44, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!46 = !{ptr @rtl2832_ops, !47, !"rtl2832_ops", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 828, i32 38}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 298, i32 2}
!50 = !{ptr @rtl2832_init.__UNIQUE_ID_ddebug294, !49, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 312, i32 2}
!53 = !{ptr @rtl2832_init.__UNIQUE_ID_ddebug295, !52, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!54 = !{ptr @rtl2832_init.__UNIQUE_ID_ddebug296, !55, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 365, i32 2}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 207, i32 2}
!58 = !{ptr @rtl2832_wr_demod_reg.__UNIQUE_ID_ddebug291, !57, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!59 = !{ptr @registers, !60, !"registers", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 13, i32 39}
!61 = !{ptr @rtl2832_tuner_init_fc2580, !62, !"rtl2832_tuner_init_fc2580", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/rtl2832_priv.h", i32 241, i32 39}
!63 = !{ptr @rtl2832_tuner_init_fc0012, !64, !"rtl2832_tuner_init_fc0012", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/rtl2832_priv.h", i32 293, i32 39}
!65 = !{ptr @rtl2832_tuner_init_tua9001, !66, !"rtl2832_tuner_init_tua9001", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/rtl2832_priv.h", i32 265, i32 39}
!67 = !{ptr @rtl2832_tuner_init_e4000, !68, !"rtl2832_tuner_init_e4000", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/rtl2832_priv.h", i32 327, i32 39}
!69 = !{ptr @rtl2832_tuner_init_r820t, !70, !"rtl2832_tuner_init_r820t", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/rtl2832_priv.h", i32 365, i32 39}
!71 = !{ptr @rtl2832_tuner_init_si2157, !72, !"rtl2832_tuner_init_si2157", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/rtl2832_priv.h", i32 390, i32 39}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 375, i32 2}
!75 = !{ptr @rtl2832_sleep.__UNIQUE_ID_ddebug297, !74, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!76 = !{ptr @rtl2832_sleep.__UNIQUE_ID_ddebug298, !77, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 386, i32 2}
!78 = !{ptr @rtl2832_set_frontend.bw_params, !79, !"bw_params", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 411, i32 12}
!80 = !{ptr @.str.18, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 437, i32 2}
!82 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rtl2832_set_frontend.__UNIQUE_ID_ddebug300, !81, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!84 = !{ptr @.str.20, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 471, i32 3}
!86 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rtl2832_set_frontend._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rtl2832_set_frontend._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @rtl2832_set_frontend.__UNIQUE_ID_ddebug301, !90, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 520, i32 2}
!91 = !{ptr @.str.22, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 228, i32 2}
!93 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rtl2832_set_if.__UNIQUE_ID_ddebug292, !92, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!95 = !{ptr @rtl2832_set_if.__UNIQUE_ID_ddebug293, !96, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 241, i32 2}
!97 = !{ptr @.str.24, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 396, i32 2}
!99 = !{ptr @rtl2832_get_tune_settings.__UNIQUE_ID_ddebug299, !98, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!100 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 543, i32 2}
!102 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @rtl2832_get_frontend.__UNIQUE_ID_ddebug302, !101, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!104 = !{ptr @rtl2832_get_frontend.__UNIQUE_ID_ddebug303, !105, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 633, i32 2}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 647, i32 2}
!108 = !{ptr @rtl2832_read_status.__UNIQUE_ID_ddebug304, !107, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!109 = !{ptr @.str.28, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 674, i32 3}
!111 = !{ptr @rtl2832_read_status.__UNIQUE_ID_ddebug305, !110, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!112 = !{ptr @rtl2832_read_status.constant, !113, !"constant", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 690, i32 20}
!114 = !{ptr @.str.29, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 720, i32 3}
!116 = !{ptr @rtl2832_read_status.__UNIQUE_ID_ddebug306, !115, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!117 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 738, i32 3}
!119 = !{ptr @rtl2832_read_status.__UNIQUE_ID_ddebug307, !118, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!120 = !{ptr @rtl2832_read_status.__UNIQUE_ID_ddebug308, !121, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 751, i32 2}
!122 = !{ptr @.str.31, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 169, i32 2}
!124 = !{ptr @rtl2832_rd_demod_reg.__UNIQUE_ID_ddebug290, !123, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!125 = !{ptr @.str.32, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 885, i32 2}
!127 = !{ptr @rtl2832_get_dvb_frontend.__UNIQUE_ID_ddebug311, !126, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!128 = !{ptr @.str.33, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 893, i32 2}
!130 = !{ptr @rtl2832_get_i2c_adapter.__UNIQUE_ID_ddebug312, !129, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!131 = !{ptr @.str.34, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 902, i32 2}
!133 = !{ptr @.str.35, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @rtl2832_slave_ts_ctrl.__UNIQUE_ID_ddebug313, !132, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!135 = !{ptr @.str.36, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 908, i32 47}
!137 = !{ptr @.str.37, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 914, i32 47}
!139 = !{ptr @.str.38, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 917, i32 47}
!141 = !{ptr @.str.39, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 921, i32 47}
!143 = !{ptr @.str.40, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 924, i32 47}
!145 = !{ptr @.str.41, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 930, i32 47}
!147 = !{ptr @rtl2832_slave_ts_ctrl.__UNIQUE_ID_ddebug314, !148, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!148 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 942, i32 2}
!149 = !{ptr @.str.42, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 982, i32 2}
!151 = !{ptr @.str.43, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @rtl2832_pid_filter.__UNIQUE_ID_ddebug317, !150, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!153 = !{ptr @rtl2832_pid_filter.__UNIQUE_ID_ddebug318, !154, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!154 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1020, i32 2}
!155 = !{ptr @.str.44, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 953, i32 2}
!157 = !{ptr @.str.45, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @rtl2832_pid_filter_ctrl.__UNIQUE_ID_ddebug315, !156, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!159 = !{ptr @rtl2832_pid_filter_ctrl.__UNIQUE_ID_ddebug316, !160, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 970, i32 2}
!161 = !{ptr @.str.46, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1117, i32 2}
!163 = !{ptr @rtl2832_remove.__UNIQUE_ID_ddebug321, !162, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!164 = !{ptr @rtl2832_id_table, !165, !"rtl2832_id_table", i1 false, i1 false}
!165 = !{!"../drivers/media/dvb-frontends/rtl2832.c", i32 1130, i32 35}
!166 = !{i32 1, !"wchar_size", i32 2}
!167 = !{i32 1, !"min_enum_size", i32 4}
!168 = !{i32 8, !"branch-target-enforcement", i32 0}
!169 = !{i32 8, !"sign-return-address", i32 0}
!170 = !{i32 8, !"sign-return-address-all", i32 0}
!171 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!172 = !{i32 7, !"uwtable", i32 1}
!173 = !{i32 7, !"frame-pointer", i32 2}
!174 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!175 = !{!"auto-init"}
!176 = !{i64 2148898335, i64 2148898340, i64 2148898353, i64 2148898397, i64 2148898431, i64 2148898452}
!177 = !{i8 0, i8 2}
!178 = !{!"branch_weights", i32 2000, i32 1}
!179 = !{i64 2148807054, i64 2148807334, i64 2148807668, i64 2148808002}
