; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/af9033.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/af9033.c"
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
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.atomic_t = type { i32 }
%struct.clock_adc = type { i32, i32 }
%struct.reg_val = type { i32, i8 }
%struct.coeff = type { i32, i32, [36 x i8] }
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
%struct.af9033_dev = type { ptr, ptr, %struct.dvb_frontend, %struct.af9033_config, i8, i8, i32, i8, i8, i32, i64, i64, i64, i64, i64 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.af9033_config = type { i32, i8, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.af9033_ops = type { ptr, ptr }
%struct.reg_val_mask = type { i32, i8, i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__initcall__kmod_af9033__334_1194_af9033_driver_init6 = internal global ptr @af9033_driver_init, section ".initcall6.init", align 4
@af9033_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @af9033_probe, ptr @af9033_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @af9033_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_af9033_driver_exit = internal global ptr @af9033_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [45 x i8] c"af9033.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [59 x i8] c"af9033.description=Afatech AF9033 DVB-T demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [47 x i8] c"af9033.file=drivers/media/dvb-frontends/af9033\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [19 x i8] c"af9033.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"af9033\00", [25 x i8] zeroinitializer }, align 32
@af9033_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"af9033\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@af9033_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 24, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@af9033_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1092, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Unsupported clock %u Hz. Only 12000000 Hz is supported currently\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"af9033_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/af9033.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@af9033_probe._entry_ptr = internal global ptr @af9033_probe._entry, section ".printk_index", align 4
@af9033_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"af9033:1097:(&regmap_config)->lock\00", [61 x i8] zeroinitializer }, align 32
@af9033_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1130, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"firmware version: LINK %d.%d.%d.%d - OFDM %d.%d.%d.%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@af9033_probe._entry_ptr.10 = internal global ptr @af9033_probe._entry.7, section ".printk_index", align 4
@af9033_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Afatech AF9033 (DVB-T)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 250000, i32 0, i32 0, i32 0, i32 0, i32 -1071960402 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr null, ptr null, ptr @af9033_init, ptr @af9033_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @af9033_set_frontend, ptr @af9033_get_tune_settings, ptr @af9033_get_frontend, ptr @af9033_read_status, ptr @af9033_read_ber, ptr @af9033_read_signal_strength, ptr @af9033_read_snr, ptr @af9033_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @af9033_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@af9033_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1154, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Afatech AF9033 successfully attached\0A\00", [58 x i8] zeroinitializer }, align 32
@af9033_probe._entry_ptr.13 = internal global ptr @af9033_probe._entry.11, section ".printk_index", align 4
@af9033_probe.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 1, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@af9033_init.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"af9033_init\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@af9033_init.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk=%u clk_cw=%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@clock_adc_lut = internal constant { [11 x %struct.clock_adc], [40 x i8] } { [11 x %struct.clock_adc] [%struct.clock_adc { i32 16384000, i32 20480000 }, %struct.clock_adc { i32 20480000, i32 20480000 }, %struct.clock_adc { i32 36000000, i32 20250000 }, %struct.clock_adc { i32 30000000, i32 20156250 }, %struct.clock_adc { i32 26000000, i32 20583333 }, %struct.clock_adc { i32 28000000, i32 20416667 }, %struct.clock_adc { i32 32000000, i32 20500000 }, %struct.clock_adc { i32 34000000, i32 20187500 }, %struct.clock_adc { i32 24000000, i32 20500000 }, %struct.clock_adc { i32 22000000, i32 20625000 }, %struct.clock_adc { i32 12000000, i32 20250000 }], [40 x i8] zeroinitializer }, align 32
@af9033_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't find ADC config for clock %d\0A\00", [57 x i8] zeroinitializer }, align 32
@af9033_init._entry_ptr = internal global ptr @af9033_init._entry, section ".printk_index", align 4
@af9033_init.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.19, i8 0, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adc=%u adc_cw=%06x\0A\00", [44 x i8] zeroinitializer }, align 32
@af9033_init.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.20, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"load ofsm settings\0A\00", [44 x i8] zeroinitializer }, align 32
@ofsm_init_it9135_v1 = internal constant { [108 x %struct.reg_val], [192 x i8] } { [108 x %struct.reg_val] [%struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450070, i8 16 }, %struct.reg_val { i32 8450071, i8 4 }, %struct.reg_val { i32 8450072, i8 5 }, %struct.reg_val { i32 8450073, i8 4 }, %struct.reg_val { i32 8450074, i8 5 }, %struct.reg_val { i32 8450081, i8 3 }, %struct.reg_val { i32 8450082, i8 10 }, %struct.reg_val { i32 8450083, i8 10 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450092, i8 1 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451551, i8 -5 }, %struct.reg_val { i32 8451552, i8 0 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451576, i8 1 }, %struct.reg_val { i32 8451581, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], [192 x i8] zeroinitializer }, align 32
@ofsm_init_it9135_v2 = internal constant { [95 x %struct.reg_val], [168 x i8] } { [95 x %struct.reg_val] [%struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], [168 x i8] zeroinitializer }, align 32
@ofsm_init = internal constant { [108 x %struct.reg_val], [192 x i8] } { [108 x %struct.reg_val] [%struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388804, i8 5 }, %struct.reg_val { i32 8388808, i8 25 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450070, i8 16 }, %struct.reg_val { i32 8450071, i8 4 }, %struct.reg_val { i32 8450072, i8 5 }, %struct.reg_val { i32 8450073, i8 4 }, %struct.reg_val { i32 8450074, i8 5 }, %struct.reg_val { i32 8450081, i8 3 }, %struct.reg_val { i32 8450082, i8 10 }, %struct.reg_val { i32 8450083, i8 10 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450092, i8 1 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451551, i8 -5 }, %struct.reg_val { i32 8451552, i8 0 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451576, i8 1 }, %struct.reg_val { i32 8451581, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], [192 x i8] zeroinitializer }, align 32
@af9033_init.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.21, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"load tuner specific settings\0A\00", [34 x i8] zeroinitializer }, align 32
@tuner_init_tua9001 = internal constant { [37 x %struct.reg_val], [88 x i8] } { [37 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 39 }, %struct.reg_val { i32 8388695, i8 0 }, %struct.reg_val { i32 8388696, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388717, i8 0 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388725, i8 3 }, %struct.reg_val { i32 8388726, i8 2 }, %struct.reg_val { i32 8388727, i8 0 }, %struct.reg_val { i32 8388728, i8 1 }, %struct.reg_val { i32 8388729, i8 0 }, %struct.reg_val { i32 8388730, i8 126 }, %struct.reg_val { i32 8388731, i8 62 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 1 }, %struct.reg_val { i32 8388757, i8 2 }, %struct.reg_val { i32 8388758, i8 1 }, %struct.reg_val { i32 8388760, i8 10 }, %struct.reg_val { i32 8388763, i8 5 }, %struct.reg_val { i32 8388764, i8 -128 }, %struct.reg_val { i32 8388787, i8 0 }, %struct.reg_val { i32 8388805, i8 1 }, %struct.reg_val { i32 8388806, i8 0 }, %struct.reg_val { i32 8388809, i8 93 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450079, i8 -126 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -126 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450119, i8 0 }, %struct.reg_val { i32 8450132, i8 0 }, %struct.reg_val { i32 8450133, i8 0 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450534, i8 0 }], [88 x i8] zeroinitializer }, align 32
@tuner_init_fc0011 = internal constant { [56 x %struct.reg_val], [96 x i8] } { [56 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 40 }, %struct.reg_val { i32 8388695, i8 0 }, %struct.reg_val { i32 8388696, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 -91 }, %struct.reg_val { i32 8388718, i8 1 }, %struct.reg_val { i32 8388721, i8 10 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388763, i8 45 }, %struct.reg_val { i32 8388764, i8 96 }, %struct.reg_val { i32 8388765, i8 35 }, %struct.reg_val { i32 8388772, i8 80 }, %struct.reg_val { i32 8388781, i8 80 }, %struct.reg_val { i32 8388787, i8 1 }, %struct.reg_val { i32 8388791, i8 -120 }, %struct.reg_val { i32 8388792, i8 -90 }, %struct.reg_val { i32 8388805, i8 1 }, %struct.reg_val { i32 8388806, i8 1 }, %struct.reg_val { i32 8388809, i8 105 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450058, i8 27 }, %struct.reg_val { i32 8450059, i8 27 }, %struct.reg_val { i32 8450060, i8 27 }, %struct.reg_val { i32 8450061, i8 27 }, %struct.reg_val { i32 8450062, i8 -1 }, %struct.reg_val { i32 8450063, i8 1 }, %struct.reg_val { i32 8450064, i8 0 }, %struct.reg_val { i32 8450065, i8 2 }, %struct.reg_val { i32 8450066, i8 -1 }, %struct.reg_val { i32 8450067, i8 1 }, %struct.reg_val { i32 8450068, i8 0 }, %struct.reg_val { i32 8450069, i8 2 }, %struct.reg_val { i32 8450075, i8 -17 }, %struct.reg_val { i32 8450076, i8 1 }, %struct.reg_val { i32 8450077, i8 15 }, %struct.reg_val { i32 8450078, i8 2 }, %struct.reg_val { i32 8450079, i8 110 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450085, i8 -34 }, %struct.reg_val { i32 8450086, i8 0 }, %struct.reg_val { i32 8450087, i8 10 }, %struct.reg_val { i32 8450088, i8 3 }, %struct.reg_val { i32 8450089, i8 110 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450119, i8 0 }, %struct.reg_val { i32 8450132, i8 0 }, %struct.reg_val { i32 8450133, i8 0 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450534, i8 0 }], [96 x i8] zeroinitializer }, align 32
@tuner_init_mxl5007t = internal constant { [30 x %struct.reg_val], [48 x i8] } { [30 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 27 }, %struct.reg_val { i32 8388695, i8 1 }, %struct.reg_val { i32 8388696, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 -106 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388787, i8 1 }, %struct.reg_val { i32 8388801, i8 1 }, %struct.reg_val { i32 8388802, i8 0 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450060, i8 25 }, %struct.reg_val { i32 8450061, i8 26 }, %struct.reg_val { i32 8450066, i8 -38 }, %struct.reg_val { i32 8450067, i8 0 }, %struct.reg_val { i32 8450068, i8 0 }, %struct.reg_val { i32 8450069, i8 2 }, %struct.reg_val { i32 8450079, i8 -126 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -126 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450167, i8 2 }, %struct.reg_val { i32 8450534, i8 0 }], [48 x i8] zeroinitializer }, align 32
@tuner_init_tda18218 = internal constant { [29 x %struct.reg_val], [56 x i8] } { [29 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 -95 }, %struct.reg_val { i32 8388695, i8 1 }, %struct.reg_val { i32 8388696, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388787, i8 1 }, %struct.reg_val { i32 8388803, i8 1 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450060, i8 25 }, %struct.reg_val { i32 8450061, i8 26 }, %struct.reg_val { i32 8450066, i8 -38 }, %struct.reg_val { i32 8450067, i8 0 }, %struct.reg_val { i32 8450068, i8 0 }, %struct.reg_val { i32 8450069, i8 2 }, %struct.reg_val { i32 8450079, i8 -126 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -126 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450167, i8 2 }, %struct.reg_val { i32 8450534, i8 0 }], [56 x i8] zeroinitializer }, align 32
@tuner_init_fc2580 = internal constant { [34 x %struct.reg_val], [80 x i8] } { [34 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 50 }, %struct.reg_val { i32 8388695, i8 1 }, %struct.reg_val { i32 8388696, i8 0 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 5 }, %struct.reg_val { i32 8388787, i8 1 }, %struct.reg_val { i32 8388805, i8 1 }, %struct.reg_val { i32 8388806, i8 0 }, %struct.reg_val { i32 8388817, i8 1 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450060, i8 25 }, %struct.reg_val { i32 8450061, i8 26 }, %struct.reg_val { i32 8450062, i8 0 }, %struct.reg_val { i32 8450063, i8 2 }, %struct.reg_val { i32 8450064, i8 0 }, %struct.reg_val { i32 8450065, i8 2 }, %struct.reg_val { i32 8450066, i8 0 }, %struct.reg_val { i32 8450067, i8 2 }, %struct.reg_val { i32 8450068, i8 0 }, %struct.reg_val { i32 8450069, i8 2 }, %struct.reg_val { i32 8450079, i8 -106 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -106 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450534, i8 1 }], [80 x i8] zeroinitializer }, align 32
@tuner_init_fc0012 = internal constant { [38 x %struct.reg_val], [80 x i8] } { [38 x %struct.reg_val] [%struct.reg_val { i32 8388678, i8 46 }, %struct.reg_val { i32 8388695, i8 0 }, %struct.reg_val { i32 8388696, i8 1 }, %struct.reg_val { i32 8388697, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388717, i8 0 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388724, i8 1 }, %struct.reg_val { i32 8388725, i8 3 }, %struct.reg_val { i32 8388726, i8 2 }, %struct.reg_val { i32 8388727, i8 1 }, %struct.reg_val { i32 8388728, i8 0 }, %struct.reg_val { i32 8388729, i8 0 }, %struct.reg_val { i32 8388730, i8 -112 }, %struct.reg_val { i32 8388731, i8 -112 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 1 }, %struct.reg_val { i32 8388757, i8 2 }, %struct.reg_val { i32 8388758, i8 1 }, %struct.reg_val { i32 8388760, i8 10 }, %struct.reg_val { i32 8388763, i8 5 }, %struct.reg_val { i32 8388764, i8 -128 }, %struct.reg_val { i32 8388787, i8 0 }, %struct.reg_val { i32 8388805, i8 1 }, %struct.reg_val { i32 8388806, i8 0 }, %struct.reg_val { i32 8388809, i8 93 }, %struct.reg_val { i32 8450055, i8 0 }, %struct.reg_val { i32 8450079, i8 -96 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -126 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450119, i8 0 }, %struct.reg_val { i32 8450132, i8 0 }, %struct.reg_val { i32 8450133, i8 0 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450534, i8 0 }], [80 x i8] zeroinitializer }, align 32
@tuner_init_it9135_38 = internal constant { [212 x %struct.reg_val], [416 x i8] } { [212 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 56 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 10 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -56 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388735, i8 0 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 18 }, %struct.reg_val { i32 8388739, i8 2 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 3 }, %struct.reg_val { i32 8388742, i8 -56 }, %struct.reg_val { i32 8388743, i8 -72 }, %struct.reg_val { i32 8388744, i8 -48 }, %struct.reg_val { i32 8388745, i8 -61 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 90 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 50 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388812, i8 46 }, %struct.reg_val { i32 8388813, i8 81 }, %struct.reg_val { i32 8388814, i8 51 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -116 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 2 }, %struct.reg_val { i32 8388861, i8 2 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 9 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 123 }, %struct.reg_val { i32 8388866, i8 119 }, %struct.reg_val { i32 8388867, i8 0 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -56 }, %struct.reg_val { i32 8388870, i8 5 }, %struct.reg_val { i32 8388871, i8 123 }, %struct.reg_val { i32 8388873, i8 2 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388887, i8 2 }, %struct.reg_val { i32 8388888, i8 -128 }, %struct.reg_val { i32 8388890, i8 -56 }, %struct.reg_val { i32 8388891, i8 123 }, %struct.reg_val { i32 8388892, i8 -118 }, %struct.reg_val { i32 8388893, i8 -96 }, %struct.reg_val { i32 8388898, i8 2 }, %struct.reg_val { i32 8388899, i8 24 }, %struct.reg_val { i32 8388900, i8 -61 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388904, i8 7 }, %struct.reg_val { i32 8388906, i8 83 }, %struct.reg_val { i32 8388907, i8 81 }, %struct.reg_val { i32 8388908, i8 78 }, %struct.reg_val { i32 8388909, i8 67 }, %struct.reg_val { i32 8388919, i8 1 }, %struct.reg_val { i32 8388920, i8 0 }, %struct.reg_val { i32 8388921, i8 7 }, %struct.reg_val { i32 8388922, i8 0 }, %struct.reg_val { i32 8388923, i8 6 }, %struct.reg_val { i32 8388925, i8 0 }, %struct.reg_val { i32 8388926, i8 1 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388928, i8 -56 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450070, i8 16 }, %struct.reg_val { i32 8450071, i8 4 }, %struct.reg_val { i32 8450072, i8 5 }, %struct.reg_val { i32 8450073, i8 4 }, %struct.reg_val { i32 8450074, i8 5 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450081, i8 3 }, %struct.reg_val { i32 8450082, i8 10 }, %struct.reg_val { i32 8450083, i8 10 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450092, i8 1 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450181, i8 0 }, %struct.reg_val { i32 8450182, i8 2 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451551, i8 -5 }, %struct.reg_val { i32 8451552, i8 0 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451576, i8 1 }, %struct.reg_val { i32 8451581, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], [416 x i8] zeroinitializer }, align 32
@tuner_init_it9135_51 = internal constant { [212 x %struct.reg_val], [416 x i8] } { [212 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 81 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 10 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 6 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -56 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388735, i8 0 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 18 }, %struct.reg_val { i32 8388739, i8 2 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 3 }, %struct.reg_val { i32 8388742, i8 -64 }, %struct.reg_val { i32 8388743, i8 -106 }, %struct.reg_val { i32 8388744, i8 -49 }, %struct.reg_val { i32 8388745, i8 -61 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 90 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 60 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388812, i8 46 }, %struct.reg_val { i32 8388813, i8 81 }, %struct.reg_val { i32 8388814, i8 51 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -116 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 3 }, %struct.reg_val { i32 8388861, i8 2 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 9 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 122 }, %struct.reg_val { i32 8388866, i8 119 }, %struct.reg_val { i32 8388867, i8 1 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -80 }, %struct.reg_val { i32 8388870, i8 2 }, %struct.reg_val { i32 8388871, i8 122 }, %struct.reg_val { i32 8388873, i8 2 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388887, i8 2 }, %struct.reg_val { i32 8388888, i8 -128 }, %struct.reg_val { i32 8388890, i8 -64 }, %struct.reg_val { i32 8388891, i8 122 }, %struct.reg_val { i32 8388892, i8 -84 }, %struct.reg_val { i32 8388893, i8 -116 }, %struct.reg_val { i32 8388898, i8 2 }, %struct.reg_val { i32 8388899, i8 112 }, %struct.reg_val { i32 8388900, i8 -92 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388904, i8 7 }, %struct.reg_val { i32 8388906, i8 83 }, %struct.reg_val { i32 8388907, i8 81 }, %struct.reg_val { i32 8388908, i8 78 }, %struct.reg_val { i32 8388909, i8 67 }, %struct.reg_val { i32 8388919, i8 1 }, %struct.reg_val { i32 8388920, i8 0 }, %struct.reg_val { i32 8388921, i8 7 }, %struct.reg_val { i32 8388922, i8 0 }, %struct.reg_val { i32 8388923, i8 6 }, %struct.reg_val { i32 8388925, i8 0 }, %struct.reg_val { i32 8388926, i8 1 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388928, i8 -64 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450070, i8 16 }, %struct.reg_val { i32 8450071, i8 4 }, %struct.reg_val { i32 8450072, i8 5 }, %struct.reg_val { i32 8450073, i8 4 }, %struct.reg_val { i32 8450074, i8 5 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450081, i8 3 }, %struct.reg_val { i32 8450082, i8 10 }, %struct.reg_val { i32 8450083, i8 10 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450092, i8 1 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450181, i8 -64 }, %struct.reg_val { i32 8450182, i8 1 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451551, i8 -5 }, %struct.reg_val { i32 8451552, i8 0 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451576, i8 1 }, %struct.reg_val { i32 8451581, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], [416 x i8] zeroinitializer }, align 32
@tuner_init_it9135_52 = internal constant { [212 x %struct.reg_val], [416 x i8] } { [212 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 82 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 16 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -96 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388735, i8 0 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 23 }, %struct.reg_val { i32 8388739, i8 3 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 3 }, %struct.reg_val { i32 8388742, i8 -77 }, %struct.reg_val { i32 8388743, i8 -105 }, %struct.reg_val { i32 8388744, i8 -64 }, %struct.reg_val { i32 8388745, i8 -98 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 92 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 60 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388812, i8 46 }, %struct.reg_val { i32 8388813, i8 81 }, %struct.reg_val { i32 8388814, i8 51 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -111 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 3 }, %struct.reg_val { i32 8388861, i8 2 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 9 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 116 }, %struct.reg_val { i32 8388866, i8 119 }, %struct.reg_val { i32 8388867, i8 2 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -92 }, %struct.reg_val { i32 8388870, i8 2 }, %struct.reg_val { i32 8388871, i8 110 }, %struct.reg_val { i32 8388873, i8 2 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388887, i8 2 }, %struct.reg_val { i32 8388888, i8 -128 }, %struct.reg_val { i32 8388890, i8 -51 }, %struct.reg_val { i32 8388891, i8 98 }, %struct.reg_val { i32 8388892, i8 -92 }, %struct.reg_val { i32 8388893, i8 -116 }, %struct.reg_val { i32 8388898, i8 3 }, %struct.reg_val { i32 8388899, i8 24 }, %struct.reg_val { i32 8388900, i8 -98 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388904, i8 7 }, %struct.reg_val { i32 8388906, i8 83 }, %struct.reg_val { i32 8388907, i8 81 }, %struct.reg_val { i32 8388908, i8 78 }, %struct.reg_val { i32 8388909, i8 67 }, %struct.reg_val { i32 8388919, i8 0 }, %struct.reg_val { i32 8388920, i8 0 }, %struct.reg_val { i32 8388921, i8 7 }, %struct.reg_val { i32 8388922, i8 0 }, %struct.reg_val { i32 8388923, i8 6 }, %struct.reg_val { i32 8388925, i8 0 }, %struct.reg_val { i32 8388926, i8 1 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388928, i8 -74 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450070, i8 16 }, %struct.reg_val { i32 8450071, i8 4 }, %struct.reg_val { i32 8450072, i8 5 }, %struct.reg_val { i32 8450073, i8 4 }, %struct.reg_val { i32 8450074, i8 5 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450081, i8 3 }, %struct.reg_val { i32 8450082, i8 10 }, %struct.reg_val { i32 8450083, i8 10 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450092, i8 1 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450181, i8 -64 }, %struct.reg_val { i32 8450182, i8 1 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451551, i8 -5 }, %struct.reg_val { i32 8451552, i8 0 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451576, i8 1 }, %struct.reg_val { i32 8451581, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], [416 x i8] zeroinitializer }, align 32
@tuner_init_it9135_60 = internal constant { [209 x %struct.reg_val], [440 x i8] } { [209 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 96 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 10 }, %struct.reg_val { i32 8388714, i8 3 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 10 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -116 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 24 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 51 }, %struct.reg_val { i32 8388742, i8 -66 }, %struct.reg_val { i32 8388743, i8 -96 }, %struct.reg_val { i32 8388744, i8 -58 }, %struct.reg_val { i32 8388745, i8 -74 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 90 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 58 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388803, i8 1 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388811, i8 50 }, %struct.reg_val { i32 8388812, i8 44 }, %struct.reg_val { i32 8388813, i8 79 }, %struct.reg_val { i32 8388814, i8 48 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -96 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 3 }, %struct.reg_val { i32 8388861, i8 3 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 10 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 123 }, %struct.reg_val { i32 8388866, i8 -116 }, %struct.reg_val { i32 8388867, i8 0 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -66 }, %struct.reg_val { i32 8388870, i8 0 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388890, i8 -66 }, %struct.reg_val { i32 8388900, i8 -82 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388906, i8 86 }, %struct.reg_val { i32 8388907, i8 80 }, %struct.reg_val { i32 8388908, i8 71 }, %struct.reg_val { i32 8388909, i8 66 }, %struct.reg_val { i32 8388919, i8 0 }, %struct.reg_val { i32 8388923, i8 8 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8388930, i8 -7 }, %struct.reg_val { i32 8388931, i8 25 }, %struct.reg_val { i32 8388932, i8 0 }, %struct.reg_val { i32 8388933, i8 -116 }, %struct.reg_val { i32 8388934, i8 -116 }, %struct.reg_val { i32 8388935, i8 -116 }, %struct.reg_val { i32 8388936, i8 110 }, %struct.reg_val { i32 8388937, i8 -116 }, %struct.reg_val { i32 8388938, i8 80 }, %struct.reg_val { i32 8388939, i8 -116 }, %struct.reg_val { i32 8388941, i8 -84 }, %struct.reg_val { i32 8388942, i8 -58 }, %struct.reg_val { i32 8388945, i8 30 }, %struct.reg_val { i32 8388947, i8 -68 }, %struct.reg_val { i32 8388984, i8 9 }, %struct.reg_val { i32 8388993, i8 -108 }, %struct.reg_val { i32 8388994, i8 110 }, %struct.reg_val { i32 8388997, i8 36 }, %struct.reg_val { i32 8389001, i8 -66 }, %struct.reg_val { i32 8389004, i8 3 }, %struct.reg_val { i32 8389005, i8 95 }, %struct.reg_val { i32 8389007, i8 -96 }, %struct.reg_val { i32 8389008, i8 90 }, %struct.reg_val { i32 8389009, i8 0 }, %struct.reg_val { i32 8449282, i8 64 }, %struct.reg_val { i32 8449602, i8 64 }, %struct.reg_val { i32 8449666, i8 64 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], [440 x i8] zeroinitializer }, align 32
@tuner_init_it9135_61 = internal constant { [209 x %struct.reg_val], [440 x i8] } { [209 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 97 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 6 }, %struct.reg_val { i32 8388714, i8 3 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -112 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 18 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 51 }, %struct.reg_val { i32 8388742, i8 -68 }, %struct.reg_val { i32 8388743, i8 -100 }, %struct.reg_val { i32 8388744, i8 -52 }, %struct.reg_val { i32 8388745, i8 -88 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 92 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 58 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388803, i8 1 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388811, i8 50 }, %struct.reg_val { i32 8388812, i8 44 }, %struct.reg_val { i32 8388813, i8 79 }, %struct.reg_val { i32 8388814, i8 48 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -96 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 3 }, %struct.reg_val { i32 8388861, i8 3 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 8 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 123 }, %struct.reg_val { i32 8388866, i8 -116 }, %struct.reg_val { i32 8388867, i8 1 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -56 }, %struct.reg_val { i32 8388870, i8 0 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388890, i8 -58 }, %struct.reg_val { i32 8388900, i8 -88 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388906, i8 89 }, %struct.reg_val { i32 8388907, i8 80 }, %struct.reg_val { i32 8388908, i8 71 }, %struct.reg_val { i32 8388909, i8 66 }, %struct.reg_val { i32 8388919, i8 0 }, %struct.reg_val { i32 8388923, i8 5 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8388930, i8 -7 }, %struct.reg_val { i32 8388931, i8 89 }, %struct.reg_val { i32 8388932, i8 1 }, %struct.reg_val { i32 8388933, i8 -116 }, %struct.reg_val { i32 8388934, i8 -116 }, %struct.reg_val { i32 8388935, i8 -116 }, %struct.reg_val { i32 8388936, i8 123 }, %struct.reg_val { i32 8388937, i8 -116 }, %struct.reg_val { i32 8388938, i8 80 }, %struct.reg_val { i32 8388939, i8 -116 }, %struct.reg_val { i32 8388941, i8 -88 }, %struct.reg_val { i32 8388942, i8 -58 }, %struct.reg_val { i32 8388945, i8 40 }, %struct.reg_val { i32 8388947, i8 -52 }, %struct.reg_val { i32 8388984, i8 9 }, %struct.reg_val { i32 8388993, i8 -100 }, %struct.reg_val { i32 8388994, i8 118 }, %struct.reg_val { i32 8388997, i8 40 }, %struct.reg_val { i32 8389001, i8 -86 }, %struct.reg_val { i32 8389004, i8 3 }, %struct.reg_val { i32 8389005, i8 95 }, %struct.reg_val { i32 8389007, i8 -5 }, %struct.reg_val { i32 8389008, i8 92 }, %struct.reg_val { i32 8389009, i8 0 }, %struct.reg_val { i32 8449282, i8 64 }, %struct.reg_val { i32 8449602, i8 64 }, %struct.reg_val { i32 8449666, i8 64 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], [440 x i8] zeroinitializer }, align 32
@tuner_init_it9135_62 = internal constant { [210 x %struct.reg_val], [432 x i8] } { [210 x %struct.reg_val] [%struct.reg_val { i32 8388675, i8 0 }, %struct.reg_val { i32 8388678, i8 98 }, %struct.reg_val { i32 8388689, i8 1 }, %struct.reg_val { i32 8388703, i8 0 }, %struct.reg_val { i32 8388704, i8 0 }, %struct.reg_val { i32 8388712, i8 10 }, %struct.reg_val { i32 8388714, i8 3 }, %struct.reg_val { i32 8388720, i8 10 }, %struct.reg_val { i32 8388721, i8 5 }, %struct.reg_val { i32 8388722, i8 2 }, %struct.reg_val { i32 8388725, i8 -116 }, %struct.reg_val { i32 8388726, i8 -116 }, %struct.reg_val { i32 8388727, i8 -116 }, %struct.reg_val { i32 8388728, i8 -116 }, %struct.reg_val { i32 8388729, i8 1 }, %struct.reg_val { i32 8388734, i8 4 }, %struct.reg_val { i32 8388737, i8 10 }, %struct.reg_val { i32 8388738, i8 18 }, %struct.reg_val { i32 8388740, i8 10 }, %struct.reg_val { i32 8388741, i8 51 }, %struct.reg_val { i32 8388742, i8 -72 }, %struct.reg_val { i32 8388743, i8 -100 }, %struct.reg_val { i32 8388744, i8 -78 }, %struct.reg_val { i32 8388745, i8 -90 }, %struct.reg_val { i32 8388746, i8 1 }, %struct.reg_val { i32 8388750, i8 1 }, %struct.reg_val { i32 8388754, i8 6 }, %struct.reg_val { i32 8388755, i8 0 }, %struct.reg_val { i32 8388756, i8 0 }, %struct.reg_val { i32 8388757, i8 0 }, %struct.reg_val { i32 8388758, i8 0 }, %struct.reg_val { i32 8388761, i8 1 }, %struct.reg_val { i32 8388763, i8 60 }, %struct.reg_val { i32 8388764, i8 40 }, %struct.reg_val { i32 8388767, i8 -31 }, %struct.reg_val { i32 8388768, i8 -49 }, %struct.reg_val { i32 8388771, i8 1 }, %struct.reg_val { i32 8388772, i8 90 }, %struct.reg_val { i32 8388773, i8 1 }, %struct.reg_val { i32 8388774, i8 1 }, %struct.reg_val { i32 8388777, i8 0 }, %struct.reg_val { i32 8388778, i8 1 }, %struct.reg_val { i32 8388784, i8 1 }, %struct.reg_val { i32 8388787, i8 2 }, %struct.reg_val { i32 8388788, i8 58 }, %struct.reg_val { i32 8388790, i8 20 }, %struct.reg_val { i32 8388800, i8 17 }, %struct.reg_val { i32 8388801, i8 0 }, %struct.reg_val { i32 8388802, i8 5 }, %struct.reg_val { i32 8388803, i8 1 }, %struct.reg_val { i32 8388804, i8 0 }, %struct.reg_val { i32 8388806, i8 25 }, %struct.reg_val { i32 8388807, i8 0 }, %struct.reg_val { i32 8388811, i8 50 }, %struct.reg_val { i32 8388812, i8 44 }, %struct.reg_val { i32 8388813, i8 79 }, %struct.reg_val { i32 8388814, i8 48 }, %struct.reg_val { i32 8388851, i8 5 }, %struct.reg_val { i32 8388852, i8 -116 }, %struct.reg_val { i32 8388853, i8 -116 }, %struct.reg_val { i32 8388856, i8 3 }, %struct.reg_val { i32 8388857, i8 6 }, %struct.reg_val { i32 8388858, i8 6 }, %struct.reg_val { i32 8388860, i8 2 }, %struct.reg_val { i32 8388861, i8 3 }, %struct.reg_val { i32 8388862, i8 2 }, %struct.reg_val { i32 8388863, i8 9 }, %struct.reg_val { i32 8388864, i8 80 }, %struct.reg_val { i32 8388865, i8 110 }, %struct.reg_val { i32 8388866, i8 -116 }, %struct.reg_val { i32 8388867, i8 2 }, %struct.reg_val { i32 8388868, i8 2 }, %struct.reg_val { i32 8388869, i8 -62 }, %struct.reg_val { i32 8388870, i8 0 }, %struct.reg_val { i32 8388873, i8 2 }, %struct.reg_val { i32 8388885, i8 10 }, %struct.reg_val { i32 8388886, i8 3 }, %struct.reg_val { i32 8388890, i8 -72 }, %struct.reg_val { i32 8388900, i8 -88 }, %struct.reg_val { i32 8388903, i8 0 }, %struct.reg_val { i32 8388906, i8 83 }, %struct.reg_val { i32 8388907, i8 81 }, %struct.reg_val { i32 8388908, i8 78 }, %struct.reg_val { i32 8388909, i8 67 }, %struct.reg_val { i32 8388919, i8 0 }, %struct.reg_val { i32 8388923, i8 5 }, %struct.reg_val { i32 8388927, i8 91 }, %struct.reg_val { i32 8388929, i8 89 }, %struct.reg_val { i32 8388930, i8 -7 }, %struct.reg_val { i32 8388931, i8 89 }, %struct.reg_val { i32 8388932, i8 0 }, %struct.reg_val { i32 8388933, i8 -116 }, %struct.reg_val { i32 8388934, i8 -116 }, %struct.reg_val { i32 8388935, i8 -116 }, %struct.reg_val { i32 8388936, i8 123 }, %struct.reg_val { i32 8388937, i8 -116 }, %struct.reg_val { i32 8388938, i8 80 }, %struct.reg_val { i32 8388939, i8 112 }, %struct.reg_val { i32 8388941, i8 -106 }, %struct.reg_val { i32 8388942, i8 -48 }, %struct.reg_val { i32 8388943, i8 3 }, %struct.reg_val { i32 8388945, i8 40 }, %struct.reg_val { i32 8388947, i8 -78 }, %struct.reg_val { i32 8388984, i8 9 }, %struct.reg_val { i32 8388993, i8 -100 }, %struct.reg_val { i32 8388994, i8 110 }, %struct.reg_val { i32 8388997, i8 36 }, %struct.reg_val { i32 8389001, i8 -72 }, %struct.reg_val { i32 8389004, i8 3 }, %struct.reg_val { i32 8389005, i8 95 }, %struct.reg_val { i32 8389007, i8 -5 }, %struct.reg_val { i32 8389008, i8 90 }, %struct.reg_val { i32 8449282, i8 -1 }, %struct.reg_val { i32 8449602, i8 -1 }, %struct.reg_val { i32 8449666, i8 -1 }, %struct.reg_val { i32 8450048, i8 15 }, %struct.reg_val { i32 8450079, i8 -116 }, %struct.reg_val { i32 8450080, i8 0 }, %struct.reg_val { i32 8450089, i8 -116 }, %struct.reg_val { i32 8450090, i8 0 }, %struct.reg_val { i32 8450091, i8 0 }, %struct.reg_val { i32 8450148, i8 3 }, %struct.reg_val { i32 8450149, i8 -7 }, %struct.reg_val { i32 8450150, i8 3 }, %struct.reg_val { i32 8450151, i8 1 }, %struct.reg_val { i32 8450159, i8 -32 }, %struct.reg_val { i32 8450160, i8 3 }, %struct.reg_val { i32 8450162, i8 15 }, %struct.reg_val { i32 8450163, i8 3 }, %struct.reg_val { i32 8450167, i8 1 }, %struct.reg_val { i32 8450168, i8 0 }, %struct.reg_val { i32 8450183, i8 0 }, %struct.reg_val { i32 8450203, i8 63 }, %struct.reg_val { i32 8450204, i8 0 }, %struct.reg_val { i32 8450205, i8 32 }, %struct.reg_val { i32 8450206, i8 0 }, %struct.reg_val { i32 8450207, i8 12 }, %struct.reg_val { i32 8450208, i8 0 }, %struct.reg_val { i32 8450352, i8 4 }, %struct.reg_val { i32 8450354, i8 4 }, %struct.reg_val { i32 8450372, i8 26 }, %struct.reg_val { i32 8450374, i8 0 }, %struct.reg_val { i32 8450378, i8 1 }, %struct.reg_val { i32 8450380, i8 0 }, %struct.reg_val { i32 8450381, i8 0 }, %struct.reg_val { i32 8450383, i8 4 }, %struct.reg_val { i32 8450392, i8 127 }, %struct.reg_val { i32 8450394, i8 0 }, %struct.reg_val { i32 8450395, i8 8 }, %struct.reg_val { i32 8450397, i8 3 }, %struct.reg_val { i32 8450398, i8 5 }, %struct.reg_val { i32 8450403, i8 5 }, %struct.reg_val { i32 8450406, i8 1 }, %struct.reg_val { i32 8450407, i8 64 }, %struct.reg_val { i32 8450408, i8 15 }, %struct.reg_val { i32 8450426, i8 0 }, %struct.reg_val { i32 8450427, i8 0 }, %struct.reg_val { i32 8450435, i8 1 }, %struct.reg_val { i32 8450461, i8 64 }, %struct.reg_val { i32 8450492, i8 54 }, %struct.reg_val { i32 8450493, i8 0 }, %struct.reg_val { i32 8450507, i8 -96 }, %struct.reg_val { i32 8450508, i8 1 }, %struct.reg_val { i32 8450564, i8 16 }, %struct.reg_val { i32 8450580, i8 0 }, %struct.reg_val { i32 8450636, i8 -120 }, %struct.reg_val { i32 8450637, i8 -107 }, %struct.reg_val { i32 8450638, i8 -102 }, %struct.reg_val { i32 8450639, i8 -112 }, %struct.reg_val { i32 8450650, i8 7 }, %struct.reg_val { i32 8450651, i8 -24 }, %struct.reg_val { i32 8450652, i8 3 }, %struct.reg_val { i32 8450653, i8 -80 }, %struct.reg_val { i32 8450654, i8 4 }, %struct.reg_val { i32 8450672, i8 1 }, %struct.reg_val { i32 8450673, i8 2 }, %struct.reg_val { i32 8450674, i8 1 }, %struct.reg_val { i32 8450675, i8 2 }, %struct.reg_val { i32 8451086, i8 10 }, %struct.reg_val { i32 8451087, i8 64 }, %struct.reg_val { i32 8451088, i8 8 }, %struct.reg_val { i32 8451423, i8 10 }, %struct.reg_val { i32 8451425, i8 21 }, %struct.reg_val { i32 8451426, i8 32 }, %struct.reg_val { i32 8451555, i8 9 }, %struct.reg_val { i32 8451556, i8 1 }, %struct.reg_val { i32 8451557, i8 1 }, %struct.reg_val { i32 8451584, i8 5 }, %struct.reg_val { i32 8451585, i8 8 }, %struct.reg_val { i32 8451586, i8 11 }, %struct.reg_val { i32 8451587, i8 14 }, %struct.reg_val { i32 8451588, i8 17 }, %struct.reg_val { i32 8451589, i8 20 }, %struct.reg_val { i32 8451590, i8 23 }, %struct.reg_val { i32 8451591, i8 31 }, %struct.reg_val { i32 8451598, i8 0 }, %struct.reg_val { i32 8451599, i8 4 }, %struct.reg_val { i32 8451600, i8 50 }, %struct.reg_val { i32 8451601, i8 16 }, %struct.reg_val { i32 8451847, i8 -4 }, %struct.reg_val { i32 8451848, i8 0 }, %struct.reg_val { i32 8451849, i8 55 }, %struct.reg_val { i32 8451850, i8 0 }, %struct.reg_val { i32 8451979, i8 1 }, %struct.reg_val { i32 8452111, i8 64 }, %struct.reg_val { i32 8452112, i8 84 }, %struct.reg_val { i32 8452113, i8 90 }, %struct.reg_val { i32 8452357, i8 1 }, %struct.reg_val { i32 8452870, i8 3 }, %struct.reg_val { i32 8453515, i8 0 }], [432 x i8] zeroinitializer }, align 32
@af9033_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.22, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unsupported tuner ID=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@af9033_init.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.14, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_wr_reg_val_tab.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"af9033_wr_reg_val_tab\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tab_len=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@af9033_wr_reg_val_tab._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 43, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tab len %d is too big\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@af9033_wr_reg_val_tab._entry_ptr = internal global ptr @af9033_wr_reg_val_tab._entry, section ".printk_index", align 4
@af9033_wr_reg_val_tab.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.14, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_sleep.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.16, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"af9033_sleep\00", [19 x i8] zeroinitializer }, align 32
@af9033_sleep.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.14, i8 0, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_set_frontend.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9033_set_frontend\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"frequency=%u bandwidth_hz=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@af9033_set_frontend.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid bandwidth_hz\0A\00", [42 x i8] zeroinitializer }, align 32
@coeff_lut = internal constant { [3 x %struct.coeff], [60 x i8] } { [3 x %struct.coeff] [%struct.coeff { i32 12000000, i32 8000000, [36 x i8] c"\01\CEU\C9\00\E7*\E4\00s\99\0F\00s\95r\00s\91\D5\009\CA\B9\00\E7*\E4\00s\95r7\02\CE\01" }, %struct.coeff { i32 12000000, i32 7000000, [36 x i8] c"\01\94\8B\10\00\CAE\88\00e%\ED\00e\22\C4\00e\1F\9B\002\91b\00\CAE\88\00e\22\C4\88\02\95\01" }, %struct.coeff { i32 12000000, i32 6000000, [36 x i8] c"\01Z\C0V\00\AD`+\00V\B2\CB\00V\B0\15\00V\AD`\00+X\0B\00\AD`+\00V\B0\15\F4\02[\01" }], [60 x i8] zeroinitializer }, align 32
@af9033_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.3, i32 400, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't find config for clock %u\0A\00", [61 x i8] zeroinitializer }, align 32
@af9033_set_frontend._entry_ptr = internal global ptr @af9033_set_frontend._entry, section ".printk_index", align 4
@af9033_set_frontend._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 420, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't find ADC clock for clock %u\0A\00", [58 x i8] zeroinitializer }, align 32
@af9033_set_frontend._entry_ptr.34 = internal global ptr @af9033_set_frontend._entry.32, section ".printk_index", align 4
@af9033_set_frontend.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.35, i8 0, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"if_frequency_cw=%06x\0A\00", [42 x i8] zeroinitializer }, align 32
@af9033_set_frontend.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.14, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_get_frontend.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.16, i8 0, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"af9033_get_frontend\00", [44 x i8] zeroinitializer }, align 32
@af9033_get_frontend.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.14, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_read_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.16, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"af9033_read_status\00", [45 x i8] zeroinitializer }, align 32
@af9033_read_status.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cnr=%u\0A\00", [24 x i8] zeroinitializer }, align 32
@af9033_read_status.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.14, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_read_signal_strength.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.16, i8 0, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"af9033_read_signal_strength\00", [36 x i8] zeroinitializer }, align 32
@power_reference = internal constant { [3 x [5 x i32]], [36 x i8] } { [3 x [5 x i32]] [[5 x i32] [i32 -93, i32 -91, i32 -90, i32 -89, i32 -88], [5 x i32] [i32 -87, i32 -85, i32 -84, i32 -83, i32 -82], [5 x i32] [i32 -82, i32 -80, i32 -78, i32 -77, i32 -76]], [36 x i8] zeroinitializer }, align 32
@af9033_read_signal_strength.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.14, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_read_snr.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.16, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"af9033_read_snr\00", [16 x i8] zeroinitializer }, align 32
@af9033_read_snr.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.14, i8 0, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_i2c_gate_ctrl.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"af9033_i2c_gate_ctrl\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enable=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@af9033_i2c_gate_ctrl.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.14, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_pid_filter.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 -9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"af9033_pid_filter\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"index=%d pid=%04x onoff=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@af9033_pid_filter.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.14, i8 0, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_pid_filter_ctrl.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"af9033_pid_filter_ctrl\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"onoff=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@af9033_pid_filter_ctrl.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.14, i8 0, i8 -12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@af9033_remove.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.16, i8 1, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"af9033_remove\00", [18 x i8] zeroinitializer }, align 32
@switch.table.af9033_get_frontend = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.af9033_get_frontend.48 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7, i32 0], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [8 x i64] [i64 6, i64 8, i64 56, i64 81, i64 82, i64 96, i64 97, i64 98]
@__sancov_gen_cov_switch_values.50 = internal global [13 x i64] [i64 11, i64 32, i64 12000000, i64 16384000, i64 20480000, i64 22000000, i64 24000000, i64 26000000, i64 28000000, i64 30000000, i64 32000000, i64 34000000, i64 36000000]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 8, i64 56, i64 81, i64 82, i64 96, i64 97, i64 98]
@__sancov_gen_cov_switch_values.52 = internal global [14 x i64] [i64 12, i64 8, i64 39, i64 40, i64 46, i64 50, i64 56, i64 81, i64 82, i64 96, i64 97, i64 98, i64 160, i64 161]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.55 = internal global [13 x i64] [i64 11, i64 32, i64 12000000, i64 16384000, i64 20480000, i64 22000000, i64 24000000, i64 26000000, i64 28000000, i64 30000000, i64 32000000, i64 34000000, i64 36000000]
@__sancov_gen_cov_switch_values.56 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"af9033_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1184, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1186, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"af9033_id_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1178, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1060, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1090, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1097, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1127, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [11 x i8] c"af9033_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1012, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1154, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1162, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 106, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 118, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"clock_adc_lut\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 47, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 126, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 140, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 176, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"ofsm_init_it9135_v1\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 467, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"ofsm_init_it9135_v2\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1238, i32 29 }
@___asan_gen_.148 = private unnamed_addr constant [10 x i8] c"ofsm_init\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 87, i32 29 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 201, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [19 x i8] c"tuner_init_tua9001\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 202, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"tuner_init_fc0011\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 246, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c"tuner_init_mxl5007t\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 354, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"tuner_init_tda18218\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 391, i32 29 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"tuner_init_fc2580\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 427, i32 29 }
@___asan_gen_.169 = private unnamed_addr constant [18 x i8] c"tuner_init_fc0012\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 309, i32 29 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"tuner_init_it9135_38\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 582, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"tuner_init_it9135_51\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 801, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant [21 x i8] c"tuner_init_it9135_52\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1020, i32 29 }
@___asan_gen_.181 = private unnamed_addr constant [21 x i8] c"tuner_init_it9135_60\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1340, i32 29 }
@___asan_gen_.184 = private unnamed_addr constant [21 x i8] c"tuner_init_it9135_61\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1556, i32 29 }
@___asan_gen_.187 = private unnamed_addr constant [21 x i8] c"tuner_init_it9135_62\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1772, i32 29 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 252, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 40, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 43, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 311, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 365, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 380, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [10 x i8] c"coeff_lut\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 62, i32 27 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 398, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 418, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 448, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 494, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 621, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 763, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 879, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"power_reference\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/af9033_priv.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1986, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 827, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 952, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 990, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 970, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [40 x i8] c"../drivers/media/dvb-frontends/af9033.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1170, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [33 x i8] c"switch.table.af9033_get_frontend\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [36 x i8] c"switch.table.af9033_get_frontend.48\00", align 1
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_af9033_driver_exit, ptr @__initcall__kmod_af9033__334_1194_af9033_driver_init6, ptr @af9033_driver_exit, ptr @af9033_init._entry, ptr @af9033_init._entry_ptr, ptr @af9033_probe._entry, ptr @af9033_probe._entry.11, ptr @af9033_probe._entry.7, ptr @af9033_probe._entry_ptr, ptr @af9033_probe._entry_ptr.10, ptr @af9033_probe._entry_ptr.13, ptr @af9033_set_frontend._entry, ptr @af9033_set_frontend._entry.32, ptr @af9033_set_frontend._entry_ptr, ptr @af9033_set_frontend._entry_ptr.34, ptr @af9033_wr_reg_val_tab._entry, ptr @af9033_wr_reg_val_tab._entry_ptr, ptr @af9033_driver, ptr @.str, ptr @af9033_id_table, ptr @af9033_probe.regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @af9033_probe._key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @af9033_ops, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @clock_adc_lut, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ofsm_init_it9135_v1, ptr @ofsm_init_it9135_v2, ptr @ofsm_init, ptr @.str.21, ptr @tuner_init_tua9001, ptr @tuner_init_fc0011, ptr @tuner_init_mxl5007t, ptr @tuner_init_tda18218, ptr @tuner_init_fc2580, ptr @tuner_init_fc0012, ptr @tuner_init_it9135_38, ptr @tuner_init_it9135_51, ptr @tuner_init_it9135_52, ptr @tuner_init_it9135_60, ptr @tuner_init_it9135_61, ptr @tuner_init_it9135_62, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @coeff_lut, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @power_reference, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @switch.table.af9033_get_frontend, ptr @switch.table.af9033_get_frontend.48], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_adc_lut to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofsm_init_it9135_v1 to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofsm_init_it9135_v2 to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ofsm_init to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tua9001 to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_fc0011 to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_mxl5007t to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_tda18218 to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_fc2580 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_fc0012 to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_it9135_38 to i32), i32 1696, i32 2112, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_it9135_51 to i32), i32 1696, i32 2112, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_it9135_52 to i32), i32 1696, i32 2112, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_it9135_60 to i32), i32 1672, i32 2112, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_it9135_61 to i32), i32 1672, i32 2112, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_init_it9135_62 to i32), i32 1680, i32 2112, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_wr_reg_val_tab._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coeff_lut to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9033_set_frontend._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_reference to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.af9033_get_frontend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.af9033_get_frontend.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @af9033_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @af9033_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @af9033_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %buf, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 1128) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body87_crit_edge, label %if.end

