; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/rtl2830.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/rtl2830.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rtl2830_dev = type { ptr, ptr, ptr, ptr, %struct.dvb_frontend, i8, i32, i32, i64, i64, i64 }
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
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.rtl2830_platform_data = type { i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.rtl2830_reg_val_mask = type { i16, i8, i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__initcall__kmod_rtl2830__315_897_rtl2830_driver_init6 = internal global ptr @rtl2830_driver_init, section ".initcall6.init", align 4
@rtl2830_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @rtl2830_probe, ptr @rtl2830_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rtl2830_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_rtl2830_driver_exit = internal global ptr @rtl2830_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author316 = internal constant [46 x i8] c"rtl2830.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description317 = internal constant [61 x i8] c"rtl2830.description=Realtek RTL2830 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file318 = internal constant [49 x i8] c"rtl2830.file=drivers/media/dvb-frontends/rtl2830\00", section ".modinfo", align 1
@__UNIQUE_ID_license319 = internal constant [20 x i8] c"rtl2830.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtl2830\00", [24 x i8] zeroinitializer }, align 32
@rtl2830_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"rtl2830\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@rtl2830_probe.regmap_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @rtl2830_regmap_write, ptr @rtl2830_regmap_gather_write, ptr null, ptr null, ptr null, ptr @rtl2830_regmap_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 3, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rtl2830_probe.regmap_range_cfg = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 1280, i32 0, i32 255, i32 0, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@rtl2830_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1280, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @rtl2830_probe.regmap_range_cfg, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@rtl2830_probe.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rtl2830_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/rtl2830.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rtl2830_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"rtl2830:823:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@rtl2830_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Realtek RTL2830 (DVB-T)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @rtl2830_init, ptr @rtl2830_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rtl2830_set_frontend, ptr @rtl2830_get_tune_settings, ptr @rtl2830_get_frontend, ptr @rtl2830_read_status, ptr @rtl2830_read_ber, ptr @rtl2830_read_signal_strength, ptr @rtl2830_read_snr, ptr @rtl2830_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@rtl2830_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 856, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Realtek RTL2830 successfully attached\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl2830_probe._entry_ptr = internal global ptr @rtl2830_probe._entry, section ".printk_index", align 4
@rtl2830_probe.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl2830_regmap_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 734, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2c reg write failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl2830_regmap_write\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtl2830_regmap_write._entry_ptr = internal global ptr @rtl2830_regmap_write._entry, section ".printk_index", align 4
@rtl2830_regmap_gather_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.2, i32 763, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtl2830_regmap_gather_write\00", [36 x i8] zeroinitializer }, align 32
@rtl2830_regmap_gather_write._entry_ptr = internal global ptr @rtl2830_regmap_gather_write._entry, section ".printk_index", align 4
@rtl2830_regmap_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 711, ptr @.str.11, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c reg read failed %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl2830_regmap_read\00", [44 x i8] zeroinitializer }, align 32
@rtl2830_regmap_read._entry_ptr = internal global ptr @rtl2830_regmap_read._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rtl2830_select.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.3, i8 0, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl2830_select\00", [17 x i8] zeroinitializer }, align 32
@rtl2830_select.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.8, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"(\00\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\04\06\0A\12\0A\12\1E(\00", [23 x i8] zeroinitializer }, align 32
@rtl2830_init.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.8, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtl2830_init\00", [19 x i8] zeroinitializer }, align 32
@rtl2830_set_frontend.bw_params1 = internal constant { [3 x [34 x i8]], [58 x i8] } { [3 x [34 x i8]] [[34 x i8] c"\1F\F0\1F\F0\1F\FA\00\17\00A\00d\00g\008\1F\DE\1Fz\1FG\1F|\000\01K\02\82\03s\03\CF", [34 x i8] c"\1F\FA\1F\DA\1F\C1\1F\B3\1F\CA\00\07\00M\00m\00@\1F\CA\1FM\1F*\1F\B2\00\EC\02~\03\D0\04S", [34 x i8] c"\00\10\00\0E\1F\F7\1F\C9\1F\A0\1F\A6\1F\EC\00N\00}\00:\1F\98\1F\10\1F@\00u\02_\04$\04\DB"], [58 x i8] zeroinitializer }, align 32
@rtl2830_set_frontend.bw_params2 = internal constant { [3 x [6 x i8]], [46 x i8] } { [3 x [6 x i8]] [[6 x i8] c"\C3\0CD330", [6 x i8] c"\B8\E3\93\99\99\98", [6 x i8] c"\AE\BA\F3&fd"], [46 x i8] zeroinitializer }, align 32
@rtl2830_set_frontend.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl2830_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"frequency=%u bandwidth_hz=%u inversion=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@rtl2830_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 210, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid bandwidth_hz %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rtl2830_set_frontend._entry_ptr = internal global ptr @rtl2830_set_frontend._entry, section ".printk_index", align 4
@rtl2830_set_frontend.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.23, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"if_frequency=%d if_ctl=%08x\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl2830_set_frontend.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.8, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2830_get_frontend.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl2830_get_frontend\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TPS=%*ph\0A\00", [22 x i8] zeroinitializer }, align 32
@rtl2830_get_frontend.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.8, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2830_read_status.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.27, i8 0, i8 105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtl2830_read_status\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IF AGC=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@rtl2830_read_status.constant = internal constant { [3 x [4 x i32]], [48 x i8] } { [3 x [4 x i32]] [[4 x i32] [i32 70705899, i32 70705899, i32 70705899, i32 70705899], [4 x i32] [i32 82433173, i32 82433173, i32 87483115, i32 94445660], [4 x i32] [i32 92888734, i32 92888734, i32 95487525, i32 99770748]], [48 x i8] zeroinitializer }, align 32
@rtl2830_read_status.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.28, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CNR raw=%u\0A\00", [20 x i8] zeroinitializer }, align 32
@rtl2830_read_status.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.29, i8 0, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"BER errors=%u total=1000000\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl2830_read_status.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.8, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2830_get_dvb_frontend.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.3, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtl2830_get_dvb_frontend\00", [39 x i8] zeroinitializer }, align 32
@rtl2830_get_i2c_adapter.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.3, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl2830_get_i2c_adapter\00", [40 x i8] zeroinitializer }, align 32
@rtl2830_pid_filter.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl2830_pid_filter\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"index=%d pid=%04x onoff=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@rtl2830_pid_filter.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.8, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2830_pid_filter_ctrl.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl2830_pid_filter_ctrl\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"onoff=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@rtl2830_pid_filter_ctrl.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.8, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@rtl2830_remove.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.3, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtl2830_remove\00", [17 x i8] zeroinitializer }, align 32
@switch.table.rtl2830_get_frontend = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.rtl2830_get_frontend.37 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 4, i64 10, i64 11]
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"rtl2830_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 887, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 889, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"rtl2830_id_table\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 881, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [11 x i8] c"regmap_bus\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 778, i32 33 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"regmap_range_cfg\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 784, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 795, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 803, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 822, i32 16 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"rtl2830_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 541, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 856, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 864, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 734, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 763, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 711, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 654, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 99, i32 42 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 104, i32 6 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 133, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [11 x i8] c"bw_params1\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 167, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant [11 x i8] c"bw_params2\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 185, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 191, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 209, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 231, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 287, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 421, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 434, i32 20 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 463, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 481, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 672, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 681, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 608, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 583, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [41 x i8] c"../drivers/media/dvb-frontends/rtl2830.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 872, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [34 x i8] c"switch.table.rtl2830_get_frontend\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [37 x i8] c"switch.table.rtl2830_get_frontend.37\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file318, ptr @__UNIQUE_ID_license319, ptr @__exitcall_rtl2830_driver_exit, ptr @__initcall__kmod_rtl2830__315_897_rtl2830_driver_init6, ptr @rtl2830_driver_exit, ptr @rtl2830_probe._entry, ptr @rtl2830_probe._entry_ptr, ptr @rtl2830_regmap_gather_write._entry, ptr @rtl2830_regmap_gather_write._entry_ptr, ptr @rtl2830_regmap_read._entry, ptr @rtl2830_regmap_read._entry_ptr, ptr @rtl2830_regmap_write._entry, ptr @rtl2830_regmap_write._entry_ptr, ptr @rtl2830_set_frontend._entry, ptr @rtl2830_set_frontend._entry_ptr, ptr @rtl2830_driver, ptr @.str, ptr @rtl2830_id_table, ptr @rtl2830_probe.regmap_bus, ptr @rtl2830_probe.regmap_range_cfg, ptr @rtl2830_probe.regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtl2830_probe._key, ptr @.str.4, ptr @rtl2830_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @rtl2830_set_frontend.bw_params1, ptr @rtl2830_set_frontend.bw_params2, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @rtl2830_read_status.constant, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.rtl2830_get_frontend, ptr @switch.table.rtl2830_get_frontend.37], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_probe.regmap_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_probe.regmap_range_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_regmap_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_regmap_gather_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_regmap_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_set_frontend.bw_params1 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_set_frontend.bw_params2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl2830_read_status.constant to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl2830_get_frontend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtl2830_get_frontend.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @rtl2830_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtl2830_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @rtl2830_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %u8tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #9
  %2 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %u8tmp, align 1, !annotation !136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_probe.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_probe.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.do.body46_crit_edge, label %if.end6

do.end.do.body46_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

if.end6:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1096) #12
  %cmp8 = icmp eq ptr %call7.i.i, null
  br i1 %cmp8, label %if.end6.do.body46_crit_edge, label %if.end10

if.end6.do.body46_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

if.end10:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %client11 = getelementptr inbounds %struct.rtl2830_dev, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %client11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %client, ptr %client11, align 4
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call7.i.i, align 8
  %sleeping = getelementptr inbounds %struct.rtl2830_dev, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %sleeping to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %sleeping, align 8
  %call17 = tail call ptr @__regmap_init(ptr noundef %dev, ptr noundef nonnull @rtl2830_probe.regmap_bus, ptr noundef %client, ptr noundef nonnull @rtl2830_probe.regmap_config, ptr noundef nonnull @rtl2830_probe._key, ptr noundef nonnull @.str.4) #9
  %regmap = getelementptr inbounds %struct.rtl2830_dev, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call17 to i32
  br label %err_kfree

if.end23:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock_ops.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void %19(ptr noundef %15, i32 noundef 2) #9
  %regmap.i = getelementptr inbounds %struct.rtl2830_dev, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 8
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %u8tmp, i32 noundef 1) #9
  %22 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %lock_ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock_ops.i5.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unlock_bus.i.i, align 4
  call void %27(ptr noundef %23, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool25.not = icmp eq i32 %call1.i, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.err_regmap_exit_crit_edge

if.end23.err_regmap_exit_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end27:                                         ; preds = %if.end23
  %28 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adapter.i, align 8
  %call29 = call ptr @i2c_mux_alloc(ptr noundef %29, ptr noundef %dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @rtl2830_select, ptr noundef null) #9
  %muxc = getelementptr inbounds %struct.rtl2830_dev, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %muxc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call29, ptr %muxc, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.end27.err_regmap_exit_crit_edge, label %if.end33

if.end27.err_regmap_exit_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end33:                                         ; preds = %if.end27
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call29, i32 0, i32 3
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %client, ptr %priv, align 4
  %32 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %muxc, align 4
  %call36 = call i32 @i2c_mux_add_adapter(ptr noundef %33, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end33.err_regmap_exit_crit_edge

if.end33.err_regmap_exit_crit_edge:               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %ops = getelementptr inbounds %struct.rtl2830_dev, ptr %call7.i.i, i32 0, i32 4, i32 1
  %34 = call ptr @memcpy(ptr %ops, ptr @rtl2830_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.rtl2830_dev, ptr %call7.i.i, i32 0, i32 4, i32 3
  %35 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %client, ptr %demodulator_priv, align 8
  %get_dvb_frontend = getelementptr inbounds %struct.rtl2830_platform_data, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %get_dvb_frontend to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @rtl2830_get_dvb_frontend, ptr %get_dvb_frontend, align 4
  %get_i2c_adapter = getelementptr inbounds %struct.rtl2830_platform_data, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %get_i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @rtl2830_get_i2c_adapter, ptr %get_i2c_adapter, align 4
  %pid_filter = getelementptr inbounds %struct.rtl2830_platform_data, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %pid_filter to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @rtl2830_pid_filter, ptr %pid_filter, align 4
  %pid_filter_ctrl = getelementptr inbounds %struct.rtl2830_platform_data, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %pid_filter_ctrl to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @rtl2830_pid_filter_ctrl, ptr %pid_filter_ctrl, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.5) #13
  br label %cleanup

err_regmap_exit:                                  ; preds = %if.end33.err_regmap_exit_crit_edge, %if.end27.err_regmap_exit_crit_edge, %if.end23.err_regmap_exit_crit_edge
  %ret.0 = phi i32 [ %call1.i, %if.end23.err_regmap_exit_crit_edge ], [ %call36, %if.end33.err_regmap_exit_crit_edge ], [ -12, %if.end27.err_regmap_exit_crit_edge ]
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 8
  call void @regmap_exit(ptr noundef %41) #9
  br label %err_kfree

err_kfree:                                        ; preds = %err_regmap_exit, %if.then20
  %ret.1 = phi i32 [ %11, %if.then20 ], [ %ret.0, %err_regmap_exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body46

do.body46:                                        ; preds = %err_kfree, %if.end6.do.body46_crit_edge, %do.end.do.body46_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_kfree ], [ -22, %do.end.do.body46_crit_edge ], [ -12, %if.end6.do.body46_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_probe.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_probe, %if.then58)) #9
          to label %cleanup [label %if.then58], !srcloc !137

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_probe.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %ret.2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %do.body46, %if.end39
  %retval.0 = phi i32 [ 0, %if.end39 ], [ %ret.2, %if.then58 ], [ %ret.2, %do.body46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_remove.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_remove.__UNIQUE_ID_ddebug314, ptr noundef %dev4, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %muxc = getelementptr inbounds %struct.rtl2830_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %muxc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %muxc, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %3) #9
  %regmap = getelementptr inbounds %struct.rtl2830_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  tail call void @regmap_exit(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_regmap_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr1, align 2
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %conv = trunc i32 %count to i16
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %buf, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 3
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %call = call i32 @__i2c_transfer(ptr noundef %9, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp3 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp3, i32 -121, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_regmap_gather_write(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_len, ptr nocapture noundef readonly %val, i32 noundef %val_len) #2 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #9
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #9
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 1
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
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = trunc i32 %val_len to i16
  %conv = add i16 %8, 1
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %buf2, align 4
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg, align 1
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %buf, align 1
  %arrayidx3 = getelementptr inbounds [256 x i8], ptr %buf, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %arrayidx3, ptr %val, i32 %val_len)
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 3
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %call = call i32 @__i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp6 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp6, i32 -121, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_regmap_read(ptr noundef %context, ptr noundef %reg_buf, i32 noundef %reg_size, ptr noundef %val_buf, i32 noundef %val_size) #2 align 64 {
entry:
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #9
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr1, align 2
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %conv = trunc i32 %reg_size to i16
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reg_buf, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %3, ptr %arrayinit.element, align 4
  %flags4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %9 = ptrtoint ptr %flags4 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags4, align 2
  %len5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %conv6 = trunc i32 %val_size to i16
  %10 = ptrtoint ptr %len5 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv6, ptr %len5, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %11 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %val_buf, ptr %buf7, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 3
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call = call i32 @__i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp9 = icmp sgt i32 %call, -1
  %spec.store.select = select i1 %cmp9, i32 -121, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2830_bulk_read(ptr nocapture noundef readonly %client, i32 noundef %reg, ptr noundef %val, i32 noundef %val_count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock_ops.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %3, i32 noundef 2) #9
  %regmap = getelementptr inbounds %struct.rtl2830_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call1 = tail call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef %reg, ptr noundef %val, i32 noundef %val_count) #9
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %lock_ops.i5 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %lock_ops.i5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock_ops.i5, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %15(ptr noundef %11, i32 noundef 2) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_select.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_select, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_select.__UNIQUE_ID_ddebug308, ptr noundef %dev5, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 257, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %do.body10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_select.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_select, %if.then22)) #9
          to label %cleanup [label %if.then22], !srcloc !137

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_select.__UNIQUE_ID_ddebug309, ptr noundef %dev23, ptr noundef nonnull @.str.8, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body10, %do.end.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rtl2830_get_dvb_frontend(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_get_dvb_frontend.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_get_dvb_frontend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_get_dvb_frontend.__UNIQUE_ID_ddebug310, ptr noundef %dev4, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr inbounds %struct.rtl2830_dev, ptr %1, i32 0, i32 4
  ret ptr %fe
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rtl2830_get_i2c_adapter(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_get_i2c_adapter.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_get_i2c_adapter, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_get_i2c_adapter.__UNIQUE_ID_ddebug311, ptr noundef %dev4, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %muxc = getelementptr inbounds %struct.rtl2830_dev, ptr %1, i32 0, i32 3
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
define internal i32 @rtl2830_pid_filter(ptr nocapture noundef readonly %fe, i8 noundef zeroext %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_pid_filter.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_pid_filter, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv = zext i8 %index to i32
  %conv5 = zext i16 %pid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_pid_filter.__UNIQUE_ID_ddebug306, ptr noundef %dev4, ptr noundef nonnull @.str.33, i32 noundef %conv, i32 noundef %conv5, i32 noundef %onoff) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %pid)
  %cmp = icmp ugt i16 %pid, 8191
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %conv8 = zext i8 %index to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %index)
  %cmp9 = icmp ugt i8 %index, 32
  br i1 %cmp9, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool13.not = icmp eq i32 %onoff, 0
  %filters17 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 6
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef %conv8, ptr noundef %filters17) #9
  br label %if.end18

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef %conv8, ptr noundef %filters17) #9
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %filters19 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %filters19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %filters19, align 4
  %conv20 = trunc i32 %8 to i8
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv20, ptr %buf, align 1
  %shr22 = lshr i32 %8, 8
  %conv24 = trunc i32 %shr22 to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv24, ptr %4, align 1
  %shr27 = lshr i32 %8, 16
  %conv29 = trunc i32 %shr27 to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv29, ptr %5, align 1
  %shr32 = lshr i32 %8, 24
  %conv34 = trunc i32 %shr32 to i8
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv34, ptr %6, align 1
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock_ops.i.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  tail call void %20(ptr noundef %16, i32 noundef 2) #9
  %regmap.i = getelementptr inbounds %struct.rtl2830_dev, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 8
  %call1.i = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 98, ptr noundef nonnull %buf, i32 noundef 4) #9
  %23 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %lock_ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock_ops.i5.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %unlock_bus.i.i, align 4
  call void %28(ptr noundef %24, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool37.not = icmp eq i32 %call1.i, 0
  br i1 %tobool37.not, label %if.end39, label %if.end18.do.body56_crit_edge

if.end18.do.body56_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

if.end39:                                         ; preds = %if.end18
  %29 = lshr i16 %pid, 8
  %conv43 = trunc i16 %29 to i8
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv43, ptr %buf, align 1
  %conv48 = trunc i16 %pid to i8
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv48, ptr %4, align 1
  %mul = shl nuw nsw i32 %conv8, 1
  %add = add nuw nsw i32 %mul, 102
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i, align 4
  %34 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i101 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %lock_ops.i.i101 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock_ops.i.i101, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  call void %39(ptr noundef %35, i32 noundef 2) #9
  %regmap.i102 = getelementptr inbounds %struct.rtl2830_dev, ptr %33, i32 0, i32 2
  %40 = ptrtoint ptr %regmap.i102 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i102, align 8
  %call1.i103 = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef %add, ptr noundef nonnull %buf, i32 noundef 2) #9
  %42 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i104 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %lock_ops.i5.i104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lock_ops.i5.i104, align 8
  %unlock_bus.i.i105 = getelementptr inbounds %struct.i2c_lock_operations, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %unlock_bus.i.i105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %unlock_bus.i.i105, align 4
  call void %47(ptr noundef %43, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i103)
  %tobool53.not = icmp eq i32 %call1.i103, 0
  br i1 %tobool53.not, label %if.end39.cleanup_crit_edge, label %if.end39.do.body56_crit_edge