entry.do.body87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body87

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %call7.i.i, align 8
  %cfg3 = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %cfg3, ptr %1, i32 24)
  %ts_mode = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %ts_mode, align 2
  %bf.lshr = lshr i8 %bf.load, 6
  %conv = zext i8 %bf.lshr to i32
  %14 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ts_mode_parallel = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %ts_mode_parallel to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %ts_mode_parallel, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ts_mode_serial = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %ts_mode_serial to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %ts_mode_serial, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %if.end.sw.epilog_crit_edge
  %17 = ptrtoint ptr %cfg3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cfg3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %18)
  %cmp.not = icmp eq i32 %18, 12000000
  br i1 %cmp.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %18) #13
  br label %err_kfree

if.end13:                                         ; preds = %sw.epilog
  %call14 = tail call ptr @__regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @af9033_probe.regmap_config, ptr noundef nonnull @af9033_probe._key, ptr noundef nonnull @.str.6) #9
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call14, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call14 to i32
  br label %err_kfree

if.end20:                                         ; preds = %if.end13
  %tuner = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tuner, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %22, label %sw.default24 [
    i8 56, label %if.end20.sw.bb23_crit_edge
    i8 81, label %if.end20.sw.bb23_crit_edge147
    i8 82, label %if.end20.sw.bb23_crit_edge148
    i8 96, label %if.end20.sw.bb23_crit_edge149
    i8 97, label %if.end20.sw.bb23_crit_edge150
    i8 98, label %if.end20.sw.bb23_crit_edge151
  ]