if.end39.do.body56_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body56:                                        ; preds = %if.end39.do.body56_crit_edge, %if.end18.do.body56_crit_edge
  %ret.0 = phi i32 [ %call1.i, %if.end18.do.body56_crit_edge ], [ %call1.i103, %if.end39.do.body56_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_pid_filter.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_pid_filter, %if.then68)) #9
          to label %cleanup [label %if.then68], !srcloc !137

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %dev69 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_pid_filter.__UNIQUE_ID_ddebug307, ptr noundef %dev69, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body56, %if.end39.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ %ret.0, %if.then68 ], [ %ret.0, %do.body56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_pid_filter_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_pid_filter_ctrl.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_pid_filter_ctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_pid_filter_ctrl.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %onoff) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool3.not = icmp eq i32 %onoff, 0
  %. = select i1 %tobool3.not, i32 0, i32 128
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void %9(ptr noundef %5, i32 noundef 2) #9
  %regmap.i = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 97, i32 noundef 128, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %lock_ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock_ops.i5.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %17(ptr noundef %13, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not, label %do.end.cleanup_crit_edge, label %do.body10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_pid_filter_ctrl.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_pid_filter_ctrl, %if.then22)) #9
          to label %cleanup [label %if.then22], !srcloc !137

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_pid_filter_ctrl.__UNIQUE_ID_ddebug305, ptr noundef %dev23, ptr noundef nonnull @.str.8, i32 noundef %call.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body10, %do.end.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %tab = alloca [36 x %struct.rtl2830_reg_val_mask], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %tab) #9
  %4 = getelementptr inbounds i8, ptr %tab, i32 74
  %5 = call ptr @memset(ptr %4, i32 255, i32 70)
  %6 = ptrtoint ptr %tab to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 13, ptr %tab, align 2
  %val = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 0, i32 1
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %val, align 2
  %mask = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 0, i32 2
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %mask, align 1
  %arrayinit.element = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 13, ptr %arrayinit.element, align 2
  %val3 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 1, i32 1
  %10 = ptrtoint ptr %val3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 16, ptr %val3, align 2
  %mask4 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 1, i32 2
  %11 = ptrtoint ptr %mask4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %mask4, align 1
  %arrayinit.element5 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 2
  %12 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 260, ptr %arrayinit.element5, align 2
  %val7 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 2, i32 1
  %13 = ptrtoint ptr %val7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %val7, align 2
  %mask8 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 2, i32 2
  %14 = ptrtoint ptr %mask8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 30, ptr %mask8, align 1
  %arrayinit.element9 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 3
  %15 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 261, ptr %arrayinit.element9, align 2
  %val11 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 3, i32 1
  %16 = ptrtoint ptr %val11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -128, ptr %val11, align 2
  %mask12 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 3, i32 2
  %17 = ptrtoint ptr %mask12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %mask12, align 1
  %arrayinit.element13 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 4
  %18 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 272, ptr %arrayinit.element13, align 2
  %val15 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 4, i32 1
  %19 = ptrtoint ptr %val15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %val15, align 2
  %mask16 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 4, i32 2
  %20 = ptrtoint ptr %mask16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %mask16, align 1
  %arrayinit.element17 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 5
  %21 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 272, ptr %arrayinit.element17, align 2
  %val19 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 5, i32 1
  %22 = ptrtoint ptr %val19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %val19, align 2
  %mask20 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 5, i32 2
  %23 = ptrtoint ptr %mask20 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 12, ptr %mask20, align 1
  %arrayinit.element21 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 6
  %24 = ptrtoint ptr %arrayinit.element21 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 379, ptr %arrayinit.element21, align 2
  %val23 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 6, i32 1
  %25 = ptrtoint ptr %val23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %val23, align 2
  %mask24 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 6, i32 2
  %26 = ptrtoint ptr %mask24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 64, ptr %mask24, align 1
  %arrayinit.element25 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 7
  %27 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 381, ptr %arrayinit.element25, align 2
  %val27 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 7, i32 1
  %28 = ptrtoint ptr %val27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 5, ptr %val27, align 2
  %mask28 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 7, i32 2
  %29 = ptrtoint ptr %mask28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 15, ptr %mask28, align 1
  %arrayinit.element29 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 8
  %30 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 381, ptr %arrayinit.element29, align 2
  %val31 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 8, i32 1
  %31 = ptrtoint ptr %val31 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 80, ptr %val31, align 2
  %mask32 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 8, i32 2
  %32 = ptrtoint ptr %mask32 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -16, ptr %mask32, align 1
  %arrayinit.element33 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 9
  %33 = ptrtoint ptr %arrayinit.element33 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 396, ptr %arrayinit.element33, align 2
  %val35 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 9, i32 1
  %34 = ptrtoint ptr %val35 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %val35, align 2
  %mask36 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 9, i32 2
  %35 = ptrtoint ptr %mask36 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 15, ptr %mask36, align 1
  %arrayinit.element37 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 10
  %36 = ptrtoint ptr %arrayinit.element37 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 397, ptr %arrayinit.element37, align 2
  %val39 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 10, i32 1
  %37 = ptrtoint ptr %val39 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %val39, align 2
  %mask40 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 10, i32 2
  %38 = ptrtoint ptr %mask40 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -64, ptr %mask40, align 1
  %arrayinit.element41 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 11
  %39 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 392, ptr %arrayinit.element41, align 2
  %val43 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 11, i32 1
  %40 = ptrtoint ptr %val43 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 5, ptr %val43, align 2
  %mask44 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 11, i32 2
  %41 = ptrtoint ptr %mask44 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 15, ptr %mask44, align 1
  %arrayinit.element45 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 12
  %42 = ptrtoint ptr %arrayinit.element45 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 393, ptr %arrayinit.element45, align 2
  %val47 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 12, i32 1
  %43 = ptrtoint ptr %val47 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %val47, align 2
  %mask48 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 12, i32 2
  %44 = ptrtoint ptr %mask48 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -4, ptr %mask48, align 1
  %arrayinit.element49 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 13
  %45 = ptrtoint ptr %arrayinit.element49 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 725, ptr %arrayinit.element49, align 2
  %val51 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 13, i32 1
  %46 = ptrtoint ptr %val51 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 2, ptr %val51, align 2
  %mask52 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 13, i32 2
  %47 = ptrtoint ptr %mask52 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %mask52, align 1
  %arrayinit.element53 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 14
  %48 = ptrtoint ptr %arrayinit.element53 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 753, ptr %arrayinit.element53, align 2
  %val55 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 14, i32 1
  %49 = ptrtoint ptr %val55 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %val55, align 2
  %mask56 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 14, i32 2
  %50 = ptrtoint ptr %mask56 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 6, ptr %mask56, align 1
  %arrayinit.element57 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 15
  %51 = ptrtoint ptr %arrayinit.element57 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 753, ptr %arrayinit.element57, align 2
  %val59 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 15, i32 1
  %52 = ptrtoint ptr %val59 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 32, ptr %val59, align 2
  %mask60 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 15, i32 2
  %53 = ptrtoint ptr %mask60 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -8, ptr %mask60, align 1
  %arrayinit.element61 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 16
  %54 = ptrtoint ptr %arrayinit.element61 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 365, ptr %arrayinit.element61, align 2
  %val63 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 16, i32 1
  %55 = ptrtoint ptr %val63 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %val63, align 2
  %mask64 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 16, i32 2
  %56 = ptrtoint ptr %mask64 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %mask64, align 1
  %arrayinit.element65 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 17
  %57 = ptrtoint ptr %arrayinit.element65 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 422, ptr %arrayinit.element65, align 2
  %val67 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 17, i32 1
  %58 = ptrtoint ptr %val67 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %val67, align 2
  %mask68 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 17, i32 2
  %59 = ptrtoint ptr %mask68 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -128, ptr %mask68, align 1
  %arrayinit.element69 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 18
  %60 = ptrtoint ptr %arrayinit.element69 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 262, ptr %arrayinit.element69, align 2
  %val71 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 18, i32 1
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 8
  %vtop = getelementptr inbounds %struct.rtl2830_platform_data, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %vtop to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %vtop, align 1
  %65 = ptrtoint ptr %val71 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %val71, align 2
  %mask72 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 18, i32 2
  %66 = ptrtoint ptr %mask72 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 63, ptr %mask72, align 1
  %arrayinit.element73 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 19
  %67 = ptrtoint ptr %arrayinit.element73 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 263, ptr %arrayinit.element73, align 2
  %val75 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 19, i32 1
  %68 = load ptr, ptr %3, align 8
  %krf = getelementptr inbounds %struct.rtl2830_platform_data, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %krf to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %krf, align 2
  %71 = ptrtoint ptr %val75 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %val75, align 2
  %mask77 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 19, i32 2
  %72 = ptrtoint ptr %mask77 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 63, ptr %mask77, align 1
  %arrayinit.element78 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 20
  %73 = ptrtoint ptr %arrayinit.element78 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 274, ptr %arrayinit.element78, align 2
  %val80 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 20, i32 1
  %74 = ptrtoint ptr %val80 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 40, ptr %val80, align 2
  %mask81 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 20, i32 2
  %75 = ptrtoint ptr %mask81 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %mask81, align 1
  %arrayinit.element82 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 21
  %76 = ptrtoint ptr %arrayinit.element82 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 259, ptr %arrayinit.element82, align 2
  %val84 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 21, i32 1
  %77 = load ptr, ptr %3, align 8
  %agc_targ_val = getelementptr inbounds %struct.rtl2830_platform_data, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %agc_targ_val to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %agc_targ_val, align 1
  %80 = ptrtoint ptr %val84 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %val84, align 2
  %mask86 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 21, i32 2
  %81 = ptrtoint ptr %mask86 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %mask86, align 1
  %arrayinit.element87 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 22
  %82 = ptrtoint ptr %arrayinit.element87 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 10, ptr %arrayinit.element87, align 2
  %val89 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 22, i32 1
  %83 = ptrtoint ptr %val89 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 2, ptr %val89, align 2
  %mask90 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 22, i32 2
  %84 = ptrtoint ptr %mask90 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 7, ptr %mask90, align 1
  %arrayinit.element91 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 23
  %85 = ptrtoint ptr %arrayinit.element91 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 320, ptr %arrayinit.element91, align 2
  %val93 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 23, i32 1
  %86 = ptrtoint ptr %val93 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 12, ptr %val93, align 2
  %mask94 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 23, i32 2
  %87 = ptrtoint ptr %mask94 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 60, ptr %mask94, align 1
  %arrayinit.element95 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 24
  %88 = ptrtoint ptr %arrayinit.element95 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 320, ptr %arrayinit.element95, align 2
  %val97 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 24, i32 1
  %89 = ptrtoint ptr %val97 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 64, ptr %val97, align 2
  %mask98 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 24, i32 2
  %90 = ptrtoint ptr %mask98 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -64, ptr %mask98, align 1
  %arrayinit.element99 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 25
  %91 = ptrtoint ptr %arrayinit.element99 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 347, ptr %arrayinit.element99, align 2
  %val101 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 25, i32 1
  %92 = ptrtoint ptr %val101 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 5, ptr %val101, align 2
  %mask102 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 25, i32 2
  %93 = ptrtoint ptr %mask102 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 7, ptr %mask102, align 1
  %arrayinit.element103 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 26
  %94 = ptrtoint ptr %arrayinit.element103 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 347, ptr %arrayinit.element103, align 2
  %val105 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 26, i32 1
  %95 = ptrtoint ptr %val105 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 40, ptr %val105, align 2
  %mask106 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 26, i32 2
  %96 = ptrtoint ptr %mask106 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 56, ptr %mask106, align 1
  %arrayinit.element107 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 27
  %97 = ptrtoint ptr %arrayinit.element107 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 348, ptr %arrayinit.element107, align 2
  %val109 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 27, i32 1
  %98 = ptrtoint ptr %val109 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 5, ptr %val109, align 2
  %mask110 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 27, i32 2
  %99 = ptrtoint ptr %mask110 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 7, ptr %mask110, align 1
  %arrayinit.element111 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 28
  %100 = ptrtoint ptr %arrayinit.element111 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 348, ptr %arrayinit.element111, align 2
  %val113 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 28, i32 1
  %101 = ptrtoint ptr %val113 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 40, ptr %val113, align 2
  %mask114 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 28, i32 2
  %102 = ptrtoint ptr %mask114 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 56, ptr %mask114, align 1
  %arrayinit.element115 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 29
  %103 = ptrtoint ptr %arrayinit.element115 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 277, ptr %arrayinit.element115, align 2
  %val117 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 29, i32 1
  %104 = load ptr, ptr %3, align 8
  %spec_inv = getelementptr inbounds %struct.rtl2830_platform_data, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %spec_inv to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %spec_inv, align 4, !range !138
  %107 = ptrtoint ptr %val117 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %val117, align 2
  %mask119 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 29, i32 2
  %108 = ptrtoint ptr %mask119 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %mask119, align 1
  %arrayinit.element120 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 30
  %109 = ptrtoint ptr %arrayinit.element120 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 367, ptr %arrayinit.element120, align 2
  %val122 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 30, i32 1
  %110 = ptrtoint ptr %val122 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %val122, align 2
  %mask123 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 30, i32 2
  %111 = ptrtoint ptr %mask123 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 7, ptr %mask123, align 1
  %arrayinit.element124 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 31
  %112 = ptrtoint ptr %arrayinit.element124 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 368, ptr %arrayinit.element124, align 2
  %val126 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 31, i32 1
  %113 = ptrtoint ptr %val126 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 24, ptr %val126, align 2
  %mask127 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 31, i32 2
  %114 = ptrtoint ptr %mask127 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 56, ptr %mask127, align 1
  %arrayinit.element128 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 32
  %115 = ptrtoint ptr %arrayinit.element128 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 370, ptr %arrayinit.element128, align 2
  %val130 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 32, i32 1
  %116 = ptrtoint ptr %val130 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 15, ptr %val130, align 2
  %mask131 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 32, i32 2
  %117 = ptrtoint ptr %mask131 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 15, ptr %mask131, align 1
  %arrayinit.element132 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 33
  %118 = ptrtoint ptr %arrayinit.element132 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 371, ptr %arrayinit.element132, align 2
  %val134 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 33, i32 1
  %119 = ptrtoint ptr %val134 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 8, ptr %val134, align 2
  %mask135 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 33, i32 2
  %120 = ptrtoint ptr %mask135 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 56, ptr %mask135, align 1
  %arrayinit.element136 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 34
  %121 = ptrtoint ptr %arrayinit.element136 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 373, ptr %arrayinit.element136, align 2
  %val138 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 34, i32 1
  %122 = ptrtoint ptr %val138 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %val138, align 2
  %mask139 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 34, i32 2
  %123 = ptrtoint ptr %mask139 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 7, ptr %mask139, align 1
  %arrayinit.element140 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 35
  %124 = ptrtoint ptr %arrayinit.element140 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 374, ptr %arrayinit.element140, align 2
  %val142 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 35, i32 1
  %125 = ptrtoint ptr %val142 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %val142, align 2
  %mask143 = getelementptr inbounds %struct.rtl2830_reg_val_mask, ptr %tab, i32 35, i32 2
  %126 = ptrtoint ptr %mask143 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -64, ptr %mask143, align 1
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0257, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0257 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [36 x %struct.rtl2830_reg_val_mask], ptr %tab, i32 0, i32 %i.0257
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx, align 2
  %conv146 = zext i16 %128 to i32
  %mask148 = getelementptr [36 x %struct.rtl2830_reg_val_mask], ptr %tab, i32 0, i32 %i.0257, i32 2
  %129 = ptrtoint ptr %mask148 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %mask148, align 1
  %conv149 = zext i8 %130 to i32
  %val151 = getelementptr [36 x %struct.rtl2830_reg_val_mask], ptr %tab, i32 0, i32 %i.0257, i32 1
  %131 = ptrtoint ptr %val151 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %val151, align 2
  %conv152 = zext i8 %132 to i32
  %133 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %driver_data.i.i, align 4
  %135 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %lock_ops.i.i, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  tail call void %140(ptr noundef %136, i32 noundef 2) #9
  %regmap.i = getelementptr inbounds %struct.rtl2830_dev, ptr %134, i32 0, i32 2
  %141 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %142, i32 noundef %conv146, i32 noundef %conv149, i32 noundef %conv152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %143 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i = getelementptr inbounds %struct.i2c_adapter, ptr %144, i32 0, i32 4
  %145 = ptrtoint ptr %lock_ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %lock_ops.i5.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %148(ptr noundef %144, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool154.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool154.not, label %for.cond, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %for.cond
  %149 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %driver_data.i.i, align 4
  %151 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i231 = getelementptr inbounds %struct.i2c_adapter, ptr %152, i32 0, i32 4
  %153 = ptrtoint ptr %lock_ops.i.i231 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %lock_ops.i.i231, align 8
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  tail call void %156(ptr noundef %152, i32 noundef 2) #9
  %regmap.i232 = getelementptr inbounds %struct.rtl2830_dev, ptr %150, i32 0, i32 2
  %157 = ptrtoint ptr %regmap.i232 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regmap.i232, align 8
  %call1.i = tail call i32 @regmap_bulk_write(ptr noundef %158, i32 noundef 399, ptr noundef nonnull @.str.16, i32 noundef 2) #9
  %159 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i233 = getelementptr inbounds %struct.i2c_adapter, ptr %160, i32 0, i32 4
  %161 = ptrtoint ptr %lock_ops.i5.i233 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %lock_ops.i5.i233, align 8
  %unlock_bus.i.i234 = getelementptr inbounds %struct.i2c_lock_operations, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %unlock_bus.i.i234 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %unlock_bus.i.i234, align 4
  tail call void %164(ptr noundef %160, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool156.not = icmp eq i32 %call1.i, 0
  br i1 %tobool156.not, label %if.end158, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end158:                                        ; preds = %for.end
  %165 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %driver_data.i.i, align 4
  %167 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i237 = getelementptr inbounds %struct.i2c_adapter, ptr %168, i32 0, i32 4
  %169 = ptrtoint ptr %lock_ops.i.i237 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %lock_ops.i.i237, align 8
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  tail call void %172(ptr noundef %168, i32 noundef 2) #9
  %regmap.i238 = getelementptr inbounds %struct.rtl2830_dev, ptr %166, i32 0, i32 2
  %173 = ptrtoint ptr %regmap.i238 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regmap.i238, align 8
  %call1.i239 = tail call i32 @regmap_bulk_write(ptr noundef %174, i32 noundef 405, ptr noundef nonnull @.str.17, i32 noundef 8) #9
  %175 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i240 = getelementptr inbounds %struct.i2c_adapter, ptr %176, i32 0, i32 4
  %177 = ptrtoint ptr %lock_ops.i5.i240 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %lock_ops.i5.i240, align 8
  %unlock_bus.i.i241 = getelementptr inbounds %struct.i2c_lock_operations, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %unlock_bus.i.i241 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %unlock_bus.i.i241, align 4
  tail call void %180(ptr noundef %176, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i239)
  %tobool160.not = icmp eq i32 %call1.i239, 0
  br i1 %tobool160.not, label %if.end162, label %if.end158.do.body_crit_edge

if.end158.do.body_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end162:                                        ; preds = %if.end158
  %181 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %driver_data.i.i, align 4
  %183 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i244 = getelementptr inbounds %struct.i2c_adapter, ptr %184, i32 0, i32 4
  %185 = ptrtoint ptr %lock_ops.i.i244 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %lock_ops.i.i244, align 8
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %186, align 4
  tail call void %188(ptr noundef %184, i32 noundef 2) #9
  %regmap.i245 = getelementptr inbounds %struct.rtl2830_dev, ptr %182, i32 0, i32 2
  %189 = ptrtoint ptr %regmap.i245 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regmap.i245, align 8
  %call.i.i246 = tail call i32 @regmap_update_bits_base(ptr noundef %190, i32 noundef 257, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %191 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i247 = getelementptr inbounds %struct.i2c_adapter, ptr %192, i32 0, i32 4
  %193 = ptrtoint ptr %lock_ops.i5.i247 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %lock_ops.i5.i247, align 8
  %unlock_bus.i.i248 = getelementptr inbounds %struct.i2c_lock_operations, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %unlock_bus.i.i248 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %unlock_bus.i.i248, align 4
  tail call void %196(ptr noundef %192, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i246)
  %tobool164.not = icmp eq i32 %call.i.i246, 0
  br i1 %tobool164.not, label %if.end166, label %if.end162.do.body_crit_edge

if.end162.do.body_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end166:                                        ; preds = %if.end162
  %197 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %driver_data.i.i, align 4
  %199 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i251 = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 4
  %201 = ptrtoint ptr %lock_ops.i.i251 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %lock_ops.i.i251, align 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 4
  tail call void %204(ptr noundef %200, i32 noundef 2) #9
  %regmap.i252 = getelementptr inbounds %struct.rtl2830_dev, ptr %198, i32 0, i32 2
  %205 = ptrtoint ptr %regmap.i252 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regmap.i252, align 8
  %call.i.i253 = tail call i32 @regmap_update_bits_base(ptr noundef %206, i32 noundef 257, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %207 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i254 = getelementptr inbounds %struct.i2c_adapter, ptr %208, i32 0, i32 4
  %209 = ptrtoint ptr %lock_ops.i5.i254 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %lock_ops.i5.i254, align 8
  %unlock_bus.i.i255 = getelementptr inbounds %struct.i2c_lock_operations, ptr %210, i32 0, i32 2
  %211 = ptrtoint ptr %unlock_bus.i.i255 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %unlock_bus.i.i255, align 4
  tail call void %212(ptr noundef %208, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i253)
  %tobool168.not = icmp eq i32 %call.i.i253, 0
  br i1 %tobool168.not, label %if.end170, label %if.end166.do.body_crit_edge

if.end166.do.body_crit_edge:                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end170:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #11
  %strength = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 42
  %213 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 1, ptr %strength, align 4
  %stat = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 42, i32 1
  %214 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %stat, align 1
  %cnr = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 43
  %215 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 1, ptr %cnr, align 1
  %stat175 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 43, i32 1
  %216 = ptrtoint ptr %stat175 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %stat175, align 1
  %post_bit_error = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 46
  %217 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 1, ptr %post_bit_error, align 4
  %stat180 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 46, i32 1
  %218 = ptrtoint ptr %stat180 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %stat180, align 1
  %post_bit_count = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 47
  %219 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 1, ptr %post_bit_count, align 1
  %stat185 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 47, i32 1
  %220 = ptrtoint ptr %stat185 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %stat185, align 1
  %sleeping = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 5
  %221 = ptrtoint ptr %sleeping to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %sleeping, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end166.do.body_crit_edge, %if.end162.do.body_crit_edge, %if.end158.do.body_crit_edge, %for.end.do.body_crit_edge, %for.body.do.body_crit_edge
  %ret.0 = phi i32 [ %call1.i, %for.end.do.body_crit_edge ], [ %call1.i239, %if.end158.do.body_crit_edge ], [ %call.i.i246, %if.end162.do.body_crit_edge ], [ %call.i.i253, %if.end166.do.body_crit_edge ], [ %call.i.i, %for.body.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_init.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_init, %if.then192)) #9
          to label %cleanup [label %if.then192], !srcloc !137

if.then192:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev193 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_init.__UNIQUE_ID_ddebug290, ptr noundef %dev193, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then192, %do.body, %if.end170
  %retval.0 = phi i32 [ 0, %if.end170 ], [ %ret.0, %if.then192 ], [ %ret.0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %tab) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl2830_sleep(ptr nocapture noundef readonly %fe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sleeping = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %sleeping to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %sleeping, align 8
  %fe_status = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fe_status, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  %u8tmp = alloca i8, align 1
  %if_frequency = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !136
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !136
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #9
  %9 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %u8tmp, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_frequency) #9
  %10 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %if_frequency, align 4, !annotation !136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_set_frontend.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_set_frontend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %13 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bandwidth_hz, align 4
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %15 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %inversion, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_set_frontend.__UNIQUE_ID_ddebug291, ptr noundef %dev4, ptr noundef nonnull @.str.20, i32 noundef %12, i32 noundef %14, i32 noundef %16) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %17 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_params, align 4
  %tobool5.not = icmp eq ptr %18, null
  br i1 %tobool5.not, label %do.end.if.end11_crit_edge, label %if.then6

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 %18(ptr noundef %fe) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %do.end.if.end11_crit_edge
  %bandwidth_hz12 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %19 = ptrtoint ptr %bandwidth_hz12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth_hz12, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %do.end17 [
    i32 6000000, label %if.end11.sw.epilog_crit_edge
    i32 7000000, label %sw.bb13
    i32 8000000, label %sw.bb14
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.21, i32 noundef %20) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb13, %if.end11.sw.epilog_crit_edge
  %i.0 = phi i32 [ 2, %sw.bb14 ], [ 1, %sw.bb13 ], [ 0, %if.end11.sw.epilog_crit_edge ]
  %shl = shl nuw nsw i32 %i.0, 1
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock_ops.i.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  tail call void %29(ptr noundef %25, i32 noundef 2) #9
  %regmap.i = getelementptr inbounds %struct.rtl2830_dev, ptr %23, i32 0, i32 2
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 8, i32 noundef 6, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %32 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %lock_ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lock_ops.i5.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %37(ptr noundef %33, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool21.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool21.not, label %if.end23, label %sw.epilog.do.body98_crit_edge

sw.epilog.do.body98_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.end23:                                         ; preds = %sw.epilog
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %38 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %get_if_frequency, align 4
  %tobool26.not = icmp eq ptr %39, null
  br i1 %tobool26.not, label %if.end23.do.body98_crit_edge, label %if.end32

if.end23.do.body98_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.end32:                                         ; preds = %if.end23
  %call31 = call i32 %39(ptr noundef %fe, ptr noundef nonnull %if_frequency) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool33.not = icmp eq i32 %call31, 0
  br i1 %tobool33.not, label %if.end35, label %if.end32.do.body98_crit_edge

if.end32.do.body98_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.end35:                                         ; preds = %if.end32
  %40 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %if_frequency, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %rem = urem i32 %41, %45
  %conv = zext i32 %rem to i64
  %mul = shl nuw nsw i64 %conv, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %rem)
  %cmp164.i.i = icmp ult i32 %rem, 1024
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !139

if.then168.i.i:                                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %45
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %46 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %mul) #14, !srcloc !140
  %asmresult1.i.i.i = extractvalue { i64, i64 } %46, 1
  %extract.t191 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t191, %if.else174.i.i ]
  %47 = sub i32 0, %dividend.addr.0.i.i.off0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_set_frontend.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_set_frontend, %if.then52)) #9
          to label %do.end56 [label %if.then52], !srcloc !137