if.end20.sw.bb23_crit_edge151:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end20.sw.bb23_crit_edge150:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end20.sw.bb23_crit_edge149:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end20.sw.bb23_crit_edge148:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end20.sw.bb23_crit_edge147:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end20.sw.bb23_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

sw.bb23:                                          ; preds = %if.end20.sw.bb23_crit_edge, %if.end20.sw.bb23_crit_edge147, %if.end20.sw.bb23_crit_edge148, %if.end20.sw.bb23_crit_edge149, %if.end20.sw.bb23_crit_edge150, %if.end20.sw.bb23_crit_edge151
  %is_it9135 = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %is_it9135 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %is_it9135, align 1
  br label %sw.epilog25

sw.default24:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %is_af9035 = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %is_af9035 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %is_af9035, align 8
  br label %sw.epilog25

sw.epilog25:                                      ; preds = %sw.default24, %sw.bb23
  %reg.0 = phi i32 [ 33769, %sw.default24 ], [ 19452, %sw.bb23 ]
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call27 = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef %reg.0, ptr noundef nonnull %buf, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %sw.epilog25.err_regmap_exit_crit_edge

sw.epilog25.err_regmap_exit_crit_edge:            ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end30:                                         ; preds = %sw.epilog25
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call33 = call i32 @regmap_bulk_read(ptr noundef %29, i32 noundef 8405393, ptr noundef %5, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end39, label %if.end30.err_regmap_exit_crit_edge

if.end30.err_regmap_exit_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

do.end39:                                         ; preds = %if.end30
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf, align 8
  %conv42 = zext i8 %31 to i32
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %2, align 1
  %conv44 = zext i8 %33 to i32
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %3, align 2
  %conv46 = zext i8 %35 to i32
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %4, align 1
  %conv48 = zext i8 %37 to i32
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %5, align 4
  %conv50 = zext i8 %39 to i32
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %6, align 1
  %conv52 = zext i8 %41 to i32
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %7, align 2
  %conv54 = zext i8 %43 to i32
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %8, align 1
  %conv56 = zext i8 %45 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv42, i32 noundef %conv44, i32 noundef %conv46, i32 noundef %conv48, i32 noundef %conv50, i32 noundef %conv52, i32 noundef %conv54, i32 noundef %conv56) #13
  %is_af903557 = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %is_af903557 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %is_af903557, align 8, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool58.not = icmp eq i8 %47, 0
  br i1 %tobool58.not, label %do.end39.if.end70_crit_edge, label %if.then59