if.then52:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv39 = and i32 %47, 4194303
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %if_frequency, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_set_frontend.__UNIQUE_ID_ddebug292, ptr noundef %dev53, ptr noundef nonnull @.str.23, i32 noundef %49, i32 noundef %conv39) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %div_u64.exit
  %shr = lshr i32 %47, 16
  %50 = trunc i32 %shr to i8
  %conv58 = and i8 %50, 63
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv58, ptr %buf, align 1
  %shr59 = lshr i32 %47, 8
  %conv61 = trunc i32 %shr59 to i8
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv61, ptr %5, align 1
  %conv65 = trunc i32 %47 to i8
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv65, ptr %7, align 1
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  %56 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i174 = getelementptr inbounds %struct.i2c_adapter, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %lock_ops.i.i174 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lock_ops.i.i174, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  call void %61(ptr noundef %57, i32 noundef 2) #9
  %regmap.i175 = getelementptr inbounds %struct.rtl2830_dev, ptr %55, i32 0, i32 2
  %62 = ptrtoint ptr %regmap.i175 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i175, align 8
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %63, i32 noundef 281, ptr noundef nonnull %u8tmp, i32 noundef 1) #9
  %64 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i176 = getelementptr inbounds %struct.i2c_adapter, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %lock_ops.i5.i176 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lock_ops.i5.i176, align 8
  %unlock_bus.i.i177 = getelementptr inbounds %struct.i2c_lock_operations, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %unlock_bus.i.i177 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %unlock_bus.i.i177, align 4
  call void %69(ptr noundef %65, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool68.not = icmp eq i32 %call1.i, 0
  br i1 %tobool68.not, label %if.end70, label %do.end56.do.body98_crit_edge

do.end56.do.body98_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.end70:                                         ; preds = %do.end56
  %70 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %u8tmp, align 1
  %72 = and i8 %71, -64
  %73 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %buf, align 1
  %or165 = or i8 %74, %72
  store i8 %or165, ptr %buf, align 1
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_data.i.i, align 4
  %77 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i180 = getelementptr inbounds %struct.i2c_adapter, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %lock_ops.i.i180 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lock_ops.i.i180, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  call void %82(ptr noundef %78, i32 noundef 2) #9
  %regmap.i181 = getelementptr inbounds %struct.rtl2830_dev, ptr %76, i32 0, i32 2
  %83 = ptrtoint ptr %regmap.i181 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i181, align 8
  %call1.i182 = call i32 @regmap_bulk_write(ptr noundef %84, i32 noundef 281, ptr noundef nonnull %buf, i32 noundef 3) #9
  %85 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i183 = getelementptr inbounds %struct.i2c_adapter, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %lock_ops.i5.i183 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lock_ops.i5.i183, align 8
  %unlock_bus.i.i184 = getelementptr inbounds %struct.i2c_lock_operations, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %unlock_bus.i.i184 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %unlock_bus.i.i184, align 4
  call void %90(ptr noundef %86, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i182)
  %tobool77.not = icmp eq i32 %call1.i182, 0
  br i1 %tobool77.not, label %if.end79, label %if.end70.do.body98_crit_edge

if.end70.do.body98_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.end79:                                         ; preds = %if.end70
  %arrayidx80 = getelementptr [3 x [34 x i8]], ptr @rtl2830_set_frontend.bw_params1, i32 0, i32 %i.0
  %call82 = call fastcc i32 @rtl2830_bulk_write(ptr noundef %1, i32 noundef 284, ptr noundef %arrayidx80, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end79.do.body98_crit_edge

if.end79.do.body98_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.end85:                                         ; preds = %if.end79
  %arrayidx87 = getelementptr [3 x [34 x i8]], ptr @rtl2830_set_frontend.bw_params1, i32 0, i32 %i.0, i32 17
  %call88 = call fastcc i32 @rtl2830_bulk_write(ptr noundef %1, i32 noundef 301, ptr noundef %arrayidx87, i32 noundef 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end85.do.body98_crit_edge

if.end85.do.body98_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.end91:                                         ; preds = %if.end85
  %arrayidx92 = getelementptr [3 x [6 x i8]], ptr @rtl2830_set_frontend.bw_params2, i32 0, i32 %i.0
  %call94 = call fastcc i32 @rtl2830_bulk_write(ptr noundef %1, i32 noundef 413, ptr noundef %arrayidx92, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end91.cleanup_crit_edge, label %if.end91.do.body98_crit_edge

if.end91.do.body98_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body98

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body98:                                        ; preds = %if.end91.do.body98_crit_edge, %if.end85.do.body98_crit_edge, %if.end79.do.body98_crit_edge, %if.end70.do.body98_crit_edge, %do.end56.do.body98_crit_edge, %if.end32.do.body98_crit_edge, %if.end23.do.body98_crit_edge, %sw.epilog.do.body98_crit_edge
  %ret.1 = phi i32 [ %call.i.i, %sw.epilog.do.body98_crit_edge ], [ %call31, %if.end32.do.body98_crit_edge ], [ %call1.i, %do.end56.do.body98_crit_edge ], [ %call1.i182, %if.end70.do.body98_crit_edge ], [ %call82, %if.end79.do.body98_crit_edge ], [ %call88, %if.end85.do.body98_crit_edge ], [ %call94, %if.end91.do.body98_crit_edge ], [ -22, %if.end23.do.body98_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_set_frontend.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_set_frontend, %if.then110)) #9
          to label %cleanup [label %if.then110], !srcloc !137

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  %dev111 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_set_frontend.__UNIQUE_ID_ddebug293, ptr noundef %dev111, ptr noundef nonnull @.str.8, i32 noundef %ret.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %do.body98, %if.end91.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ -22, %do.end17 ], [ 0, %if.end91.cleanup_crit_edge ], [ %ret.1, %if.then110 ], [ %ret.1, %do.body98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_frequency) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl2830_get_tune_settings(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %s) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 500, ptr %s, align 4
  %frequency_stepsize_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 3
  %1 = ptrtoint ptr %frequency_stepsize_hz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frequency_stepsize_hz, align 4
  %mul = shl i32 %2, 1
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %step_size, align 4
  %4 = load i32, ptr %frequency_stepsize_hz, align 4
  %mul4 = shl i32 %4, 1
  %add = or i32 %mul4, 1
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 2
  %5 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_get_frontend(ptr nocapture noundef readonly %fe, ptr noundef writeonly %c) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !136
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !136
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !136
  %sleeping = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %sleeping to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sleeping, align 8, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock_ops.i.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  tail call void %16(ptr noundef %12, i32 noundef 2) #9
  %regmap.i = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 8
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef 828, ptr noundef nonnull %buf, i32 noundef 2) #9
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %lock_ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lock_ops.i5.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unlock_bus.i.i, align 4
  call void %24(ptr noundef %20, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.body82_crit_edge

if.end.do.body82_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

if.end4:                                          ; preds = %if.end
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i137 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %lock_ops.i.i137 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lock_ops.i.i137, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  call void %32(ptr noundef %28, i32 noundef 2) #9
  %regmap.i138 = getelementptr inbounds %struct.rtl2830_dev, ptr %26, i32 0, i32 2
  %33 = ptrtoint ptr %regmap.i138 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i138, align 8
  %call1.i139 = call i32 @regmap_bulk_read(ptr noundef %34, i32 noundef 849, ptr noundef %7, i32 noundef 1) #9
  %35 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i140 = getelementptr inbounds %struct.i2c_adapter, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %lock_ops.i5.i140 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock_ops.i5.i140, align 8
  %unlock_bus.i.i141 = getelementptr inbounds %struct.i2c_lock_operations, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %unlock_bus.i.i141 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %unlock_bus.i.i141, align 4
  call void %40(ptr noundef %36, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i139)
  %tobool6.not = icmp eq i32 %call1.i139, 0
  br i1 %tobool6.not, label %do.body, label %if.end4.do.body82_crit_edge

if.end4.do.body82_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body82

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_get_frontend.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_get_frontend, %if.then13)) #9
          to label %do.end [label %if.then13], !srcloc !137

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_get_frontend.__UNIQUE_ID_ddebug294, ptr noundef %dev14, ptr noundef nonnull @.str.25, i32 noundef 3, ptr noundef nonnull %buf) #9
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buf, align 1
  %43 = lshr i8 %42, 2
  %44 = and i8 %43, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %44)
  %.not = icmp eq i8 %44, 3
  br i1 %.not, label %do.end.sw.epilog_crit_edge, label %switch.lookup

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %and = zext i8 %44 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.rtl2830_get_frontend, i32 0, i32 %and
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  %modulation21 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %46 = ptrtoint ptr %modulation21 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %switch.load, ptr %modulation21, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.end.sw.epilog_crit_edge
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %7, align 1
  %49 = lshr i8 %48, 2
  %.lobit = and i8 %49, 1
  %50 = zext i8 %.lobit to i32
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %51, align 4
  %53 = and i8 %48, 3
  %and33 = zext i8 %53 to i32
  %guard_interval40 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %54 = ptrtoint ptr %guard_interval40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and33, ptr %guard_interval40, align 4
  %55 = lshr i8 %42, 4
  %56 = and i8 %55, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %56)
  %switch = icmp ult i8 %56, 4
  br i1 %switch, label %sw.epilog53.sink.split, label %sw.epilog.sw.epilog53_crit_edge

sw.epilog.sw.epilog53_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog53

sw.epilog53.sink.split:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %and45 = zext i8 %56 to i32
  %hierarchy52 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %57 = ptrtoint ptr %hierarchy52 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and45, ptr %hierarchy52, align 4
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.epilog53.sink.split, %sw.epilog.sw.epilog53_crit_edge
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %5, align 1
  %60 = lshr i8 %59, 3
  %61 = and i8 %60, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %61)
  %62 = icmp ult i8 %61, 5
  br i1 %62, label %switch.lookup148, label %sw.epilog53.sw.epilog67_crit_edge

sw.epilog53.sw.epilog67_crit_edge:                ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog67

switch.lookup148:                                 ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #11
  %and57 = zext i8 %61 to i32
  %switch.gep149 = getelementptr inbounds [5 x i32], ptr @switch.table.rtl2830_get_frontend.37, i32 0, i32 %and57
  %63 = ptrtoint ptr %switch.gep149 to i32
  call void @__asan_load4_noabort(i32 %63)
  %switch.load150 = load i32, ptr %switch.gep149, align 4
  %code_rate_HP66 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %64 = ptrtoint ptr %code_rate_HP66 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %switch.load150, ptr %code_rate_HP66, align 4
  br label %sw.epilog67

sw.epilog67:                                      ; preds = %switch.lookup148, %sw.epilog53.sw.epilog67_crit_edge
  %65 = and i8 %59, 7
  %and71 = zext i8 %65 to i32
  %66 = zext i32 %and71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and71, label %sw.epilog67.cleanup_crit_edge [
    i32 0, label %sw.bb72
    i32 1, label %sw.bb73
    i32 2, label %sw.bb75
    i32 3, label %sw.bb77
    i32 4, label %sw.bb79
  ]