do.end39.if.end70_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then59:                                        ; preds = %do.end39
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call61 = call i32 @regmap_write(ptr noundef %49, i32 noundef 8388684, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then59.err_regmap_exit_crit_edge

if.then59.err_regmap_exit_crit_edge:              ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end64:                                         ; preds = %if.then59
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call66 = call i32 @regmap_write(ptr noundef %51, i32 noundef 8388608, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end64.if.end70_crit_edge, label %if.end64.err_regmap_exit_crit_edge

if.end64.err_regmap_exit_crit_edge:               ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_regmap_exit

if.end64.if.end70_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.end70:                                         ; preds = %if.end64.if.end70_crit_edge, %do.end39.if.end70_crit_edge
  %fe = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 2, i32 1
  %52 = call ptr @memcpy(ptr %ops, ptr @af9033_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.af9033_dev, ptr %call7.i.i, i32 0, i32 2, i32 3
  %53 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %fe73 = getelementptr inbounds %struct.af9033_config, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %fe73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fe73, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %fe, ptr %55, align 4
  %ops74 = getelementptr inbounds %struct.af9033_config, ptr %1, i32 0, i32 6
  %57 = ptrtoint ptr %ops74 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ops74, align 4
  %tobool75.not = icmp eq ptr %58, null
  br i1 %tobool75.not, label %if.end70.if.end79_crit_edge, label %if.then76

if.end70.if.end79_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %pid_filter = getelementptr inbounds %struct.af9033_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %pid_filter to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @af9033_pid_filter, ptr %pid_filter, align 4
  %60 = ptrtoint ptr %ops74 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ops74, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @af9033_pid_filter_ctrl, ptr %61, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.end70.if.end79_crit_edge
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %regmap81 = getelementptr inbounds %struct.af9033_config, ptr %1, i32 0, i32 8
  %65 = ptrtoint ptr %regmap81 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %regmap81, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %66 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #13
  br label %cleanup

err_regmap_exit:                                  ; preds = %if.end64.err_regmap_exit_crit_edge, %if.then59.err_regmap_exit_crit_edge, %if.end30.err_regmap_exit_crit_edge, %sw.epilog25.err_regmap_exit_crit_edge
  %ret.0 = phi i32 [ %call27, %sw.epilog25.err_regmap_exit_crit_edge ], [ %call33, %if.end30.err_regmap_exit_crit_edge ], [ %call61, %if.then59.err_regmap_exit_crit_edge ], [ %call66, %if.end64.err_regmap_exit_crit_edge ]
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  call void @regmap_exit(ptr noundef %68) #9
  br label %err_kfree

err_kfree:                                        ; preds = %err_regmap_exit, %if.then17, %if.then9
  %ret.1 = phi i32 [ -19, %if.then9 ], [ %20, %if.then17 ], [ %ret.0, %err_regmap_exit ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body87

do.body87:                                        ; preds = %err_kfree, %entry.do.body87_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_kfree ], [ -12, %entry.do.body87_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_probe.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_probe, %if.then93)) #9
          to label %cleanup [label %if.then93], !srcloc !194

if.then93:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_probe.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %ret.2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %do.body87, %if.end79
  %retval.0 = phi i32 [ 0, %if.end79 ], [ %ret.2, %if.then93 ], [ %ret.2, %do.body87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_remove.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_remove.__UNIQUE_ID_ddebug333, ptr noundef %dev4, ptr noundef nonnull @.str.16) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regmap_exit(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_pid_filter(ptr nocapture noundef readonly %fe, i32 noundef %index, i16 noundef zeroext %pid, i32 noundef %onoff) #2 align 64 {
entry:
  %wbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf) #9
  %4 = getelementptr inbounds [2 x i8], ptr %wbuf, i32 0, i32 1
  %conv2 = trunc i16 %pid to i8
  %5 = ptrtoint ptr %wbuf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %wbuf, align 1
  %6 = lshr i16 %pid, 8
  %conv6 = trunc i16 %6 to i8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %4, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_pid_filter.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_pid_filter, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %pid to i32
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_pid_filter.__UNIQUE_ID_ddebug330, ptr noundef %dev9, ptr noundef nonnull @.str.44, i32 noundef %index, i32 noundef %conv, i32 noundef %onoff) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %pid)
  %cmp = icmp ugt i16 %pid, 8191
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end14

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_bulk_write(ptr noundef %9, i32 noundef 8452502, ptr noundef nonnull %wbuf, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.do.body29_crit_edge

if.end14.do.body29_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.end18:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call20 = call i32 @regmap_write(ptr noundef %11, i32 noundef 8452500, i32 noundef %onoff) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.do.body29_crit_edge

if.end18.do.body29_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.end23:                                         ; preds = %if.end18
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call25 = call i32 @regmap_write(ptr noundef %13, i32 noundef 8452501, i32 noundef %index) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end23.do.body29_crit_edge

if.end23.do.body29_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body29:                                        ; preds = %if.end23.do.body29_crit_edge, %if.end18.do.body29_crit_edge, %if.end14.do.body29_crit_edge
  %ret.0 = phi i32 [ %call15, %if.end14.do.body29_crit_edge ], [ %call20, %if.end18.do.body29_crit_edge ], [ %call25, %if.end23.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_pid_filter.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_pid_filter, %if.then41)) #9
          to label %cleanup [label %if.then41], !srcloc !194

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_pid_filter.__UNIQUE_ID_ddebug331, ptr noundef %dev42, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %do.body29, %if.end23.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ %ret.0, %if.then41 ], [ %ret.0, %do.body29 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_pid_filter_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_pid_filter_ctrl.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_pid_filter_ctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_pid_filter_ctrl.__UNIQUE_ID_ddebug328, ptr noundef %dev4, ptr noundef nonnull @.str.46, i32 noundef %onoff) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8452499, i32 noundef 1, i32 noundef %onoff, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %do.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_pid_filter_ctrl.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_pid_filter_ctrl, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !194

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_pid_filter_ctrl.__UNIQUE_ID_ddebug329, ptr noundef %dev22, ptr noundef nonnull @.str.14, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body9, %do.end.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_init(ptr nocapture noundef %fe) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  %tab = alloca [26 x %struct.reg_val_mask], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %tab) #9
  %8 = getelementptr inbounds i8, ptr %tab, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 204)
  %10 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8452900, ptr %tab, align 4
  %val = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 0, i32 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %val, align 4
  %mask = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 0, i32 2
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 8, ptr %mask, align 1
  %arrayinit.element = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8388684, ptr %arrayinit.element, align 4
  %val3 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1, i32 1
  %14 = ptrtoint ptr %val3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %val3, align 4
  %arrayinit.element5 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2
  %15 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 63041, ptr %arrayinit.element5, align 4
  %val7 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2, i32 1
  %cfg = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 3
  %tuner = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tuner, align 1
  %18 = ptrtoint ptr %val7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %val7, align 4
  %arrayinit.element9 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3
  %19 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8451530, ptr %arrayinit.element9, align 4
  %val11 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3, i32 1
  %20 = ptrtoint ptr %val11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %val11, align 4
  %mask12 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3, i32 2
  %21 = ptrtoint ptr %mask12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %mask12, align 1
  %arrayinit.element13 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4
  %22 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8451861, ptr %arrayinit.element13, align 4
  %val15 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4, i32 1
  %23 = ptrtoint ptr %val15 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %val15, align 4
  %mask16 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4, i32 2
  %24 = ptrtoint ptr %mask16 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %mask16, align 1
  %arrayinit.element17 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5
  %25 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 62495, ptr %arrayinit.element17, align 4
  %val19 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5, i32 1
  %26 = ptrtoint ptr %val19 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %val19, align 4
  %mask20 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5, i32 2
  %27 = ptrtoint ptr %mask20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %mask20, align 1
  %arrayinit.element21 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6
  %28 = ptrtoint ptr %arrayinit.element21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 62490, ptr %arrayinit.element21, align 4
  %val23 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 1
  %29 = ptrtoint ptr %val23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %val23, align 4
  %mask24 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 2
  %30 = ptrtoint ptr %mask24 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %mask24, align 1
  %arrayinit.element25 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7
  %31 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8451889, ptr %arrayinit.element25, align 4
  %val27 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7, i32 1
  %32 = ptrtoint ptr %val27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %val27, align 4
  %mask28 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7, i32 2
  %33 = ptrtoint ptr %mask28 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %mask28, align 1
  %arrayinit.element29 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8
  %34 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 55582, ptr %arrayinit.element29, align 4
  %val31 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8, i32 1
  %35 = ptrtoint ptr %val31 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %val31, align 4
  %mask32 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8, i32 2
  %36 = ptrtoint ptr %mask32 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %mask32, align 1
  %arrayinit.element33 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9
  %37 = ptrtoint ptr %arrayinit.element33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 55577, ptr %arrayinit.element33, align 4
  %val35 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9, i32 1
  %38 = ptrtoint ptr %val35 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %val35, align 4
  %mask36 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9, i32 2
  %39 = ptrtoint ptr %mask36 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %mask36, align 1
  %arrayinit.element37 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10
  %40 = ptrtoint ptr %arrayinit.element37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8451890, ptr %arrayinit.element37, align 4
  %val39 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10, i32 1
  %41 = ptrtoint ptr %val39 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %val39, align 4
  %mask40 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10, i32 2
  %42 = ptrtoint ptr %mask40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %mask40, align 1
  %arrayinit.element41 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11
  %43 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 55583, ptr %arrayinit.element41, align 4
  %val43 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11, i32 1
  %44 = ptrtoint ptr %val43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %val43, align 4
  %mask44 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11, i32 2
  %45 = ptrtoint ptr %mask44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %mask44, align 1
  %arrayinit.element45 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12
  %46 = ptrtoint ptr %arrayinit.element45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 55578, ptr %arrayinit.element45, align 4
  %val47 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12, i32 1
  %47 = ptrtoint ptr %val47 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %val47, align 4
  %mask48 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12, i32 2
  %48 = ptrtoint ptr %mask48 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %mask48, align 1
  %arrayinit.element49 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13
  %49 = ptrtoint ptr %arrayinit.element49 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 8451888, ptr %arrayinit.element49, align 4
  %val51 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13, i32 1
  %50 = ptrtoint ptr %val51 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %val51, align 4
  %mask52 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13, i32 2
  %51 = ptrtoint ptr %mask52 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %mask52, align 1
  %arrayinit.element53 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 14
  %52 = ptrtoint ptr %arrayinit.element53 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8451960, ptr %arrayinit.element53, align 4
  %val55 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 14, i32 1
  %53 = ptrtoint ptr %val55 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %val55, align 4
  %arrayinit.element57 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 15
  %54 = ptrtoint ptr %arrayinit.element57 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8451900, ptr %arrayinit.element57, align 4
  %val59 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 15, i32 1
  %55 = ptrtoint ptr %val59 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %val59, align 4
  %mask60 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 15, i32 2
  %56 = ptrtoint ptr %mask60 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %mask60, align 1
  %arrayinit.element61 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 16
  %57 = ptrtoint ptr %arrayinit.element61 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8451958, ptr %arrayinit.element61, align 4
  %val63 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 16, i32 1
  %58 = ptrtoint ptr %val63 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %val63, align 4
  %mask64 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 16, i32 2
  %59 = ptrtoint ptr %mask64 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %mask64, align 1
  %arrayinit.element65 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 17
  %60 = ptrtoint ptr %arrayinit.element65 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 55549, ptr %arrayinit.element65, align 4
  %val67 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 17, i32 1
  %61 = ptrtoint ptr %val67 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %val67, align 4
  %arrayinit.element69 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 18
  %62 = ptrtoint ptr %arrayinit.element69 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 55344, ptr %arrayinit.element69, align 4
  %val71 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 18, i32 1
  %63 = ptrtoint ptr %val71 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %val71, align 4
  %arrayinit.element73 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 19
  %64 = ptrtoint ptr %arrayinit.element73 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 55345, ptr %arrayinit.element73, align 4
  %val75 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 19, i32 1
  %65 = ptrtoint ptr %val75 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %val75, align 4
  %arrayinit.element77 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 20
  %66 = ptrtoint ptr %arrayinit.element77 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 55346, ptr %arrayinit.element77, align 4
  %val79 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 20, i32 1
  %67 = ptrtoint ptr %val79 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %val79, align 4
  %arrayinit.element81 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 21
  %68 = ptrtoint ptr %arrayinit.element81 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 8452485, ptr %arrayinit.element81, align 4
  %val83 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 21, i32 1
  %ts_mode_serial = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 8
  %69 = ptrtoint ptr %ts_mode_serial to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ts_mode_serial, align 1, !range !193
  %71 = ptrtoint ptr %val83 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %val83, align 4
  %mask84 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 21, i32 2
  %72 = ptrtoint ptr %mask84 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 1, ptr %mask84, align 1
  %arrayinit.element85 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 22
  %73 = ptrtoint ptr %arrayinit.element85 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8452486, ptr %arrayinit.element85, align 4
  %val87 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 22, i32 1
  %ts_mode_parallel = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 7
  %74 = ptrtoint ptr %ts_mode_parallel to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ts_mode_parallel, align 8, !range !193
  %76 = ptrtoint ptr %val87 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %val87, align 4
  %mask90 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 22, i32 2
  %77 = ptrtoint ptr %mask90 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %mask90, align 1
  %arrayinit.element91 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 23
  %78 = ptrtoint ptr %arrayinit.element91 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 55335, ptr %arrayinit.element91, align 4
  %val93 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 23, i32 1
  %79 = ptrtoint ptr %val93 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %val93, align 4
  %arrayinit.element95 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 24
  %80 = ptrtoint ptr %arrayinit.element95 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 55337, ptr %arrayinit.element95, align 4
  %val97 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 24, i32 1
  %81 = ptrtoint ptr %val97 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %val97, align 4
  %arrayinit.element99 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 25
  %82 = ptrtoint ptr %arrayinit.element99 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 8388677, ptr %arrayinit.element99, align 4
  %val101 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 25, i32 1
  %adc_multiplier = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 3, i32 1
  %83 = ptrtoint ptr %adc_multiplier to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %adc_multiplier, align 4
  %85 = ptrtoint ptr %val101 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %val101, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_init.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev107 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_init.__UNIQUE_ID_ddebug292, ptr noundef %dev107, ptr noundef nonnull @.str.16) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %86 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %cfg, align 8
  %conv109 = zext i32 %87 to i64
  %mul = shl nuw nsw i64 %conv109, 19
  %88 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul) #14, !srcloc !195
  %89 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul, i64 %88, i32 0) #14, !srcloc !196
  %asmresult10.i.i.i = extractvalue { i64, i32 } %89, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 18
  %conv111 = trunc i64 %div1581.i.i to i32
  %conv112 = trunc i64 %div1581.i.i to i8
  %90 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv112, ptr %buf, align 4
  %shr113519 = lshr i64 %asmresult10.i.i.i, 26
  %conv115 = trunc i64 %shr113519 to i8
  %91 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv115, ptr %4, align 1
  %shr117520 = lshr i64 %asmresult10.i.i.i, 34
  %conv119 = trunc i64 %shr117520 to i8
  %92 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv119, ptr %5, align 2
  %shr121521 = lshr i64 %asmresult10.i.i.i, 42
  %conv123 = trunc i64 %shr121521 to i8
  %93 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv123, ptr %6, align 1
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %call125 = call i32 @regmap_bulk_write(ptr noundef %95, i32 noundef 8388645, ptr noundef nonnull %buf, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %do.body129, label %do.end.do.body409_crit_edge

do.end.do.body409_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

do.body129:                                       ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_init.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_init, %if.then141)) #9
          to label %do.end147 [label %if.then141], !srcloc !194

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  %dev142 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %96 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %cfg, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_init.__UNIQUE_ID_ddebug293, ptr noundef %dev142, ptr noundef nonnull @.str.17, i32 noundef %97, i32 noundef %conv111) #9
  br label %do.end147

do.end147:                                        ; preds = %if.then141, %do.body129
  %98 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cfg, align 8
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %99, label %do.end162 [
    i32 16384000, label %do.end147.if.end166_crit_edge
    i32 20480000, label %if.end166.fold.split
    i32 36000000, label %if.end166.fold.split566
    i32 30000000, label %if.end166.fold.split567
    i32 26000000, label %if.end166.fold.split568
    i32 28000000, label %if.end166.fold.split569
    i32 32000000, label %if.end166.fold.split570
    i32 34000000, label %if.end166.fold.split571
    i32 24000000, label %if.end166.fold.split572
    i32 22000000, label %if.end166.fold.split573
    i32 12000000, label %if.end166.fold.split574
  ]

do.end147.if.end166_crit_edge:                    ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

do.end162:                                        ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  %dev163 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %101 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cfg, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev163, ptr noundef nonnull @.str.18, i32 noundef %102) #13
  br label %do.body409

if.end166.fold.split:                             ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.end166.fold.split566:                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.end166.fold.split567:                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.end166.fold.split568:                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.end166.fold.split569:                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.end166.fold.split570:                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.end166.fold.split571:                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.end166.fold.split572:                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.end166.fold.split573:                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.end166.fold.split574:                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

if.end166:                                        ; preds = %if.end166.fold.split574, %if.end166.fold.split573, %if.end166.fold.split572, %if.end166.fold.split571, %if.end166.fold.split570, %if.end166.fold.split569, %if.end166.fold.split568, %if.end166.fold.split567, %if.end166.fold.split566, %if.end166.fold.split, %do.end147.if.end166_crit_edge
  %i.0561.lcssa = phi i32 [ 0, %do.end147.if.end166_crit_edge ], [ 1, %if.end166.fold.split ], [ 2, %if.end166.fold.split566 ], [ 3, %if.end166.fold.split567 ], [ 4, %if.end166.fold.split568 ], [ 5, %if.end166.fold.split569 ], [ 6, %if.end166.fold.split570 ], [ 7, %if.end166.fold.split571 ], [ 8, %if.end166.fold.split572 ], [ 9, %if.end166.fold.split573 ], [ 10, %if.end166.fold.split574 ]
  %adc = getelementptr [11 x %struct.clock_adc], ptr @clock_adc_lut, i32 0, i32 %i.0561.lcssa, i32 1
  %103 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %adc, align 4
  %conv168 = zext i32 %104 to i64
  %mul169 = shl nuw nsw i64 %conv168, 19
  %105 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul169) #14, !srcloc !195
  %106 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul169, i64 %105, i32 0) #14, !srcloc !196
  %asmresult10.i.i.i542 = extractvalue { i64, i32 } %106, 0
  %div1581.i.i543 = lshr i64 %asmresult10.i.i.i542, 18
  %conv171 = trunc i64 %div1581.i.i543 to i32
  %conv174 = trunc i64 %div1581.i.i543 to i8
  %107 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv174, ptr %buf, align 4
  %shr176522 = lshr i64 %asmresult10.i.i.i542, 26
  %conv178 = trunc i64 %shr176522 to i8
  %108 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv178, ptr %4, align 1
  %shr180523 = lshr i64 %asmresult10.i.i.i542, 34
  %conv182 = trunc i64 %shr180523 to i8
  %109 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv182, ptr %5, align 2
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %call186 = call i32 @regmap_bulk_write(ptr noundef %111, i32 noundef 8450509, ptr noundef nonnull %buf, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %do.body190, label %if.end166.do.body409_crit_edge

if.end166.do.body409_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

do.body190:                                       ; preds = %if.end166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_init.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_init, %if.then202)) #9
          to label %for.body212 [label %if.then202], !srcloc !194

if.then202:                                       ; preds = %do.body190
  call void @__sanitizer_cov_trace_pc() #11
  %dev203 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_init.__UNIQUE_ID_ddebug294, ptr noundef %dev203, ptr noundef nonnull @.str.19, i32 noundef %104, i32 noundef %conv171) #9
  br label %for.body212

for.cond209:                                      ; preds = %for.body212
  %inc227 = add nuw nsw i32 %i.1562, 1
  %exitcond.not = icmp eq i32 %inc227, 26
  br i1 %exitcond.not, label %for.end228, label %for.cond209.for.body212_crit_edge

for.cond209.for.body212_crit_edge:                ; preds = %for.cond209
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body212

for.body212:                                      ; preds = %for.cond209.for.body212_crit_edge, %if.then202, %do.body190
  %i.1562 = phi i32 [ %inc227, %for.cond209.for.body212_crit_edge ], [ 0, %do.body190 ], [ 0, %if.then202 ]
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %arrayidx214 = getelementptr [26 x %struct.reg_val_mask], ptr %tab, i32 0, i32 %i.1562
  %114 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx214, align 4
  %mask217 = getelementptr [26 x %struct.reg_val_mask], ptr %tab, i32 0, i32 %i.1562, i32 2
  %116 = ptrtoint ptr %mask217 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %mask217, align 1
  %conv218 = zext i8 %117 to i32
  %val220 = getelementptr [26 x %struct.reg_val_mask], ptr %tab, i32 0, i32 %i.1562, i32 1
  %118 = ptrtoint ptr %val220 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %val220, align 4
  %conv221 = zext i8 %119 to i32
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef %115, i32 noundef %conv218, i32 noundef %conv221, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool223.not = icmp eq i32 %call.i, 0
  br i1 %tobool223.not, label %for.cond209, label %for.body212.do.body409_crit_edge

for.body212.do.body409_crit_edge:                 ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

for.end228:                                       ; preds = %for.cond209
  %dyn0_clk = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 3, i32 5
  %120 = ptrtoint ptr %dyn0_clk to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %dyn0_clk, align 8, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool230.not = icmp eq i8 %121, 0
  br i1 %tobool230.not, label %for.end228.if.end237_crit_edge, label %if.then231

for.end228.if.end237_crit_edge:                   ; preds = %for.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237

if.then231:                                       ; preds = %for.end228
  %122 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap, align 4
  %call233 = call i32 @regmap_write(ptr noundef %123, i32 noundef 8453032, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.then231.if.end237_crit_edge, label %if.then231.do.body409_crit_edge

if.then231.do.body409_crit_edge:                  ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

if.then231.if.end237_crit_edge:                   ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237

if.end237:                                        ; preds = %if.then231.if.end237_crit_edge, %for.end228.if.end237_crit_edge
  %ts_mode = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 3, i32 3
  %124 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load = load i8, ptr %ts_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %cmp240 = icmp ult i8 %bf.load, 64
  %125 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap, align 4
  br i1 %cmp240, label %if.then242, label %if.else

if.then242:                                       ; preds = %if.end237
  %call.i544 = call i32 @regmap_update_bits_base(ptr noundef %126, i32 noundef 8452517, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i544)
  %tobool245.not = icmp eq i32 %call.i544, 0
  br i1 %tobool245.not, label %if.end247, label %if.then242.do.body409_crit_edge

if.then242.do.body409_crit_edge:                  ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

if.end247:                                        ; preds = %if.then242
  %127 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap, align 4
  %call.i545 = call i32 @regmap_update_bits_base(ptr noundef %128, i32 noundef 8452533, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i545)
  %tobool250.not = icmp eq i32 %call.i545, 0
  br i1 %tobool250.not, label %if.end247.do.body264_crit_edge, label %if.end247.do.body409_crit_edge

if.end247.do.body409_crit_edge:                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

if.end247.do.body264_crit_edge:                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body264

if.else:                                          ; preds = %if.end237
  %call.i546 = call i32 @regmap_update_bits_base(ptr noundef %126, i32 noundef 8452496, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i546)
  %tobool255.not = icmp eq i32 %call.i546, 0
  br i1 %tobool255.not, label %if.end257, label %if.else.do.body409_crit_edge

if.else.do.body409_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

if.end257:                                        ; preds = %if.else
  %129 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap, align 4
  %call.i547 = call i32 @regmap_update_bits_base(ptr noundef %130, i32 noundef 8452533, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i547)
  %tobool260.not = icmp eq i32 %call.i547, 0
  br i1 %tobool260.not, label %if.end257.do.body264_crit_edge, label %if.end257.do.body409_crit_edge

if.end257.do.body409_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

if.end257.do.body264_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body264

do.body264:                                       ; preds = %if.end257.do.body264_crit_edge, %if.end247.do.body264_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_init.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_init, %if.then276)) #9
          to label %do.end280 [label %if.then276], !srcloc !194

if.then276:                                       ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #11
  %dev277 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_init.__UNIQUE_ID_ddebug295, ptr noundef %dev277, ptr noundef nonnull @.str.20) #9
  br label %do.end280

do.end280:                                        ; preds = %if.then276, %do.body264
  %131 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %tuner, align 1
  %133 = zext i8 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %132, label %sw.default [
    i8 56, label %do.end280.sw.epilog_crit_edge
    i8 81, label %do.end280.sw.epilog_crit_edge578
    i8 82, label %do.end280.sw.epilog_crit_edge579
    i8 96, label %do.end280.sw.bb284_crit_edge
    i8 97, label %do.end280.sw.bb284_crit_edge580
    i8 98, label %do.end280.sw.bb284_crit_edge581
  ]

do.end280.sw.bb284_crit_edge581:                  ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb284

do.end280.sw.bb284_crit_edge580:                  ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb284

do.end280.sw.bb284_crit_edge:                     ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb284

do.end280.sw.epilog_crit_edge579:                 ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end280.sw.epilog_crit_edge578:                 ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end280.sw.epilog_crit_edge:                    ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb284:                                         ; preds = %do.end280.sw.bb284_crit_edge, %do.end280.sw.bb284_crit_edge580, %do.end280.sw.bb284_crit_edge581
  br label %sw.epilog

sw.default:                                       ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb284, %do.end280.sw.epilog_crit_edge, %do.end280.sw.epilog_crit_edge578, %do.end280.sw.epilog_crit_edge579
  %init.0 = phi ptr [ @ofsm_init, %sw.default ], [ @ofsm_init_it9135_v2, %sw.bb284 ], [ @ofsm_init_it9135_v1, %do.end280.sw.epilog_crit_edge ], [ @ofsm_init_it9135_v1, %do.end280.sw.epilog_crit_edge578 ], [ @ofsm_init_it9135_v1, %do.end280.sw.epilog_crit_edge579 ]
  %len.0 = phi i32 [ 108, %sw.default ], [ 95, %sw.bb284 ], [ 108, %do.end280.sw.epilog_crit_edge ], [ 108, %do.end280.sw.epilog_crit_edge578 ], [ 108, %do.end280.sw.epilog_crit_edge579 ]
  %call285 = call fastcc i32 @af9033_wr_reg_val_tab(ptr noundef %1, ptr noundef nonnull %init.0, i32 noundef %len.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  br i1 %tobool286.not, label %do.body289, label %sw.epilog.do.body409_crit_edge

sw.epilog.do.body409_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

do.body289:                                       ; preds = %sw.epilog
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_init.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_init, %if.then301)) #9
          to label %do.end305 [label %if.then301], !srcloc !194

if.then301:                                       ; preds = %do.body289
  call void @__sanitizer_cov_trace_pc() #11
  %dev302 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_init.__UNIQUE_ID_ddebug296, ptr noundef %dev302, ptr noundef nonnull @.str.21) #9
  br label %do.end305

do.end305:                                        ; preds = %if.then301, %do.body289
  %134 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %tuner, align 1
  %136 = zext i8 %135 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %135, label %do.body322 [
    i8 39, label %do.end305.sw.epilog342_crit_edge
    i8 40, label %sw.bb310
    i8 -96, label %sw.bb311
    i8 -95, label %sw.bb312
    i8 50, label %sw.bb313
    i8 46, label %sw.bb314
    i8 56, label %sw.bb315
    i8 81, label %sw.bb316
    i8 82, label %sw.bb317
    i8 96, label %sw.bb318
    i8 97, label %sw.bb319
    i8 98, label %sw.bb320
  ]

do.end305.sw.epilog342_crit_edge:                 ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb310:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb311:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb312:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb313:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb314:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb315:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb316:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb317:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb318:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb319:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

sw.bb320:                                         ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog342

do.body322:                                       ; preds = %do.end305
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_init, %if.then334)) #9
          to label %do.body409 [label %if.then334], !srcloc !194

if.then334:                                       ; preds = %do.body322
  call void @__sanitizer_cov_trace_pc() #11
  %dev335 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %137 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %tuner, align 1
  %conv338 = zext i8 %138 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_init.__UNIQUE_ID_ddebug297, ptr noundef %dev335, ptr noundef nonnull @.str.22, i32 noundef %conv338) #9
  br label %do.body409

sw.epilog342:                                     ; preds = %sw.bb320, %sw.bb319, %sw.bb318, %sw.bb317, %sw.bb316, %sw.bb315, %sw.bb314, %sw.bb313, %sw.bb312, %sw.bb311, %sw.bb310, %do.end305.sw.epilog342_crit_edge
  %init.1 = phi ptr [ @tuner_init_it9135_62, %sw.bb320 ], [ @tuner_init_it9135_61, %sw.bb319 ], [ @tuner_init_it9135_60, %sw.bb318 ], [ @tuner_init_it9135_52, %sw.bb317 ], [ @tuner_init_it9135_51, %sw.bb316 ], [ @tuner_init_it9135_38, %sw.bb315 ], [ @tuner_init_fc0012, %sw.bb314 ], [ @tuner_init_fc2580, %sw.bb313 ], [ @tuner_init_tda18218, %sw.bb312 ], [ @tuner_init_mxl5007t, %sw.bb311 ], [ @tuner_init_fc0011, %sw.bb310 ], [ @tuner_init_tua9001, %do.end305.sw.epilog342_crit_edge ]
  %len.1 = phi i32 [ 210, %sw.bb320 ], [ 209, %sw.bb319 ], [ 209, %sw.bb318 ], [ 212, %sw.bb317 ], [ 212, %sw.bb316 ], [ 212, %sw.bb315 ], [ 38, %sw.bb314 ], [ 34, %sw.bb313 ], [ 29, %sw.bb312 ], [ 30, %sw.bb311 ], [ 56, %sw.bb310 ], [ 37, %do.end305.sw.epilog342_crit_edge ]
  %call343 = call fastcc i32 @af9033_wr_reg_val_tab(ptr noundef %1, ptr noundef nonnull %init.1, i32 noundef %len.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call343)
  %tobool344.not = icmp eq i32 %call343, 0
  br i1 %tobool344.not, label %if.end346, label %sw.epilog342.do.body409_crit_edge

sw.epilog342.do.body409_crit_edge:                ; preds = %sw.epilog342
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

if.end346:                                        ; preds = %sw.epilog342
  %139 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %139)
  %bf.load349 = load i8, ptr %ts_mode, align 2
  %bf.lshr350.mask = and i8 %bf.load349, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr350.mask)
  %cmp352 = icmp eq i8 %bf.lshr350.mask, -128
  br i1 %cmp352, label %if.then354, label %if.end346.if.end370_crit_edge

if.end346.if.end370_crit_edge:                    ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end370

if.then354:                                       ; preds = %if.end346
  %140 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap, align 4
  %call.i548 = call i32 @regmap_update_bits_base(ptr noundef %141, i32 noundef 55580, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i548)
  %tobool357.not = icmp eq i32 %call.i548, 0
  br i1 %tobool357.not, label %if.end359, label %if.then354.do.body409_crit_edge

if.then354.do.body409_crit_edge:                  ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

if.end359:                                        ; preds = %if.then354
  %142 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regmap, align 4
  %call.i549 = call i32 @regmap_update_bits_base(ptr noundef %143, i32 noundef 55575, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i549)
  %tobool362.not = icmp eq i32 %call.i549, 0
  br i1 %tobool362.not, label %if.end364, label %if.end359.do.body409_crit_edge

if.end359.do.body409_crit_edge:                   ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

if.end364:                                        ; preds = %if.end359
  %144 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regmap, align 4
  %call.i550 = call i32 @regmap_update_bits_base(ptr noundef %145, i32 noundef 55574, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i550)
  %tobool367.not = icmp eq i32 %call.i550, 0
  br i1 %tobool367.not, label %if.end364.if.end370_crit_edge, label %if.end364.do.body409_crit_edge

if.end364.do.body409_crit_edge:                   ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

if.end364.if.end370_crit_edge:                    ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end370

if.end370:                                        ; preds = %if.end364.if.end370_crit_edge, %if.end346.if.end370_crit_edge
  %146 = ptrtoint ptr %tuner to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %tuner, align 1
  %.off = add i8 %147, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %sw.bb374, label %if.end370.sw.epilog380_crit_edge

if.end370.sw.epilog380_crit_edge:                 ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog380

sw.bb374:                                         ; preds = %if.end370
  %148 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap, align 4
  %call376 = call i32 @regmap_write(ptr noundef %149, i32 noundef 8388608, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call376)
  %tobool377.not = icmp eq i32 %call376, 0
  br i1 %tobool377.not, label %sw.bb374.sw.epilog380_crit_edge, label %sw.bb374.do.body409_crit_edge

sw.bb374.do.body409_crit_edge:                    ; preds = %sw.bb374
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body409

sw.bb374.sw.epilog380_crit_edge:                  ; preds = %sw.bb374
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog380

sw.epilog380:                                     ; preds = %sw.bb374.sw.epilog380_crit_edge, %if.end370.sw.epilog380_crit_edge
  %bandwidth_hz = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 6
  %150 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %bandwidth_hz, align 4
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %151 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %strength, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %152 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %stat, align 1
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %153 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %cnr, align 1
  %stat386 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %154 = ptrtoint ptr %stat386 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %stat386, align 1
  %block_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %155 = ptrtoint ptr %block_count to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 1, ptr %block_count, align 1
  %stat391 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %156 = ptrtoint ptr %stat391 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %stat391, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %157 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %block_error, align 2
  %stat396 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %158 = ptrtoint ptr %stat396 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %stat396, align 1
  %post_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %159 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %post_bit_count, align 1
  %stat401 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %160 = ptrtoint ptr %stat401 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %stat401, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %161 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %post_bit_error, align 4
  %stat406 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %162 = ptrtoint ptr %stat406 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %stat406, align 1
  br label %cleanup

do.body409:                                       ; preds = %sw.bb374.do.body409_crit_edge, %if.end364.do.body409_crit_edge, %if.end359.do.body409_crit_edge, %if.then354.do.body409_crit_edge, %sw.epilog342.do.body409_crit_edge, %if.then334, %do.body322, %sw.epilog.do.body409_crit_edge, %if.end257.do.body409_crit_edge, %if.else.do.body409_crit_edge, %if.end247.do.body409_crit_edge, %if.then242.do.body409_crit_edge, %if.then231.do.body409_crit_edge, %for.body212.do.body409_crit_edge, %if.end166.do.body409_crit_edge, %do.end162, %do.end.do.body409_crit_edge
  %ret.0 = phi i32 [ %call125, %do.end.do.body409_crit_edge ], [ -19, %do.end162 ], [ %call186, %if.end166.do.body409_crit_edge ], [ %call233, %if.then231.do.body409_crit_edge ], [ %call.i544, %if.then242.do.body409_crit_edge ], [ %call.i545, %if.end247.do.body409_crit_edge ], [ %call285, %sw.epilog.do.body409_crit_edge ], [ %call343, %sw.epilog342.do.body409_crit_edge ], [ %call.i548, %if.then354.do.body409_crit_edge ], [ %call.i549, %if.end359.do.body409_crit_edge ], [ %call.i550, %if.end364.do.body409_crit_edge ], [ %call376, %sw.bb374.do.body409_crit_edge ], [ %call.i546, %if.else.do.body409_crit_edge ], [ %call.i547, %if.end257.do.body409_crit_edge ], [ -19, %if.then334 ], [ -19, %do.body322 ], [ %call.i, %for.body212.do.body409_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_init.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_init, %if.then421)) #9
          to label %cleanup [label %if.then421], !srcloc !194

if.then421:                                       ; preds = %do.body409
  call void @__sanitizer_cov_trace_pc() #11
  %dev422 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_init.__UNIQUE_ID_ddebug298, ptr noundef %dev422, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then421, %do.body409, %sw.epilog380
  %retval.0 = phi i32 [ 0, %sw.epilog380 ], [ %ret.0, %if.then421 ], [ %ret.0, %do.body409 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %tab) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
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
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #9
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !197
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_sleep.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_sleep, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_sleep.__UNIQUE_ID_ddebug299, ptr noundef %dev4, ptr noundef nonnull @.str.16) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 8388684, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body72_crit_edge

do.end.do.body72_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.end8:                                          ; preds = %do.end
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 8388608, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.do.body72_crit_edge

if.end8.do.body72_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.end13:                                         ; preds = %if.end8
  %call14 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call14, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 320) #9
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call28133 = call i32 @regmap_read(ptr noundef %10, i32 noundef 8388684, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28133)
  %tobool29.not134 = icmp eq i32 %call28133, 0
  br i1 %tobool29.not134, label %if.end13.lor.lhs.false_crit_edge, label %if.end13.do.body72_crit_edge

if.end13.do.body72_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.end13.lor.lhs.false_crit_edge:                 ; preds = %if.end13
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then42.lor.lhs.false_crit_edge, %if.end13.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp30 = icmp eq i32 %12, 0
  br i1 %cmp30, label %lor.lhs.false.if.end52_crit_edge, label %land.lhs.true

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call34 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call34, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call34, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then42

if.then42:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #9
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call28 = call i32 @regmap_read(ptr noundef %14, i32 noundef 8388684, ptr noundef nonnull %utmp) #9
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then42.lor.lhs.false_crit_edge, label %if.then42.do.body72_crit_edge

if.then42.do.body72_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.then42.lor.lhs.false_crit_edge:                ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call39 = call i32 @regmap_read(ptr noundef %16, i32 noundef 8388684, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool45.not = icmp eq i32 %call39, 0
  br i1 %tobool45.not, label %lor.rhs, label %for.end.do.body72_crit_edge

for.end.do.body72_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

lor.rhs:                                          ; preds = %for.end
  %17 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp46 = icmp eq i32 %.pr, 0
  br i1 %cmp46, label %lor.rhs.if.end52_crit_edge, label %lor.rhs.do.body72_crit_edge

lor.rhs.do.body72_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

lor.rhs.if.end52_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end52:                                         ; preds = %lor.rhs.if.end52_crit_edge, %lor.lhs.false.if.end52_crit_edge
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 8452900, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool55.not = icmp eq i32 %call.i, 0
  br i1 %tobool55.not, label %if.end57, label %if.end52.do.body72_crit_edge

if.end52.do.body72_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.end57:                                         ; preds = %if.end52
  %ts_mode = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %ts_mode, align 2
  %bf.lshr.mask = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr.mask)
  %cmp58 = icmp eq i8 %bf.lshr.mask, -128
  br i1 %cmp58, label %if.then60, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60:                                        ; preds = %if.end57
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i118 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 55575, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool63.not = icmp eq i32 %call.i118, 0
  br i1 %tobool63.not, label %if.end65, label %if.then60.do.body72_crit_edge

if.then60.do.body72_crit_edge:                    ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.end65:                                         ; preds = %if.then60
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i119 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 55574, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool68.not = icmp eq i32 %call.i119, 0
  br i1 %tobool68.not, label %if.end65.cleanup_crit_edge, label %if.end65.do.body72_crit_edge