sw.epilog67.cleanup_crit_edge:                    ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb72:                                          ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %67 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %code_rate_LP, align 4
  br label %cleanup

sw.bb73:                                          ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP74 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %68 = ptrtoint ptr %code_rate_LP74 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %code_rate_LP74, align 4
  br label %cleanup

sw.bb75:                                          ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP76 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %69 = ptrtoint ptr %code_rate_LP76 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3, ptr %code_rate_LP76, align 4
  br label %cleanup

sw.bb77:                                          ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP78 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %70 = ptrtoint ptr %code_rate_LP78 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 5, ptr %code_rate_LP78, align 4
  br label %cleanup

sw.bb79:                                          ; preds = %sw.epilog67
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP80 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %71 = ptrtoint ptr %code_rate_LP80 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 7, ptr %code_rate_LP80, align 4
  br label %cleanup

do.body82:                                        ; preds = %if.end4.do.body82_crit_edge, %if.end.do.body82_crit_edge
  %ret.0 = phi i32 [ %call1.i, %if.end.do.body82_crit_edge ], [ %call1.i139, %if.end4.do.body82_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_get_frontend.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_get_frontend, %if.then94)) #9
          to label %cleanup [label %if.then94], !srcloc !137

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %dev95 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_get_frontend.__UNIQUE_ID_ddebug295, ptr noundef %dev95, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %do.body82, %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb72, %sw.epilog67.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog67.cleanup_crit_edge ], [ 0, %sw.bb79 ], [ 0, %sw.bb77 ], [ 0, %sw.bb75 ], [ 0, %sw.bb73 ], [ 0, %sw.bb72 ], [ %ret.0, %if.then94 ], [ %ret.0, %do.body82 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %u8tmp = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %u8tmp) #9
  %4 = ptrtoint ptr %u8tmp to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %u8tmp, align 1, !annotation !136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #9
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !136
  %6 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !136
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %status, align 4
  %sleeping = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %sleeping to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sleeping, align 8, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup210_crit_edge