if.end65.do.body72_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body72:                                        ; preds = %if.end65.do.body72_crit_edge, %if.then60.do.body72_crit_edge, %if.end52.do.body72_crit_edge, %lor.rhs.do.body72_crit_edge, %for.end.do.body72_crit_edge, %if.then42.do.body72_crit_edge, %if.end13.do.body72_crit_edge, %if.end8.do.body72_crit_edge, %do.end.do.body72_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end.do.body72_crit_edge ], [ %call10, %if.end8.do.body72_crit_edge ], [ %call.i, %if.end52.do.body72_crit_edge ], [ %call.i118, %if.then60.do.body72_crit_edge ], [ %call.i119, %if.end65.do.body72_crit_edge ], [ %call28133, %if.end13.do.body72_crit_edge ], [ -110, %lor.rhs.do.body72_crit_edge ], [ %call39, %for.end.do.body72_crit_edge ], [ %call28, %if.then42.do.body72_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_sleep.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_sleep, %if.then84)) #9
          to label %cleanup [label %if.then84], !srcloc !194

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  %dev85 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_sleep.__UNIQUE_ID_ddebug300, ptr noundef %dev85, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %do.body72, %if.end65.cleanup_crit_edge, %if.end57.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ], [ %ret.0, %if.then84 ], [ %ret.0, %do.body72 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  %if_frequency = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #9
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !197
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !197
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !197
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_frequency) #9
  %9 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %if_frequency, align 4, !annotation !197
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_set_frontend.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_set_frontend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %12 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bandwidth_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_set_frontend.__UNIQUE_ID_ddebug301, ptr noundef %dev5, ptr noundef nonnull @.str.29, i32 noundef %11, i32 noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bandwidth_hz6 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %14 = ptrtoint ptr %bandwidth_hz6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bandwidth_hz6, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %15, label %do.body9 [
    i32 6000000, label %do.end.sw.epilog_crit_edge
    i32 7000000, label %sw.bb7
    i32 8000000, label %sw.bb8
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_set_frontend.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_set_frontend, %if.then21)) #9
          to label %do.body385 [label %if.then21], !srcloc !194

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_set_frontend.__UNIQUE_ID_ddebug302, ptr noundef %dev22, ptr noundef nonnull @.str.30) #9
  br label %do.body385

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %do.end.sw.epilog_crit_edge
  %bandwidth_reg_val.0 = phi i32 [ 2, %sw.bb8 ], [ 1, %sw.bb7 ], [ 0, %do.end.sw.epilog_crit_edge ]
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %17 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_params, align 4
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %sw.epilog.if.end32_crit_edge, label %if.then27

sw.epilog.if.end32_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then27:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 %18(ptr noundef %fe) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %sw.epilog.if.end32_crit_edge
  %19 = ptrtoint ptr %bandwidth_hz6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth_hz6, align 4
  %bandwidth_hz34 = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %bandwidth_hz34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bandwidth_hz34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.not = icmp eq i32 %20, %22
  br i1 %cmp.not, label %if.end32.if.end59_crit_edge, label %for.cond.preheader

if.end32.if.end59_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.cond.preheader:                               ; preds = %if.end32
  %cfg = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cfg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %24)
  %cmp38 = icmp eq i32 %24, 12000000
  br i1 %cmp38, label %land.lhs.true, label %for.cond.preheader.do.end49_crit_edge

for.cond.preheader.do.end49_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

land.lhs.true:                                    ; preds = %for.cond.preheader
  %25 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %20, label %land.lhs.true.do.end49_crit_edge [
    i32 8000000, label %land.lhs.true.if.end53_crit_edge
    i32 7000000, label %if.end53.fold.split
    i32 6000000, label %if.end53.fold.split607
  ]

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

land.lhs.true.do.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

do.end49:                                         ; preds = %land.lhs.true.do.end49_crit_edge, %for.cond.preheader.do.end49_crit_edge
  %dev50 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cfg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.31, i32 noundef %27) #13
  br label %do.body385

if.end53.fold.split:                              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end53.fold.split607:                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.end53:                                         ; preds = %if.end53.fold.split607, %if.end53.fold.split, %land.lhs.true.if.end53_crit_edge
  %i.0602.lcssa = phi i32 [ 0, %land.lhs.true.if.end53_crit_edge ], [ 1, %if.end53.fold.split ], [ 2, %if.end53.fold.split607 ]
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %val = getelementptr [3 x %struct.coeff], ptr @coeff_lut, i32 0, i32 %i.0602.lcssa, i32 2
  %call55 = tail call i32 @regmap_bulk_write(ptr noundef %29, i32 noundef 8388609, ptr noundef %val, i32 noundef 36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end53.if.end59_crit_edge, label %if.end53.do.body385_crit_edge

if.end53.do.body385_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body385

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end59:                                         ; preds = %if.end53.if.end59_crit_edge, %if.end32.if.end59_crit_edge
  %30 = ptrtoint ptr %bandwidth_hz6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bandwidth_hz6, align 4
  %32 = ptrtoint ptr %bandwidth_hz34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bandwidth_hz34, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp62.not = icmp eq i32 %31, %33
  br i1 %cmp62.not, label %if.end59.if.end346_crit_edge, label %for.cond64.preheader

if.end59.if.end346_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end346

for.cond64.preheader:                             ; preds = %if.end59
  %cfg69 = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %cfg69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cfg69, align 8
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %35, label %do.end81 [
    i32 16384000, label %for.cond64.preheader.if.end85_crit_edge
    i32 20480000, label %if.end85.fold.split
    i32 36000000, label %if.end85.fold.split608
    i32 30000000, label %if.end85.fold.split609
    i32 26000000, label %if.end85.fold.split610
    i32 28000000, label %if.end85.fold.split611
    i32 32000000, label %if.end85.fold.split612
    i32 34000000, label %if.end85.fold.split613
    i32 24000000, label %if.end85.fold.split614
    i32 22000000, label %if.end85.fold.split615
    i32 12000000, label %if.end85.fold.split616
  ]

for.cond64.preheader.if.end85_crit_edge:          ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

do.end81:                                         ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %dev82 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %cfg69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cfg69, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev82, ptr noundef nonnull @.str.33, i32 noundef %38) #13
  br label %do.body385

if.end85.fold.split:                              ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85.fold.split608:                           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85.fold.split609:                           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85.fold.split610:                           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85.fold.split611:                           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85.fold.split612:                           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85.fold.split613:                           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85.fold.split614:                           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85.fold.split615:                           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85.fold.split616:                           ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.end85:                                         ; preds = %if.end85.fold.split616, %if.end85.fold.split615, %if.end85.fold.split614, %if.end85.fold.split613, %if.end85.fold.split612, %if.end85.fold.split611, %if.end85.fold.split610, %if.end85.fold.split609, %if.end85.fold.split608, %if.end85.fold.split, %for.cond64.preheader.if.end85_crit_edge
  %i.1604.lcssa = phi i32 [ 0, %for.cond64.preheader.if.end85_crit_edge ], [ 1, %if.end85.fold.split ], [ 2, %if.end85.fold.split608 ], [ 3, %if.end85.fold.split609 ], [ 4, %if.end85.fold.split610 ], [ 5, %if.end85.fold.split611 ], [ 6, %if.end85.fold.split612 ], [ 7, %if.end85.fold.split613 ], [ 8, %if.end85.fold.split614 ], [ 9, %if.end85.fold.split615 ], [ 10, %if.end85.fold.split616 ]
  %adc = getelementptr [11 x %struct.clock_adc], ptr @clock_adc_lut, i32 0, i32 %i.1604.lcssa, i32 1
  %39 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %adc, align 4
  %adc_multiplier = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %adc_multiplier to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %adc_multiplier, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp88 = icmp eq i8 %42, 1
  %mul = zext i1 %cmp88 to i32
  %spec.select = shl i32 %40, %mul
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %43 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_if_frequency, align 4
  %tobool94.not = icmp eq ptr %44, null
  br i1 %tobool94.not, label %if.else, label %if.then95

if.then95:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %call99 = call i32 %44(ptr noundef %fe, ptr noundef nonnull %if_frequency) #9
  br label %if.end100

if.else:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %if_frequency, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.else, %if.then95
  %46 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %if_frequency, align 4
  %conv101 = zext i32 %47 to i64
  %mul102 = shl nuw nsw i64 %conv101, 23
  %div553 = lshr i32 %spec.select, 1
  %conv103 = zext i32 %div553 to i64
  %add = add nuw nsw i64 %mul102, %conv103
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp280 = icmp ult i64 %add, 4294967296
  br i1 %cmp280, label %if.then288, label %if.else294, !prof !198

if.then288:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %conv289 = trunc i64 %add to i32
  %div292 = udiv i32 %conv289, %spec.select
  br label %if.end298

if.else294:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %48 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select, i64 %add) #14, !srcloc !199
  %asmresult1.i = extractvalue { i64, i64 } %48, 1
  %extract.t596 = trunc i64 %asmresult1.i to i32
  br label %if.end298

if.end298:                                        ; preds = %if.else294, %if.then288
  %_tmp.0.off0 = phi i32 [ %div292, %if.then288 ], [ %extract.t596, %if.else294 ]
  %spec_inv = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 3, i32 4
  %49 = ptrtoint ptr %spec_inv to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %spec_inv, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool303.not = icmp eq i8 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool305.not = icmp eq i32 %47, 0
  %sub307 = sub i32 8388608, %_tmp.0.off0
  %spec.select555 = select i1 %tobool305.not, i32 %_tmp.0.off0, i32 %sub307
  %utmp.0 = select i1 %tobool303.not, i32 %spec.select555, i32 %_tmp.0.off0
  %conv311 = trunc i32 %utmp.0 to i8
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv311, ptr %buf, align 1
  %shr313 = lshr i32 %utmp.0, 8
  %conv315 = trunc i32 %shr313 to i8
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv315, ptr %5, align 1
  %shr317 = lshr i32 %utmp.0, 16
  %conv319 = trunc i32 %shr317 to i8
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv319, ptr %7, align 1
  %regmap321 = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %regmap321 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap321, align 4
  %call323 = call i32 @regmap_bulk_write(ptr noundef %55, i32 noundef 8388649, ptr noundef nonnull %buf, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call323)
  %tobool324.not = icmp eq i32 %call323, 0
  br i1 %tobool324.not, label %do.body327, label %if.end298.do.body385_crit_edge

if.end298.do.body385_crit_edge:                   ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body385

do.body327:                                       ; preds = %if.end298
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_set_frontend.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_set_frontend, %if.then339)) #9
          to label %do.end343 [label %if.then339], !srcloc !194

if.then339:                                       ; preds = %do.body327
  call void @__sanitizer_cov_trace_pc() #11
  %dev340 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_set_frontend.__UNIQUE_ID_ddebug303, ptr noundef %dev340, ptr noundef nonnull @.str.35, i32 noundef %utmp.0) #9
  br label %do.end343

do.end343:                                        ; preds = %if.then339, %do.body327
  %56 = ptrtoint ptr %bandwidth_hz6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bandwidth_hz6, align 4
  %58 = ptrtoint ptr %bandwidth_hz34 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %bandwidth_hz34, align 4
  br label %if.end346

if.end346:                                        ; preds = %do.end343, %if.end59.if.end346_crit_edge
  %regmap347 = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %regmap347 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap347, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 8452356, i32 noundef 3, i32 noundef %bandwidth_reg_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool350.not = icmp eq i32 %call.i, 0
  br i1 %tobool350.not, label %if.end352, label %if.end346.do.body385_crit_edge

if.end346.do.body385_crit_edge:                   ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body385

if.end352:                                        ; preds = %if.end346
  %61 = ptrtoint ptr %regmap347 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap347, align 4
  %call354 = call i32 @regmap_write(ptr noundef %62, i32 noundef 8388672, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %if.end357, label %if.end352.do.body385_crit_edge

if.end352.do.body385_crit_edge:                   ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body385

if.end357:                                        ; preds = %if.end352
  %63 = ptrtoint ptr %regmap347 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap347, align 4
  %call359 = call i32 @regmap_write(ptr noundef %64, i32 noundef 8388679, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359)
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %if.end362, label %if.end357.do.body385_crit_edge

if.end357.do.body385_crit_edge:                   ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body385

if.end362:                                        ; preds = %if.end357
  %65 = ptrtoint ptr %regmap347 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap347, align 4
  %call.i566 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 8452505, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i566)
  %tobool365.not = icmp eq i32 %call.i566, 0
  br i1 %tobool365.not, label %if.end367, label %if.end362.do.body385_crit_edge

if.end362.do.body385_crit_edge:                   ; preds = %if.end362
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body385

if.end367:                                        ; preds = %if.end362
  %67 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 230000000, i32 %68)
  %cmp369 = icmp ugt i32 %68, 230000000
  %. = zext i1 %cmp369 to i32
  %69 = ptrtoint ptr %regmap347 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap347, align 4
  %call376 = call i32 @regmap_write(ptr noundef %70, i32 noundef 8388683, i32 noundef %.) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call376)
  %tobool377.not = icmp eq i32 %call376, 0
  br i1 %tobool377.not, label %if.end379, label %if.end367.do.body385_crit_edge

if.end367.do.body385_crit_edge:                   ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body385

if.end379:                                        ; preds = %if.end367
  %71 = ptrtoint ptr %regmap347 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap347, align 4
  %call381 = call i32 @regmap_write(ptr noundef %72, i32 noundef 8388608, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call381)
  %tobool382.not = icmp eq i32 %call381, 0
  br i1 %tobool382.not, label %if.end379.cleanup_crit_edge, label %if.end379.do.body385_crit_edge

if.end379.do.body385_crit_edge:                   ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body385

if.end379.cleanup_crit_edge:                      ; preds = %if.end379
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body385:                                       ; preds = %if.end379.do.body385_crit_edge, %if.end367.do.body385_crit_edge, %if.end362.do.body385_crit_edge, %if.end357.do.body385_crit_edge, %if.end352.do.body385_crit_edge, %if.end346.do.body385_crit_edge, %if.end298.do.body385_crit_edge, %do.end81, %if.end53.do.body385_crit_edge, %do.end49, %if.then21, %do.body9
  %ret.0 = phi i32 [ -22, %do.end49 ], [ %call55, %if.end53.do.body385_crit_edge ], [ -22, %do.end81 ], [ %call323, %if.end298.do.body385_crit_edge ], [ %call.i, %if.end346.do.body385_crit_edge ], [ %call354, %if.end352.do.body385_crit_edge ], [ %call359, %if.end357.do.body385_crit_edge ], [ %call.i566, %if.end362.do.body385_crit_edge ], [ %call376, %if.end367.do.body385_crit_edge ], [ %call381, %if.end379.do.body385_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body9 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_set_frontend.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_set_frontend, %if.then397)) #9
          to label %cleanup [label %if.then397], !srcloc !194

if.then397:                                       ; preds = %do.body385
  call void @__sanitizer_cov_trace_pc() #11
  %dev398 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_set_frontend.__UNIQUE_ID_ddebug304, ptr noundef %dev398, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then397, %do.body385, %if.end379.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end379.cleanup_crit_edge ], [ %ret.0, %if.then397 ], [ %ret.0, %do.body385 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_frequency) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @af9033_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2000, ptr %fesettings, align 4
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
define internal i32 @af9033_get_frontend(ptr nocapture noundef readonly %fe, ptr noundef writeonly %c) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #9
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %9 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %buf, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_get_frontend.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_get_frontend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_get_frontend.__UNIQUE_ID_ddebug305, ptr noundef %dev4, ptr noundef nonnull @.str.16) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call5 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 8452352, ptr noundef nonnull %buf, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.body87

if.end8:                                          ; preds = %do.end
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf, align 8
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %switch = icmp ult i8 %15, 2
  br i1 %switch, label %sw.epilog.sink.split, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %and = zext i8 %15 to i32
  %transmission_mode10 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %16 = ptrtoint ptr %transmission_mode10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %transmission_mode10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end8.sw.epilog_crit_edge
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %4, align 1
  %19 = and i8 %18, 3
  %and14 = zext i8 %19 to i32
  %guard_interval21 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %20 = ptrtoint ptr %guard_interval21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and14, ptr %guard_interval21, align 4
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %5, align 2
  %23 = and i8 %22, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %switch152 = icmp ult i8 %23, 4
  br i1 %switch152, label %sw.epilog34.sink.split, label %sw.epilog.sw.epilog34_crit_edge

sw.epilog.sw.epilog34_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog34

sw.epilog34.sink.split:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %and26 = zext i8 %23 to i32
  %hierarchy33 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %24 = ptrtoint ptr %hierarchy33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and26, ptr %hierarchy33, align 4
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.epilog34.sink.split, %sw.epilog.sw.epilog34_crit_edge
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %6, align 1
  %27 = and i8 %26, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %.not = icmp eq i8 %27, 3
  br i1 %.not, label %sw.epilog34.sw.epilog44_crit_edge, label %switch.lookup

sw.epilog34.sw.epilog44_crit_edge:                ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog44

switch.lookup:                                    ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #11
  %and38 = zext i8 %27 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.af9033_get_frontend, i32 0, i32 %and38
  %28 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load = load i32, ptr %switch.gep, align 4
  %modulation43 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %29 = ptrtoint ptr %modulation43 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %switch.load, ptr %modulation43, align 4
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %switch.lookup, %sw.epilog34.sw.epilog44_crit_edge
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %7, align 4
  %32 = and i8 %31, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %32)
  %.not153 = icmp eq i8 %32, 3
  br i1 %.not153, label %sw.epilog44.sw.epilog54_crit_edge, label %switch.lookup148

sw.epilog44.sw.epilog54_crit_edge:                ; preds = %sw.epilog44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog54

switch.lookup148:                                 ; preds = %sw.epilog44
  call void @__sanitizer_cov_trace_pc() #11
  %and48 = zext i8 %32 to i32
  %switch.idx.mult = mul nuw nsw i32 %and48, 1000000
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 6000000
  %bandwidth_hz53 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 7
  %33 = ptrtoint ptr %bandwidth_hz53 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %switch.offset, ptr %bandwidth_hz53, align 4
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %switch.lookup148, %sw.epilog44.sw.epilog54_crit_edge
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %8, align 2
  %36 = and i8 %35, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %36)
  %37 = icmp ult i8 %36, 6
  br i1 %37, label %switch.lookup149, label %sw.epilog54.sw.epilog70_crit_edge

sw.epilog54.sw.epilog70_crit_edge:                ; preds = %sw.epilog54
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog70

switch.lookup149:                                 ; preds = %sw.epilog54
  call void @__sanitizer_cov_trace_pc() #11
  %and58 = zext i8 %36 to i32
  %switch.gep150 = getelementptr inbounds [6 x i32], ptr @switch.table.af9033_get_frontend.48, i32 0, i32 %and58
  %38 = ptrtoint ptr %switch.gep150 to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load151 = load i32, ptr %switch.gep150, align 4
  %code_rate_HP69 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %39 = ptrtoint ptr %code_rate_HP69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %switch.load151, ptr %code_rate_HP69, align 4
  br label %sw.epilog70

sw.epilog70:                                      ; preds = %switch.lookup149, %sw.epilog54.sw.epilog70_crit_edge
  %40 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %9, align 1
  %42 = and i8 %41, 7
  %and74 = zext i8 %42 to i32
  %43 = zext i32 %and74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %and74, label %sw.epilog70.cleanup_crit_edge [
    i32 0, label %sw.bb75
    i32 1, label %sw.bb76
    i32 2, label %sw.bb78
    i32 3, label %sw.bb80
    i32 4, label %sw.bb82
    i32 5, label %sw.bb84
  ]

sw.epilog70.cleanup_crit_edge:                    ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb75:                                          ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %44 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %code_rate_LP, align 4
  br label %cleanup

sw.bb76:                                          ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP77 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %45 = ptrtoint ptr %code_rate_LP77 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %code_rate_LP77, align 4
  br label %cleanup

sw.bb78:                                          ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP79 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %46 = ptrtoint ptr %code_rate_LP79 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %code_rate_LP79, align 4
  br label %cleanup

sw.bb80:                                          ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP81 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %47 = ptrtoint ptr %code_rate_LP81 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %code_rate_LP81, align 4
  br label %cleanup

sw.bb82:                                          ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP83 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %48 = ptrtoint ptr %code_rate_LP83 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 7, ptr %code_rate_LP83, align 4
  br label %cleanup

sw.bb84:                                          ; preds = %sw.epilog70
  call void @__sanitizer_cov_trace_pc() #11
  %code_rate_LP85 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %49 = ptrtoint ptr %code_rate_LP85 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %code_rate_LP85, align 4
  br label %cleanup

do.body87:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_get_frontend.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_get_frontend, %if.then99)) #9
          to label %cleanup [label %if.then99], !srcloc !194

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  %dev100 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_get_frontend.__UNIQUE_ID_ddebug306, ptr noundef %dev100, ptr noundef nonnull @.str.14, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %do.body87, %sw.bb84, %sw.bb82, %sw.bb80, %sw.bb78, %sw.bb76, %sw.bb75, %sw.epilog70.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #9
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_read_status(ptr noundef %fe, ptr nocapture noundef %status) #2 align 64 {
entry:
  %buf = alloca [7 x i8], align 1
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #9
  %4 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 4
  %8 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 5
  %9 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %10 = call ptr @memset(ptr %buf, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #9
  %11 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %utmp, align 4, !annotation !197
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_read_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_read_status, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_read_status.__UNIQUE_ID_ddebug307, ptr noundef %dev5, ptr noundef nonnull @.str.16) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %status, align 4
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %14, i32 noundef 8388679, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end.do.body305_crit_edge

do.end.do.body305_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body305

if.end9:                                          ; preds = %do.end
  %15 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %utmp, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %16, label %if.end9.if.then13_crit_edge [
    i32 1, label %if.end11.thread
    i32 2, label %if.end9.if.end34_crit_edge
  ]

if.end9.if.end34_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end9.if.then13_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end11.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status, align 4
  %or = or i32 %19, 1
  store i32 %or, ptr %status, align 4
  br label %if.then13

if.then13:                                        ; preds = %if.end11.thread, %if.end9.if.then13_crit_edge
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_read(ptr noundef %21, i32 noundef 8451497, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.do.body305_crit_edge

if.then13.do.body305_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body305

if.end18:                                         ; preds = %if.then13
  %22 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %utmp, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.if.end22_crit_edge, label %if.then20

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  %or21 = or i32 %25, 7
  store i32 %or21, ptr %status, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end18.if.end22_crit_edge
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call24 = call i32 @regmap_read(ptr noundef %27, i32 noundef 8452505, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end22.do.body305_crit_edge

if.end22.do.body305_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body305

if.end27:                                         ; preds = %if.end22
  %28 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %utmp, align 4
  %and29 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end34_crit_edge, label %if.then31

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  %or32 = or i32 %31, 31
  store i32 %or32, ptr %status, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge, %if.end9.if.end34_crit_edge
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %fe_status = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 9
  %34 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %fe_status, align 4
  %and36 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else58, label %if.then38

if.then38:                                        ; preds = %if.end34
  %is_af9035 = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %is_af9035 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_af9035, align 8, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool39.not = icmp eq i8 %36, 0
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.then38
  %call42 = call i32 @regmap_read(ptr noundef %38, i32 noundef 8388682, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.then40.do.body305_crit_edge

if.then40.do.body305_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body305

if.end45:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %utmp, align 4
  %mul = mul i32 %40, -1000
  br label %if.end53

if.else:                                          ; preds = %if.then38
  %call47 = call i32 @regmap_read(ptr noundef %38, i32 noundef 8388855, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.else.do.body305_crit_edge

if.else.do.body305_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body305

if.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %utmp, align 4
  %43 = mul i32 %42, 1000
  %mul52 = add i32 %43, -100000
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.end45
  %tmp.0 = phi i32 [ %mul, %if.end45 ], [ %mul52, %if.end50 ]
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %44 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %strength, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %45 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %stat, align 1
  %conv = sext i32 %tmp.0 to i64
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %conv, ptr %46, align 1
  br label %if.end65

if.else58:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %strength59 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %48 = ptrtoint ptr %strength59 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %strength59, align 4
  %stat62 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %49 = ptrtoint ptr %stat62 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %stat62, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.else58, %if.end53
  %50 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fe_status, align 4
  %and67 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else211, label %if.then69

if.then69:                                        ; preds = %if.end65
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call71 = call i32 @regmap_bulk_read(ptr noundef %53, i32 noundef 8388652, ptr noundef nonnull %buf, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.then69.do.body305_crit_edge

if.then69.do.body305_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body305

if.end74:                                         ; preds = %if.then69
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %5, align 1
  %conv76 = zext i8 %55 to i32
  %shl = shl nuw nsw i32 %conv76, 16
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %4, align 1
  %conv78 = zext i8 %57 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %or80 = or i32 %shl79, %shl
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %buf, align 1
  %conv82 = zext i8 %59 to i32
  %or84 = or i32 %or80, %conv82
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call86 = call i32 @regmap_read(ptr noundef %61, i32 noundef 8451979, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end74.do.body305_crit_edge

if.end74.do.body305_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body305

if.end89:                                         ; preds = %if.end74
  %62 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool90.not = icmp eq i32 %63, 0
  br i1 %tobool90.not, label %if.end89.if.end92_crit_edge, label %if.then91

if.end89.if.end92_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then91:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %or84, %63
  br label %if.end92

if.end92:                                         ; preds = %if.then91, %if.end89.if.end92_crit_edge
  %utmp1.0 = phi i32 [ %div, %if.then91 ], [ %or84, %if.end89.if.end92_crit_edge ]
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call94 = call i32 @regmap_read(ptr noundef %65, i32 noundef 8452352, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end92.do.body305_crit_edge

if.end92.do.body305_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body305

if.end97:                                         ; preds = %if.end92
  %66 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %utmp, align 4
  %and99 = and i32 %67, 3
  %68 = zext i32 %and99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %and99, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %if.end97.sw.epilog_crit_edge
    i32 2, label %sw.bb103
  ]

if.end97.sw.epilog_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %mul100 = shl nsw i32 %utmp1.0, 2
  br label %sw.epilog

sw.bb103:                                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %mul104 = shl nsw i32 %utmp1.0, 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb103, %sw.bb, %if.end97.sw.epilog_crit_edge
  %utmp1.1 = phi i32 [ 0, %sw.default ], [ %mul104, %sw.bb103 ], [ %mul100, %sw.bb ], [ %utmp1.0, %if.end97.sw.epilog_crit_edge ]
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %call107 = call i32 @regmap_read(ptr noundef %70, i32 noundef 8452355, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %sw.epilog.do.body305_crit_edge

sw.epilog.do.body305_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body305

if.end110:                                        ; preds = %sw.epilog
  %71 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %utmp, align 4
  %and112 = and i32 %72, 3
  %73 = zext i32 %and112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %and112, label %if.end110.do.body187_crit_edge [
    i32 0, label %sw.bb113
    i32 1, label %sw.bb133
    i32 2, label %sw.bb159
  ]

if.end110.do.body187_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body187

sw.bb113:                                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %74 = call i32 @llvm.umax.i32(i32 %utmp1.1, i32 653799)
  %75 = call i32 @llvm.umin.i32(i32 %74, i32 1689999)
  %call124 = call i32 @intlog10(i32 noundef %75) #9
  %sub125 = sub nuw nsw i32 1690000, %75
  %call126 = call i32 @intlog10(i32 noundef %sub125) #9
  %sub127 = add i32 %call124, 3355443
  %add = sub i32 %sub127, %call126
  %conv128 = zext i32 %add to i64
  %mul130 = mul nuw nsw i64 %conv128, 13000
  %shr131 = lshr i64 %mul130, 24
  %conv132 = trunc i64 %shr131 to i32
  br label %do.body187

sw.bb133:                                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %76 = call i32 @llvm.umax.i32(i32 %utmp1.1, i32 371105)
  %77 = call i32 @llvm.umin.i32(i32 %76, i32 827999)
  %sub148 = add nsw i32 %77, -370000
  %call149 = call i32 @intlog10(i32 noundef %sub148) #9
  %sub150 = sub nuw nsw i32 828000, %77
  %call151 = call i32 @intlog10(i32 noundef %sub150) #9
  %sub152 = add i32 %call149, 43900382
  %add153 = sub i32 %sub152, %call151
  %conv154 = zext i32 %add153 to i64
  %mul156 = mul nuw nsw i64 %conv154, 6000
  %shr157 = lshr i64 %mul156, 24
  %conv158 = trunc i64 %shr157 to i32
  br label %do.body187

sw.bb159:                                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %78 = call i32 @llvm.umax.i32(i32 %utmp1.1, i32 193246)
  %79 = call i32 @llvm.umin.i32(i32 %78, i32 424999)
  %sub174 = add nsw i32 %79, -193000
  %call175 = call i32 @intlog10(i32 noundef %sub174) #9
  %sub176 = sub nuw nsw i32 425000, %79
  %call177 = call i32 @intlog10(i32 noundef %sub176) #9
  %sub178 = add i32 %call175, 49912218
  %add179 = sub i32 %sub178, %call177
  %conv180 = zext i32 %add179 to i64
  %mul182 = mul nuw nsw i64 %conv180, 8000
  %shr183 = lshr i64 %mul182, 24
  %conv184 = trunc i64 %shr183 to i32
  br label %do.body187

do.body187:                                       ; preds = %sw.bb159, %sw.bb133, %sw.bb113, %if.end110.do.body187_crit_edge
  %utmp1.2 = phi i32 [ %conv184, %sw.bb159 ], [ %conv158, %sw.bb133 ], [ %conv132, %sw.bb113 ], [ 0, %if.end110.do.body187_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_read_status.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_read_status, %if.then199)) #9
          to label %do.end203 [label %if.then199], !srcloc !194

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #11
  %dev200 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_read_status.__UNIQUE_ID_ddebug320, ptr noundef %dev200, ptr noundef nonnull @.str.38, i32 noundef %utmp1.2) #9
  br label %do.end203

do.end203:                                        ; preds = %if.then199, %do.body187
  %stat204 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %80 = ptrtoint ptr %stat204 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %stat204, align 1
  %conv207 = zext i32 %utmp1.2 to i64
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %conv207, ptr %81, align 1
  br label %if.end216

if.else211:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %stat213 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %83 = ptrtoint ptr %stat213 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %stat213, align 1
  br label %if.end216

if.end216:                                        ; preds = %if.else211, %do.end203
  %84 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %fe_status, align 4
  %and218 = and i32 %85, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %if.end216.cleanup322_crit_edge, label %if.then220

if.end216.cleanup322_crit_edge:                   ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup322

if.then220:                                       ; preds = %if.end216
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call223 = call i32 @regmap_bulk_read(ptr noundef %87, i32 noundef 8388658, ptr noundef nonnull %buf, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %cleanup.thread, label %if.then220.do.body305_crit_edge

if.then220.do.body305_crit_edge:                  ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body305

cleanup.thread:                                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %4, align 1
  %conv228 = zext i8 %89 to i16
  %shl229 = shl nuw i16 %conv228, 8
  %90 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %buf, align 1
  %conv231 = zext i8 %91 to i16
  %or233 = or i16 %shl229, %conv231
  %92 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %7, align 1
  %conv236 = zext i8 %93 to i32
  %shl237 = shl nuw nsw i32 %conv236, 16
  %94 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %6, align 1
  %conv239 = zext i8 %95 to i32
  %shl240 = shl nuw nsw i32 %conv239, 8
  %or241 = or i32 %shl240, %shl237
  %96 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %5, align 1
  %conv243 = zext i8 %97 to i32
  %or244 = or i32 %or241, %conv243
  %98 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %9, align 1
  %conv246 = zext i8 %99 to i16
  %shl247 = shl nuw i16 %conv246, 8
  %100 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %8, align 1
  %conv249 = zext i8 %101 to i16
  %or251 = or i16 %shl247, %conv249
  %conv253 = zext i16 %or233 to i64
  %error_block_count = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 13
  %102 = ptrtoint ptr %error_block_count to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %error_block_count, align 8
  %add254 = add i64 %103, %conv253
  store i64 %add254, ptr %error_block_count, align 8
  %conv255 = zext i16 %or251 to i64
  %total_block_count = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 14
  %104 = ptrtoint ptr %total_block_count to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %total_block_count, align 8
  %add256 = add i64 %105, %conv255
  store i64 %add256, ptr %total_block_count, align 8
  %conv257 = zext i32 %or244 to i64
  %post_bit_error = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 11
  %106 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %post_bit_error, align 8
  %add258 = add i64 %107, %conv257
  store i64 %add258, ptr %post_bit_error, align 8
  %conv259 = zext i16 %or251 to i32
  %mul261 = mul nuw nsw i32 %conv259, 1632
  %108 = zext i32 %mul261 to i64
  %post_bit_count = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 12
  %109 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %post_bit_count, align 8
  %add263 = add i64 %110, %108
  store i64 %add263, ptr %post_bit_count, align 8
  %block_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %111 = ptrtoint ptr %block_count to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %block_count, align 1
  %stat266 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %112 = ptrtoint ptr %stat266 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 3, ptr %stat266, align 1
  %113 = load i64, ptr %total_block_count, align 8
  %114 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %113, ptr %114, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %116 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %block_error, align 2
  %stat275 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %117 = ptrtoint ptr %stat275 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 3, ptr %stat275, align 1
  %118 = load i64, ptr %error_block_count, align 8
  %119 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 8)
  store i64 %118, ptr %119, align 1
  %post_bit_count282 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %121 = ptrtoint ptr %post_bit_count282 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %post_bit_count282, align 1
  %stat285 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %122 = ptrtoint ptr %stat285 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 3, ptr %stat285, align 1
  %123 = load i64, ptr %post_bit_count, align 8
  %124 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 8)
  store i64 %123, ptr %124, align 1
  %post_bit_error292 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %126 = ptrtoint ptr %post_bit_error292 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %post_bit_error292, align 4
  %stat295 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %127 = ptrtoint ptr %stat295 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 3, ptr %stat295, align 1
  %128 = load i64, ptr %post_bit_error, align 8
  %129 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_storeN_noabort(i32 %130, i32 8)
  store i64 %128, ptr %129, align 1
  br label %cleanup322

do.body305:                                       ; preds = %if.then220.do.body305_crit_edge, %sw.epilog.do.body305_crit_edge, %if.end92.do.body305_crit_edge, %if.end74.do.body305_crit_edge, %if.then69.do.body305_crit_edge, %if.else.do.body305_crit_edge, %if.then40.do.body305_crit_edge, %if.end22.do.body305_crit_edge, %if.then13.do.body305_crit_edge, %do.end.do.body305_crit_edge
  %ret.0 = phi i32 [ %call6, %do.end.do.body305_crit_edge ], [ %call15, %if.then13.do.body305_crit_edge ], [ %call24, %if.end22.do.body305_crit_edge ], [ %call42, %if.then40.do.body305_crit_edge ], [ %call71, %if.then69.do.body305_crit_edge ], [ %call86, %if.end74.do.body305_crit_edge ], [ %call94, %if.end92.do.body305_crit_edge ], [ %call107, %sw.epilog.do.body305_crit_edge ], [ %call47, %if.else.do.body305_crit_edge ], [ %call223, %if.then220.do.body305_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_read_status.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_read_status, %if.then317)) #9
          to label %cleanup322 [label %if.then317], !srcloc !194

if.then317:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #11
  %dev318 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_read_status.__UNIQUE_ID_ddebug321, ptr noundef %dev318, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #9
  br label %cleanup322

cleanup322:                                       ; preds = %if.then317, %do.body305, %cleanup.thread, %if.end216.cleanup322_crit_edge
  %retval.0 = phi i32 [ 0, %if.end216.cleanup322_crit_edge ], [ %ret.0, %if.then317 ], [ 0, %cleanup.thread ], [ %ret.0, %do.body305 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #9
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9033_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %post_bit_error = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %post_bit_error, align 8
  %post_bit_error_prev = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 10
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
define internal i32 @af9033_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #2 align 64 {
entry:
  %utmp = alloca i32, align 4
  %buf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dtv_property_cache = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 2, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #9
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !197
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %buf) #9
  %5 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 3
  %6 = getelementptr inbounds [7 x i8], ptr %buf, i32 0, i32 6
  %7 = call ptr @memset(ptr %buf, i32 255, i32 7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_read_signal_strength.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_read_signal_strength, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_read_signal_strength.__UNIQUE_ID_ddebug324, ptr noundef %dev6, ptr noundef nonnull @.str.16) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %is_af9035 = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %is_af9035 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_af9035, align 8, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  %regmap13 = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap13, align 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do.end
  %call9 = call i32 @regmap_read(ptr noundef %11, i32 noundef 8388680, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then8.do.body77_crit_edge

if.then8.do.body77_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %utmp, align 4
  br label %if.end76

if.else:                                          ; preds = %do.end
  %call14 = call i32 @regmap_read(ptr noundef %11, i32 noundef 8388855, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.else.do.body77_crit_edge

if.else.do.body77_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

if.end17:                                         ; preds = %if.else
  %14 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap13, align 4
  %call19 = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef 8452352, ptr noundef nonnull %buf, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.do.body77_crit_edge

if.end17.do.body77_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body77

if.end22:                                         ; preds = %if.end17
  %16 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000001, i32 %17)
  %cmp = icmp ult i32 %17, 300000001
  %. = select i1 %cmp, i32 -7, i32 -4
  %18 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %utmp, align 4
  %sub = add i32 %19, -100
  %sub28 = add i32 %sub, %.
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %5, align 1
  %22 = and i8 %21, 3
  %and = zext i8 %22 to i32
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %6, align 1
  %25 = and i8 %24, 7
  %and34 = zext i8 %25 to i32
  %arrayidx35 = getelementptr [3 x [5 x i32]], ptr @power_reference, i32 0, i32 %and, i32 %and34
  %26 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx35, align 4
  %sub36 = sub i32 %sub28, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %sub36)
  %cmp37 = icmp slt i32 %sub36, -15
  br i1 %cmp37, label %if.end22.if.end76_crit_edge, label %land.lhs.true

if.end22.if.end76_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36)
  %cmp43 = icmp slt i32 %sub36, 0
  br i1 %cmp43, label %if.then45, label %land.lhs.true51

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sub36.tr132 = trunc i32 %sub36 to i8
  %28 = shl nsw i8 %sub36.tr132, 1
  %div47128.lhs.trunc = add nsw i8 %28, 30
  %div47128129 = udiv i8 %div47128.lhs.trunc, 3
  %div47128.zext = zext i8 %div47128129 to i32
  br label %if.end76

land.lhs.true51:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub36)
  %cmp52 = icmp ult i32 %sub36, 20
  br i1 %cmp52, label %if.then54, label %land.lhs.true60

if.then54:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  %mul55 = shl nuw nsw i32 %sub36, 2
  %add56 = add nuw nsw i32 %mul55, 10
  br label %if.end76

land.lhs.true60:                                  ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %sub36)
  %cmp61 = icmp ult i32 %sub36, 35
  br i1 %cmp61, label %if.then63, label %land.lhs.true60.if.end76_crit_edge