entry.cleanup210_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup210

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock_ops.i.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  tail call void %18(ptr noundef %14, i32 noundef 2) #9
  %regmap.i = getelementptr inbounds %struct.rtl2830_dev, ptr %12, i32 0, i32 2
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 8
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef 849, ptr noundef nonnull %u8tmp, i32 noundef 1) #9
  %21 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %lock_ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock_ops.i5.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unlock_bus.i.i, align 4
  call void %26(ptr noundef %22, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.do.body193_crit_edge

if.end.do.body193_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body193

if.end5:                                          ; preds = %if.end
  %27 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %u8tmp, align 1
  %29 = lshr i8 %28, 3
  %30 = and i8 %29, 15
  store i8 %30, ptr %u8tmp, align 1
  %trunc = trunc i8 %29 to i4
  %31 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.39)
  switch i4 %trunc, label %if.end5.if.end16_crit_edge [
    i4 -5, label %if.end5.if.end16.sink.split_crit_edge
    i4 -6, label %if.then13
  ]

if.end5.if.end16.sink.split_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.sink.split

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.then13, %if.end5.if.end16.sink.split_crit_edge
  %.sink309 = phi i32 [ 7, %if.then13 ], [ 31, %if.end5.if.end16.sink.split_crit_edge ]
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %or14 = or i32 %33, %.sink309
  store i32 %or14, ptr %status, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.end5.if.end16_crit_edge
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  %fe_status = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 7
  %36 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %fe_status, align 8
  %and18 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else53, label %if.then20

if.then20:                                        ; preds = %if.end16
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i, align 4
  %39 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i283 = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %lock_ops.i.i283 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lock_ops.i.i283, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  call void %44(ptr noundef %40, i32 noundef 2) #9
  %regmap.i284 = getelementptr inbounds %struct.rtl2830_dev, ptr %38, i32 0, i32 2
  %45 = ptrtoint ptr %regmap.i284 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i284, align 8
  %call1.i285 = call i32 @regmap_bulk_read(ptr noundef %46, i32 noundef 857, ptr noundef nonnull %buf, i32 noundef 2) #9
  %47 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i286 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %lock_ops.i5.i286 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lock_ops.i5.i286, align 8
  %unlock_bus.i.i287 = getelementptr inbounds %struct.i2c_lock_operations, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %unlock_bus.i.i287 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %unlock_bus.i.i287, align 4
  call void %52(ptr noundef %48, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i285)
  %tobool22.not = icmp eq i32 %call1.i285, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.do.body193_crit_edge

if.then20.do.body193_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body193

if.end24:                                         ; preds = %if.then20
  %53 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %buf, align 1
  %conv25 = zext i8 %54 to i32
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %6, align 1
  %conv27 = zext i8 %56 to i32
  %57 = shl i32 %conv25, 26
  %58 = shl nuw nsw i32 %conv27, 18
  %shl.i = or i32 %58, %57
  %shr.i = ashr exact i32 %shl.i, 18
  %mul = mul nsw i32 %shr.i, -4
  %add = add nsw i32 %mul, 32767
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_read_status.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_read_status, %if.then45)) #9
          to label %do.end [label %if.then45], !srcloc !137

if.then45:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_read_status.__UNIQUE_ID_ddebug300, ptr noundef %dev46, ptr noundef nonnull @.str.27, i32 noundef %shr.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then45, %if.end24
  %stat = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 42, i32 1
  %59 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %stat, align 1
  %conv49 = zext i32 %add to i64
  %60 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 42, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 8)
  store i64 %conv49, ptr %60, align 1
  br label %if.end58

if.else53:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %stat55 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 42, i32 1
  %62 = ptrtoint ptr %stat55 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %stat55, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.else53, %do.end
  %63 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fe_status, align 8
  %and60 = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.else125, label %if.then62

if.then62:                                        ; preds = %if.end58
  %65 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i, align 4
  %67 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i290 = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %lock_ops.i.i290 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lock_ops.i.i290, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  call void %72(ptr noundef %68, i32 noundef 2) #9
  %regmap.i291 = getelementptr inbounds %struct.rtl2830_dev, ptr %66, i32 0, i32 2
  %73 = ptrtoint ptr %regmap.i291 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i291, align 8
  %call1.i292 = call i32 @regmap_bulk_read(ptr noundef %74, i32 noundef 828, ptr noundef nonnull %u8tmp, i32 noundef 1) #9
  %75 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i293 = getelementptr inbounds %struct.i2c_adapter, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %lock_ops.i5.i293 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lock_ops.i5.i293, align 8
  %unlock_bus.i.i294 = getelementptr inbounds %struct.i2c_lock_operations, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %unlock_bus.i.i294 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %unlock_bus.i.i294, align 4
  call void %80(ptr noundef %76, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i292)
  %tobool64.not = icmp eq i32 %call1.i292, 0
  br i1 %tobool64.not, label %if.end66, label %if.then62.do.body193_crit_edge

if.then62.do.body193_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body193

if.end66:                                         ; preds = %if.then62
  %81 = ptrtoint ptr %u8tmp to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %u8tmp, align 1
  %conv67 = zext i8 %82 to i32
  %83 = lshr i32 %conv67, 2
  %and69 = and i32 %83, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and69)
  %cmp70 = icmp eq i32 %and69, 3
  br i1 %cmp70, label %if.end66.do.body193_crit_edge, label %if.end73

if.end66.do.body193_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body193

if.end73:                                         ; preds = %if.end66
  %84 = lshr i32 %conv67, 4
  %and76 = and i32 %84, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and76)
  %cmp77 = icmp ugt i32 %and76, 3
  br i1 %cmp77, label %if.end73.do.body193_crit_edge, label %if.end80

if.end73.do.body193_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body193

if.end80:                                         ; preds = %if.end73
  %call82 = call fastcc i32 @rtl2830_bulk_read(ptr noundef %1, i32 noundef 1036, ptr noundef nonnull %buf, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end80.do.body193_crit_edge

if.end80.do.body193_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body193

if.end85:                                         ; preds = %if.end80
  %85 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %buf, align 1
  %conv87 = zext i8 %86 to i32
  %shl88 = shl nuw nsw i32 %conv87, 8
  %87 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %6, align 1
  %conv90 = zext i8 %88 to i32
  %or92 = or i32 %shl88, %conv90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or92)
  %tobool93.not = icmp eq i32 %or92, 0
  br i1 %tobool93.not, label %if.end85.do.body100_crit_edge, label %if.then94

if.end85.do.body100_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body100

if.then94:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx96 = getelementptr [3 x [4 x i32]], ptr @rtl2830_read_status.constant, i32 0, i32 %and69, i32 %and76
  %89 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx96, align 4
  %call97 = call i32 @intlog10(i32 noundef %or92) #9
  %sub = sub i32 %90, %call97
  %div = udiv i32 %sub, 1677
  br label %do.body100

do.body100:                                       ; preds = %if.then94, %if.end85.do.body100_crit_edge
  %stmp.0 = phi i32 [ %div, %if.then94 ], [ 0, %if.end85.do.body100_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_read_status.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_read_status, %if.then112)) #9
          to label %cleanup [label %if.then112], !srcloc !137

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #11
  %dev113 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_read_status.__UNIQUE_ID_ddebug301, ptr noundef %dev113, ptr noundef nonnull @.str.28, i32 noundef %or92) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then112, %do.body100
  %stat117 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 43, i32 1
  %91 = ptrtoint ptr %stat117 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %stat117, align 1
  %92 = zext i32 %stmp.0 to i64
  %93 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 43, i32 1, i32 0, i32 1
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 8)
  store i64 %92, ptr %93, align 1
  br label %if.end130

if.else125:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %stat127 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 43, i32 1
  %95 = ptrtoint ptr %stat127 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %stat127, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.else125, %cleanup
  %96 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %fe_status, align 8
  %and132 = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.else183, label %if.then134

if.then134:                                       ; preds = %if.end130
  %98 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %driver_data.i.i, align 4
  %100 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i.i297 = getelementptr inbounds %struct.i2c_adapter, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %lock_ops.i.i297 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lock_ops.i.i297, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  call void %105(ptr noundef %101, i32 noundef 2) #9
  %regmap.i298 = getelementptr inbounds %struct.rtl2830_dev, ptr %99, i32 0, i32 2
  %106 = ptrtoint ptr %regmap.i298 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap.i298, align 8
  %call1.i299 = call i32 @regmap_bulk_read(ptr noundef %107, i32 noundef 846, ptr noundef nonnull %buf, i32 noundef 2) #9
  %108 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %adapter.i, align 8
  %lock_ops.i5.i300 = getelementptr inbounds %struct.i2c_adapter, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %lock_ops.i5.i300 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lock_ops.i5.i300, align 8
  %unlock_bus.i.i301 = getelementptr inbounds %struct.i2c_lock_operations, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %unlock_bus.i.i301 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %unlock_bus.i.i301, align 4
  call void %113(ptr noundef %109, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i299)
  %tobool137.not = icmp eq i32 %call1.i299, 0
  br i1 %tobool137.not, label %if.end139, label %if.then134.do.body193_crit_edge

if.then134.do.body193_crit_edge:                  ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body193

if.end139:                                        ; preds = %if.then134
  %114 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %buf, align 1
  %conv141 = zext i8 %115 to i32
  %shl142 = shl nuw nsw i32 %conv141, 8
  %116 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %6, align 1
  %conv144 = zext i8 %117 to i32
  %or146 = or i32 %shl142, %conv144
  %conv147 = zext i32 %or146 to i64
  %post_bit_error = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 9
  %118 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %post_bit_error, align 8
  %add148 = add i64 %119, %conv147
  store i64 %add148, ptr %post_bit_error, align 8
  %post_bit_count = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 10
  %120 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %post_bit_count, align 8
  %add149 = add i64 %121, 1000000
  store i64 %add149, ptr %post_bit_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_read_status.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_read_status, %if.then162)) #9
          to label %do.end166 [label %if.then162], !srcloc !137

if.then162:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  %dev163 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_read_status.__UNIQUE_ID_ddebug302, ptr noundef %dev163, ptr noundef nonnull @.str.29, i32 noundef %or146) #9
  br label %do.end166

do.end166:                                        ; preds = %if.then162, %if.end139
  %stat168 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 46, i32 1
  %122 = ptrtoint ptr %stat168 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 3, ptr %stat168, align 1
  %123 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %post_bit_error, align 8
  %125 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 46, i32 1, i32 0, i32 1
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 8)
  store i64 %124, ptr %125, align 1
  %stat176 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 47, i32 1
  %127 = ptrtoint ptr %stat176 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 3, ptr %stat176, align 1
  %128 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %post_bit_count, align 8
  %130 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 47, i32 1, i32 0, i32 1
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 8)
  store i64 %129, ptr %130, align 1
  br label %cleanup210

if.else183:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  %stat185 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 46, i32 1
  %132 = ptrtoint ptr %stat185 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %stat185, align 1
  %stat189 = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 4, i32 8, i32 47, i32 1
  %133 = ptrtoint ptr %stat189 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %stat189, align 1
  br label %cleanup210

do.body193:                                       ; preds = %if.then134.do.body193_crit_edge, %if.end80.do.body193_crit_edge, %if.end73.do.body193_crit_edge, %if.end66.do.body193_crit_edge, %if.then62.do.body193_crit_edge, %if.then20.do.body193_crit_edge, %if.end.do.body193_crit_edge
  %ret.4 = phi i32 [ %call1.i, %if.end.do.body193_crit_edge ], [ %call1.i285, %if.then20.do.body193_crit_edge ], [ %call1.i299, %if.then134.do.body193_crit_edge ], [ %call82, %if.end80.do.body193_crit_edge ], [ 0, %if.end73.do.body193_crit_edge ], [ 0, %if.end66.do.body193_crit_edge ], [ %call1.i292, %if.then62.do.body193_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl2830_read_status.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl2830_read_status, %if.then205)) #9
          to label %cleanup210 [label %if.then205], !srcloc !137

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #11
  %dev206 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl2830_read_status.__UNIQUE_ID_ddebug303, ptr noundef %dev206, ptr noundef nonnull @.str.8, i32 noundef %ret.4) #9
  br label %cleanup210

cleanup210:                                       ; preds = %if.then205, %do.body193, %if.else183, %do.end166, %entry.cleanup210_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup210_crit_edge ], [ 0, %do.end166 ], [ 0, %if.else183 ], [ %ret.4, %if.then205 ], [ %ret.4, %do.body193 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %u8tmp) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl2830_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %post_bit_error = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %post_bit_error, align 8
  %post_bit_error_prev = getelementptr inbounds %struct.rtl2830_dev, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %post_bit_error_prev to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %post_bit_error_prev, align 8
  %sub = sub i64 %5, %7
  %conv = trunc i64 %sub to i32
  %8 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv, ptr %ber, align 4
  %9 = load i64, ptr %post_bit_error, align 8
  store i64 %9, ptr %post_bit_error_prev, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtl2830_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %2, align 1
  %conv6 = trunc i64 %4 to i16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i16 [ %conv6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %storemerge, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl2830_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #9
  %5 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %remainder.i, align 4, !annotation !136
  %call.i = call i64 @div_s64_rem(i64 noundef %4, i32 noundef 100, ptr noundef nonnull %remainder.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #9
  %conv5 = trunc i64 %call.i to i16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i16 [ %conv5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %storemerge, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @rtl2830_read_ucblocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ucblocks) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtl2830_bulk_write(ptr nocapture noundef readonly %client, i32 noundef %reg, ptr noundef %val, i32 noundef %val_count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock_ops.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %3, i32 noundef 2) #9
  %regmap = getelementptr inbounds %struct.rtl2830_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call1 = tail call i32 @regmap_bulk_write(ptr noundef %9, i32 noundef %reg, ptr noundef %val, i32 noundef %val_count) #9
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %lock_ops.i5 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %lock_ops.i5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock_ops.i5, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unlock_bus.i, align 4
  tail call void %15(ptr noundef %11, i32 noundef 2) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !30, !31, !32, !33, !34, !36, !37, !39, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !57, !59, !61, !63, !65, !66, !68, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !84, !86, !87, !88, !90, !92, !93, !94, !96, !98, !99, !101, !102, !104, !106, !107, !109, !110, !112, !113, !114, !116, !118, !119, !120, !122, !124, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_rtl2830__315_897_rtl2830_driver_init6, !1, !"__initcall__kmod_rtl2830__315_897_rtl2830_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 897, i32 1}
!2 = !{ptr @__exitcall_rtl2830_driver_exit, !1, !"__exitcall_rtl2830_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author316, !4, !"__UNIQUE_ID_author316", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 899, i32 1}
!5 = !{ptr @__UNIQUE_ID_description317, !6, !"__UNIQUE_ID_description317", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 900, i32 1}
!7 = !{ptr @__UNIQUE_ID_file318, !8, !"__UNIQUE_ID_file318", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 901, i32 1}
!9 = !{ptr @__UNIQUE_ID_license319, !8, !"__UNIQUE_ID_license319", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 889, i32 13}
!12 = !{ptr @rtl2830_driver, !13, !"rtl2830_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 887, i32 26}
!14 = !{ptr @rtl2830_probe.regmap_bus, !15, !"regmap_bus", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 778, i32 33}
!16 = !{ptr @rtl2830_probe.regmap_range_cfg, !17, !"regmap_range_cfg", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 784, i32 39}
!18 = !{ptr @rtl2830_probe.regmap_config, !19, !"regmap_config", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 795, i32 36}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 803, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtl2830_probe.__UNIQUE_ID_ddebug312, !21, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!25 = !{ptr @rtl2830_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 822, i32 16}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 856, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rtl2830_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @rtl2830_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 864, i32 2}
!36 = !{ptr @rtl2830_probe.__UNIQUE_ID_ddebug313, !35, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 734, i32 3}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rtl2830_regmap_write._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @rtl2830_regmap_write._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 763, i32 3}
!45 = !{ptr @rtl2830_regmap_gather_write._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rtl2830_regmap_gather_write._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 711, i32 3}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rtl2830_regmap_read._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rtl2830_regmap_read._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 654, i32 2}
!54 = !{ptr @rtl2830_select.__UNIQUE_ID_ddebug308, !53, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!55 = !{ptr @rtl2830_select.__UNIQUE_ID_ddebug309, !56, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 664, i32 2}
!57 = !{ptr @rtl2830_ops, !58, !"rtl2830_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 541, i32 38}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 99, i32 42}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 104, i32 6}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 133, i32 2}
!65 = !{ptr @rtl2830_init.__UNIQUE_ID_ddebug290, !64, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!66 = !{ptr @rtl2830_set_frontend.bw_params1, !67, !"bw_params1", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 167, i32 18}
!68 = !{ptr @rtl2830_set_frontend.bw_params2, !69, !"bw_params2", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 185, i32 18}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 191, i32 2}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rtl2830_set_frontend.__UNIQUE_ID_ddebug291, !71, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 209, i32 3}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @rtl2830_set_frontend._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @rtl2830_set_frontend._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 231, i32 2}
!81 = !{ptr @rtl2830_set_frontend.__UNIQUE_ID_ddebug292, !80, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!82 = !{ptr @rtl2830_set_frontend.__UNIQUE_ID_ddebug293, !83, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 264, i32 2}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 287, i32 2}
!86 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rtl2830_get_frontend.__UNIQUE_ID_ddebug294, !85, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!88 = !{ptr @rtl2830_get_frontend.__UNIQUE_ID_ddebug295, !89, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 377, i32 2}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 421, i32 3}
!92 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @rtl2830_read_status.__UNIQUE_ID_ddebug300, !91, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!94 = !{ptr @rtl2830_read_status.constant, !95, !"constant", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 434, i32 20}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 463, i32 3}
!98 = !{ptr @rtl2830_read_status.__UNIQUE_ID_ddebug301, !97, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 481, i32 3}
!101 = !{ptr @rtl2830_read_status.__UNIQUE_ID_ddebug302, !100, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!102 = !{ptr @rtl2830_read_status.__UNIQUE_ID_ddebug303, !103, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 495, i32 2}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 672, i32 2}
!106 = !{ptr @rtl2830_get_dvb_frontend.__UNIQUE_ID_ddebug310, !105, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!107 = !{ptr @.str.31, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 681, i32 2}
!109 = !{ptr @rtl2830_get_i2c_adapter.__UNIQUE_ID_ddebug311, !108, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!110 = !{ptr @.str.32, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 608, i32 2}
!112 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @rtl2830_pid_filter.__UNIQUE_ID_ddebug306, !111, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!114 = !{ptr @rtl2830_pid_filter.__UNIQUE_ID_ddebug307, !115, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 638, i32 2}
!116 = !{ptr @.str.34, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 583, i32 2}
!118 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @rtl2830_pid_filter_ctrl.__UNIQUE_ID_ddebug304, !117, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!120 = !{ptr @rtl2830_pid_filter_ctrl.__UNIQUE_ID_ddebug305, !121, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 597, i32 2}
!122 = !{ptr @.str.36, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 872, i32 2}
!124 = !{ptr @rtl2830_remove.__UNIQUE_ID_ddebug314, !123, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!125 = !{ptr @rtl2830_id_table, !126, !"rtl2830_id_table", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/rtl2830.c", i32 881, i32 35}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"auto-init"}
!137 = !{i64 2148283611, i64 2148283616, i64 2148283629, i64 2148283673, i64 2148283707, i64 2148283728}
!138 = !{i8 0, i8 2}
!139 = !{!"branch_weights", i32 2000, i32 1}
!140 = !{i64 2148308798, i64 2148309078, i64 2148309412, i64 2148309746}