land.lhs.true60.if.end76_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  %sub36.tr = trunc i32 %sub36 to i8
  %29 = shl nuw nsw i8 %sub36.tr, 1
  %div66130.lhs.trunc = add nsw i8 %29, -40
  %div66130131 = udiv i8 %div66130.lhs.trunc, 3
  %narrow = add nuw nsw i8 %div66130131, 90
  %add67 = zext i8 %narrow to i32
  br label %if.end76

if.end76:                                         ; preds = %if.then63, %land.lhs.true60.if.end76_crit_edge, %if.then54, %if.then45, %if.end22.if.end76_crit_edge, %if.end12
  %storemerge.in.in.in = phi i32 [ %13, %if.end12 ], [ %div47128.zext, %if.then45 ], [ %add56, %if.then54 ], [ %add67, %if.then63 ], [ 0, %if.end22.if.end76_crit_edge ], [ 100, %land.lhs.true60.if.end76_crit_edge ]
  %storemerge.in.in = mul i32 %storemerge.in.in.in, 65535
  %storemerge.in = udiv i32 %storemerge.in.in, 100
  %storemerge = trunc i32 %storemerge.in to i16
  %30 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %storemerge, ptr %strength, align 2
  br label %cleanup

do.body77:                                        ; preds = %if.end17.do.body77_crit_edge, %if.else.do.body77_crit_edge, %if.then8.do.body77_crit_edge
  %ret.0 = phi i32 [ %call9, %if.then8.do.body77_crit_edge ], [ %call14, %if.else.do.body77_crit_edge ], [ %call19, %if.end17.do.body77_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_read_signal_strength.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_read_signal_strength, %if.then89)) #9
          to label %cleanup [label %if.then89], !srcloc !194

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  %dev90 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_read_signal_strength.__UNIQUE_ID_ddebug325, ptr noundef %dev90, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %do.body77, %if.end76
  %retval.0 = phi i32 [ 0, %if.end76 ], [ %ret.0, %if.then89 ], [ %ret.0, %do.body77 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef %snr) #2 align 64 {
entry:
  %remainder.i79 = alloca i32, align 4
  %remainder.i = alloca i32, align 4
  %utmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #9
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !197
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_read_snr.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_read_snr, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_read_snr.__UNIQUE_ID_ddebug322, ptr noundef %dev5, ptr noundef nonnull @.str.16) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stat = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 2, i32 8, i32 43, i32 1
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %if.then7, label %if.else37

if.then7:                                         ; preds = %do.end
  %is_af9035 = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %is_af9035 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_af9035, align 8, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  %9 = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 2, i32 8, i32 43, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %9, align 1
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #9
  %12 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %remainder.i, align 4, !annotation !197
  %call.i = call i64 @div_s64_rem(i64 noundef %11, i32 noundef 100, ptr noundef nonnull %remainder.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #9
  %conv14 = trunc i64 %call.i to i16
  %13 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14, ptr %snr, align 2
  br label %cleanup

if.else:                                          ; preds = %if.then7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i79) #9
  %14 = ptrtoint ptr %remainder.i79 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %remainder.i79, align 4, !annotation !197
  %call.i80 = call i64 @div_s64_rem(i64 noundef %11, i32 noundef 1000, ptr noundef nonnull %remainder.i79) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i79) #9
  %conv19 = trunc i64 %call.i80 to i16
  %15 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv19, ptr %snr, align 2
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call20 = call i32 @regmap_read(ptr noundef %17, i32 noundef 8452355, ptr noundef nonnull %utmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.else.do.body39_crit_edge

if.else.do.body39_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

if.end23:                                         ; preds = %if.else
  %18 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %utmp, align 4
  %and = and i32 %19, 3
  %20 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %and, label %if.end23.do.body39_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb26
    i32 2, label %sw.bb31
  ]

if.end23.do.body39_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39

sw.bb:                                            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %snr, align 2
  %conv24 = zext i16 %22 to i32
  %mul = mul nuw i32 %conv24, 65535
  %div = sdiv i32 %mul, 23
  %conv25 = trunc i32 %div to i16
  store i16 %conv25, ptr %snr, align 2
  br label %cleanup

sw.bb26:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %snr, align 2
  %conv27 = zext i16 %24 to i32
  %mul28 = mul nuw i32 %conv27, 65535
  %div29 = sdiv i32 %mul28, 26
  %conv30 = trunc i32 %div29 to i16
  store i16 %conv30, ptr %snr, align 2
  br label %cleanup

sw.bb31:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %snr, align 2
  %conv32 = zext i16 %26 to i32
  %mul33 = mul nuw i32 %conv32, 65535
  %div34 = sdiv i32 %mul33, 32
  %conv35 = trunc i32 %div34 to i16
  store i16 %conv35, ptr %snr, align 2
  br label %cleanup

if.else37:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %snr, align 2
  br label %cleanup

do.body39:                                        ; preds = %if.end23.do.body39_crit_edge, %if.else.do.body39_crit_edge
  %ret.0 = phi i32 [ %call20, %if.else.do.body39_crit_edge ], [ -22, %if.end23.do.body39_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_read_snr.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_read_snr, %if.then51)) #9
          to label %cleanup [label %if.then51], !srcloc !194

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #11
  %dev52 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_read_snr.__UNIQUE_ID_ddebug323, ptr noundef %dev52, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body39, %if.else37, %sw.bb31, %sw.bb26, %sw.bb, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %sw.bb31 ], [ 0, %sw.bb26 ], [ 0, %sw.bb ], [ 0, %if.else37 ], [ %ret.0, %if.then51 ], [ %ret.0, %do.body39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @af9033_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %error_block_count = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %error_block_count to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %error_block_count, align 8
  %conv = trunc i64 %3 to i32
  %4 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @af9033_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_i2c_gate_ctrl.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_i2c_gate_ctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_i2c_gate_ctrl.__UNIQUE_ID_ddebug326, ptr noundef %dev4, ptr noundef nonnull @.str.42, i32 noundef %enable) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 64004, i32 noundef 1, i32 noundef %enable, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %do.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_i2c_gate_ctrl.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_i2c_gate_ctrl, %if.then21)) #9
          to label %cleanup [label %if.then21], !srcloc !194

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_i2c_gate_ctrl.__UNIQUE_ID_ddebug327, ptr noundef %dev22, ptr noundef nonnull @.str.14, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body9, %do.end.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @af9033_wr_reg_val_tab(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tab, i32 noundef %tab_len) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [213 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 213, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 213)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_wr_reg_val_tab.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_wr_reg_val_tab, %if.then)) #9
          to label %if.end10 [label %if.then], !srcloc !194

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_wr_reg_val_tab.__UNIQUE_ID_ddebug290, ptr noundef %dev4, ptr noundef nonnull @.str.24, i32 noundef %tab_len) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tab_len)
  %cmp1177 = icmp sgt i32 %tab_len, 0
  br i1 %cmp1177, label %for.body.lr.ph, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end10
  %sub = add nsw i32 %tab_len, -1
  %regmap = getelementptr inbounds %struct.af9033_dev, ptr %dev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29.pre-phi, %for.inc.for.body_crit_edge ]
  %j.078 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.reg_val, ptr %tab, i32 %i.080
  %val = getelementptr %struct.reg_val, ptr %tab, i32 %i.080, i32 1
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 4
  %arrayidx12 = getelementptr [213 x i8], ptr %buf, i32 0, i32 %j.078
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.080, i32 %sub)
  %cmp13 = icmp eq i32 %i.080, %sub
  br i1 %cmp13, label %for.body.if.then19_crit_edge, label %lor.lhs.false

for.body.if.then19_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false:                                    ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %i.080, 1
  %arrayidx15 = getelementptr %struct.reg_val, ptr %tab, i32 %add
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx15, align 4
  %sub17 = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub17)
  %cmp18.not = icmp eq i32 %7, %sub17
  br i1 %cmp18.not, label %if.else, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %for.body.if.then19_crit_edge
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %sub22 = sub i32 %13, %j.078
  %add23 = add i32 %j.078, 1
  %call24 = call i32 @regmap_bulk_write(ptr noundef %11, i32 noundef %sub22, ptr noundef nonnull %buf, i32 noundef %add23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then19.for.inc_crit_edge, label %do.body30

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = add nuw nsw i32 %i.080, 1
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %j.078, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then19.for.inc_crit_edge
  %inc29.pre-phi = phi i32 [ %.pre, %if.then19.for.inc_crit_edge ], [ %add, %if.else ]
  %j.1 = phi i32 [ 0, %if.then19.for.inc_crit_edge ], [ %inc, %if.else ]
  %exitcond.not = icmp eq i32 %inc29.pre-phi, %tab_len
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body30:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @af9033_wr_reg_val_tab.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@af9033_wr_reg_val_tab, %if.then42)) #9
          to label %cleanup [label %if.then42], !srcloc !194

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  %dev43 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @af9033_wr_reg_val_tab.__UNIQUE_ID_ddebug291, ptr noundef %dev43, ptr noundef nonnull @.str.14, i32 noundef %call24) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body30, %for.inc.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %if.then42 ], [ %call24, %do.body30 ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 213, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !114, !116, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !136, !138, !139, !141, !143, !144, !146, !147, !149, !151, !152, !154, !156, !158, !159, !161, !163, !164, !165, !167, !169, !170, !171, !173, !175, !176, !177, !179, !181, !182}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__initcall__kmod_af9033__334_1194_af9033_driver_init6, !1, !"__initcall__kmod_af9033__334_1194_af9033_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1194, i32 1}
!2 = !{ptr @__exitcall_af9033_driver_exit, !1, !"__exitcall_af9033_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author335, !4, !"__UNIQUE_ID_author335", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1196, i32 1}
!5 = !{ptr @__UNIQUE_ID_description336, !6, !"__UNIQUE_ID_description336", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1197, i32 1}
!7 = !{ptr @__UNIQUE_ID_file337, !8, !"__UNIQUE_ID_file337", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1198, i32 1}
!9 = !{ptr @__UNIQUE_ID_license338, !8, !"__UNIQUE_ID_license338", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1186, i32 11}
!12 = !{ptr @af9033_driver, !13, !"af9033_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1184, i32 26}
!14 = !{ptr @af9033_probe.regmap_config, !15, !"regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1060, i32 36}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1090, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @af9033_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @af9033_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @af9033_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1097, i32 16}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1127, i32 2}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @af9033_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @af9033_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1154, i32 2}
!34 = !{ptr @af9033_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @af9033_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1162, i32 2}
!38 = !{ptr @af9033_probe.__UNIQUE_ID_ddebug332, !37, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!39 = !{ptr @af9033_ops, !40, !"af9033_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1012, i32 38}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 106, i32 2}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @af9033_init.__UNIQUE_ID_ddebug292, !42, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 118, i32 2}
!47 = !{ptr @af9033_init.__UNIQUE_ID_ddebug293, !46, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 126, i32 3}
!50 = !{ptr @af9033_init._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @af9033_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 140, i32 2}
!54 = !{ptr @af9033_init.__UNIQUE_ID_ddebug294, !53, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 176, i32 2}
!57 = !{ptr @af9033_init.__UNIQUE_ID_ddebug295, !56, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 201, i32 2}
!60 = !{ptr @af9033_init.__UNIQUE_ID_ddebug296, !59, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 252, i32 3}
!63 = !{ptr @af9033_init.__UNIQUE_ID_ddebug297, !62, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!64 = !{ptr @af9033_init.__UNIQUE_ID_ddebug298, !65, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 300, i32 2}
!66 = !{ptr @clock_adc_lut, !67, !"clock_adc_lut", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 47, i32 31}
!68 = !{ptr @ofsm_init_it9135_v1, !69, !"ofsm_init_it9135_v1", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 467, i32 29}
!70 = !{ptr @ofsm_init_it9135_v2, !71, !"ofsm_init_it9135_v2", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 1238, i32 29}
!72 = !{ptr @ofsm_init, !73, !"ofsm_init", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 87, i32 29}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 40, i32 2}
!76 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @af9033_wr_reg_val_tab.__UNIQUE_ID_ddebug290, !75, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 43, i32 3}
!80 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @af9033_wr_reg_val_tab._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @af9033_wr_reg_val_tab._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @af9033_wr_reg_val_tab.__UNIQUE_ID_ddebug291, !84, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 64, i32 2}
!85 = !{ptr @tuner_init_tua9001, !86, !"tuner_init_tua9001", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 202, i32 29}
!87 = !{ptr @tuner_init_fc0011, !88, !"tuner_init_fc0011", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 246, i32 29}
!89 = !{ptr @tuner_init_mxl5007t, !90, !"tuner_init_mxl5007t", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 354, i32 29}
!91 = !{ptr @tuner_init_tda18218, !92, !"tuner_init_tda18218", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 391, i32 29}
!93 = !{ptr @tuner_init_fc2580, !94, !"tuner_init_fc2580", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 427, i32 29}
!95 = !{ptr @tuner_init_fc0012, !96, !"tuner_init_fc0012", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 309, i32 29}
!97 = !{ptr @tuner_init_it9135_38, !98, !"tuner_init_it9135_38", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 582, i32 29}
!99 = !{ptr @tuner_init_it9135_51, !100, !"tuner_init_it9135_51", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 801, i32 29}
!101 = !{ptr @tuner_init_it9135_52, !102, !"tuner_init_it9135_52", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 1020, i32 29}
!103 = !{ptr @tuner_init_it9135_60, !104, !"tuner_init_it9135_60", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 1340, i32 29}
!105 = !{ptr @tuner_init_it9135_61, !106, !"tuner_init_it9135_61", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 1556, i32 29}
!107 = !{ptr @tuner_init_it9135_62, !108, !"tuner_init_it9135_62", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 1772, i32 29}
!109 = !{ptr @.str.27, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 311, i32 2}
!111 = !{ptr @af9033_sleep.__UNIQUE_ID_ddebug299, !110, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!112 = !{ptr @af9033_sleep.__UNIQUE_ID_ddebug300, !113, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 340, i32 2}
!114 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 365, i32 2}
!116 = !{ptr @.str.29, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @af9033_set_frontend.__UNIQUE_ID_ddebug301, !115, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!118 = !{ptr @.str.30, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 380, i32 3}
!120 = !{ptr @af9033_set_frontend.__UNIQUE_ID_ddebug302, !119, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!121 = !{ptr @.str.31, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 398, i32 4}
!123 = !{ptr @af9033_set_frontend._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @af9033_set_frontend._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.33, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 418, i32 4}
!127 = !{ptr @af9033_set_frontend._entry.32, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @af9033_set_frontend._entry_ptr.34, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.35, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 448, i32 3}
!131 = !{ptr @af9033_set_frontend.__UNIQUE_ID_ddebug303, !130, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!132 = !{ptr @af9033_set_frontend.__UNIQUE_ID_ddebug304, !133, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 482, i32 2}
!134 = !{ptr @coeff_lut, !135, !"coeff_lut", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 62, i32 27}
!136 = !{ptr @.str.36, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 494, i32 2}
!138 = !{ptr @af9033_get_frontend.__UNIQUE_ID_ddebug305, !137, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!139 = !{ptr @af9033_get_frontend.__UNIQUE_ID_ddebug306, !140, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!140 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 608, i32 2}
!141 = !{ptr @.str.37, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 621, i32 2}
!143 = !{ptr @af9033_read_status.__UNIQUE_ID_ddebug307, !142, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!144 = !{ptr @.str.38, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 763, i32 3}
!146 = !{ptr @af9033_read_status.__UNIQUE_ID_ddebug320, !145, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!147 = !{ptr @af9033_read_status.__UNIQUE_ID_ddebug321, !148, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!148 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 815, i32 2}
!149 = !{ptr @.str.39, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 879, i32 2}
!151 = !{ptr @af9033_read_signal_strength.__UNIQUE_ID_ddebug324, !150, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!152 = !{ptr @af9033_read_signal_strength.__UNIQUE_ID_ddebug325, !153, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 923, i32 2}
!154 = !{ptr @power_reference, !155, !"power_reference", i1 false, i1 false}
!155 = !{!"../drivers/media/dvb-frontends/af9033_priv.h", i32 1986, i32 18}
!156 = !{ptr @.str.40, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 827, i32 2}
!158 = !{ptr @af9033_read_snr.__UNIQUE_ID_ddebug322, !157, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!159 = !{ptr @af9033_read_snr.__UNIQUE_ID_ddebug323, !160, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 866, i32 2}
!161 = !{ptr @.str.41, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 952, i32 2}
!163 = !{ptr @.str.42, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @af9033_i2c_gate_ctrl.__UNIQUE_ID_ddebug326, !162, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!165 = !{ptr @af9033_i2c_gate_ctrl.__UNIQUE_ID_ddebug327, !166, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 960, i32 2}
!167 = !{ptr @.str.43, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 990, i32 2}
!169 = !{ptr @.str.44, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @af9033_pid_filter.__UNIQUE_ID_ddebug330, !168, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!171 = !{ptr @af9033_pid_filter.__UNIQUE_ID_ddebug331, !172, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1008, i32 2}
!173 = !{ptr @.str.45, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 970, i32 2}
!175 = !{ptr @.str.46, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @af9033_pid_filter_ctrl.__UNIQUE_ID_ddebug328, !174, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!177 = !{ptr @af9033_pid_filter_ctrl.__UNIQUE_ID_ddebug329, !178, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!178 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 978, i32 2}
!179 = !{ptr @.str.47, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1170, i32 2}
!181 = !{ptr @af9033_remove.__UNIQUE_ID_ddebug333, !180, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!182 = !{ptr @af9033_id_table, !183, !"af9033_id_table", i1 false, i1 false}
!183 = !{!"../drivers/media/dvb-frontends/af9033.c", i32 1178, i32 35}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i8 0, i8 2}
!194 = !{i64 2148331200, i64 2148331205, i64 2148331218, i64 2148331262, i64 2148331296, i64 2148331317}
!195 = !{i64 870556, i64 870583}
!196 = !{i64 871251, i64 871278, i64 871311, i64 871332, i64 871359, i64 871385}
!197 = !{!"auto-init"}
!198 = !{!"branch_weights", i32 2000, i32 1}
!199 = !{i64 2148356387, i64 2148356667, i64 2148357001, i64 2148357335}
